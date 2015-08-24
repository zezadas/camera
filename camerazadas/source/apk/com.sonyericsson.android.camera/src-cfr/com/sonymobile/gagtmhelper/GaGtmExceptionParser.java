/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.gagtmhelper;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.util.Base64;
import com.sonymobile.gagtmhelper.GaGtmLog;
import com.sonymobile.gagtmhelper.GaGtmUtils;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;

public class GaGtmExceptionParser {
    private static final String DEEPMODE_EVENT_STRING = "EVENT";
    private static final String DEEPMODE_EXCEPTION_STRING = "EXCEPTION";
    private static final String HASH_VERSION = "0";
    private static final String LOG_TAG = "GaGtmHelper";
    private static final int MAX_CAUSE_DEPTH = 2;
    private static final int MAX_MESSAGE_LENGTH = 40;
    private static final int MAX_REPORTED_ROWS_DEFAULT = 3;
    private static final int MAX_TRAVERSED_ROWS_DEFAULT = 20;
    private static volatile String mAppVersion;
    private static Context mContext;
    private static volatile List<String> mDeepCrashHashList;
    private static volatile DeepMode mDeepMode;
    private static volatile Thread.UncaughtExceptionHandler mDefaultHandler;
    private static volatile List<String> mEnabledPackageNames;
    private static final Object mLock;
    private static volatile int mMaxReportedRows;
    private static volatile int mMaxTraversedRows;

    static {
        mDefaultHandler = null;
        mEnabledPackageNames = new LinkedList<String>();
        mMaxReportedRows = 3;
        mMaxTraversedRows = 20;
        mDeepCrashHashList = new LinkedList<String>();
        mDeepMode = DeepMode.DEEPMODE_EXCEPTION;
        mAppVersion = "";
        mContext = null;
        mLock = new Object();
    }

    private GaGtmExceptionParser() {
    }

    private static StringBuilder createThrowableDescription(Throwable throwable, int n) {
        StringBuilder stringBuilder = new StringBuilder();
        if (n <= 2) {
            stringBuilder = GaGtmExceptionParser.createThrowableDescriptionShort(throwable);
            Throwable throwable2 = throwable.getCause();
            if (throwable2 != null) {
                stringBuilder.append(" Cause: ");
                stringBuilder.append(GaGtmExceptionParser.createThrowableDescription(throwable2, n + 1));
                return stringBuilder;
            }
            stringBuilder.append(GaGtmExceptionParser.createThrowableDescriptionStackTrace(throwable));
            return stringBuilder;
        }
        stringBuilder.append("... ").append(GaGtmExceptionParser.createThrowableDescriptionStackTrace(throwable));
        return stringBuilder;
    }

