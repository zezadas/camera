/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.status.eachcamera;

import com.sonyericsson.cameracommon.status.EachCameraStatusValue;
import com.sonyericsson.cameracommon.status.IntegerValue;

public class VideoRecordingFps
extends IntegerValue
implements EachCameraStatusValue {
    public static final int DEFAULT_VALUE = 0;
    public static final String KEY = "video_recording_fps";
    private static int REQUIRED_PROVIDER_VERSION = 1;

    public VideoRecordingFps(int n) {
        super(n);
    }

    @Override
    public String getKey() {
        return "video_recording_fps";
    }

    @Override
    public int minRequiredVersion() {
        return REQUIRED_PROVIDER_VERSION;
    }
}

