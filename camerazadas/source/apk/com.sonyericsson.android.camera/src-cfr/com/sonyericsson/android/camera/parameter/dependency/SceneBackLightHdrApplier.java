/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.parameter.dependency;

import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.Ev;
import com.sonyericsson.android.camera.configuration.parameters.Flash;
import com.sonyericsson.android.camera.configuration.parameters.FocusMode;
import com.sonyericsson.android.camera.configuration.parameters.Hdr;
import com.sonyericsson.android.camera.configuration.parameters.Iso;
import com.sonyericsson.android.camera.configuration.parameters.Metering;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValueHolder;
import com.sonyericsson.android.camera.configuration.parameters.Stabilizer;
import com.sonyericsson.android.camera.configuration.parameters.WhiteBalance;
import com.sonyericsson.android.camera.parameter.CapturingModeParams;
import com.sonyericsson.android.camera.parameter.ParameterUtil;
import com.sonyericsson.android.camera.parameter.dependency.DependencyApplier;

public class SceneBackLightHdrApplier
extends DependencyApplier {
    @Override
    public void apply(CapturingModeParams capturingModeParams) {
        if (capturingModeParams.mCapturingMode.get() != CapturingMode.VIDEO) {
            ParameterUtil.unavailable(capturingModeParams.mFlash, Flash.OFF);
        }
        ParameterUtil.unavailable(capturingModeParams.mEv, Ev.ZERO);
        ParameterUtil.unavailable(capturingModeParams.mWhiteBalance, WhiteBalance.AUTO);
        ParameterUtil.unavailable(capturingModeParams.mFocusMode, FocusMode.FACE_DETECTION);
        ParameterUtil.unavailable(capturingModeParams.mHdr, Hdr.HDR_ON);
        ParameterUtil.unavailable(capturingModeParams.mIso, Iso.ISO_AUTO);
        ParameterUtil.unavailable(capturingModeParams.mMetering, Metering.getDefaultValue(capturingModeParams.mCapturingMode.get()));
        ParameterUtil.unavailable(capturingModeParams.mStabilizer, Stabilizer.OFF);
    }

    @Override
    public void reset(CapturingModeParams capturingModeParams) {
        if (capturingModeParams.mCapturingMode.get() != CapturingMode.VIDEO) {
            ParameterUtil.reset(capturingModeParams.mFlash);
        }
        ParameterUtil.reset(capturingModeParams.mEv);
        ParameterUtil.reset(capturingModeParams.mWhiteBalance);
        ParameterUtil.reset(capturingModeParams.mFocusMode);
        ParameterUtil.reset(capturingModeParams.mHdr);
        ParameterUtil.reset(capturingModeParams.mIso);
        ParameterUtil.reset(capturingModeParams.mMetering);
        ParameterUtil.reset(capturingModeParams.mStabilizer);
    }
}

