/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.remotedevice.stream;

import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonymobile.cameracommon.remotedevice.RemoteDevice;
import com.sonymobile.cameracommon.remotedevice.stream.EvfStreamCallback;
import com.sonymobile.cameracommon.remotedevice.util.Log;
import com.sonymobile.cameracommon.remotedevice.util.Util;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

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
    private static final String TAG = EvfStreamController.class.getSimpleName();
    private EvfStreamCallback mCallback = null;
    private ExecutorService mCallbackExecutor = null;
    private InputStream mEvfStream = null;
    private String mEvfStreamUrl = null;
    private HttpURLConnection mHttpCon = null;
    private ExecutorService mInternalExecutor = Executors.newSingleThreadExecutor(new InternalExecutorThreadFactory());
    private boolean mIsEvfLoading = false;
    private RemoteDevice mTargetRemDev = null;

    public EvfStreamController(RemoteDevice remoteDevice, EvfStreamCallback evfStreamCallback, ExecutorService executorService) {
        if (remoteDevice == null || evfStreamCallback == null || executorService == null) {
            throw new NullPointerException("All arguments must be NOT null.");
        }
        this.mTargetRemDev = remoteDevice;
        this.mCallback = evfStreamCallback;
        this.mCallbackExecutor = executorService;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private void doClose() {
        if (this.mEvfStream != null) {
            try {
                this.mEvfStream.close();
            }
            catch (IOException var2_2) {
                Log.logError(TAG, "Failed to close EVF InputStream.");
                var2_2.printStackTrace();
            }
        }
        this.mEvfStream = null;
        if (this.mHttpCon != null) {
            this.mHttpCon.disconnect();
        }
        this.mHttpCon = null;
        boolean bl = false;
        if (this.mTargetRemDev != null) {
            bl = this.mTargetRemDev.stopLiveview();
        }
        if (this.mCallbackExecutor != null) {
            this.mCallbackExecutor.execute(new NotifyEvfClosedTask(bl, this.mCallback));
        }
    }

    /*
     * Loose catch block
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Lifted jumps to return sites
     */
    private boolean doOpen() {
        int n;
        this.mEvfStreamUrl = this.mTargetRemDev.startLiveview();
        if (this.mEvfStreamUrl == null) {
            if (this.mCallbackExecutor == null) return false;
            this.mCallbackExecutor.execute(new NotifyEvfOpenedTask(false, this.mCallback));
            return false;
        }
        this.mHttpCon = (HttpURLConnection)new URL(this.mEvfStreamUrl).openConnection();
        this.mHttpCon.setRequestMethod("GET");
        this.mHttpCon.setConnectTimeout(3000);
        this.mHttpCon.connect();
        try {
            n = this.mHttpCon.getResponseCode();
            n = n == 200 ? 1 : 0;
        }
        catch (IOException var2_4) {
            Log.logError(TAG, "Failed to get response.");
            var2_4.printStackTrace();
            if (this.mCallbackExecutor == null) return false;
            this.mCallbackExecutor.execute(new NotifyEvfOpenedTask(false, this.mCallback));
            return false;
        }
        if (n == 0) {
            Log.logError(TAG, "Failed to connect EVF URL.");
            this.close();
            if (this.mCallbackExecutor == null) return false;
            this.mCallbackExecutor.execute(new NotifyEvfOpenedTask(false, this.mCallback));
            return false;
        }
        this.mEvfStream = new BufferedInputStream(this.mHttpCon.getInputStream());
        catch (MalformedURLException malformedURLException) {
            Log.logError(TAG, "EVF URL is malformed.");
            malformedURLException.printStackTrace();
            if (this.mCallbackExecutor == null) return false;
            this.mCallbackExecutor.execute(new NotifyEvfOpenedTask(false, this.mCallback));
            return false;
        }
        catch (IOException iOException) {
            Log.logError(TAG, "Failed to connect EVF URL.");
            iOException.printStackTrace();
            if (this.mCallbackExecutor == null) return false;
            this.mCallbackExecutor.execute(new NotifyEvfOpenedTask(false, this.mCallback));
            return false;
        }
        catch (IOException iOException2) {
            Log.logError(TAG, "Failed to get InputStream.");
            iOException2.printStackTrace();
            this.mEvfStream = null;
        }
        if (this.mEvfStream == null) {
            Log.logError(TAG, "Failed to get InputStream.");
            this.close();
            if (this.mCallbackExecutor == null) return false;
            this.mCallbackExecutor.execute(new NotifyEvfOpenedTask(false, this.mCallback));
            return false;
        }
        if (this.mCallbackExecutor == null) return true;
        this.mCallbackExecutor.execute(new NotifyEvfOpenedTask(true, this.mCallback));
        return true;
    }

    private void doStartEvfLoading() {
        if (!this.mInternalExecutor.isShutdown()) {
            this.mInternalExecutor.execute(new LoadEvfFrameTask());
        }
    }

    public void close() {
        this.mIsEvfLoading = false;
        this.mInternalExecutor.execute(new Runnable(){

            @Override
            public void run() {
                EvfStreamController.this.doClose();
            }
        });
    }

    public void open() {
        if (this.mIsEvfLoading) {
            return;
        }
        this.mIsEvfLoading = true;
        this.mInternalExecutor.execute(new Runnable(){

            @Override
            public void run() {
                if (EvfStreamController.this.doOpen()) {
                    EvfStreamController.this.doStartEvfLoading();
                }
            }
        });
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void release() {
        this.mIsEvfLoading = false;
        this.mInternalExecutor.shutdown();
        try {
            if (!this.mInternalExecutor.awaitTermination(3000, TimeUnit.MILLISECONDS)) {
                CameraLogger.i(TAG, "Executor await() timeout.");
            }
            this.mCallback = null;
        }
        catch (InterruptedException var1_1) {
            Log.logError(TAG, "Release is interrupted.");
            var1_1.printStackTrace();
        }
        this.mCallbackExecutor = null;
        this.mTargetRemDev = null;
        this.mInternalExecutor = null;
    }

    private static final class InternalExecutorThreadFactory
    implements ThreadFactory {
        private InternalExecutorThreadFactory() {
        }

        @Override
        public Thread newThread(Runnable runnable) {
            runnable = new Thread(runnable);
            runnable.setName("Th:" + TAG);
            return runnable;
        }
    }

    private class LoadEvfFrameTask
    implements Runnable {
        private LoadEvfFrameTask() {
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void run() {
            while (EvfStreamController.this.mIsEvfLoading) {
                byte[] arrby = Util.readInputStreamAsByteArray(TAG, EvfStreamController.this.mEvfStream, 8);
                if (arrby == null || arrby.length != 8) {
                    Log.logError(TAG, "Failed to read Common Header.");
                    if (EvfStreamController.this.mCallbackExecutor == null) return;
                    {
                        EvfStreamController.this.mCallbackExecutor.execute(new NotifyEvfFrameTask(null, EvfStreamController.this.mCallback));
                    }
                    return;
                }
                if (arrby[0] != -1) {
                    Log.logError(TAG, "Invalid common header. (start byte)");
                    if (EvfStreamController.this.mCallbackExecutor == null) return;
                    {
                        EvfStreamController.this.mCallbackExecutor.execute(new NotifyEvfFrameTask(null, EvfStreamController.this.mCallback));
                        return;
                    }
                }
                if (arrby[1] != 1) {
                    Log.logError(TAG, "Invalid common header. (payload type)");
                    if (EvfStreamController.this.mCallbackExecutor == null) return;
                    {
                        EvfStreamController.this.mCallbackExecutor.execute(new NotifyEvfFrameTask(null, EvfStreamController.this.mCallback));
                        return;
                    }
                }
                arrby = Util.readInputStreamAsByteArray(TAG, EvfStreamController.this.mEvfStream, 128);
                if (arrby == null || arrby.length != 128) {
                    Log.logError(TAG, "Failed to read Payload Header.");
                    if (EvfStreamController.this.mCallbackExecutor == null) return;
                    {
                        EvfStreamController.this.mCallbackExecutor.execute(new NotifyEvfFrameTask(null, EvfStreamController.this.mCallback));
                        return;
                    }
                }
                if (arrby[0] != 36 || arrby[1] != 53 || arrby[2] != 104 || arrby[3] != 121) {
                    Log.logError(TAG, "Invalid payload header. (start byte)");
                    if (EvfStreamController.this.mCallbackExecutor == null) return;
                    {
                        EvfStreamController.this.mCallbackExecutor.execute(new NotifyEvfFrameTask(null, EvfStreamController.this.mCallback));
                        return;
                    }
                }
                int n = Util.byteArray2Integer(arrby, 4, 3);
                byte[] arrby2 = Util.readInputStreamAsByteArray(TAG, EvfStreamController.this.mEvfStream, n);
                n = Util.byteArray2Integer(arrby, 7, 1);
                if (Util.readInputStreamAsByteArray(TAG, EvfStreamController.this.mEvfStream, n) != null) {
                    // empty if block
                }
                if (EvfStreamController.this.mCallbackExecutor == null) continue;
                EvfStreamController.this.mCallbackExecutor.execute(new NotifyEvfFrameTask(arrby2, EvfStreamController.this.mCallback));
            }
            return;
        }
    }

    private class NotifyEvfClosedTask
    implements Runnable {
        private final EvfStreamCallback mCallback;
        private final boolean mIsSuccess;

        public NotifyEvfClosedTask(boolean bl, EvfStreamCallback evfStreamCallback) {
            this.mIsSuccess = bl;
            this.mCallback = evfStreamCallback;
        }

        @Override
        public void run() {
            if (this.mCallback != null) {
                this.mCallback.onEvfClosed(this.mIsSuccess);
            }
        }
    }

    private class NotifyEvfFrameTask
    implements Runnable {
        private final EvfStreamCallback mCallback;
        private final byte[] mFrame;

        public NotifyEvfFrameTask(byte[] arrby, EvfStreamCallback evfStreamCallback) {
            this.mFrame = arrby;
            this.mCallback = evfStreamCallback;
        }

        @Override
        public void run() {
            if (this.mCallback != null) {
                this.mCallback.onEvfFrame(this.mFrame);
            }
        }
    }

    private class NotifyEvfOpenedTask
    implements Runnable {
        private final EvfStreamCallback mCallback;
        private final boolean mIsSuccess;

        public NotifyEvfOpenedTask(boolean bl, EvfStreamCallback evfStreamCallback) {
            this.mIsSuccess = bl;
            this.mCallback = evfStreamCallback;
        }

        @Override
        public void run() {
            if (this.mCallback != null) {
                this.mCallback.onEvfOpened(this.mIsSuccess);
            }
        }
    }

}

