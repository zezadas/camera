/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.status.eachcamera;

import android.graphics.Rect;
import android.hardware.Camera;
import com.sonyericsson.cameracommon.status.EachCameraStatusValue;
import com.sonyericsson.cameracommon.status.eachcamera.ResolutionValue;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class PreviewResolution
extends ResolutionValue
implements EachCameraStatusValue {
    public static final Rect DEFAULT_VALUE;
    public static final String KEY = "preview_resolution";
    private static int REQUIRED_PROVIDER_VERSION;

    static;

    public PreviewResolution(Rect var1);

    public PreviewResolution(Camera.Size var1);

    @Override
    public String getKey();

    @Override
    public int minRequiredVersion();
}

