/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.utility;

import android.os.Build;
import android.os.Debug;
import android.util.Log;
import java.util.Locale;

public final class CameraLogger {
    public static final boolean DEBUG = false;
    public static final boolean DEBUG_LOG_ALL_I = false;
    public static final boolean DEBUG_LOG_WITH_TIME = false;
    public static final String DEBUG_PERFORM_FILE = "camera_perform.csv";
    public static final boolean DEBUG_PERFORM_MEM = false;
    public static final String DEBUG_PERFORM_TIME_TAG = "[PERFORMANCE]";
    private static final int LOCAL_LOG_LEVEL = 2;
    public static final int LOG_ASSERT = 7;
    public static final int LOG_DEBUG = 3;
    public static final int LOG_ERROR = 6;
    public static final int LOG_INFO = 4;
    public static final int LOG_VERBOSE = 2;
    public static final int LOG_WARN = 5;
    public static final boolean isEngBuild;
    public static final boolean isLayoutDebug = false;
    public static final boolean isStorageDebug = false;
    public static final boolean isTimeDebug = false;
    public static final boolean isUserdebugBuild;
    public static final boolean isUserdebugOrEngBuild;
    private static String sTag;

    /*
     * Enabled aggressive block sorting
     */
    static {
        boolean bl = false;
        boolean bl2 = true;
        boolean bl3 = Build.TYPE.equals("eng");
        isEngBuild = bl3;
        bl3 = bl;
        if (Build.TYPE.equals("userdebug")) {
            bl3 = true;
        }
        isUserdebugBuild = bl3;
        bl3 = Build.TYPE.equals("userdebug") ? bl2 : isEngBuild;
        isUserdebugOrEngBuild = bl3;
        sTag = "SemcCameraApp";
    }

    private CameraLogger() {
    }

    public static int d(String string, String string2) {
        return 0;
    }

    public static int d(String string, String string2, Throwable throwable) {
        return 0;
    }

    public static /* varargs */ int d(String string, String string2, Object ... arrobject) {
        return 0;
    }

    public static int dForOperators(String string) {
        return Log.d(sTag, CameraLogger.timeForOperators() + ":CAMERA_PERFORMANCE_TAG:" + string);
    }

    public static void dumpStackTrace() {
        StackTraceElement[] arrstackTraceElement = Thread.currentThread().getStackTrace();
        Log.d(sTag, "## dump stack trace ...");
        for (int i = 1; i < arrstackTraceElement.length; ++i) {
            Log.d(sTag, "trace:" + arrstackTraceElement[i].getClassName() + "#" + arrstackTraceElement[i].getMethodName());
        }
    }

    public static int e(String string, String string2) {
        return Log.e(sTag, CameraLogger.time() + string + ":" + string2);
    }

    public static int e(String string, String string2, Throwable throwable) {
        return Log.e(sTag, CameraLogger.time() + string + ":" + string2, throwable);
    }

    public static int errorLogForNonUserVariant(String string, String string2) {
        if (Build.TYPE.equals("userdebug") || Build.TYPE.equals("eng")) {
            return Log.e(sTag, CameraLogger.time() + string + ":" + string2);
        }
        return 0;
    }

    public static int errorLogForNonUserVariant(String string, String string2, Throwable throwable) {
        if (Build.TYPE.equals("userdebug") || Build.TYPE.equals("eng")) {
            return Log.e(sTag, CameraLogger.time() + string + ":" + string2, throwable);
        }
        return 0;
    }

    public static String getMemoryUsage() {
        long l = Runtime.getRuntime().totalMemory();
        long l2 = Runtime.getRuntime().freeMemory();
        long l3 = Runtime.getRuntime().maxMemory();
        long l4 = Debug.getNativeHeapAllocatedSize();
        long l5 = Debug.getNativeHeapFreeSize();
        long l6 = Debug.getNativeHeapSize();
        return String.format(Locale.US, "%d, %d, %d, %d, %d, %d", l, l2, l3, l4, l5, l6);
    }

    public static int i(String string, String string2) {
        return 0;
    }

    public static int i(String string, String string2, Throwable throwable) {
        return 0;
    }

    public static void p(String string, String string2) {
        Log.e(sTag, "[PERFORMANCE] [TIME = " + System.currentTimeMillis() + "] [" + Thread.currentThread().getName() + ":" + string + ":" + string2 + "]");
    }

    public static void setAppName(String string) {
        sTag = string;
    }

    public static void showOrientation(String string, String string2, int n) {
        switch (n) {
            default: {
                CameraLogger.d(string, string2 + ": " + n);
                return;
            }
            case 2: {
                CameraLogger.d(string, string2 + " LANDSCAPE");
                return;
            }
            case 1: 
        }
        CameraLogger.d(string, string2 + " PORTRAIT");
    }

    private static String time() {
        return "";
    }

    private static String timeForOperators() {
        long l = System.currentTimeMillis();
        return Long.valueOf(l).toString() + " ";
    }

    public static int v(String string, String string2) {
        return 0;
    }

    public static int v(String string, String string2, Throwable throwable) {
        return 0;
    }

    public static int w(String string, String string2) {
        return 0;
    }

    public static int w(String string, String string2, Throwable throwable) {
        return 0;
    }
}

