/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.media.videowriter;

import android.media.AudioRecord;
import android.media.MediaCodec;
import android.os.Handler;
import com.sonyericsson.cameracommon.utility.ByteBufferUtil;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonymobile.cameracommon.media.encoder.InputDataSource;
import com.sonymobile.cameracommon.media.utility.BackgroundWorker;
import java.nio.Buffer;
import java.nio.ByteBuffer;

class AudioSampleDataSource
implements InputDataSource,
AudioRecord.OnRecordPositionUpdateListener {
    private static final long INPUTBUFFER_TIMEOUT_MICROSECONDS = 100000;
    private static final int NOTIFICATION_COUNT_PER_SECOND = 10;
    private static final String TAG = AudioSampleDataSource.class.getSimpleName();
    private volatile boolean mAlreadyEos = false;
    private final ByteBuffer mAudioBuffer;
    private final AudioRecord mAudioRecord;
    private final int mChannelConfig;
    private final MediaCodec mCodec;
    private final int mFormat;
    private final int mNotificationPeriod;
    private long mSampleCount;
    private final int mSampleDataBytes;
    private final int mSampleRate;
    private final BackgroundWorker mWorker;

    /*
     * Enabled aggressive block sorting
     */
    public AudioSampleDataSource(MediaCodec mediaCodec, int n, int n2, int n3) {
        this.mCodec = mediaCodec;
        this.mSampleRate = n;
        n = n2 == 2 ? 12 : 16;
        this.mChannelConfig = n;
        this.mFormat = n3;
        n = AudioRecord.getMinBufferSize(this.mSampleRate, this.mChannelConfig, this.mFormat) * 8;
        this.mAudioRecord = new AudioRecord(1, this.mSampleRate, 12, 2, n);
        this.mAudioBuffer = ByteBuffer.allocateDirect(n);
        this.mSampleDataBytes = this.computeSampleDataBytes();
        this.mNotificationPeriod = this.mSampleRate / 10;
        this.mWorker = new BackgroundWorker("AudioSampleDataReaderThread");
    }

    private int bytesInFrame() {
        switch (this.mAudioRecord.getAudioFormat()) {
            default: {
                throw new IllegalStateException("Specified Audio format is not supported.");
            }
            case 2: {
                return 2;
            }
            case 3: 
        }
        return 1;
    }

    private int channels() {
        return this.mAudioRecord.getChannelCount();
    }

    private int computeSampleDataBytes() {
        return this.bytesInFrame() * this.channels();
    }

    private long getPresentationTime() {
        return this.getPresentationTime(0);
    }

    private long getPresentationTime(long l) {
        return 1000000 * (this.mSampleCount + l) / (long)this.mSampleRate;
    }

    private static boolean isCancelled() {
        return Thread.currentThread().isInterrupted();
    }

    /*
     * Enabled aggressive block sorting
     */
    private void pushToEncoder(ByteBuffer byteBuffer, int n, long l, boolean bl, ByteBuffer[] arrbyteBuffer) {
        int n2;
        byte[] arrby;
        int n3 = 0;
        if (byteBuffer.hasArray()) {
            arrby = byteBuffer.array();
            n2 = byteBuffer.arrayOffset();
            byte[] arrby2 = arrby;
        } else {
            byte[] arrby3 = ByteBufferUtil.array(byteBuffer);
            n2 = 0;
        }
        int n4 = 0;
        while (!AudioSampleDataSource.isCancelled()) {
            void var1_3;
            void var5_7;
            void var2_5;
            void var6_8;
            if (n4 != 0) {
                return;
            }
            int n5 = this.mCodec.dequeueInputBuffer(100000);
            if (n5 < 0) continue;
            long l2 = this.getPresentationTime(n3 / this.computeSampleDataBytes());
            arrby = var6_8[n5];
            n4 = Math.min(arrby.limit(), (int)(var2_5 - n3));
            arrby.clear();
            arrby.put((byte[])var1_3, n3 + n2, n4);
            int n6 = arrby.position();
            int n7 = n3 + n6;
            n3 = n7 >= var2_5 ? 1 : 0;
            n4 = n3 != 0 && var5_7 != false ? 4 : 0;
            this.mCodec.queueInputBuffer(n5, 0, n6, l2, n4);
            n4 = n3;
            n3 = n7;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void readSampleData(boolean bl) {
        if (this.mAlreadyEos) {
            return;
        }
        ByteBuffer[] arrbyteBuffer = this.mCodec.getInputBuffers();
        int n = this.mAudioRecord.read(this.mAudioBuffer, this.mAudioBuffer.limit());
        switch (n) {
            case -2: {
                return;
            }
            case -3: {
                n = 0;
            }
        }
        long l = n / this.mSampleDataBytes;
        long l2 = this.getPresentationTime();
        boolean bl2 = n == 0;
        bl = bl2 | bl;
        this.pushToEncoder(this.mAudioBuffer, n, l2, bl, arrbyteBuffer);
        if (bl) {
            this.mAlreadyEos = true;
        }
        this.mSampleCount+=l;
    }

    private void requestToReadSampleData(final boolean bl) {
        this.mWorker.getHandler().post(new Runnable(){

            @Override
            public void run() {
                try {
                    AudioSampleDataSource.this.readSampleData(bl);
                    return;
                }
                catch (IllegalStateException var1_1) {
                    CameraLogger.e(TAG, var1_1 + " occurred. Maybe camera server is dead.", var1_1);
                    return;
                }
            }
        });
    }

    @Override
    public void onMarkerReached(AudioRecord audioRecord) {
    }

    @Override
    public void onPeriodicNotification(AudioRecord audioRecord) {
        try {
            this.readSampleData(false);
            return;
        }
        catch (IllegalStateException var1_2) {
            CameraLogger.e(TAG, var1_2 + " occurred. Maybe camera server is dead.", var1_2);
            return;
        }
    }

    @Override
    public void release() {
        this.mAudioRecord.release();
    }

    @Override
    public void start() {
        this.mSampleCount = 0;
        if (this.mAudioRecord.setPositionNotificationPeriod(this.mNotificationPeriod) != 0) {
            CameraLogger.e(TAG, "setPositionNotificationPeriod:failed");
        }
        this.mAudioRecord.setRecordPositionUpdateListener(this, this.mWorker.getHandler());
        this.mAudioRecord.startRecording();
        this.requestToReadSampleData(false);
    }

    @Override
    public void stop() {
        this.mAudioRecord.stop();
        this.requestToReadSampleData(true);
        try {
            this.mWorker.quit();
            return;
        }
        catch (InterruptedException var1_1) {
            return;
        }
    }

}

