/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.mediasaving;

import android.location.Location;
import com.sonyericsson.android.camera.mediasaving.ExifOption;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class ExifFactory {
    private static byte[] APP1_HEADER;
    private static int APP1_LENGTH = 0;
    private static byte[] EXIF_IFD;
    private static byte[] FIRST_IFD;
    private static byte[] GPS_IFD;
    private static final int MAKER_NAME_LIMITATION = 14;
    private static final String TAG = "ExifFactory";
    private static byte[] TIFF_HEADER;
    private static byte[] ZERO_IFD;
    private static byte[] ZERO_IFD_INT;

    static;

    public ExifFactory();

    private static void checkArguments(byte[] var0, ExifOption var1);

    private static void fillNullValue(byte[] var0, int var1, int var2);

    public static int generate(byte[] var0, ExifOption var1);

    public static int getLength();

    private static void removeGpsInfoFromHeader(byte[] var0);

    private static void updateDateTime(byte[] var0, String var1);

    private static void updateExifSize(byte[] var0, int var1);

    private static void updateGpsFields(byte[] var0, Location var1);

    private static void updateJpegInterchangeFormatLength(byte[] var0, long var1);

    private static void updateMake(byte[] var0, String var1);

    private static void updateModel(byte[] var0, String var1);

    private static void updateOrientation(byte[] var0, int var1);

    private static void updatePixelXDimension(byte[] var0, long var1);

    private static void updatePixelYDimension(byte[] var0, long var1);

    private static int writeASCIIValue(byte[] var0, int var1, String var2);

    private static void writeByteValue(byte[] var0, int var1, int var2);

    private static boolean writeGpsInfoToHeader(byte[] var0, Location var1);

    private static void writeLongValue(byte[] var0, int var1, long var2);

    private static void writeRationalValue(byte[] var0, int var1, long var2, long var4);

    private static void writeShortValue(byte[] var0, int var1, int var2);

    private static int writeTemplate(byte[] var0);
}

