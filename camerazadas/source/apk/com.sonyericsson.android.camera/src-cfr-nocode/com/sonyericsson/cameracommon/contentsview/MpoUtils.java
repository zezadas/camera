/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.contentsview;

import java.io.EOFException;
import java.io.IOException;
import java.io.RandomAccessFile;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class MpoUtils {
    public static final int MULTIANGLE = 2;
    public static final int STEREO = 1;
    private static final String TAG;
    public static final int UNKNOWN = 0;

    static;

    private MpoUtils();

    static boolean checkFormatIdentifier(RandomAccessFile var0) throws IOException;

    static boolean checkMPEntryTag(RandomAccessFile var0) throws IOException;

    public static int getType(String var0);

    static boolean isAPP(byte var0, byte var1);

    static boolean isAPP2(byte var0, byte var1);

    static boolean isEOI(byte var0, byte var1);

    static boolean isSOI(byte var0, byte var1);

    static void skip(RandomAccessFile var0, int var1) throws EOFException, IOException;

    static int typeFromEntries(int var0);

    /*
     * Exception performing whole class analysis ignored.
     */
    private static class JpegMaker {
        static final byte APP0 = -32;
        static final byte APP15 = -17;
        static final byte APP2 = -30;
        static final byte EOI = -39;
        static final byte MARKER = -1;
        static final byte SOI = -40;

        private JpegMaker();
    }

}

