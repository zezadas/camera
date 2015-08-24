/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.media.encoder;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.media.MediaMuxer;
import com.sonymobile.cameracommon.media.encoder.EncodedDataWriteTask;
import com.sonymobile.cameracommon.media.encoder.InputDataInfo;
import com.sonymobile.cameracommon.media.encoder.InputDataSource;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

public class MediaEncoder {
    private static final String TAG = MediaEncoder.class.getSimpleName();
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

    public MediaEncoder(InputDataInfo[] arrinputDataInfo, MediaMuxer mediaMuxer, StateListener stateListener) {
        this.mMainTask = new Runnable(){

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void run() {
                boolean bl = true;
                MediaEncoder.this.mEncoderFormatChangedSignal = new CountDownLatch(MediaEncoder.this.mInputStreams.length);
                MediaEncoder.this.mMuxerStartedSignal = new CountDownLatch(1);
                MediaEncoder.this.mEncoderFinishSignal = new CountDownLatch(MediaEncoder.this.mInputStreams.length);
                MediaEncoder.this.startEncoders();
                MediaEncoder.this.startInputDataSource();
                MediaEncoder.this.startEncodedDataWriteTasks();
                try {
                    MediaEncoder.this.startMediaMuxerAfterEncodedFormatIsFixed();
                    MediaEncoder.this.sendOnStartedEvent();
                    MediaEncoder.this.waitToCompleteEncoding();
                    MediaEncoder.this.stopEncoders();
                }
                catch (InterruptedException var2_2) {
                    MediaEncoder.this.stopEncoders();
                    return;
                }
                try {
                    MediaEncoder.this.stopMuxer();
                }
                catch (IllegalStateException var2_3) {
                    bl = false;
                }
                MediaEncoder.this.shutdownEncodedDataThreadPool();
                MediaEncoder.this.releaseInputDataSource();
                MediaEncoder.this.releaseEncoders();
                try {
                    MediaEncoder.this.releaseMuxer();
                }
                catch (IllegalStateException var2_4) {
                    bl = false;
                }
                MediaEncoder.this.sendOnFinishedEvent(bl);
            }
        };
        this.mEncodedDataWriteListener = new EncodedDataWriteTask.EncodedDataWriteListener(){

            @Override
            public void onEncodedDataWritten(long l, long l2) {
                MediaEncoder.this.mStateListener.onProgress(l, l2);
            }

            @Override
            public void onEncoderFinished() {
                MediaEncoder.this.mEncoderFinishSignal.countDown();
            }

            @Override
            public void onEncoderFormatChanged(MediaFormat mediaFormat) {
                MediaEncoder.this.mEncoderFormatChangedSignal.countDown();
                try {
                    MediaEncoder.this.mMuxerStartedSignal.await();
                    return;
                }
                catch (InterruptedException var1_2) {
                    return;
                }
            }

            @Override
            public void onStorageFull() {
                MediaEncoder.this.mStateListener.onStorageFull();
            }
        };
        this.mWaitRequestFinishSignalTask = new Runnable(){

            @Override
            public void run() {
                try {
                    MediaEncoder.this.mRequestFinishSignal.await();
                }
                catch (InterruptedException var1_1) {
                    return;
                }
                try {
                    MediaEncoder.this.stopInputDataSource();
                    return;
                }
                catch (InterruptedException var1_2) {
                    return;
                }
            }
        };
        this.mInputStreams = arrinputDataInfo;
        this.mMuxer = mediaMuxer;
        this.mStateListener = stateListener;
        this.mRequestFinishSignal = null;
        this.mInputEncodedDataThreadPool = Executors.newFixedThreadPool(this.mInputStreams.length);
    }

    private void shutdownEncodedDataThreadPool() {
        this.mInputEncodedDataThreadPool.shutdown();
    }

    void releaseEncoders() {
        InputDataInfo[] arrinputDataInfo = this.mInputStreams;
        int n = arrinputDataInfo.length;
        for (int i = 0; i < n; ++i) {
            arrinputDataInfo[i].codec.release();
        }
    }

    void releaseInputDataSource() {
        InputDataInfo[] arrinputDataInfo = this.mInputStreams;
        int n = arrinputDataInfo.length;
        for (int i = 0; i < n; ++i) {
            arrinputDataInfo[i].source.release();
        }
    }

    void releaseMuxer() {
        this.mMuxer.release();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    void sendOnFinishedEvent(boolean bl) {
        // MONITORENTER : this
        this.mRequestFinishSignal = null;
        // MONITOREXIT : this
        if (this.mStateListener == null) return;
        this.mStateListener.onFinished(bl);
    }

    void sendOnStartedEvent() {
        if (this.mStateListener != null) {
            this.mStateListener.onStarted();
        }
    }

    public void start() {
        this.start(Executors.newSingleThreadExecutor());
    }

    public void start(ExecutorService executorService) {
        if (this.mRequestFinishSignal != null) {
            throw new IllegalStateException();
        }
        this.mRequestFinishSignal = new CountDownLatch(1);
        executorService.execute(this.mMainTask);
    }

    void startEncodedDataWriteTasks() {
        for (InputDataInfo inputDataInfo : this.mInputStreams) {
            this.mInputEncodedDataThreadPool.execute(new EncodedDataWriteTask(this.mMuxer, inputDataInfo.codec, this.mEncodedDataWriteListener, inputDataInfo.mimeType()));
        }
    }

    void startEncoders() {
        InputDataInfo[] arrinputDataInfo = this.mInputStreams;
        int n = arrinputDataInfo.length;
        for (int i = 0; i < n; ++i) {
            arrinputDataInfo[i].codec.start();
        }
    }

    void startInputDataSource() {
        InputDataInfo[] arrinputDataInfo = this.mInputStreams;
        int n = arrinputDataInfo.length;
        for (int i = 0; i < n; ++i) {
            arrinputDataInfo[i].source.start();
        }
    }

    void startMediaMuxerAfterEncodedFormatIsFixed() throws InterruptedException {
        this.mEncoderFormatChangedSignal.await();
        this.mMuxer.start();
        this.mMuxerStartedSignal.countDown();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void stop() {
        synchronized (this) {
            if (this.mRequestFinishSignal == null) {
                return;
            }
            this.mRequestFinishSignal.countDown();
            return;
        }
    }

    void stopEncoders() {
        InputDataInfo[] arrinputDataInfo = this.mInputStreams;
        int n = arrinputDataInfo.length;
        for (int i = 0; i < n; ++i) {
            arrinputDataInfo[i].codec.stop();
        }
    }

    void stopInputDataSource() throws InterruptedException {
        InputDataInfo[] arrinputDataInfo = this.mInputStreams;
        int n = arrinputDataInfo.length;
        for (int i = 0; i < n; ++i) {
            arrinputDataInfo[i].source.stop();
        }
    }

    void stopMuxer() {
        this.mMuxer.stop();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    void waitToCompleteEncoding() {
        Future future;
        future = Executors.newSingleThreadExecutor().submit(this.mWaitRequestFinishSignalTask);
        try {
            this.mEncoderFinishSignal.await();
        }
        catch (InterruptedException var2_2) {}
        future.cancel(true);
    }

    public static interface StateListener {
        public void onFinished(boolean var1);

        public void onProgress(long var1, long var3);

        public void onStarted();

        public void onStorageFull();
    }

}

