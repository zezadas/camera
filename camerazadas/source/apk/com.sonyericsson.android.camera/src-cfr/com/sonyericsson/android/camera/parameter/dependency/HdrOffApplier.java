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

public class HdrOffApplier
extends DependencyApplier {
    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public void apply(CapturingModeParams capturingModeParams) {
        ParameterUtil.reset(capturingModeParams.mStabilizer);
        if (capturingModeParams.mCapturingMode.get() == CapturingMode.FRONT_PHOTO) return;
        if (capturingModeParams.mStabilizer.get() == Stabilizer.ON) {
            if (Iso.isAlwaysChangeToAutoToResolveDependency()) {
                if (!Iso.isExclusiveWith(capturingModeParams.mResolution.get())) return;
                ParameterUtil.unavailable(capturingModeParams.mIso, Iso.ISO_AUTO);
                return;
            }
            ParameterUtil.applyRecommendedValue(capturingModeParams.mIso, Iso.ISO_AUTO);
            return;
        }
        ParameterUtil.reset(capturingModeParams.mIso);
    }

    @Override
    public void reset(CapturingModeParams capturingModeParams) {
        if (capturingModeParams.mCapturingMode.get() != CapturingMode.FRONT_PHOTO) {
            ParameterUtil.reset(capturingModeParams.mIso);
        }
    }
}

