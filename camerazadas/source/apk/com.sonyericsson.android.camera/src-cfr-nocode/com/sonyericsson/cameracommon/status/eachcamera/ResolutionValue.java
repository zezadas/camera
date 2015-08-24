/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.status.eachcamera;

import android.content.ContentValues;
import android.graphics.Rect;
import android.hardware.Camera;
import com.sonyericsson.cameracommon.status.CameraStatusValue;
import com.sonyericsson.cameracommon.status.EachCameraStatusValue;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public abstract class ResolutionValue
implements CameraStatusValue,
EachCameraStatusValue {
    private static int REQUIRED_PROVIDER_VERSION;
    private int mHeight;
    private int mWidth;

    static;

    public ResolutionValue(int var1, int var2);

    public ResolutionValue(Rect var1);

    public ResolutionValue(Camera.Size var1);

    @Override
    public String getValueForDebug();

    @Override
    public int minRequiredVersion();

    @Override
    public void putInto(ContentValues var1, String var2);

    public String toString();
}

