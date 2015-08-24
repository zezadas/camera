/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.media.encoder;

import android.media.MediaFormat;
import android.media.MediaMuxer;
import com.sonymobile.cameracommon.media.encoder.EncodedDataWriteTask;
import com.sonymobile.cameracommon.media.encoder.InputDataInfo;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class MediaEncoder {
    private static final String TAG;
    private final EncodedDataWriteTask.EncodedDataWriteListener mEncodedDataWriteListener;
    private CountDownLatch mEncoderFinishSignal;
    private CountDownLatch mEncoderFormatChangedSignal;
    private ExecutorService mInputEncodedDataThreadPool;
    private final InputDataInfo[] mInputStreams;
    private final Runnable mMainTask;
    private final MediaMuxer mMuxer;
    private CountDownLatch mMuxerStartedSignal;
    private CountDownLatch mRequestFinishSignal;
    private final StateListener mStateListener;
    private final Runnable mWaitRequestFinishSignalTask;

    static;

    public MediaEncoder(InputDataInfo[] var1, MediaMuxer var2, StateListener var3);

    static /* synthetic */ CountDownLatch access$000(MediaEncoder var0);

    static /* synthetic */ CountDownLatch access$002(MediaEncoder var0, CountDownLatch var1);

    static /* synthetic */ InputDataInfo[] access$100(MediaEncoder var0);

    static /* synthetic */ CountDownLatch access$200(MediaEncoder var0);

    static /* synthetic */ CountDownLatch access$202(MediaEncoder var0, CountDownLatch var1);

    static /* synthetic */ CountDownLatch access$300(MediaEncoder var0);

    static /* synthetic */ CountDownLatch access$302(MediaEncoder var0, CountDownLatch var1);

    static /* synthetic */ void access$400(MediaEncoder var0);

    static /* synthetic */ StateListener access$500(MediaEncoder var0);

    static /* synthetic */ CountDownLatch access$600(MediaEncoder var0);

    private void shutdownEncodedDataThreadPool();

    void releaseEncoders();

    void releaseInputDataSource();

    void releaseMuxer();

    void sendOnFinishedEvent(boolean var1);

    void sendOnStartedEvent();

    public void start();

    public void start(ExecutorService var1);

    void startEncodedDataWriteTasks();

    void startEncoders();

    void startInputDataSource();

    void startMediaMuxerAfterEncodedFormatIsFixed() throws InterruptedException;

    public void stop();

    void stopEncoders();

    void stopInputDataSource() throws InterruptedException;

    void stopMuxer();

    void waitToCompleteEncoding();

    public static interface StateListener {
        public void onFinished(boolean var1);

        public void onProgress(long var1, long var3);

        public void onStarted();

        public void onStorageFull();
    }

}

