/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.parameter.dependency;

import android.graphics.Rect;
import com.sonyericsson.android.camera.ActionMode;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.Ev;
import com.sonyericsson.android.camera.configuration.parameters.FaceIdentify;
import com.sonyericsson.android.camera.configuration.parameters.Flash;
import com.sonyericsson.android.camera.configuration.parameters.FocusMode;
import com.sonyericsson.android.camera.configuration.parameters.Hdr;
import com.sonyericsson.android.camera.configuration.parameters.Iso;
import com.sonyericsson.android.camera.configuration.parameters.Metering;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValueHolder;
import com.sonyericsson.android.camera.configuration.parameters.Stabilizer;
import com.sonyericsson.android.camera.configuration.parameters.VideoHdr;
import com.sonyericsson.android.camera.configuration.parameters.VideoSize;
import com.sonyericsson.android.camera.configuration.parameters.VideoStabilizer;
import com.sonyericsson.android.camera.configuration.parameters.WhiteBalance;
import com.sonyericsson.android.camera.parameter.CapturingModeParams;
import com.sonyericsson.android.camera.parameter.ParameterUtil;
import com.sonyericsson.android.camera.parameter.dependency.DependencyApplier;
import com.sonyericsson.android.camera.util.capability.HardwareCapability;

public class SceneOffApplier
extends DependencyApplier {
    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void apply(CapturingModeParams capturingModeParams) {
        ParameterUtil.applyRecommendedValue(capturingModeParams.mEv, Ev.ZERO);
        ParameterUtil.applyRecommendedValue(capturingModeParams.mWhiteBalance, WhiteBalance.AUTO);
        if (capturingModeParams.mCapturingMode.get() == CapturingMode.VIDEO) {
            ParameterUtil.applyRecommendedValue(capturingModeParams.mFocusMode, FocusMode.FACE_DETECTION);
            if (capturingModeParams.mVideoSize.get() != VideoSize.MMS) {
                int n = capturingModeParams.getActionMode().mCameraId;
                if (HardwareCapability.getInstance().isVideoHdrSupported(n, capturingModeParams.mVideoSize.get().getVideoRect())) {
                    ParameterUtil.applyRecommendedValue(capturingModeParams.mVideoHdr, VideoHdr.OFF);
                } else {
                    ParameterUtil.unavailable(capturingModeParams.mVideoHdr, VideoHdr.OFF);
                }
                boolean bl = VideoStabilizer.isSteadyShotSupported(n, capturingModeParams.mVideoSize.get());
                boolean bl2 = VideoStabilizer.isIntelligentActiveSupported(n, capturingModeParams.mVideoSize.get());
                if (bl || bl2) {
                    ParameterUtil.applyRecommendedValue(capturingModeParams.mVideoStabilizer, VideoStabilizer.getRecommendedVideoStabilizerValue(n, capturingModeParams.mVideoSize.get()));
                } else {
                    ParameterUtil.unavailable(capturingModeParams.mVideoStabilizer, VideoStabilizer.OFF);
                }
            } else {
                ParameterUtil.unavailable(capturingModeParams.mVideoHdr, VideoHdr.OFF);
                ParameterUtil.unavailable(capturingModeParams.mVideoStabilizer, VideoStabilizer.OFF);
            }
        } else {
            ParameterUtil.reset(capturingModeParams.mFocusMode);
            ParameterUtil.reset(capturingModeParams.mFlash);
            ParameterUtil.applyRecommendedValue(capturingModeParams.mHdr, Hdr.HDR_OFF);
            ParameterUtil.applyRecommendedValue(capturingModeParams.mIso, Iso.ISO_AUTO);
            ParameterUtil.applyRecommendedValue(capturingModeParams.mStabilizer, Stabilizer.OFF);
            ParameterUtil.reset(capturingModeParams.mFaceIdentify);
        }
        ParameterUtil.applyRecommendedValue(capturingModeParams.mMetering, Metering.getDefaultValue(capturingModeParams.mCapturingMode.get()));
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void reset(CapturingModeParams capturingModeParams) {
        ParameterUtil.reset(capturingModeParams.mEv);
        ParameterUtil.reset(capturingModeParams.mWhiteBalance);
        if (capturingModeParams.mCapturingMode.get() == CapturingMode.VIDEO) {
            if (capturingModeParams.mVideoSize.get() != VideoSize.MMS) {
                ParameterUtil.reset(capturingModeParams.mVideoHdr);
                ParameterUtil.reset(capturingModeParams.mVideoStabilizer);
            }
        } else {
            ParameterUtil.reset(capturingModeParams.mHdr);
            ParameterUtil.reset(capturingModeParams.mIso);
            ParameterUtil.reset(capturingModeParams.mStabilizer);
        }
        ParameterUtil.reset(capturingModeParams.mMetering);
    }
}

