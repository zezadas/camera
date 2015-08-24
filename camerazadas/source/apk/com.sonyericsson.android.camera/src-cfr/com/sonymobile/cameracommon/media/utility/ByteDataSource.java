/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.media.utility;

import android.media.MediaCodec;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonymobile.cameracommon.media.encoder.InputDataSource;
import com.sonymobile.cameracommon.memorybuffer.NativeByteBufferHolder;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executors;

public class ByteDataSource
implements InputDataSource {
    private static final long INPUTBUFFER_TIMEOUT_NANOSECONDS = 100000000;
    private static final String TAG = ByteDataSource.class.getSimpleName();
    private final MediaCodec mEncoder;
    private volatile boolean mIsStopRequested;
    private final PresentationTimeCalculator mPresentationTime;
    private final BlockingQueue<NativeByteBufferHolder> mQueue;
    private final SampleDataFilter mSampleDataFilter;

    public ByteDataSource(BlockingQueue<NativeByteBufferHolder> blockingQueue, MediaCodec mediaCodec, PresentationTimeCalculator presentationTimeCalculator) {
        this(blockingQueue, mediaCodec, presentationTimeCalculator, null);
    }

    public ByteDataSource(BlockingQueue<NativeByteBufferHolder> blockingQueue, MediaCodec mediaCodec, PresentationTimeCalculator presentationTimeCalculator, SampleDataFilter sampleDataFilter) {
        this.mQueue = blockingQueue;
        this.mEncoder = mediaCodec;
        this.mPresentationTime = presentationTimeCalculator;
        this.mSampleDataFilter = sampleDataFilter;
        this.mIsStopRequested = false;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void pushToEncoder(ByteBuffer byteBuffer, ByteBuffer[] arrbyteBuffer, int n, boolean bl) {
        byteBuffer.rewind();
        do {
            int n2;
            int n3;
            if ((n2 = this.mEncoder.dequeueInputBuffer(100000000)) < 0) {
                continue;
            }
            long l = this.mPresentationTime.get(byteBuffer.position() + n);
            ByteBuffer byteBuffer2 = arrbyteBuffer[n2];
            byteBuffer2.rewind();
            if (byteBuffer.remaining() > byteBuffer2.remaining()) {
                n3 = byteBuffer.limit();
                byteBuffer.limit(byteBuffer.position() + byteBuffer2.remaining());
                byteBuffer2.put(byteBuffer);
                byteBuffer.limit(n3);
            } else {
                byteBuffer2.put(byteBuffer);
            }
            n3 = byteBuffer.remaining() == 0 ? 1 : 0;
            boolean bl2 = this.mIsStopRequested || n3 != 0 && bl;
            this.mIsStopRequested = bl2;
            int n4 = this.mIsStopRequested ? 4 : 0;
            this.mEncoder.queueInputBuffer(n2, 0, byteBuffer2.position(), l, n4);
            if (this.mIsStopRequested || n3 != 0) break;
        } while (true);
    }

    @Override
    public void release() {
    }

    @Override
    public void start() {
        this.mIsStopRequested = false;
        Executors.newSingleThreadExecutor().execute(new Runnable(){

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             */
            @Override
            public void run() {
                boolean bl = false;
                int n = 0;
                ByteBuffer[] arrbyteBuffer = ByteDataSource.this.mEncoder.getInputBuffers();
                while (!bl) {
                    NativeByteBufferHolder nativeByteBufferHolder;
                    boolean bl2;
                    int n2;
                    NativeByteBufferHolder nativeByteBufferHolder2 = null;
                    NativeByteBufferHolder nativeByteBufferHolder3 = null;
                    boolean bl3 = bl;
                    try {
                        nativeByteBufferHolder3 = nativeByteBufferHolder = (NativeByteBufferHolder)ByteDataSource.this.mQueue.take();
                        bl3 = bl;
                        nativeByteBufferHolder2 = nativeByteBufferHolder;
                        ByteBuffer byteBuffer = nativeByteBufferHolder.get();
                        nativeByteBufferHolder3 = nativeByteBufferHolder;
                        bl3 = bl;
                        nativeByteBufferHolder2 = nativeByteBufferHolder;
                        bl2 = byteBuffer.limit() == 0;
                        nativeByteBufferHolder3 = nativeByteBufferHolder;
                        bl3 = bl2;
                        nativeByteBufferHolder2 = nativeByteBufferHolder;
                        if (ByteDataSource.this.mSampleDataFilter != null) {
                            nativeByteBufferHolder3 = nativeByteBufferHolder;
                            bl3 = bl2;
                            nativeByteBufferHolder2 = nativeByteBufferHolder;
                            ByteDataSource.this.mSampleDataFilter.onSamples(nativeByteBufferHolder, bl2);
                        }
                        nativeByteBufferHolder3 = nativeByteBufferHolder;
                        bl3 = bl2;
                        nativeByteBufferHolder2 = nativeByteBufferHolder;
                        ByteDataSource.this.pushToEncoder(byteBuffer, arrbyteBuffer, n, bl2);
                        nativeByteBufferHolder3 = nativeByteBufferHolder;
                        bl3 = bl2;
                        nativeByteBufferHolder2 = nativeByteBufferHolder;
                        n2 = byteBuffer.limit();
                    }
                    catch (InterruptedException var7_10) {
                        nativeByteBufferHolder2 = nativeByteBufferHolder3;
                        try {
                            CameraLogger.e(TAG, "mQueue.take() INTERRUPTED");
                            bl = bl3;
                            if (nativeByteBufferHolder3 == null) continue;
                            nativeByteBufferHolder3.decrementRefCount();
                            bl = bl3;
                            continue;
                        }
                        catch (Throwable var6_8) {
                            if (nativeByteBufferHolder2 != null) {
                                nativeByteBufferHolder2.decrementRefCount();
                            }
                            throw var6_8;
                        }
                    }
                    n2 = n + n2;
                    bl = bl2;
                    n = n2;
                    if (nativeByteBufferHolder == null) continue;
                    nativeByteBufferHolder.decrementRefCount();
                    bl = bl2;
                    n = n2;
                    continue;
                    break;
                }
                return;
            }
        });
    }

    @Override
    public void stop() {
        this.mIsStopRequested = true;
    }

    public static interface PresentationTimeCalculator {
        public long get(int var1);
    }

    public static interface SampleDataFilter {
        public void onSamples(NativeByteBufferHolder var1, boolean var2);
    }

}

