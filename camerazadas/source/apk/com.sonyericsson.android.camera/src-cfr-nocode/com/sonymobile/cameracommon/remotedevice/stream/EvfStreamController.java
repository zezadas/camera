/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.remotedevice.stream;

import com.sonymobile.cameracommon.remotedevice.RemoteDevice;
import com.sonymobile.cameracommon.remotedevice.stream.EvfStreamCallback;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ThreadFactory;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class EvfStreamController {
    private static final int HTTP_CONNECTION_TIMEOUT = 3000;
    private static final String HTTP_METHOD = "GET";
    private static final boolean IS_DEBUG = false;
    private static final byte PACKET_HEADER_PAYLOAD_TYPE_LIVEVIEW = 1;
    private static final int PACKET_HEADER_SIZE_PAYLOAD_TYPE = 1;
    private static final int PACKET_HEADER_SIZE_SEQUENCE_NUMBER = 2;
    private static final int PACKET_HEADER_SIZE_START_BYTE = 1;
    private static final int PACKET_HEADER_SIZE_TIMESTAMP = 4;
    private static final byte PACKET_HEADER_START_BYTE = -1;
    private static final int PAYLOAD_HEADER_SIZE_FLAG = 1;
    private static final int PAYLOAD_HEADER_SIZE_JPEG_DATA_SIZE = 3;
    private static final int PAYLOAD_HEADER_SIZE_PADDING_SIZE = 1;
    private static final int PAYLOAD_HEADER_SIZE_RESERVED_0 = 4;
    private static final int PAYLOAD_HEADER_SIZE_RESERVED_1 = 115;
    private static final int PAYLOAD_HEADER_SIZE_START_BYTE = 4;
    private static final int PAYLOAD_HEADER_START_BYTE_0 = 36;
    private static final int PAYLOAD_HEADER_START_BYTE_1 = 53;
    private static final int PAYLOAD_HEADER_START_BYTE_2 = 104;
    private static final int PAYLOAD_HEADER_START_BYTE_3 = 121;
    private static final String TAG;
    private EvfStreamCallback mCallback;
    private ExecutorService mCallbackExecutor;
    private InputStream mEvfStream;
    private String mEvfStreamUrl;
    private HttpURLConnection mHttpCon;
    private ExecutorService mInternalExecutor;
    private boolean mIsEvfLoading;
    private RemoteDevice mTargetRemDev;

    static;

    public EvfStreamController(RemoteDevice var1, EvfStreamCallback var2, ExecutorService var3);

    static /* synthetic */ String access$100();

    static /* synthetic */ boolean access$200(EvfStreamController var0);

    static /* synthetic */ void access$300(EvfStreamController var0);

    static /* synthetic */ void access$400(EvfStreamController var0);

    static /* synthetic */ boolean access$600(EvfStreamController var0);

    static /* synthetic */ InputStream access$700(EvfStreamController var0);

    static /* synthetic */ ExecutorService access$800(EvfStreamController var0);

    static /* synthetic */ EvfStreamCallback access$900(EvfStreamController var0);

    private void doClose();

    private boolean doOpen();

    private void doStartEvfLoading();

    public void close();

    public void open();

    public void release();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static final class InternalExecutorThreadFactory
    implements ThreadFactory {
        private InternalExecutorThreadFactory();

        /* synthetic */ InternalExecutorThreadFactory( var1);

        @Override
        public Thread newThread(Runnable var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class LoadEvfFrameTask
    implements Runnable {
        final /* synthetic */ EvfStreamController this$0;

        private LoadEvfFrameTask(EvfStreamController var1);

        /* synthetic */ LoadEvfFrameTask(EvfStreamController var1,  var2);

        @Override
        public void run();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class NotifyEvfClosedTask
    implements Runnable {
        private final EvfStreamCallback mCallback;
        private final boolean mIsSuccess;
        final /* synthetic */ EvfStreamController this$0;

        public NotifyEvfClosedTask(EvfStreamController var1, boolean var2, EvfStreamCallback var3);

        @Override
        public void run();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class NotifyEvfFrameTask
    implements Runnable {
        private final EvfStreamCallback mCallback;
        private final byte[] mFrame;
        final /* synthetic */ EvfStreamController this$0;

        public NotifyEvfFrameTask(EvfStreamController var1, byte[] var2, EvfStreamCallback var3);

        @Override
        public void run();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class NotifyEvfOpenedTask
    implements Runnable {
        private final EvfStreamCallback mCallback;
        private final boolean mIsSuccess;
        final /* synthetic */ EvfStreamController this$0;

        public NotifyEvfOpenedTask(EvfStreamController var1, boolean var2, EvfStreamCallback var3);

        @Override
        public void run();
    }

}

