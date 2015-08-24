/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.parameter.dependency;

import com.sonyericsson.android.camera.ActionMode;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValueHolder;
import com.sonyericsson.android.camera.configuration.parameters.VideoHdr;
import com.sonyericsson.android.camera.configuration.parameters.VideoSize;
import com.sonyericsson.android.camera.configuration.parameters.VideoStabilizer;
import com.sonyericsson.android.camera.parameter.CapturingModeParams;
import com.sonyericsson.android.camera.parameter.ParameterUtil;
import com.sonyericsson.android.camera.parameter.dependency.DependencyApplier;

public class VideoSizeCorrectionApplier
extends DependencyApplier {
    private final boolean mIsOneShotVideo;

    public VideoSizeCorrectionApplier(boolean bl) {
        this.mIsOneShotVideo = bl;
    }

    @Override
    public void apply(CapturingModeParams capturingModeParams) {
        if (!(this.mIsOneShotVideo || capturingModeParams.mCapturingMode.get() == CapturingMode.FRONT_PHOTO && capturingModeParams.mCapturingMode.get() == CapturingMode.SUPERIOR_FRONT)) {
            ParameterUtil.unavailable(capturingModeParams.mVideoHdr, VideoHdr.OFF);
        }
        int n = capturingModeParams.getActionMode().mCameraId;
        VideoSize videoSize = capturingModeParams.mVideoSize.get();
        boolean bl = VideoStabilizer.isSteadyShotSupported(n, videoSize);
        boolean bl2 = VideoStabilizer.isIntelligentActiveSupported(n, videoSize);
        if (bl || bl2) {
            ParameterUtil.reset(capturingModeParams.mVideoStabilizer);
            return;
        }
        ParameterUtil.unavailable(capturingModeParams.mVideoStabilizer, VideoStabilizer.OFF);
    }

    @Override
    public void reset(CapturingModeParams capturingModeParams) {
    }
}

