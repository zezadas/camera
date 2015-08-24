/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.status.eachcamera;

import android.graphics.Rect;
import android.hardware.Camera;
import com.sonyericsson.cameracommon.status.EachCameraStatusValue;
import com.sonyericsson.cameracommon.status.eachcamera.ResolutionValue;

public class PreviewResolution
extends ResolutionValue
implements EachCameraStatusValue {
    public static final Rect DEFAULT_VALUE = new Rect(0, 0, 0, 0);
    public static final String KEY = "preview_resolution";
    private static int REQUIRED_PROVIDER_VERSION = 1;

    public PreviewResolution(Rect rect) {
        super(rect);
    }

    public PreviewResolution(Camera.Size size) {
        super(size);
    }

    @Override
    public String getKey() {
        return "preview_resolution";
    }

    @Override
    public int minRequiredVersion() {
        return REQUIRED_PROVIDER_VERSION;
    }
}

