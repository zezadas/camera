/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.parameter.dependency;

import com.sonyericsson.android.camera.configuration.parameters.FaceIdentify;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValueHolder;
import com.sonyericsson.android.camera.configuration.parameters.SmileCapture;
import com.sonyericsson.android.camera.configuration.parameters.VideoSmileCapture;
import com.sonyericsson.android.camera.parameter.CapturingModeParams;
import com.sonyericsson.android.camera.parameter.ParameterUtil;
import com.sonyericsson.android.camera.parameter.dependency.DependencyApplier;

public class FocusModeOtherApplier
extends DependencyApplier {
    @Override
    public void apply(CapturingModeParams capturingModeParams) {
        ParameterUtil.applyRecommendedValue(capturingModeParams.mFaceIdentify, FaceIdentify.OFF);
        ParameterUtil.applyRecommendedValue(capturingModeParams.mSmileCapture, SmileCapture.OFF);
        ParameterUtil.applyRecommendedValue(capturingModeParams.mVideoSmileCapture, VideoSmileCapture.OFF);
    }

    @Override
    public void reset(CapturingModeParams capturingModeParams) {
        ParameterUtil.reset(capturingModeParams.mFaceIdentify);
        ParameterUtil.reset(capturingModeParams.mSmileCapture);
        ParameterUtil.reset(capturingModeParams.mVideoSmileCapture);
    }
}

