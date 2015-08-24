/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.vanilla.util;

public class Log {
    public static final boolean IS_DEBUG = false;

    private static void log(String string, String string2, String string3) {
        android.util.Log.e("TraceLog", "[" + string + "] " + "[TIME = " + System.currentTimeMillis() + "] " + "[" + string2 + "]" + "[" + Thread.currentThread().getName() + "] " + ": " + string3);
    }

    public static void logDebug(String string, String string2) {
        Log.log("DEBUG", string, string2);
    }

    public static void logError(String string, String string2) {
        Log.log("ERROR", string, string2);
    }
}

