/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.remotedevice;

import com.sonymobile.cameracommon.remotedevice.RemoteDevice;
import com.sonymobile.cameracommon.remotedevice.util.Log;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetSocketAddress;
import java.net.SocketAddress;
import java.net.SocketException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

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
    private static final String TAG = RemoteDeviceScanner.class.getSimpleName();
    private static final ScheduledExecutorService mInternalExecutor = Executors.newSingleThreadScheduledExecutor(new InternalExecutorThreadFactory());

    private static String findValueFromKeyInHttpReqRes(String string, String string2) {
        Object var4_4;
        string2 = string2 + ": ";
        int n = string.indexOf(string2) + string2.length();
        int n2 = string.indexOf("\r\n", n);
        string2 = var4_4 = null;
        if (n != -1) {
            string2 = var4_4;
            if (n2 != -1) {
                string2 = string.substring(n, n2);
            }
        }
        return string2;
    }

    private static String getSsdpRequest() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("M-SEARCH").append(" ").append("*").append(" ").append("HTTP/1.1").append("\r\n");
        stringBuffer.append("HOST").append(": ").append("239.255.255.250:1900").append("\r\n");
        stringBuffer.append("MAN").append(": ").append("\"ssdp:discover\"").append("\r\n");
        stringBuffer.append("MX").append(": ").append("1").append("\r\n");
        stringBuffer.append("ST").append(": ").append("urn:schemas-sony-com:service:ScalarWebAPI:1").append("\r\n");
        stringBuffer.append("USER-AGENT").append(": ").append("OS/Android XPERIA/Anything").append("\r\n");
        stringBuffer.append("\r\n");
        return stringBuffer.toString();
    }

    private static void notifyCallback(final OnRemoteDeviceScannedCallback onRemoteDeviceScannedCallback, ExecutorService executorService, final ResultStatus resultStatus, final List<RemoteDevice> list, final int n) {
        executorService.execute(new Runnable(){

            @Override
            public void run() {
                onRemoteDeviceScannedCallback.onRemoteDeviceScanned(resultStatus, list, n);
            }
        });
    }

    public static void request(OnRemoteDeviceScannedCallback object, ExecutorService executorService, int n) {
        object = new RequestOnBackTask((OnRemoteDeviceScannedCallback)object, executorService, n);
        if (n == 0) {
            mInternalExecutor.schedule((Runnable)object, 0, TimeUnit.SECONDS);
            return;
        }
        mInternalExecutor.schedule((Runnable)object, 1, TimeUnit.SECONDS);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Lifted jumps to return sites
     */
    private static void requestOnBack(OnRemoteDeviceScannedCallback var0, ExecutorService var1_1, int var2_2) {
        try {
            var3_3 = new DatagramSocket();
            var4_5 = new InetSocketAddress("239.255.255.250", 1900);
        }
        catch (SocketException var3_4) {
            Log.logError(RemoteDeviceScanner.TAG, "Failed to create DatagramSockekt.");
            var3_4.printStackTrace();
            RemoteDeviceScanner.notifyCallback(var0, var1_1, ResultStatus.NETWORK_ERROR, null, var2_2);
            return;
        }
        var5_10 = new byte[1024];
        var5_10 = new DatagramPacket((byte[])var5_10, var5_10.length);
        var6_11 = RemoteDeviceScanner.getSsdpRequest().getBytes();
        try {
            var4_5 = new DatagramPacket((byte[])var6_11, var6_11.length, (SocketAddress)var4_5);
        }
        catch (SocketException var4_6) {
            Log.logError(RemoteDeviceScanner.TAG, "Failed to create send packet.");
            var4_6.printStackTrace();
            if (!(var3_3 == null || var3_3.isClosed())) {
                var3_3.close();
            }
            RemoteDeviceScanner.notifyCallback(var0, var1_1, ResultStatus.NETWORK_ERROR, null, var2_2);
            return;
        }
        try {
            var3_3.send((DatagramPacket)var4_5);
        }
        catch (IOException var4_7) {
            Log.logError(RemoteDeviceScanner.TAG, "Failed to broadcast SSDP packet.");
            var4_7.printStackTrace();
            if (!(var3_3 == null || var3_3.isClosed())) {
                var3_3.close();
            }
            RemoteDeviceScanner.notifyCallback(var0, var1_1, ResultStatus.NETWORK_ERROR, null, var2_2);
            return;
        }
        try {
            var3_3.setSoTimeout(3000);
        }
        catch (SocketException var4_8) {
            Log.logError(RemoteDeviceScanner.TAG, "Failed to set timeout");
            var4_8.printStackTrace();
            if (!(var3_3 == null || var3_3.isClosed())) {
                var3_3.close();
            }
            RemoteDeviceScanner.notifyCallback(var0, var1_1, ResultStatus.NETWORK_ERROR, null, var2_2);
            return;
        }
        try {
            var3_3.receive((DatagramPacket)var5_10);
        }
        catch (IOException var4_9) {
            Log.logError(RemoteDeviceScanner.TAG, "Failed to get receive packet.");
            var4_9.printStackTrace();
            if (!(var3_3 == null || var3_3.isClosed())) {
                var3_3.close();
            }
            RemoteDeviceScanner.notifyCallback(var0, var1_1, ResultStatus.TIMEOUTED, null, var2_2);
            return;
        }
        var6_11 = new String(var5_10.getData(), 0, var5_10.getLength());
        var4_5 = new ArrayList<RemoteDevice>();
        var5_10 = RemoteDeviceScanner.findValueFromKeyInHttpReqRes((String)var6_11, "USN");
        var6_11 = RemoteDeviceScanner.findValueFromKeyInHttpReqRes((String)var6_11, "LOCATION");
        if (var5_10 != null && var6_11 != null) {
            if ((var5_10 = RemoteDevice.load((String)var5_10, (String)var6_11)) == null) {
                if (!(var3_3 == null || var3_3.isClosed())) {
                    var3_3.close();
                }
                RemoteDeviceScanner.notifyCallback(var0, var1_1, ResultStatus.NETWORK_ERROR, null, var2_2);
                return;
            } else {
                ** GOTO lbl59
            }
        }
        ** GOTO lbl60
lbl59: // 2 sources:
        var4_5.add((RemoteDevice)var5_10);
lbl60: // 2 sources:
        RemoteDeviceScanner.notifyCallback(var0, var1_1, ResultStatus.NO_ERROR, var4_5, var2_2);
        if (var3_3 == null) return;
        if (var3_3.isClosed() != false) return;
        var3_3.close();
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

    public static interface OnRemoteDeviceScannedCallback {
        public void onRemoteDeviceScanned(ResultStatus var1, List<RemoteDevice> var2, int var3);
    }

    private static class RequestOnBackTask
    implements Runnable {
        private OnRemoteDeviceScannedCallback mCallback = null;
        private ExecutorService mCallbackExecutor = null;
        private final int mRetryCount;

        public RequestOnBackTask(OnRemoteDeviceScannedCallback onRemoteDeviceScannedCallback, ExecutorService executorService, int n) {
            this.mCallback = onRemoteDeviceScannedCallback;
            this.mCallbackExecutor = executorService;
            this.mRetryCount = n;
        }

        @Override
        public void run() {
            RemoteDeviceScanner.requestOnBack(this.mCallback, this.mCallbackExecutor, this.mRetryCount);
        }
    }

    public static enum ResultStatus {
        NO_ERROR,
        TIMEOUTED,
        NETWORK_ERROR;
        

        private ResultStatus() {
        }
    }

}

