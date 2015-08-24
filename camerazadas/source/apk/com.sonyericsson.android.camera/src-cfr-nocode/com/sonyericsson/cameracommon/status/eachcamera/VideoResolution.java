/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.status.eachcamera;

import android.graphics.Rect;
import com.sonyericsson.cameracommon.status.EachCameraStatusValue;
import com.sonyericsson.cameracommon.status.eachcamera.ResolutionValue;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class VideoResolution
extends ResolutionValue
implements EachCameraStatusValue {
    public static final Rect DEFAULT_VALUE;
    public static final String KEY = "video_resolution";
    private static int REQUIRED_PROVIDER_VERSION;

    static;

    public VideoResolution(int var1, int var2);

    public VideoResolution(Rect var1);

    @Override
    public String getKey();

    @Override
    public int minRequiredVersion();
}

