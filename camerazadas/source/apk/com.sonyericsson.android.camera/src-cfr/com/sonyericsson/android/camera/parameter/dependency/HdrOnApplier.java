/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.parameter.dependency;

import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.Iso;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValueHolder;
import com.sonyericsson.android.camera.configuration.parameters.Resolution;
import com.sonyericsson.android.camera.configuration.parameters.Stabilizer;
import com.sonyericsson.android.camera.parameter.CapturingModeParams;
import com.sonyericsson.android.camera.parameter.ParameterUtil;
import com.sonyericsson.android.camera.parameter.dependency.DependencyApplier;

public class HdrOnApplier
extends DependencyApplier {
    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void apply(CapturingModeParams capturingModeParams) {
        ParameterUtil.applyRecommendedValue(capturingModeParams.mStabilizer, Stabilizer.OFF);
        if (capturingModeParams.mCapturingMode.get() == CapturingMode.FRONT_PHOTO) return;
        {
            ParameterUtil.reset(capturingModeParams.mIso);
            if (Iso.isAlwaysChangeToAutoToResolveDependency()) {
                if (!Iso.isExclusiveWith(capturingModeParams.mResolution.get())) {
                    ParameterUtil.applyRecommendedValue(capturingModeParams.mIso, Iso.ISO_AUTO);
                    return;
                }
                ParameterUtil.unavailable(capturingModeParams.mIso, Iso.ISO_AUTO);
                return;
            } else {
                if (capturingModeParams.mIso.get().getIsoValue() < Iso.ISO_800.getIsoValue()) return;
                {
                    ParameterUtil.applyRecommendedValue(capturingModeParams.mIso, Iso.ISO_AUTO);
                    return;
                }
            }
        }
    }

    @Override
    public void reset(CapturingModeParams capturingModeParams) {
        ParameterUtil.reset(capturingModeParams.mStabilizer);
    }
}

