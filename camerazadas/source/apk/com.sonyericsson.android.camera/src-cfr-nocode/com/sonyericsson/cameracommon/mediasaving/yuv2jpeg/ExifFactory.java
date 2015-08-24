/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.mediasaving.yuv2jpeg;

import android.location.Location;
import com.sonyericsson.cameracommon.mediasaving.yuv2jpeg.ExifInfo;
import com.sonyericsson.cameracommon.mediasaving.yuv2jpeg.ExifOption;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
class ExifFactory {
    private static byte[] APP1_HEADER;
    private static byte[] EXIF_IFD_BE;
    private static byte[] EXIF_IFD_LE;
    private static byte[] FIRST_IFD_BE;
    private static byte[] FIRST_IFD_LE;
    private static byte[] GPS_IFD_BE;
    private static byte[] GPS_IFD_LE;
    private static final int MAKER_NAME_LIMITATION = 14;
    private static final String TAG = "ExifFactory";
    private static byte[] TIFF_HEADER_BE;
    private static byte[] TIFF_HEADER_LE;
    private static byte[] ZERO_IFD_BE;
    private static byte[] ZERO_IFD_INT_BE;
    private static byte[] ZERO_IFD_INT_LE;
    private static byte[] ZERO_IFD_LE;
    private static ExifInfo.ByteOrder sByteOrder;
    private static byte[] sExifIFD;
    private static byte[] sFirstIFD;
    private static byte[] sGpsIFD;
    private static byte[] sTiffHeader;
    private static byte[] sZeroIFD;
    private static byte[] sZeroIFDInt;

    static;

    ExifFactory();

    private static void checkArguments(byte[] var0, ExifOption var1);

    private static void fillNullValue(byte[] var0, int var1, int var2);

    public static int generate(byte[] var0, ExifOption var1);

    public static int getLength(ExifOption var0);

    private static void removeGpsInfoFromHeader(byte[] var0);

    private static void setByteOrder(ExifInfo.ByteOrder var0);

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

    private static void writeShortValue(byte[] var0, int var1, int var2, ExifInfo.ByteOrder var3);

    private static int writeTemplate(byte[] var0);

}

