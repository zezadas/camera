/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.status;

import android.content.Context;
import com.sonyericsson.cameracommon.status.CameraStatusPublisher;
import com.sonyericsson.cameracommon.status.GlobalCameraStatusValue;

public class GlobalCameraStatusPublisher
extends CameraStatusPublisher<GlobalCameraStatusValue> {
    public GlobalCameraStatusPublisher(Context var1);

    @Override
    public CameraStatusPublisher<GlobalCameraStatusValue> putDefaultAll();
}

