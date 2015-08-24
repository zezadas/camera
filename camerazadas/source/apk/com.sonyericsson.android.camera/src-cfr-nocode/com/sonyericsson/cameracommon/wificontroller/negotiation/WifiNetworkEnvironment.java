/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.wificontroller.negotiation;

import android.content.Context;
import android.net.wifi.WifiManager;
import android.os.Handler;
import android.os.HandlerThread;
import com.sonyericsson.cameracommon.wificontroller.negotiation.ConnectivityChangedBroadcastReceiver;
import com.sonyericsson.cameracommon.wificontroller.negotiation.WifiConnectionRequestCallback;
import com.sonyericsson.cameracommon.wificontroller.negotiation.WifiConnectionStatusCallback;
import com.sonyericsson.cameracommon.wificontroller.negotiation.WifiStateChangedBroadcastReceiver;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class WifiNetworkEnvironment {
    private static final int CONNECTING_RETRY_COUNT = 60;
    private static final int CONNECTING_RETRY_INTERVAL = 1000;
    private static final int CONNECTING_TIMEOUT = 60000;
    private static final String TAG;
    private Handler mBackHandler;
    private HandlerThread mBackThread;
    private WifiStateChangedBroadcastReceiver mBroadcastReceiver;
    private WifiConnectionRequestCallback mCallback;
    private ConnectRetryTask mConnectRetryTask;
    private ConnectivityChangedBroadcastReceiver mConnectivityBroadcastReceiver;
    private boolean mIsConnectedInfoByConnectivityManager;
    private boolean mIsWifiDeviceEnabled;
    private int mRetryCount;
    private WifiManager mWifiManager;

    static;

    public WifiNetworkEnvironment();

    static /* synthetic */ int access$200(WifiNetworkEnvironment var0);

    static /* synthetic */ int access$208(WifiNetworkEnvironment var0);

    static /* synthetic */ Handler access$300(WifiNetworkEnvironment var0);

    static /* synthetic */ ConnectRetryTask access$400(WifiNetworkEnvironment var0);

    static /* synthetic */ WifiConnectionRequestCallback access$500(WifiNetworkEnvironment var0);

    static /* synthetic */ ConnectionState access$600(WifiNetworkEnvironment var0, String var1);

    static /* synthetic */ boolean access$700(WifiNetworkEnvironment var0);

    static /* synthetic */ boolean access$702(WifiNetworkEnvironment var0, boolean var1);

    static /* synthetic */ WifiStateChangedBroadcastReceiver access$800(WifiNetworkEnvironment var0);

    static /* synthetic */ void access$900(WifiNetworkEnvironment var0, String var1, String var2);

    private void checkAndScanNetwork(String var1, String var2);

    private ConnectionState checkState(String var1);

    private void connect(int var1);

    private void disable();

    private String getCodedString(String var1);

    public void cancelConnect();

    public boolean enable();

    public void initialize(Context var1);

    public void isWifiUnavailable();

    public void release();

    public void requestConnect(String var1, String var2, WifiConnectionRequestCallback var3);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class ConnectRetryTask
    implements Runnable {
        private final String mPasswd;
        private final boolean mShouldWaitConnectivityManagerNotify;
        private final String mSsid;
        final /* synthetic */ WifiNetworkEnvironment this$0;

        public ConnectRetryTask(WifiNetworkEnvironment var1, String var2, String var3, boolean var4);

        @Override
        public void run();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static final class ConnectionState
    extends Enum<ConnectionState> {
        private static final /* synthetic */ ConnectionState[] $VALUES;
        public static final /* enum */ ConnectionState CONNECTED;
        public static final /* enum */ ConnectionState CONNECTING;
        public static final /* enum */ ConnectionState DISCONNECTED;

        static;

        private ConnectionState();

        public static ConnectionState valueOf(String var0);

        public static ConnectionState[] values();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class ConnectivityChangedCallbackImpl
    implements ConnectivityChangedBroadcastReceiver.ConnectivityChangedCallback {
        final /* synthetic */ WifiNetworkEnvironment this$0;

        private ConnectivityChangedCallbackImpl(WifiNetworkEnvironment var1);

        /* synthetic */ ConnectivityChangedCallbackImpl(WifiNetworkEnvironment var1,  var2);

        @Override
        public void onConnectivityChanged(boolean var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class WifiConnectionStatusCallbackImpl
    implements WifiConnectionStatusCallback {
        final /* synthetic */ WifiNetworkEnvironment this$0;

        private WifiConnectionStatusCallbackImpl(WifiNetworkEnvironment var1);

        /* synthetic */ WifiConnectionStatusCallbackImpl(WifiNetworkEnvironment var1,  var2);

        @Override
        public void onConnected();

        @Override
        public void onConnectionFailed();

        @Override
        public void onDisconnected();
    }

}

