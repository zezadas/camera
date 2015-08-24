/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.parameter.dependency;

import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.Hdr;
import com.sonyericsson.android.camera.configuration.parameters.Iso;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValueHolder;
import com.sonyericsson.android.camera.configuration.parameters.Resolution;
import com.sonyericsson.android.camera.configuration.parameters.Scene;
import com.sonyericsson.android.camera.parameter.CapturingModeParams;
import com.sonyericsson.android.camera.parameter.ParameterUtil;
import com.sonyericsson.android.camera.parameter.dependency.DependencyApplier;

public class ResolutionCorrectionApplier
extends DependencyApplier {
    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void apply(CapturingModeParams capturingModeParams) {
        if (capturingModeParams.mScene.get() != Scene.OFF) {
            DependencyApplier.create(capturingModeParams.mScene.get()).reset(capturingModeParams);
            DependencyApplier.create(Scene.OFF).apply(capturingModeParams);
        }
        ParameterUtil.unavailable(capturingModeParams.mScene, Scene.OFF);
        ParameterUtil.unavailable(capturingModeParams.mHdr, Hdr.HDR_OFF);
        if (Iso.isAlwaysChangeToAutoToResolveDependency()) {
            ParameterUtil.unavailable(capturingModeParams.mIso, Iso.ISO_AUTO);
            return;
        } else {
            capturingModeParams.mIso.setOptions((ParameterValue[])Iso.getOptions(capturingModeParams.mCapturingMode.get(), capturingModeParams.mResolution.get()));
            if (capturingModeParams.mIso.get() != Iso.ISO_1600 && capturingModeParams.mIso.get() != Iso.ISO_3200 && capturingModeParams.mIso.get() != Iso.ISO_6400) return;
            {
                ParameterUtil.applyRecommendedValue(capturingModeParams.mIso, Iso.ISO_AUTO);
                return;
            }
        }
    }

    @Override
    public void reset(CapturingModeParams capturingModeParams) {
        ParameterUtil.reset(capturingModeParams.mScene);
        ParameterUtil.reset(capturingModeParams.mHdr);
        if (Iso.isAlwaysChangeToAutoToResolveDependency()) {
            ParameterUtil.reset(capturingModeParams.mIso);
        }
    }
}

