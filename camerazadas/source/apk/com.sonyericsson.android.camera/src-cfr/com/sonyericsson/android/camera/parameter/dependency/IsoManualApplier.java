/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.parameter.dependency;

import com.sonyericsson.android.camera.configuration.parameters.Hdr;
import com.sonyericsson.android.camera.configuration.parameters.Iso;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValueHolder;
import com.sonyericsson.android.camera.configuration.parameters.Resolution;
import com.sonyericsson.android.camera.configuration.parameters.Stabilizer;
import com.sonyericsson.android.camera.parameter.CapturingModeParams;
import com.sonyericsson.android.camera.parameter.ParameterUtil;
import com.sonyericsson.android.camera.parameter.dependency.DependencyApplier;
import com.sonyericsson.android.camera.util.capability.HardwareCapability;

public class IsoManualApplier
extends DependencyApplier {
    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void apply(CapturingModeParams capturingModeParams) {
        ParameterUtil.applyRecommendedValue(capturingModeParams.mStabilizer, Stabilizer.OFF);
        if (!HardwareCapability.isStillHdrSupportedWith(capturingModeParams.mResolution.get())) return;
        {
            ParameterUtil.reset(capturingModeParams.mHdr);
            if (Iso.isAlwaysChangeToAutoToResolveDependency()) {
                if (capturingModeParams.mIso.get() == Iso.ISO_AUTO || capturingModeParams.mHdr.get() != Hdr.HDR_ON) return;
                {
                    ParameterUtil.applyRecommendedValue(capturingModeParams.mHdr, Hdr.HDR_OFF);
                    return;
                }
            } else {
                if (capturingModeParams.mIso.get().getIsoValue() < Iso.ISO_800.getIsoValue() || capturingModeParams.mHdr.get() != Hdr.HDR_ON) return;
                {
                    ParameterUtil.applyRecommendedValue(capturingModeParams.mHdr, Hdr.HDR_OFF);
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

