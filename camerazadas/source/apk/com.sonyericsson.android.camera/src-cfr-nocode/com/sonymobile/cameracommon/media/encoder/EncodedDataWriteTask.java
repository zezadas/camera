/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.media.encoder;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.media.MediaMuxer;
import java.nio.ByteBuffer;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
class EncodedDataWriteTask
implements Runnable {
    private static final long DEFAULT_TIME_DIFF = 0;
    private static final long OUTPUTBUFFER_TIMEOUT_NANOSECONDS = 100000000;
    private static final String TAG;
    private final MediaCodec mCodec;
    private final EncodedDataWriteListener mListener;
    private final MediaMuxer mMuxer;
    private int mMuxerIndex;
    private final String mName;
    private long mTimeDiff;

    static;

    public EncodedDataWriteTask(MediaMuxer var1, MediaCodec var2, EncodedDataWriteListener var3, String var4);

    private boolean awaitEncoderFormat();

    private static boolean canceled();

    private void logBufferInfoForPull(MediaCodec.BufferInfo var1);

    private void logBufferInfoForWrite(MediaCodec.BufferInfo var1, ByteBuffer var2);

    @Override
    public void run();

    public static interface EncodedDataWriteListener {
        public void onEncodedDataWritten(long var1, long var3);

        public void onEncoderFinished();

        public void onEncoderFormatChanged(MediaFormat var1);

        public void onStorageFull();
    }

}

