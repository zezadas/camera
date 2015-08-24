/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.status.eachcamera;

import android.content.ContentValues;
import android.graphics.Rect;
import android.hardware.Camera;
import com.sonyericsson.cameracommon.status.CameraStatusValue;
import com.sonyericsson.cameracommon.status.EachCameraStatusValue;

public abstract class ResolutionValue
implements CameraStatusValue,
EachCameraStatusValue {
    private static int REQUIRED_PROVIDER_VERSION = 1;
    private int mHeight;
    private int mWidth;

    public ResolutionValue(int n, int n2) {
        this.mWidth = n;
        this.mHeight = n2;
    }

    public ResolutionValue(Rect rect) {
        this.mWidth = rect.width();
        this.mHeight = rect.height();
    }

    public ResolutionValue(Camera.Size size) {
        this.mWidth = size.width;
        this.mHeight = size.height;
    }

    @Override
    public String getValueForDebug() {
        return this.toString();
    }

    @Override
    public int minRequiredVersion() {
        return REQUIRED_PROVIDER_VERSION;
    }

    @Override
    public void putInto(ContentValues contentValues, String string) {
        contentValues.put(string + this.getKey(), this.toString());
    }

    public String toString() {
        return "" + this.mWidth + "x" + this.mHeight;
    }
}

