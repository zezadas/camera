/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.media.videowriter;

import android.media.AudioRecord;
import android.media.MediaCodec;
import com.sonymobile.cameracommon.media.encoder.InputDataSource;
import com.sonymobile.cameracommon.media.utility.BackgroundWorker;
import java.nio.ByteBuffer;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
class AudioSampleDataSource
implements InputDataSource,
AudioRecord.OnRecordPositionUpdateListener {
    private static final long INPUTBUFFER_TIMEOUT_MICROSECONDS = 100000;
    private static final int NOTIFICATION_COUNT_PER_SECOND = 10;
    private static final String TAG;
    private volatile boolean mAlreadyEos;
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

    static;

    public AudioSampleDataSource(MediaCodec var1, int var2, int var3, int var4);

    static /* synthetic */ void access$000(AudioSampleDataSource var0, boolean var1);

    static /* synthetic */ String access$100();

    private int bytesInFrame();

    private int channels();

    private int computeSampleDataBytes();

    private long getPresentationTime();

    private long getPresentationTime(long var1);

    private static boolean isCancelled();

    private void pushToEncoder(ByteBuffer var1, int var2, long var3, boolean var5, ByteBuffer[] var6);

    private void readSampleData(boolean var1);

    private void requestToReadSampleData(boolean var1);

    @Override
    public void onMarkerReached(AudioRecord var1);

    @Override
    public void onPeriodicNotification(AudioRecord var1);

    @Override
    public void release();

    @Override
    public void start();

    @Override
    public void stop();

}

