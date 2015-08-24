/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.parameter.dependency;

import com.sonyericsson.android.camera.configuration.parameters.ParameterValueHolder;
import com.sonyericsson.android.camera.configuration.parameters.VideoHdr;
import com.sonyericsson.android.camera.configuration.parameters.VideoSize;
import com.sonyericsson.android.camera.parameter.CapturingModeParams;
import com.sonyericsson.android.camera.parameter.ParameterUtil;
import com.sonyericsson.android.camera.parameter.dependency.DependencyApplier;

public class EvOtherApplier
extends DependencyApplier {
    private boolean isVideoHdrSupported(CapturingModeParams capturingModeParams) {
        switch (.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoSize[capturingModeParams.mVideoSize.get().ordinal()]) {
            default: {
                return true;
            }
            case 1: 
            case 2: 
            case 3: 
        }
        return false;
    }

    @Override
    public void apply(CapturingModeParams capturingModeParams) {
        if (capturingModeParams.mVideoHdr.get() == VideoHdr.ON) {
            ParameterUtil.applyRecommendedValue(capturingModeParams.mVideoHdr, VideoHdr.OFF);
        }
    }

    @Override
    public void reset(CapturingModeParams capturingModeParams) {
        if (this.isVideoHdrSupported(capturingModeParams)) {
            ParameterUtil.reset(capturingModeParams.mVideoHdr);
        }
    }

}

