/*
 * Decompiled with CFR 0_100.
 * 
 * Could not load the following classes:
 *  com.sonymobile.imageprocessor.jpegencoder.JpegEncoder
 */
package com.sonyericsson.cameracommon.mediasaving.yuv2jpeg;

import android.graphics.Bitmap;
import android.graphics.YuvImage;
import com.sonyericsson.cameracommon.mediasaving.yuv2jpeg.ExifInfo;
import com.sonyericsson.cameracommon.mediasaving.yuv2jpeg.IntegrationMakerException;
import com.sonymobile.imageprocessor.jpegencoder.JpegEncoder;
import java.io.IOException;
import java.io.OutputStream;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class Yuv2ExifJpegConvertor {
    private static final byte[] APP0_MARKER;
    private static final byte[] APP1_MARKER;
    private static final byte[] EXIF_BYTE_ORDER_BE;
    private static final byte[] EXIF_BYTE_ORDER_LE;
    private static final int EXIF_BYTE_ORDER_OFFSET = 11;
    private static final byte[] EXIF_CODE;
    private static final int EXIF_THUMBNAIL_HEIGHT = 120;
    private static final int EXIF_THUMBNAIL_WIDTH = 160;
    public static final int HEADER_MARGIN = 1024;
    private static final int JPEG_COMPRESS_QUALITY = 93;
    private static final byte MARKER_CODE = -1;
    private static final int MARKER_SIZE = 2;
    private static final int M_DHT = 196;
    private static final int M_DQT = 219;
    private static final int M_MARKER = 255;
    private static final int M_SOI = 216;
    private static final int M_SOS = 218;
    private static final int SEGMENT_LENGTH_AREA_SIZE = 2;
    private static final int SIZE_OF_ONE_BYTE = 8;
    private static final byte[] SOI_MARKER;
    private static final String TAG = "Yuv2ExifJpegConvertor";

    static;

    public Yuv2ExifJpegConvertor();

    public static int addExifHeader(OutputStream var0, ExifInfo var1, byte[] var2);

    public static byte[] addExifToPlainJpeg(byte[] var0, ExifInfo var1);

    private static void appendImageInExifFormat(byte[] var0, int var1, OutputStream var2) throws IOException, IntegrationMakerException;

    private static void appendInOneSegment(byte[] var0, int var1, OutputStream var2) throws IOException, IntegrationMakerException;

    public static void appendOnlyImageFromJpegData(OutputStream var0, byte[] var1, int var2) throws IntegrationMakerException;

    public static byte[] convertBitmapToExifJpeg(Bitmap var0, ExifInfo var1);

    public static byte[] convertBitmapToPlainJpeg(Bitmap var0);

    private static byte[] convertToSegmentLengthBytes(int var0);

    public static byte[] convertYuvToExifJpeg(YuvImage var0, ExifInfo var1);

    public static byte[] convertYuvToPlainJpeg(YuvImage var0, ExifInfo var1);

    protected static byte[] convertYuvToPlainJpegWithImageProcessor(JpegEncoder var0, YuvImage var1, int var2, int var3);

    protected static byte[] convertYuvToPlainJpegWithoutImageProcessor(YuvImage var0, int var1, int var2);

    public static ExifInfo.ByteOrder getExifByteOrder(byte[] var0);

    public static byte[] getExifThumbnail(byte[] var0, ExifInfo var1);

    private static int getSegmentLength(byte[] var0, int var1);

    private static int getSegmentNum(byte[] var0, byte var1);

    public static int integrateJfif(byte[] var0, byte[] var1) throws IntegrationMakerException;

    public static int skipApp0OrApp1Marker(byte[] var0);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class SegmentInfo {
        private final int mIndex;
        private final int mSegmentLength;

        SegmentInfo(int var1, int var2);

        public int getIndex();

        public int getSegmentLength();
    }

}

