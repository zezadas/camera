/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.status.global;

import com.sonyericsson.cameracommon.status.GlobalCameraStatusValue;
import com.sonyericsson.cameracommon.status.IntegerArrayValue;

public class BuiltInCameraIds
extends IntegerArrayValue
implements GlobalCameraStatusValue {
    public static final int[] DEFAULT_VALUE = new int[0];
    public static final String KEY = "built_in_camera_ids";
    private static int REQUIRED_PROVIDER_VERSION = 10;

    public /* varargs */ BuiltInCameraIds(int ... arrn) {
        super(arrn);
    }

    @Override
    public String getKey() {
        return "built_in_camera_ids";
    }

    @Override
    public int minRequiredVersion() {
        return REQUIRED_PROVIDER_VERSION;
    }
}