    private static StringBuilder createThrowableDescriptionShort(Throwable object) {
        StringBuilder stringBuilder = new StringBuilder(object.getClass().getSimpleName());
        if ((object = object.getMessage()) != null) {
            object = object.substring(0, Math.min(object.length(), 40));
            stringBuilder.append("(").append((String)object).append(")");
        }
        return stringBuilder;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    private static StringBuilder createThrowableDescriptionStackTrace(Throwable throwable) {
        StringBuilder stringBuilder = new StringBuilder();
        int n = 0;
        boolean bl = false;
        StackTraceElement[] arrstackTraceElement = throwable.getStackTrace();
        int n2 = 0;
        int n3 = 0;
        Object object = mLock;
        // MONITORENTER : object
        int n4 = mMaxReportedRows;
        // MONITOREXIT : object
        object = mLock;
        // MONITORENTER : object
        int n5 = mMaxTraversedRows;
        // MONITOREXIT : object
        if (arrstackTraceElement != null) {
            n2 = arrstackTraceElement.length;
            stringBuilder.append(" S:").append(String.valueOf(n2));
        } else {
            bl = true;
        }
        while (!(bl || n >= n5 || n3 >= n4 || n >= n2)) {
            object = throwable.getStackTrace()[n];
            if (object != null) {
                int n6 = n3;
                if (GaGtmExceptionParser.packageNameIsEnabled(object.getClassName())) {
                    stringBuilder.append(GaGtmExceptionParser.stackElementString(arrstackTraceElement, n));
                    n6 = n3 + 1;
                }
                ++n;
                n3 = n6;
                continue;
            }
            bl = true;
        }
        if (n3 != 0) return stringBuilder;
        if (n2 > 0) {
            stringBuilder.append(GaGtmExceptionParser.stackElementString(arrstackTraceElement, 0));
            return stringBuilder;
        }
        stringBuilder.append("stackTrace was empty");
        return stringBuilder;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public static void enableExceptionParsing(Context context) throws IllegalStateException {
        Object object = mLock;
        synchronized (object) {
            mContext = context;
            if (mEnabledPackageNames.size() == 0) {
                GaGtmLog.d("GaGtmHelper", "setEnabledPackageNames is empty!");
            }
            if (mDefaultHandler == null) {
                mDefaultHandler = Thread.getDefaultUncaughtExceptionHandler();
            } else {
                GaGtmLog.d("GaGtmHelper", "enableExceptionParsing was called twice but it should normally not be done!");
            }
            try {
                mAppVersion = context.getPackageManager().getPackageInfo((String)context.getApplicationContext().getPackageName(), (int)0).versionName;
            }
            catch (PackageManager.NameNotFoundException var0_1) {}
        }
        Thread.setDefaultUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler(){

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void uncaughtException(Thread thread, Throwable throwable) {
                Object object;
                Object object2 = object = null;
                if (throwable != null) {
                    object2 = object;
                    if (throwable.getStackTrace().length > 3) {
                        object2 = throwable.getStackTrace()[2].toString();
                    }
                    if (object2 != null && throwable != null && throwable.getMessage().contains((CharSequence)"Results have already been set") && object2.contains((CharSequence)"com.google.android.gms.tagmanager")) {
                        return;
                    }
                }
                GaGtmExceptionParser.generateCrash(thread, throwable);
                object2 = mLock;
                synchronized (object2) {
                    mDefaultHandler.uncaughtException(thread, throwable);
                    return;
                }
            }
        });
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public static void generateCrash(Thread object, Throwable throwable) {
        block10 : {
            DeepMode deepMode;
            String string;
            try {
                GaGtmLog.d("GaGtmHelper", "GenerateCrash");
                if (object == null || throwable == null) {
                    GaGtmLog.d("GaGtmHelper", "Thread or throwable was null");
                    return;
                }
                string = GaGtmExceptionParser.getStackTraceHash((Thread)object, throwable);
                GaGtmLog.d("GaGtmHelper", "exception has hash:" + string);
                GaGtmExceptionParser.generateNormalCrash((Thread)object, throwable, string);
                if (!GaGtmExceptionParser.isDeepCrash(string)) break block10;
                GaGtmLog.d("GaGtmHelper", "Generate deep crash");
                object = DeepMode.DEEPMODE_EVENT;
                object = mLock;
                synchronized (object) {
                    deepMode = mDeepMode;
                }
            }
            catch (Throwable var0_1) {
                GaGtmLog.e("GaGtmHelper", "internal exception : " + var0_1.getMessage());
                return;
            }
            if (deepMode == DeepMode.DEEPMODE_EVENT) {
                GaGtmExceptionParser.generateDeepCrashEventMode(throwable, string);
                return;
            }
            if (deepMode != DeepMode.DEEPMODE_EXCEPTION) return;
            {
                GaGtmExceptionParser.generateDeepCrashExceptionMode(throwable, string);
                return;
            }
        }
        GaGtmLog.d("GaGtmHelper", "no deep crash is to be generated");
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private static void generateDeepCrashEventMode(Throwable throwable, String string) {
        int n;
        StackTraceElement[] arrstackTraceElement = throwable.getStackTrace();
        int n2 = 0;
        int n3 = 0;
        boolean bl = false;
        Object object = mLock;
        synchronized (object) {
            n = mMaxTraversedRows;
        }
        GaGtmLog.d("GaGtmHelper", "generateDeepCrashEventmode hash:" + string);
        boolean bl2 = bl;
        int n4 = n3;
        if (arrstackTraceElement != null) {
            n2 = arrstackTraceElement.length;
            n4 = n3;
            bl2 = bl;
        }
        for (; !(bl2 || n4 >= n || n4 >= n2); ++n4) {
            if (throwable.getStackTrace()[n4] == null) {
                return;
            }
            object = GaGtmExceptionParser.stackElementString(arrstackTraceElement, n4);
            GaGtmLog.d("GaGtmHelper", "[" + String.valueOf(n4) + "] " + object.toString());
            GaGtmUtils.pushDeepEvent(mContext, "deepCrash", string, object.toString(), 0);
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private static void generateDeepCrashExceptionMode(Throwable throwable, String string) {
        int n;
        StringBuilder stringBuilder = new StringBuilder();
        int n2 = 0;
        boolean bl = false;
        StackTraceElement[] arrstackTraceElement = throwable.getStackTrace();
        int n3 = 0;
        Object object = mLock;
        synchronized (object) {
            n = mMaxTraversedRows;
        }
        GaGtmLog.d("GaGtmHelper", "generateDeepCrashExceptionMode hash:" + string);
        if (arrstackTraceElement != null) {
            n3 = arrstackTraceElement.length;
        }
        stringBuilder.append("deepCrash H:").append(string);
        while (!(bl || n2 >= n || n2 >= n3)) {
            if (throwable.getStackTrace()[n2] != null) {
                stringBuilder.append(GaGtmExceptionParser.stackElementString(arrstackTraceElement, n2));
                ++n2;
                continue;
            }
            bl = true;
        }
        GaGtmLog.d("GaGtmHelper", "deep exception description:" + stringBuilder.toString());
        GaGtmUtils.pushDeepException(mContext, stringBuilder.toString());
    }

    private static void generateNormalCrash(Thread thread, Throwable throwable, String string) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("H:").append(string);
        stringBuilder.append(" T:").append(GaGtmExceptionParser.replaceAllNumbers(thread.getName())).append(" ").append(GaGtmExceptionParser.createThrowableDescription(throwable, 0));
        GaGtmLog.d("GaGtmHelper", "uncaughtException: " + stringBuilder);
        GaGtmLog.d("GaGtmHelper", "about to push exception");
        GaGtmUtils.pushException(mContext, stringBuilder.toString());
        GaGtmLog.d("GaGtmHelper", "done pushing");
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private static String getRawStackTraceHashString(Thread object, Throwable throwable) {
        StringBuilder stringBuilder = new StringBuilder();
        StackTraceElement[] arrstackTraceElement = throwable.getStackTrace();
        int n = 0;
        int n2 = 0;
        boolean bl = false;
        Object object2 = mLock;
        synchronized (object2) {
            stringBuilder.append(mAppVersion);
        }
        stringBuilder.append(GaGtmExceptionParser.replaceAllNumbers(object.getName()));
        object = throwable.getCause();
        if (object != null) {
            stringBuilder.append(object);
        }
        if (arrstackTraceElement != null) {
            n = arrstackTraceElement.length;
        }
        stringBuilder.append(String.valueOf(n));
        while (!(bl || n2 >= 20 || n2 >= n)) {
            object = throwable.getStackTrace()[n2];
            if (object != null) {
                if (GaGtmExceptionParser.packageNameIsEnabled(object.getClassName())) {
                    stringBuilder.append(String.valueOf(n2)).append(object.getFileName()).append(object.getMethodName()).append(object.getLineNumber());
                }
                ++n2;
                continue;
            }
            bl = true;
        }
        GaGtmLog.e("GaGtmHelper", "stackTraceHashString: " + stringBuilder);
        return stringBuilder.toString();
    }

    private static String getStackTraceHash(Thread object, Throwable throwable) {
        object = GaGtmExceptionParser.getRawStackTraceHashString((Thread)object, throwable);
        int n = object.hashCode();
        GaGtmLog.d("GaGtmHelper", "hashString:" + (String)object);
        object = Base64.encodeToString(GaGtmExceptionParser.intToByteArray(n), 0);
        object = ("0" + (String)object).replaceAll("\n", "");
        GaGtmLog.d("GaGtmHelper", "hashString base64:" + (String)object);
        return object;
    }

    private static byte[] intToByteArray(int n) {
        byte by = (byte)(n & 255);
        byte by2 = (byte)(n >> 8 & 255);
        byte by3 = (byte)(n >> 16 & 255);
        return new byte[]{(byte)(n >> 24 & 255), by3, by2, by};
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private static boolean isDeepCrash(String string) {
        Object object = mLock;
        synchronized (object) {
            boolean bl = mDeepCrashHashList.contains(string);
            GaGtmLog.d("GaGtmHelper", "isDeepCrash for " + string + " is " + String.valueOf(bl));
            return bl;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private static boolean packageNameIsEnabled(String string) {
        Object object = mLock;
        synchronized (object) {
            Iterator<String> iterator = mEnabledPackageNames.iterator();
            do {
                if (iterator.hasNext()) continue;
                return false;
            } while (!string.startsWith(iterator.next()));
            return true;
        }
    }

    private static String replaceAllNumbers(String string) {
        int n = string.length();
        String string2 = string;
        for (int i = 0; i < n; ++i) {
            String string3 = string2;
            if (Character.isDigit(string2.charAt(i))) {
                string3 = string2.substring(0, i) + "$" + string2.substring(i + 1, n);
            }
            string2 = string3;
            if (string3.length() != 0) continue;
            string2 = string;
        }
        return string2;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public static void setDeepCrashHashList(String object) {
        GaGtmLog.d("GaGtmHelper", "setDeepCrashHashList " + (String)object);
        Object object2 = mLock;
        synchronized (object2) {
            mDeepCrashHashList = new LinkedList<String>(Arrays.asList(object.split(",")));
            object = mDeepCrashHashList.listIterator();
            while (object.hasNext()) {
                String string = ((String)object.next()).replaceAll(" ", "");
                if (string.isEmpty()) {
                    object.remove();
                    continue;
                }
                object.set(string);
            }
            for (int i = 0; i < mDeepCrashHashList.size(); ++i) {
                GaGtmLog.d("GaGtmHelper", "[" + String.valueOf(i) + "] '" + mDeepCrashHashList.get(i) + "'");
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public static void setDeepMode(String string) {
        GaGtmLog.d("GaGtmHelper", "setDeepMode " + string);
        Object object = mLock;
        synchronized (object) {
            if (string.equals("EVENT")) {
                GaGtmLog.d("GaGtmHelper", "DEEPMODE_EVENT active");
                mDeepMode = DeepMode.DEEPMODE_EVENT;
            } else if (string.equals("EXCEPTION")) {
                mDeepMode = DeepMode.DEEPMODE_EXCEPTION;
                GaGtmLog.d("GaGtmHelper", "DEEPMODE_EXCEPTION active");
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public static void setEnabledPackageNames(String object) {
        GaGtmLog.d("GaGtmHelper", "setEnabledPackageNames " + (String)object);
        Object object2 = mLock;
        synchronized (object2) {
            mEnabledPackageNames = new LinkedList<String>(Arrays.asList(object.split(",")));
            object = mEnabledPackageNames.listIterator();
            while (object.hasNext()) {
                String string = ((String)object.next()).replaceAll(" ", "");
                if (string.isEmpty()) {
                    object.remove();
                    continue;
                }
                object.set(string);
            }
            for (int i = 0; i < mEnabledPackageNames.size(); ++i) {
                GaGtmLog.d("GaGtmHelper", "[" + String.valueOf(i) + "] '" + mEnabledPackageNames.get(i) + "'");
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public static void setMaxReportedRows(int n) {
        GaGtmLog.d("GaGtmHelper", "setMaxReportedRows:" + n);
        int n2 = n;
        if (n == 0) {
            n2 = 3;
            GaGtmLog.d("GaGtmHelper", "value was 0, setMaxReportedRows:" + 3);
        }
        Object object = mLock;
        synchronized (object) {
            mMaxReportedRows = n2;
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public static void setMaxTraversedRows(int n) {
        GaGtmLog.d("GaGtmHelper", "setMaxTraversedRows:" + n);
        int n2 = n;
        if (n == 0) {
            n2 = 20;
            GaGtmLog.d("GaGtmHelper", "value was 0, setMaxReportedRows:" + 20);
        }
        Object object = mLock;
        synchronized (object) {
            mMaxTraversedRows = n2;
            return;
        }
    }

    private static StringBuilder stackElementString(StackTraceElement[] object, int n) {
        StringBuilder stringBuilder = new StringBuilder();
        object = object[n];
        String string = object.getFileName().replace((CharSequence)".java", (CharSequence)"");
        stringBuilder.append(" ").append(String.format("%02d", n)).append(":").append(string).append(":").append(object.getMethodName()).append(":").append(object.getLineNumber());
        return stringBuilder;
    }

    public static enum DeepMode {
        DEEPMODE_EVENT,
        DEEPMODE_EXCEPTION;
        

        private DeepMode() {
        }
    }

}

