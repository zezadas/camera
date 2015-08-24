/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.status.eachcamera;

import android.graphics.Rect;
import com.sonyericsson.cameracommon.status.EachCameraStatusValue;
import com.sonyericsson.cameracommon.status.eachcamera.ResolutionValue;

public class VideoResolution
extends ResolutionValue
implements EachCameraStatusValue {
    public static final Rect DEFAULT_VALUE = new Rect(0, 0, 0, 0);
    public static final String KEY = "video_resolution";
    private static int REQUIRED_PROVIDER_VERSION = 1;

    public VideoResolution(int n, int n2) {
        super(n, n2);
    }

    public VideoResolution(Rect rect) {
        super(rect);
    }

    @Override
    public String getKey() {
        return "video_resolution";
    }

    @Override
    public int minRequiredVersion() {
        return REQUIRED_PROVIDER_VERSION;
    }
}

