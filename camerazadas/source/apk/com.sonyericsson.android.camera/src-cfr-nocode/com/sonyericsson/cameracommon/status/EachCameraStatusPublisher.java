/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.status;

import android.content.Context;
import android.hardware.Camera;
import com.sonyericsson.cameracommon.status.CameraStatusPublisher;
import com.sonyericsson.cameracommon.status.EachCameraStatusValue;

/*
 * Exception performing whole class analysis.
 */
public class EachCameraStatusPublisher
extends CameraStatusPublisher<EachCameraStatusValue> {
    private final String mKeyPrefix;

    public EachCameraStatusPublisher(Context var1, int var2);

    @Override
    protected String keyPrefix();

    @Override
    public CameraStatusPublisher<EachCameraStatusValue> putDefaultAll();

    public EachCameraStatusPublisher putFromParameter(Camera.Parameters var1);
}

