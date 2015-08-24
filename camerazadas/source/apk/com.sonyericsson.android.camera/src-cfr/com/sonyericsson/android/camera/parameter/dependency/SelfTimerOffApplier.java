/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.parameter.dependency;

import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.FocusMode;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValueHolder;
import com.sonyericsson.android.camera.configuration.parameters.Scene;
import com.sonyericsson.android.camera.configuration.parameters.SmileCapture;
import com.sonyericsson.android.camera.parameter.CapturingModeParams;
import com.sonyericsson.android.camera.parameter.ParameterUtil;
import com.sonyericsson.android.camera.parameter.dependency.DependencyApplier;

public class SelfTimerOffApplier
extends DependencyApplier {
    @Override
    public void apply(CapturingModeParams capturingModeParams) {
        switch (.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$Scene[capturingModeParams.mScene.get().ordinal()]) {
            default: {
                ParameterUtil.reset(capturingModeParams.mSmileCapture);
            }
            case 1: 
            case 2: 
            case 3: 
            case 4: 
            case 5: 
            case 6: 
            case 7: 
        }
        if (capturingModeParams.mCapturingMode.get() == CapturingMode.NORMAL && capturingModeParams.mScene.get() == Scene.OFF) {
            if (capturingModeParams.mSmileCapture.get() == SmileCapture.OFF) {
                ParameterUtil.reset(capturingModeParams.mFocusMode);
            }
        } else {
            return;
        }
        ParameterUtil.applyRecommendedValue(capturingModeParams.mFocusMode, FocusMode.FACE_DETECTION);
    }

    @Override
    public void reset(CapturingModeParams capturingModeParams) {
    }

}

