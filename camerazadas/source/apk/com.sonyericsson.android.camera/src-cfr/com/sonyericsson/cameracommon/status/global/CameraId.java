/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.status.global;

import com.sonyericsson.cameracommon.status.GlobalCameraStatusValue;
import com.sonyericsson.cameracommon.status.IntegerValue;

public class CameraId
extends IntegerValue
implements GlobalCameraStatusValue {
    public static final int DEFAULT_VALUE = 0;
    public static final String KEY = "camera_id";
    private static int REQUIRED_PROVIDER_VERSION = 1;

    public CameraId(int n) {
        super(n);
    }

    public static int defaultValue(int n) {
        if (n >= 10) {
            // empty if block
        }
        return 0;
    }

    @Override
    public String getKey() {
        return "camera_id";
    }

    @Override
    public int minRequiredVersion() {
        return REQUIRED_PROVIDER_VERSION;
    }
}

