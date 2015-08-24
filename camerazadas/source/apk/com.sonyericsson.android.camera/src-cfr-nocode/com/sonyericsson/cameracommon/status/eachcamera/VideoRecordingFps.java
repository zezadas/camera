/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.status.eachcamera;

import com.sonyericsson.cameracommon.status.EachCameraStatusValue;
import com.sonyericsson.cameracommon.status.IntegerValue;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class VideoRecordingFps
extends IntegerValue
implements EachCameraStatusValue {
    public static final int DEFAULT_VALUE = 0;
    public static final String KEY = "video_recording_fps";
    private static int REQUIRED_PROVIDER_VERSION;

    static;

    public VideoRecordingFps(int var1);

    @Override
    public String getKey();

    @Override
    public int minRequiredVersion();
}

