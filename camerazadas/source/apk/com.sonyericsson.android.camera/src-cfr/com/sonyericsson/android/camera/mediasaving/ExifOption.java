/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.mediasaving;

import android.location.Location;
import android.os.Build;
import android.text.format.DateFormat;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.SavingRequest;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.TakenStatusCommon;

public class ExifOption {
    private static final String TAG = "ExifOption";
    public String mDateTime;
    public Location mGPSOption;
    public String mMake;
    public String mModel;
    public int mOrientation = 1;
    public long mPixelXDimension;
    public long mPixelYDimension;
    public byte[] mThumbnailData;
    public long mThumbnailDataLength;

    public static ExifOption create(SavingRequest savingRequest, byte[] arrby) {
        ExifOption exifOption = new ExifOption();
        exifOption.mMake = Build.MANUFACTURER;
        exifOption.mModel = Build.MODEL;
        exifOption.mOrientation = ExifOption.getExifOrientation(savingRequest.common.orientation);
        exifOption.mDateTime = ExifOption.getExifDate(savingRequest.getDateTaken());
        exifOption.mPixelXDimension = savingRequest.common.width;
        exifOption.mPixelYDimension = savingRequest.common.height;
        exifOption.mGPSOption = savingRequest.common.location;
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
    }
}

