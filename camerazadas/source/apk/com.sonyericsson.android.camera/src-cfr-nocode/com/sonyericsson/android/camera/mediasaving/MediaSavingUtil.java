/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.mediasaving;

import android.content.Context;
import android.graphics.YuvImage;
import android.net.Uri;
import com.sonyericsson.android.camera.mediasaving.IntegrationMakerException;
import com.sonyericsson.cameracommon.mediasaving.MediaSavingResult;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.SavingRequest;
import java.io.OutputStream;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class MediaSavingUtil {
    private static final byte[] APP0_MARKER;
    private static final int EXIF_THUMBNAIL_HEIGHT = 120;
    private static final int EXIF_THUMBNAIL_WIDTH = 160;
    public static final int HEADER_MARGIN = 1024;
    private static final int M_DHT = 196;
    private static final int M_DQT = 219;
    private static final int M_MARKER = 255;
    private static final int M_SOI = 216;
    private static final int M_SOS = 218;
    private static final int SIZE_OF_ONE_BYTE = 8;
    private static final byte[] SOI_MARKER;
    static final String TAG;

    static;

    public MediaSavingUtil();

    public static int addExifHeader(OutputStream var0, SavingRequest var1, byte[] var2);

    public static void appendOnlyImageFromJfifData(OutputStream var0, byte[] var1, int var2);

    public static MediaSavingResult convertYuvToJpegOutputStream(YuvImage var0, OutputStream var1, SavingRequest var2);

    public static byte[] getExifThumbnail(byte[] var0, SavingRequest var1);

    public static int integrateJfif(byte[] var0, byte[] var1) throws IntegrationMakerException;

    public static boolean isCoverPicture(int var0);

    public static MediaSavingResult saveImage(byte[] var0, Uri var1, Context var2);

    public static MediaSavingResult saveImage(byte[] var0, String var1, int var2);

    public static MediaSavingResult saveYuvImage(YuvImage var0, String var1, SavingRequest var2);

    public static int skipApp0Marker(byte[] var0);
}

