/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.utility;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
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

    static;

    private CameraLogger();

    public static int d(String var0, String var1);

    public static int d(String var0, String var1, Throwable var2);

    public static /* varargs */ int d(String var0, String var1, Object ... var2);

    public static int dForOperators(String var0);

    public static void dumpStackTrace();

    public static int e(String var0, String var1);

    public static int e(String var0, String var1, Throwable var2);

    public static int errorLogForNonUserVariant(String var0, String var1);

    public static int errorLogForNonUserVariant(String var0, String var1, Throwable var2);

    public static String getMemoryUsage();

    public static int i(String var0, String var1);

    public static int i(String var0, String var1, Throwable var2);

    public static void p(String var0, String var1);

    public static void setAppName(String var0);

    public static void showOrientation(String var0, String var1, int var2);

    private static String time();

    private static String timeForOperators();

    public static int v(String var0, String var1);

    public static int v(String var0, String var1, Throwable var2);

    public static int w(String var0, String var1);

    public static int w(String var0, String var1, Throwable var2);
}

