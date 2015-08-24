/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.parameter.dependency;

import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.Ev;
import com.sonyericsson.android.camera.configuration.parameters.FaceIdentify;
import com.sonyericsson.android.camera.configuration.parameters.FocusMode;
import com.sonyericsson.android.camera.configuration.parameters.Hdr;
import com.sonyericsson.android.camera.configuration.parameters.Iso;
import com.sonyericsson.android.camera.configuration.parameters.Metering;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValueHolder;
import com.sonyericsson.android.camera.configuration.parameters.SmileCapture;
import com.sonyericsson.android.camera.configuration.parameters.Stabilizer;
import com.sonyericsson.android.camera.configuration.parameters.WhiteBalance;
import com.sonyericsson.android.camera.parameter.CapturingModeParams;
import com.sonyericsson.android.camera.parameter.ParameterUtil;
import com.sonyericsson.android.camera.parameter.dependency.DependencyApplier;

public class SceneGourmetApplier
extends DependencyApplier {
    @Override
    public void apply(CapturingModeParams capturingModeParams) {
        ParameterUtil.unavailable(capturingModeParams.mEv, Ev.ZERO);
        ParameterUtil.unavailable(capturingModeParams.mWhiteBalance, WhiteBalance.AUTO);
        ParameterUtil.unavailable(capturingModeParams.mSmileCapture, SmileCapture.OFF);
        ParameterUtil.unavailable(capturingModeParams.mFocusMode, FocusMode.SINGLE);
        ParameterUtil.unavailable(capturingModeParams.mHdr, Hdr.HDR_OFF);
        ParameterUtil.unavailable(capturingModeParams.mIso, Iso.ISO_AUTO);
        ParameterUtil.unavailable(capturingModeParams.mMetering, Metering.getDefaultValue(capturingModeParams.mCapturingMode.get()));
        ParameterUtil.unavailable(capturingModeParams.mStabilizer, Stabilizer.ON);
        ParameterUtil.unavailable(capturingModeParams.mFaceIdentify, FaceIdentify.OFF);
    }

    @Override
    public void reset(CapturingModeParams capturingModeParams) {
        ParameterUtil.reset(capturingModeParams.mEv);
        ParameterUtil.reset(capturingModeParams.mWhiteBalance);
        ParameterUtil.reset(capturingModeParams.mSmileCapture);
        ParameterUtil.reset(capturingModeParams.mFocusMode);
        ParameterUtil.reset(capturingModeParams.mHdr);
        ParameterUtil.reset(capturingModeParams.mIso);
        ParameterUtil.reset(capturingModeParams.mMetering);
        ParameterUtil.reset(capturingModeParams.mStabilizer);
        ParameterUtil.reset(capturingModeParams.mFaceIdentify);
    }
}

