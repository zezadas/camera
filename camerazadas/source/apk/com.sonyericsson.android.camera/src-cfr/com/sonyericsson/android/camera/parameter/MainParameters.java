/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.parameter;

import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.Flash;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValueHolder;
import com.sonyericsson.android.camera.configuration.parameters.PhotoLight;
import com.sonyericsson.android.camera.configuration.parameters.SoftSkin;
import com.sonyericsson.android.camera.parameter.CapturingModeParams;
import com.sonyericsson.android.camera.parameter.Parameters;
import com.sonyericsson.cameracommon.mediasaving.StorageController;

public abstract class MainParameters
extends Parameters {
    public MainParameters(CapturingMode capturingMode, boolean bl, StorageController storageController) {
        super(capturingMode, bl, storageController);
    }

    @Override
    public SoftSkin getSoftSkin() {
        return SoftSkin.OFF;
    }

    @Override
    public void set(SoftSkin softSkin) {
    }

    @Override
    public void updatePhotoLight() {
        this.mCapturingModeParams.mPhotoLight.setDefaultValue();
        if (this.mCapturingModeParams.mFlash.get() == Flash.LED_ON) {
            this.mCapturingModeParams.mFlash.setDefaultValue();
        }
    }
}

