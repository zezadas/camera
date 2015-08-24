/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.parameter.dependency;

import com.sonyericsson.android.camera.configuration.parameters.Hdr;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValueHolder;
import com.sonyericsson.android.camera.configuration.parameters.Resolution;
import com.sonyericsson.android.camera.configuration.parameters.Stabilizer;
import com.sonyericsson.android.camera.parameter.CapturingModeParams;
import com.sonyericsson.android.camera.parameter.ParameterUtil;
import com.sonyericsson.android.camera.parameter.dependency.DependencyApplier;
import com.sonyericsson.android.camera.util.capability.HardwareCapability;

public class IsoAutoApplier
extends DependencyApplier {
    @Override
    public void apply(CapturingModeParams capturingModeParams) {
        ParameterUtil.reset(capturingModeParams.mStabilizer);
        if (HardwareCapability.isStillHdrSupportedWith(capturingModeParams.mResolution.get())) {
            if (capturingModeParams.mStabilizer.get() == Stabilizer.ON) {
                ParameterUtil.applyRecommendedValue(capturingModeParams.mHdr, Hdr.HDR_OFF);
            }
        } else {
            return;
        }
        ParameterUtil.reset(capturingModeParams.mHdr);
    }

    @Override
    public void reset(CapturingModeParams capturingModeParams) {
        if (HardwareCapability.isStillHdrSupportedWith(capturingModeParams.mResolution.get())) {
            ParameterUtil.reset(capturingModeParams.mHdr);
        }
    }
}

