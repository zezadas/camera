/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.mediasaving;

import android.location.Location;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.SavingRequest;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class ExifOption {
    private static final String TAG = "ExifOption";
    public String mDateTime;
    public Location mGPSOption;
    public String mMake;
    public String mModel;
    public int mOrientation;
    public long mPixelXDimension;
    public long mPixelYDimension;
    public byte[] mThumbnailData;
    public long mThumbnailDataLength;

    public ExifOption();

    public static ExifOption create(SavingRequest var0, byte[] var1);

    public static String getExifDate(long var0);

    public static short getExifOrientation(int var0);

    private static void log(ExifOption var0);
}

