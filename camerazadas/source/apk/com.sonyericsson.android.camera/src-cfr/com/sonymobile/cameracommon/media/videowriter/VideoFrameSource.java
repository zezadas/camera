/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.media.videowriter;

import android.media.MediaCodec;
import android.view.Surface;
import com.sonymobile.cameracommon.media.encoder.InputDataSource;

class VideoFrameSource
implements InputDataSource {
    private final MediaCodec mEncoder;

    public VideoFrameSource(MediaCodec mediaCodec) {
        this.mEncoder = mediaCodec;
    }

    public Surface createInputSurface() {
        return this.mEncoder.createInputSurface();
    }

    @Override
    public void release() {
    }

    @Override
    public void start() {
    }

    @Override
    public void stop() {
        this.mEncoder.signalEndOfInputStream();
    }
}

