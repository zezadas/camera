/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.parameter.dependency;

import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.Hdr;
import com.sonyericsson.android.camera.configuration.parameters.Iso;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValueHolder;
import com.sonyericsson.android.camera.configuration.parameters.Resolution;
import com.sonyericsson.android.camera.parameter.CapturingModeParams;
import com.sonyericsson.android.camera.parameter.ParameterUtil;
import com.sonyericsson.android.camera.parameter.dependency.DependencyApplier;
import com.sonyericsson.android.camera.util.capability.HardwareCapability;

public class StabilizerOffApplier
extends DependencyApplier {
    @Override
    public void apply(CapturingModeParams capturingModeParams) {
        if (HardwareCapability.isStillHdrSupportedWith(capturingModeParams.mResolution.get())) {
            ParameterUtil.reset(capturingModeParams.mHdr);
        }
        if (capturingModeParams.mCapturingMode.get() == CapturingMode.NORMAL) {
            if (Iso.isAlwaysChangeToAutoToResolveDependency() && Iso.isExclusiveWith(capturingModeParams.mResolution.get())) {
                ParameterUtil.unavailable(capturingModeParams.mIso, Iso.ISO_AUTO);
            }
        } else {
            return;
        }
        ParameterUtil.reset(capturingModeParams.mIso);
    }

    @Override
    public void reset(CapturingModeParams capturingModeParams) {
    }
}

