/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.mediasaving.yuv2jpeg;

import android.location.Location;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.SavingRequest;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.TakenStatusCommon;

public class ExifInfo {
    private ByteOrder mByteOrder = ByteOrder.BIG_ENDIAN;
    private final int mHeight;
    private final Location mLocation;
    private final int mOrientation;
    private long mTimestamp = 0;
    private final int mWidth;

    public ExifInfo(long l, int n, Location location, int n2, int n3) {
        this.mTimestamp = l;
        this.mOrientation = n;
        this.mLocation = location;
        this.mWidth = n2;
        this.mHeight = n3;
    }

    public ExifInfo(long l, int n, Location location, int n2, int n3, ByteOrder byteOrder) {
        this(l, n, location, n2, n3);
        this.mByteOrder = byteOrder;
    }

    public ExifInfo(SavingRequest savingRequest) {
        this.mTimestamp = savingRequest.getDateTaken();
        this.mOrientation = savingRequest.common.orientation;
        this.mLocation = savingRequest.common.location;
        this.mWidth = savingRequest.common.width;
        this.mHeight = savingRequest.common.height;
    }

    public ByteOrder getByteOrder() {
        return this.mByteOrder;
    }

    public int getHeight() {
        return this.mHeight;
    }

    public Location getLocation() {
        return this.mLocation;
    }

    public int getOrientation() {
        return this.mOrientation;
    }

    public long getTimestamp() {
        return this.mTimestamp;
    }

    public int getWidth() {
        return this.mWidth;
    }

    public void setTimestamp(long l) {
        this.mTimestamp = l;
    }

    public static enum ByteOrder {
        BIG_ENDIAN,
        LITTLE_ENDIAN;
        

        private ByteOrder() {
        }
    }

}

