/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.media.encoder;

import android.media.MediaCodec;
import android.media.MediaFormat;
import com.sonymobile.cameracommon.media.encoder.InputDataSource;
import java.io.IOException;

/*
 * Exception performing whole class analysis.
 */
public class InputDataInfo {
    public final MediaCodec codec;
    public final MediaFormat codecFormat;
    public final InputDataSource source;

    private InputDataInfo(MediaFormat var1, MediaCodec var2, InputDataSource var3);

    public static InputDataInfo create(MediaFormat var0, MediaCodec var1, InputDataSource var2);

    public static InputDataInfo create(MediaFormat var0, InputDataSource var1) throws IOException;

    public String mimeType();
}

