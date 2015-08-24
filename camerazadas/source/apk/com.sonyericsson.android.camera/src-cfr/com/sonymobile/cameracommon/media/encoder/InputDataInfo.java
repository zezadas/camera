/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.media.encoder;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.view.Surface;
import com.sonymobile.cameracommon.media.encoder.InputDataSource;
import java.io.IOException;

public class InputDataInfo {
    public final MediaCodec codec;
    public final MediaFormat codecFormat;
    public final InputDataSource source;

    private InputDataInfo(MediaFormat mediaFormat, MediaCodec mediaCodec, InputDataSource inputDataSource) {
        this.codecFormat = mediaFormat;
        this.codec = mediaCodec;
        this.source = inputDataSource;
    }

    public static InputDataInfo create(MediaFormat mediaFormat, MediaCodec mediaCodec, InputDataSource inputDataSource) {
        return new InputDataInfo(mediaFormat, mediaCodec, inputDataSource);
    }

    public static InputDataInfo create(MediaFormat mediaFormat, InputDataSource inputDataSource) throws IOException {
        MediaCodec mediaCodec = MediaCodec.createEncoderByType(mediaFormat.getString("mime"));
        mediaCodec.configure(mediaFormat, null, null, 1);
        return InputDataInfo.create(mediaFormat, mediaCodec, inputDataSource);
    }

    public String mimeType() {
        return this.codecFormat.getString("mime");
    }
}

