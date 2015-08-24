/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.mediasaving.yuv2jpeg;

import android.location.Location;
import com.sonyericsson.cameracommon.mediasaving.yuv2jpeg.ExifInfo;

/*
 * Exception performing whole class analysis.
 */
class ExifOption {
    private static final String TAG = "ExifOption";
    public ExifInfo.ByteOrder mByteOrder;
    public String mDateTime;
    public Location mGPSOption;
    public String mMake;
    public String mModel;
    public int mOrientation;
    public long mPixelXDimension;
    public long mPixelYDimension;
    public byte[] mThumbnailData;
    public long mThumbnailDataLength;

    ExifOption();

    public static ExifOption create(ExifInfo var0, byte[] var1);

    public static String getExifDate(long var0);

    public static short getExifOrientation(int var0);

    private static void log(ExifOption var0);
}

