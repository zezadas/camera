/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.status.global;

import com.sonyericsson.cameracommon.status.GlobalCameraStatusValue;
import com.sonyericsson.cameracommon.status.IntegerValue;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class CameraId
extends IntegerValue
implements GlobalCameraStatusValue {
    public static final int DEFAULT_VALUE = 0;
    public static final String KEY = "camera_id";
    private static int REQUIRED_PROVIDER_VERSION;

    static;

    public CameraId(int var1);

    public static int defaultValue(int var0);

    @Override
    public String getKey();

    @Override
    public int minRequiredVersion();
}

