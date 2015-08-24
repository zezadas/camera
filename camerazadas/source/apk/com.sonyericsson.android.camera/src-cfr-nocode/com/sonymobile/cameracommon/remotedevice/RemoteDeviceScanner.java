/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.remotedevice;

import com.sonymobile.cameracommon.remotedevice.RemoteDevice;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class RemoteDeviceScanner {
    private static final boolean IS_DEBUG = false;
    private static final String SSDP_ADDRESS = "239.255.255.250";
    private static final String SSDP_HEADER_KEY_HOST = "HOST";
    private static final String SSDP_HEADER_KEY_LOCATION = "LOCATION";
    private static final String SSDP_HEADER_KEY_MAN = "MAN";
    private static final String SSDP_HEADER_KEY_MX = "MX";
    private static final String SSDP_HEADER_KEY_ST = "ST";
    private static final String SSDP_HEADER_KEY_USERAGENT = "USER-AGENT";
    private static final String SSDP_HEADER_KEY_USN = "USN";
    private static final String SSDP_HEADER_VAL_HOST = "239.255.255.250:1900";
    private static final String SSDP_HEADER_VAL_MAN = "\"ssdp:discover\"";
    private static final String SSDP_HEADER_VAL_MX = "1";
    private static final String SSDP_HEADER_VAL_ST = "urn:schemas-sony-com:service:ScalarWebAPI:1";
    private static final String SSDP_HEADER_VAL_USERAGENT = "OS/Android XPERIA/Anything";
    private static final String SSDP_HTTP_VERSION = "HTTP/1.1";
    private static final String SSDP_METHOD = "M-SEARCH";
    private static final int SSDP_PACKET_BUFFER_SIZE = 1024;
    private static final int SSDP_PORT = 1900;
    private static final int SSDP_UDP_SOCKET_TIMEOUT = 3000;
    private static final String SSDP_URI = "*";
    private static final String TAG;
    private static final ScheduledExecutorService mInternalExecutor;

    static;

    public RemoteDeviceScanner();

    static /* synthetic */ String access$100();

    static /* synthetic */ void access$200(OnRemoteDeviceScannedCallback var0, ExecutorService var1, int var2);

    private static String findValueFromKeyInHttpReqRes(String var0, String var1);

    private static String getSsdpRequest();

    private static void notifyCallback(OnRemoteDeviceScannedCallback var0, ExecutorService var1, ResultStatus var2, List<RemoteDevice> var3, int var4);

    public static void request(OnRemoteDeviceScannedCallback var0, ExecutorService var1, int var2);

    private static void requestOnBack(OnRemoteDeviceScannedCallback var0, ExecutorService var1, int var2);

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

    public static interface OnRemoteDeviceScannedCallback {
        public void onRemoteDeviceScanned(ResultStatus var1, List<RemoteDevice> var2, int var3);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class RequestOnBackTask
    implements Runnable {
        private OnRemoteDeviceScannedCallback mCallback;
        private ExecutorService mCallbackExecutor;
        private final int mRetryCount;

        public RequestOnBackTask(OnRemoteDeviceScannedCallback var1, ExecutorService var2, int var3);

        @Override
        public void run();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class ResultStatus
    extends Enum<ResultStatus> {
        private static final /* synthetic */ ResultStatus[] $VALUES;
        public static final /* enum */ ResultStatus NETWORK_ERROR;
        public static final /* enum */ ResultStatus NO_ERROR;
        public static final /* enum */ ResultStatus TIMEOUTED;

        static;

        private ResultStatus();

        public static ResultStatus valueOf(String var0);

        public static ResultStatus[] values();
    }

}

