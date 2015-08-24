/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.remotedevice.util;

import java.io.InputStream;

/*
 * Exception performing whole class analysis ignored.
 */
public class Util {
    private static final boolean IS_DEBUG = false;

    public Util();

    public static int byteArray2Integer(byte[] var0, int var1, int var2);

    public static byte[] readInputStreamAsByteArray(String var0, InputStream var1, int var2);

    public static String readInputStreamAsString(String var0, InputStream var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class Http {
        private static int CONNECTION_TIMEOUT;
        private static final boolean IS_DEBUG = false;
        private static int READ_TIMEOUT;

        static;

        public Http();

        public static InputStream get(String var0, String var1);

        public static InputStream post(String var0, String var1, String var2);
    }

    /*
     * Exception performing whole class analysis ignored.
     */
    public static class Uri {
        public Uri();

        public static String getHostFrom(String var0);

        public static String getSchemeAndHostFrom(String var0);
    }

}

