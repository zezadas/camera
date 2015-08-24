/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.media.utility;

import android.media.MediaCodec;
import com.sonymobile.cameracommon.media.encoder.InputDataSource;
import com.sonymobile.cameracommon.memorybuffer.NativeByteBufferHolder;
import java.nio.ByteBuffer;
import java.util.concurrent.BlockingQueue;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class ByteDataSource
implements InputDataSource {
    private static final long INPUTBUFFER_TIMEOUT_NANOSECONDS = 100000000;
    private static final String TAG;
    private final MediaCodec mEncoder;
    private volatile boolean mIsStopRequested;
    private final PresentationTimeCalculator mPresentationTime;
    private final BlockingQueue<NativeByteBufferHolder> mQueue;
    private final SampleDataFilter mSampleDataFilter;

    static;

    public ByteDataSource(BlockingQueue<NativeByteBufferHolder> var1, MediaCodec var2, PresentationTimeCalculator var3);

    public ByteDataSource(BlockingQueue<NativeByteBufferHolder> var1, MediaCodec var2, PresentationTimeCalculator var3, SampleDataFilter var4);

    static /* synthetic */ MediaCodec access$000(ByteDataSource var0);

    static /* synthetic */ BlockingQueue access$100(ByteDataSource var0);

    static /* synthetic */ SampleDataFilter access$200(ByteDataSource var0);

    static /* synthetic */ void access$300(ByteDataSource var0, ByteBuffer var1, ByteBuffer[] var2, int var3, boolean var4);

    static /* synthetic */ String access$400();

    private void pushToEncoder(ByteBuffer var1, ByteBuffer[] var2, int var3, boolean var4);

    @Override
    public void release();

    @Override
    public void start();

    @Override
    public void stop();

    public static interface PresentationTimeCalculator {
        public long get(int var1);
    }

    public static interface SampleDataFilter {
        public void onSamples(NativeByteBufferHolder var1, boolean var2);
    }

}

