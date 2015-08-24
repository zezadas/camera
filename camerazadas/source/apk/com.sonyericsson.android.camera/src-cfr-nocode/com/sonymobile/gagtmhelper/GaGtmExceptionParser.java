/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.gagtmhelper;

import android.content.Context;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
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

    static;

    private GaGtmExceptionParser();

    static /* synthetic */ Object access$000();

    static /* synthetic */ Thread.UncaughtExceptionHandler access$100();

    private static StringBuilder createThrowableDescription(Throwable var0, int var1);

    private static StringBuilder createThrowableDescriptionShort(Throwable var0);

    private static StringBuilder createThrowableDescriptionStackTrace(Throwable var0);

    public static void enableExceptionParsing(Context var0) throws IllegalStateException;

    public static void generateCrash(Thread var0, Throwable var1);

    private static void generateDeepCrashEventMode(Throwable var0, String var1);

    private static void generateDeepCrashExceptionMode(Throwable var0, String var1);

    private static void generateNormalCrash(Thread var0, Throwable var1, String var2);

    private static String getRawStackTraceHashString(Thread var0, Throwable var1);

    private static String getStackTraceHash(Thread var0, Throwable var1);

    private static byte[] intToByteArray(int var0);

    private static boolean isDeepCrash(String var0);

    private static boolean packageNameIsEnabled(String var0);

    private static String replaceAllNumbers(String var0);

    public static void setDeepCrashHashList(String var0);

    public static void setDeepMode(String var0);

    public static void setEnabledPackageNames(String var0);

    public static void setMaxReportedRows(int var0);

    public static void setMaxTraversedRows(int var0);

    private static StringBuilder stackElementString(StackTraceElement[] var0, int var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class DeepMode
    extends Enum<DeepMode> {
        private static final /* synthetic */ DeepMode[] $VALUES;
        public static final /* enum */ DeepMode DEEPMODE_EVENT;
        public static final /* enum */ DeepMode DEEPMODE_EXCEPTION;

        static;

        private DeepMode();

        public static DeepMode valueOf(String var0);

        public static DeepMode[] values();
    }

}

