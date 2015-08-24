/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.status;

import android.content.Context;
import com.sonyericsson.cameracommon.status.CameraStatusPublisher;
import com.sonyericsson.cameracommon.status.GlobalCameraStatusValue;
import com.sonyericsson.cameracommon.status.global.BuiltInCameraIds;
import com.sonyericsson.cameracommon.status.global.CameraId;
import com.sonyericsson.cameracommon.status.global.RemovableCameraClients;

public class GlobalCameraStatusPublisher
extends CameraStatusPublisher<GlobalCameraStatusValue> {
    public GlobalCameraStatusPublisher(Context context) {
        super(context);
    }

    @Override
    public CameraStatusPublisher<GlobalCameraStatusValue> putDefaultAll() {
        this.put(new CameraId(CameraId.defaultValue(this.getCameraCommonVersion())));
        this.put(new BuiltInCameraIds(BuiltInCameraIds.DEFAULT_VALUE));
        this.put(new RemovableCameraClients(0));
        return this;
    }
}

