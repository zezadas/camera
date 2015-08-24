/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.mediasaving.yuv2jpeg;

import android.location.Location;
import android.os.Build;
import android.text.format.DateFormat;
import com.sonyericsson.cameracommon.mediasaving.yuv2jpeg.ExifInfo;
import com.sonyericsson.cameracommon.utility.CameraLogger;

class ExifOption {
    private static final String TAG = "ExifOption";
    public ExifInfo.ByteOrder mByteOrder;
    public String mDateTime;
    public Location mGPSOption;
    public String mMake;
    public String mModel;
    public int mOrientation = 1;
    public long mPixelXDimension;
    public long mPixelYDimension;
    public byte[] mThumbnailData;
    public long mThumbnailDataLength;

    ExifOption() {
    }

    public static ExifOption create(ExifInfo exifInfo, byte[] arrby) {
        ExifOption exifOption = new ExifOption();
        exifOption.mMake = Build.MANUFACTURER;
        exifOption.mModel = Build.MODEL;
        exifOption.mOrientation = ExifOption.getExifOrientation(exifInfo.getOrientation());
        exifOption.mDateTime = ExifOption.getExifDate(exifInfo.getTimestamp());
        exifOption.mPixelXDimension = exifInfo.getWidth();
        exifOption.mPixelYDimension = exifInfo.getHeight();
        exifOption.mGPSOption = exifInfo.getLocation();
        exifOption.mByteOrder = exifInfo.getByteOrder();
        if (arrby == null) {
            exifOption.mThumbnailData = new byte[1];
            exifOption.mThumbnailDataLength = 1;
            return exifOption;
        }
        exifOption.mThumbnailData = arrby;
        exifOption.mThumbnailDataLength = exifOption.mThumbnailData.length;
        return exifOption;
    }

    public static String getExifDate(long l) {
        return DateFormat.format((CharSequence)"yyyy:MM:dd kk:mm:ss", l).toString();
    }

    public static short getExifOrientation(int n) {
        int n2 = n;
        if (n < 0) {
            n2 = n + 360;
        }
        switch (n2) {
            default: {
                return 1;
            }
            case 0: {
                return 1;
            }
            case 90: {
                return 6;
            }
            case 180: {
                return 3;
            }
            case 270: 
        }
        return 8;
    }

    private static void log(ExifOption exifOption) {
        CameraLogger.d("ExifOption", "dump of exifOption: ");
        CameraLogger.d("ExifOption", "mMake = " + exifOption.mMake);
        CameraLogger.d("ExifOption", "mModel = " + exifOption.mModel);
        CameraLogger.showOrientation("ExifOption", "mOrientation = ", exifOption.mOrientation);
        CameraLogger.d("ExifOption", "mDateTime = " + exifOption.mDateTime);
        CameraLogger.d("ExifOption", "mPixelXDimension = " + exifOption.mPixelXDimension);
        CameraLogger.d("ExifOption", "mPixelYDimension = " + exifOption.mPixelYDimension);
        CameraLogger.d("ExifOption", "mGPSOption = " + exifOption.mGPSOption);
        CameraLogger.d("ExifOption", "mThumbnailDataLength = " + exifOption.mThumbnailDataLength);
        CameraLogger.d("ExifOption", "mByteOrder = " + (Object)exifOption.mByteOrder);
    }
}

