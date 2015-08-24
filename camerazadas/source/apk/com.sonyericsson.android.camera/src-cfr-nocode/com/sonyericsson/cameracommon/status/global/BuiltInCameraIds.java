/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.status.global;

import com.sonyericsson.cameracommon.status.GlobalCameraStatusValue;
import com.sonyericsson.cameracommon.status.IntegerArrayValue;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class BuiltInCameraIds
extends IntegerArrayValue
implements GlobalCameraStatusValue {
    public static final int[] DEFAULT_VALUE;
    public static final String KEY = "built_in_camera_ids";
    private static int REQUIRED_PROVIDER_VERSION;

    static;

    public /* varargs */ BuiltInCameraIds(int ... var1);

    @Override
    public String getKey();

    @Override
    public int minRequiredVersion();
}

