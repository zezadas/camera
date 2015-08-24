/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.media.encoder;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.media.MediaMuxer;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import java.nio.ByteBuffer;

class EncodedDataWriteTask
implements Runnable {
    private static final long DEFAULT_TIME_DIFF = 0;
    private static final long OUTPUTBUFFER_TIMEOUT_NANOSECONDS = 100000000;
    private static final String TAG = EncodedDataWriteTask.class.getSimpleName();
    private final MediaCodec mCodec;
    private final EncodedDataWriteListener mListener;
    private final MediaMuxer mMuxer;
    private int mMuxerIndex;
    private final String mName;
    private long mTimeDiff;

    public EncodedDataWriteTask(MediaMuxer mediaMuxer, MediaCodec mediaCodec, EncodedDataWriteListener encodedDataWriteListener, String string) {
        this.mName = string;
        this.mMuxer = mediaMuxer;
        this.mCodec = mediaCodec;
        this.mListener = encodedDataWriteListener;
    }

    private boolean awaitEncoderFormat() {
        MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
        while (!EncodedDataWriteTask.canceled()) {
            if (this.mCodec.dequeueOutputBuffer(bufferInfo, 100000000) != -2) continue;
            return true;
        }
        return false;
    }

    private static boolean canceled() {
        return Thread.currentThread().isInterrupted();
    }

    private void logBufferInfoForPull(MediaCodec.BufferInfo bufferInfo) {
    }

    private void logBufferInfoForWrite(MediaCodec.BufferInfo bufferInfo, ByteBuffer byteBuffer) {
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    @Override
    public void run() {
        if (!this.awaitEncoderFormat()) {
            return;
        }
        var7_1 = this.mCodec.getOutputBuffers();
        var8_4 = new MediaCodec.BufferInfo();
        var2_5 = -1;
        this.mTimeDiff = 0;
        var9_6 = this.mCodec.getOutputFormat();
        var6_7 = this.mMuxer;
        // MONITORENTER : var6_7
        this.mMuxerIndex = this.mMuxer.addTrack((MediaFormat)var9_6);
        // MONITOREXIT : var6_7
        var6_7 = var7_1;
        var4_9 = var2_5;
        if (this.mListener != null) {
            this.mListener.onEncoderFormatChanged((MediaFormat)var9_6);
            var4_9 = var2_5;
            var6_7 = var7_1;
        }
        while (!EncodedDataWriteTask.canceled()) {
            try {
                var1_10 = this.mCodec.dequeueOutputBuffer(var8_4, 100000000);
                ** if (var1_10 != -1) goto lbl27
            }
            catch (IllegalStateException var6_8) {
                CameraLogger.e(EncodedDataWriteTask.TAG, var6_8 + " occurred. Maybe camera server is dead.", var6_8);
                break;
            }
lbl-1000: // 1 sources:
            {
                if (!EncodedDataWriteTask.canceled()) continue;
                break;
            }
lbl27: // 1 sources:
            if (var1_10 < 0) ** GOTO lbl68
            if (EncodedDataWriteTask.canceled()) {
                var8_4.flags|=4;
            }
            this.logBufferInfoForPull(var8_4);
            var7_1 = var6_7[var1_10];
            if (var4_9 >= var8_4.presentationTimeUs - this.mTimeDiff && var8_4.flags != 2) ** GOTO lbl50
            if (this.mTimeDiff == 0) {
                this.mTimeDiff = var8_4.presentationTimeUs;
            }
            var8_4.presentationTimeUs-=this.mTimeDiff;
            this.logBufferInfoForWrite(var8_4, (ByteBuffer)var7_1);
            try {
                var9_6 = this.mMuxer;
                // MONITORENTER : var9_6
            }
            catch (IllegalStateException var7_2) {
                this.mListener.onStorageFull();
            }
            this.mMuxer.writeSampleData(this.mMuxerIndex, (ByteBuffer)var7_1, var8_4);
            // MONITOREXIT : var9_6
            ** GOTO lbl45
lbl45: // 2 sources:
            var2_5 = var4_9 = var8_4.presentationTimeUs;
            if (this.mListener != null) {
                this.mListener.onEncodedDataWritten(var4_9, var8_4.size);
                var2_5 = var4_9;
            } else {
                ** GOTO lbl63
            }
            ** GOTO lbl63
lbl50: // 1 sources:
            var2_5 = var4_9;
            if (var8_4.flags != 4) ** GOTO lbl63
            var8_4.presentationTimeUs = 1 + var4_9;
            var8_4.size = 0;
            this.logBufferInfoForWrite(var8_4, (ByteBuffer)var7_1);
            try {
                var9_6 = this.mMuxer;
                // MONITORENTER : var9_6
            }
            catch (IllegalStateException var7_3) {}
            this.mMuxer.writeSampleData(this.mMuxerIndex, (ByteBuffer)var7_1, var8_4);
            // MONITOREXIT : var9_6
            ** GOTO lbl62
lbl62: // 2 sources:
            var2_5 = var8_4.presentationTimeUs;
lbl63: // 5 sources:
            this.mCodec.releaseOutputBuffer(var1_10, false);
            if (EncodedDataWriteTask.canceled()) break;
            var4_9 = var2_5;
            if ((var8_4.flags & 4) != 4) continue;
            break;
lbl68: // 1 sources:
            if (var1_10 == -3) {
                var6_7 = this.mCodec.getOutputBuffers();
                continue;
            }
            if (var1_10 != -2) continue;
        }
        if (this.mListener == null) return;
        this.mListener.onEncoderFinished();
    }

    public static interface EncodedDataWriteListener {
        public void onEncodedDataWritten(long var1, long var3);

        public void onEncoderFinished();

        public void onEncoderFormatChanged(MediaFormat var1);

        public void onStorageFull();
    }

}

