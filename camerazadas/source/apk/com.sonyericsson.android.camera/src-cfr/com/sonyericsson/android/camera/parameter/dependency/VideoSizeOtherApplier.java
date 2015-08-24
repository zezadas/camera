/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.parameter.dependency;

import android.graphics.Rect;
import com.sonyericsson.android.camera.ActionMode;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValueHolder;
import com.sonyericsson.android.camera.configuration.parameters.Scene;
import com.sonyericsson.android.camera.configuration.parameters.VideoHdr;
import com.sonyericsson.android.camera.configuration.parameters.VideoSize;
import com.sonyericsson.android.camera.configuration.parameters.VideoStabilizer;
import com.sonyericsson.android.camera.parameter.CapturingModeParams;
import com.sonyericsson.android.camera.parameter.ParameterUtil;
import com.sonyericsson.android.camera.parameter.dependency.DependencyApplier;
import com.sonyericsson.android.camera.util.capability.HardwareCapability;

public class VideoSizeOtherApplier
extends DependencyApplier {
    private final boolean mIsOneShotVideo;

    public VideoSizeOtherApplier(boolean bl) {
        this.mIsOneShotVideo = bl;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void apply(CapturingModeParams capturingModeParams) {
        int n = capturingModeParams.getActionMode().mCameraId;
        VideoSize videoSize = capturingModeParams.mVideoSize.get();
        boolean bl = HardwareCapability.getInstance().isVideoHdrSupported(n, videoSize.getVideoRect());
        if (!(this.mIsOneShotVideo || capturingModeParams.mCapturingMode.get() == CapturingMode.FRONT_PHOTO && capturingModeParams.mCapturingMode.get() == CapturingMode.SUPERIOR_FRONT)) {
            if (capturingModeParams.mScene.get() != Scene.OFF) {
                ParameterUtil.forceChange(capturingModeParams.mVideoHdr, VideoHdr.OFF);
            } else if (bl) {
                ParameterUtil.reset(capturingModeParams.mVideoHdr);
            } else {
                ParameterUtil.unavailable(capturingModeParams.mVideoHdr, VideoHdr.OFF);
            }
        }
        bl = VideoStabilizer.isSteadyShotSupported(n, videoSize);
        boolean bl2 = VideoStabilizer.isIntelligentActiveSupported(n, videoSize);
        if (!(bl || bl2)) {
            ParameterUtil.unavailable(capturingModeParams.mVideoStabilizer, VideoStabilizer.OFF);
            return;
        }
        if (capturingModeParams.mScene.get() != Scene.OFF) {
            ParameterUtil.forceChange(capturingModeParams.mVideoStabilizer, VideoStabilizer.getRecommendedVideoStabilizerValue(n, videoSize));
            return;
        }
        ParameterUtil.reset(capturingModeParams.mVideoStabilizer);
    }

    @Override
    public void reset(CapturingModeParams capturingModeParams) {
    }
}

