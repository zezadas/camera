/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.parameter;

import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.FaceIdentify;
import com.sonyericsson.android.camera.configuration.parameters.Flash;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValueHolder;
import com.sonyericsson.android.camera.configuration.parameters.PhotoLight;
import com.sonyericsson.android.camera.configuration.parameters.SuperResolution;
import com.sonyericsson.android.camera.configuration.parameters.VideoHdr;
import com.sonyericsson.android.camera.parameter.CapturingModeParams;
import com.sonyericsson.android.camera.parameter.Parameters;
import com.sonyericsson.cameracommon.mediasaving.StorageController;

public abstract class FrontParameters
extends Parameters {
    public FrontParameters(CapturingMode capturingMode, boolean bl, StorageController storageController) {
        super(capturingMode, bl, storageController);
    }

    @Override
    public FaceIdentify getFaceIdentify() {
        return FaceIdentify.OFF;
    }

    @Override
    public SuperResolution getSuperResolution() {
        return SuperResolution.OFF;
    }

    @Override
    public VideoHdr getVideoHdr() {
        return VideoHdr.OFF;
    }

    @Override
    public void set(FaceIdentify faceIdentify) {
    }

    @Override
    public void set(SuperResolution superResolution) {
    }

    @Override
    public void set(VideoHdr videoHdr) {
    }

    @Override
    protected void updatePhotoLight() {
        this.mCapturingModeParams.mPhotoLight.setDefaultValue();
        if (this.mCapturingModeParams.mFlash.get() == Flash.LED_ON) {
            this.mCapturingModeParams.mFlash.setDefaultValue();
        }
    }
}

