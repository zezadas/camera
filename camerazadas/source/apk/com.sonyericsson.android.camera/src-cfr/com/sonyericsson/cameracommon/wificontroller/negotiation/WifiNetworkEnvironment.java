/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.cameracommon.wificontroller.negotiation;

import android.content.Context;
import android.net.wifi.ScanResult;
import android.net.wifi.SupplicantState;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonyericsson.cameracommon.wificontroller.negotiation.ConnectivityChangedBroadcastReceiver;
import com.sonyericsson.cameracommon.wificontroller.negotiation.WifiConnectionRequestCallback;
import com.sonyericsson.cameracommon.wificontroller.negotiation.WifiConnectionStatusCallback;
import com.sonyericsson.cameracommon.wificontroller.negotiation.WifiStateChangedBroadcastReceiver;
import java.util.BitSet;
import java.util.Iterator;
import java.util.List;

public class WifiNetworkEnvironment {
    private static final int CONNECTING_RETRY_COUNT = 60;
    private static final int CONNECTING_RETRY_INTERVAL = 1000;
    private static final int CONNECTING_TIMEOUT = 60000;
    private static final String TAG = WifiNetworkEnvironment.class.getSimpleName();
    private Handler mBackHandler = null;
    private HandlerThread mBackThread = null;
    private WifiStateChangedBroadcastReceiver mBroadcastReceiver = null;
    private WifiConnectionRequestCallback mCallback = null;
    private ConnectRetryTask mConnectRetryTask = null;
    private ConnectivityChangedBroadcastReceiver mConnectivityBroadcastReceiver = null;
    private boolean mIsConnectedInfoByConnectivityManager = false;
    private boolean mIsWifiDeviceEnabled = false;
    private int mRetryCount = 0;
    private WifiManager mWifiManager = null;

    static /* synthetic */ int access$200(WifiNetworkEnvironment wifiNetworkEnvironment) {
        return wifiNetworkEnvironment.mRetryCount;
    }

    static /* synthetic */ int access$208(WifiNetworkEnvironment wifiNetworkEnvironment) {
        int n = wifiNetworkEnvironment.mRetryCount;
        wifiNetworkEnvironment.mRetryCount = n + 1;
        return n;
    }

    static /* synthetic */ ConnectionState access$600(WifiNetworkEnvironment wifiNetworkEnvironment, String string) {
        return wifiNetworkEnvironment.checkState(string);
    }

    static /* synthetic */ boolean access$700(WifiNetworkEnvironment wifiNetworkEnvironment) {
        return wifiNetworkEnvironment.mIsConnectedInfoByConnectivityManager;
    }

    static /* synthetic */ WifiStateChangedBroadcastReceiver access$800(WifiNetworkEnvironment wifiNetworkEnvironment) {
        return wifiNetworkEnvironment.mBroadcastReceiver;
    }

    static /* synthetic */ void access$900(WifiNetworkEnvironment wifiNetworkEnvironment, String string, String string2) {
        wifiNetworkEnvironment.checkAndScanNetwork(string, string2);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void checkAndScanNetwork(String object, String string) {
        String string2 = this.getCodedString((String)object);
        string = this.getCodedString(string);
        List<WifiConfiguration> list = this.mWifiManager.getConfiguredNetworks();
        if (list != null) {
            for (WifiConfiguration wifiConfiguration : list) {
                if (!wifiConfiguration.SSID.equals(string2)) continue;
                this.connect(wifiConfiguration.networkId);
                return;
            }
        } else {
            this.mWifiManager.startScan();
            List<ScanResult> list2 = this.mWifiManager.getScanResults();
            if (list2 == null) return;
            {
                Iterator<ScanResult> iterator = list2.iterator();
                while (iterator.hasNext()) {
                    if (!iterator.next().SSID.equals(object)) continue;
                    object = new WifiConfiguration();
                    object.SSID = string2;
                    object.allowedKeyManagement.set(1);
                    object.preSharedKey = string;
                    int n = this.mWifiManager.addNetwork((WifiConfiguration)object);
                    if (n < 0) return;
                    this.connect(n);
                    return;
                }
            }
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private ConnectionState checkState(String string) {
        string = this.getCodedString(string);
        WifiInfo wifiInfo = this.mWifiManager.getConnectionInfo();
        if (wifiInfo == null || !wifiInfo.getSSID().equals(string)) return ConnectionState.DISCONNECTED;
        switch (.$SwitchMap$android$net$wifi$SupplicantState[wifiInfo.getSupplicantState().ordinal()]) {
            default: {
                return ConnectionState.DISCONNECTED;
            }
            case 1: {
                return ConnectionState.CONNECTED;
            }
            case 2: 
            case 3: 
            case 4: 
            case 5: 
            case 6: 
        }
        return ConnectionState.CONNECTING;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void connect(int n) {
        if (!this.mWifiManager.enableNetwork(n, true)) {
            CameraLogger.w(TAG, "Failed enable network.");
            return;
        } else {
            if (!this.mWifiManager.saveConfiguration()) {
                CameraLogger.w(TAG, "Failed save configuration.");
                return;
            }
            if (this.mWifiManager.reconnect()) return;
            {
                CameraLogger.w(TAG, "Failed save configuration.");
                return;
            }
        }
    }

    private void disable() {
        this.mWifiManager.setWifiEnabled(false);
    }

    private String getCodedString(String string) {
        return "\"" + string + "\"";
    }

    public void cancelConnect() {
        this.mBroadcastReceiver.stopReceiver();
        this.mBackHandler.removeCallbacks(this.mConnectRetryTask);
        this.mConnectRetryTask = null;
        if (!this.mWifiManager.disconnect()) {
            CameraLogger.w(TAG, "Failed cancel connection.");
        }
    }

    public boolean enable() {
        if (this.mWifiManager.isWifiApEnabled()) {
            return false;
        }
        return this.mWifiManager.setWifiEnabled(true);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void initialize(Context context) {
        this.mBackThread = new HandlerThread("WifiRemoteBackWorker");
        this.mBackThread.start();
        this.mBackHandler = new Handler(this.mBackThread.getLooper());
        this.mWifiManager = (WifiManager)context.getSystemService("wifi");
        if (!this.mWifiManager.isWifiEnabled()) {
            this.enable();
            this.mIsWifiDeviceEnabled = false;
        } else {
            this.mIsWifiDeviceEnabled = true;
        }
        this.mBroadcastReceiver = new WifiStateChangedBroadcastReceiver(context, new WifiConnectionStatusCallbackImpl());
        this.mBroadcastReceiver.initialize();
        this.mConnectivityBroadcastReceiver = new ConnectivityChangedBroadcastReceiver(context, new ConnectivityChangedCallbackImpl());
        this.mConnectivityBroadcastReceiver.initialize();
    }

    public void isWifiUnavailable() {
        this.mWifiManager.isWifiApEnabled();
    }

    public void release() {
        if (this.mConnectRetryTask != null) {
            this.mBackHandler.removeCallbacks(this.mConnectRetryTask);
            this.mConnectRetryTask = null;
        }
        if (!this.mIsWifiDeviceEnabled) {
            this.disable();
        }
        if (this.mBroadcastReceiver != null) {
            this.mBroadcastReceiver.release();
            this.mBroadcastReceiver = null;
        }
        if (this.mConnectivityBroadcastReceiver != null) {
            this.mConnectivityBroadcastReceiver.release();
            this.mConnectivityBroadcastReceiver = null;
            this.mIsConnectedInfoByConnectivityManager = false;
        }
        this.mBackThread.quitSafely();
        this.mBackThread = null;
        this.mBackHandler = null;
    }

    public void requestConnect(String string, String string2, WifiConnectionRequestCallback wifiConnectionRequestCallback) {
        this.mCallback = wifiConnectionRequestCallback;
        this.mBroadcastReceiver.stopReceiver();
        this.mBackHandler.removeCallbacks(this.mConnectRetryTask);
        boolean bl = false;
        if (this.checkState(string) != ConnectionState.CONNECTED) {
            bl = true;
        }
        this.mConnectivityBroadcastReceiver.setTargetSsid(string);
        this.mConnectRetryTask = new ConnectRetryTask(string, string2, bl);
        this.mRetryCount = 0;
        this.mBackHandler.post(this.mConnectRetryTask);
    }

    private class ConnectRetryTask
    implements Runnable {
        private final String mPasswd;
        private final boolean mShouldWaitConnectivityManagerNotify;
        private final String mSsid;

        public ConnectRetryTask(String string, String string2, boolean bl) {
            this.mSsid = string;
            this.mPasswd = string2;
            this.mShouldWaitConnectivityManagerNotify = bl;
        }

        /*
         * Unable to fully structure code
         * Enabled aggressive block sorting
         * Lifted jumps to return sites
         */
        @Override
        public void run() {
            if (60 < WifiNetworkEnvironment.access$200(WifiNetworkEnvironment.this)) {
                if (WifiNetworkEnvironment.access$300(WifiNetworkEnvironment.this) != null) {
                    WifiNetworkEnvironment.access$300(WifiNetworkEnvironment.this).removeCallbacks(WifiNetworkEnvironment.access$400(WifiNetworkEnvironment.this));
                }
                WifiNetworkEnvironment.access$500(WifiNetworkEnvironment.this).onConnectionFailed();
                return;
            }
            var1_1 = WifiNetworkEnvironment.access$600(WifiNetworkEnvironment.this, this.mSsid);
            switch (.$SwitchMap$com$sonyericsson$cameracommon$wificontroller$negotiation$WifiNetworkEnvironment$ConnectionState[var1_1.ordinal()]) {
                case 1: {
                    if (!this.mShouldWaitConnectivityManagerNotify || WifiNetworkEnvironment.access$700(WifiNetworkEnvironment.this)) {
                        if (WifiNetworkEnvironment.access$300(WifiNetworkEnvironment.this) != null) {
                            WifiNetworkEnvironment.access$300(WifiNetworkEnvironment.this).removeCallbacks(WifiNetworkEnvironment.access$400(WifiNetworkEnvironment.this));
                            WifiNetworkEnvironment.access$800(WifiNetworkEnvironment.this).startReceiver();
                        }
                        WifiNetworkEnvironment.access$500(WifiNetworkEnvironment.this).onConnected();
                        return;
                    }
                }
                default: {
                    ** GOTO lbl19
                }
                case 3: 
            }
            WifiNetworkEnvironment.access$900(WifiNetworkEnvironment.this, this.mSsid, this.mPasswd);
lbl19: // 2 sources:
            WifiNetworkEnvironment.access$208(WifiNetworkEnvironment.this);
            if (WifiNetworkEnvironment.access$300(WifiNetworkEnvironment.this) == null) return;
            WifiNetworkEnvironment.access$300(WifiNetworkEnvironment.this).postDelayed(WifiNetworkEnvironment.access$400(WifiNetworkEnvironment.this), 1000);
        }
    }

    private static enum ConnectionState {
        CONNECTED,
        CONNECTING,
        DISCONNECTED;
        

        private ConnectionState() {
        }
    }

    private class ConnectivityChangedCallbackImpl
    implements ConnectivityChangedBroadcastReceiver.ConnectivityChangedCallback {
        private ConnectivityChangedCallbackImpl() {
        }

        @Override
        public void onConnectivityChanged(boolean bl) {
            WifiNetworkEnvironment.this.mIsConnectedInfoByConnectivityManager = bl;
        }
    }

    private class WifiConnectionStatusCallbackImpl
    implements WifiConnectionStatusCallback {
        private WifiConnectionStatusCallbackImpl() {
        }

        @Override
        public void onConnected() {
            if (WifiNetworkEnvironment.this.mCallback != null) {
                WifiNetworkEnvironment.this.mBackHandler.removeCallbacks(WifiNetworkEnvironment.this.mConnectRetryTask);
                WifiNetworkEnvironment.this.mCallback.onConnected();
            }
        }

        @Override
        public void onConnectionFailed() {
            if (WifiNetworkEnvironment.this.mCallback != null) {
                WifiNetworkEnvironment.this.mBackHandler.removeCallbacks(WifiNetworkEnvironment.this.mConnectRetryTask);
                WifiNetworkEnvironment.this.mCallback.onConnectionFailed();
            }
        }

        @Override
        public void onDisconnected() {
            if (WifiNetworkEnvironment.this.mCallback != null) {
                WifiNetworkEnvironment.this.mCallback.onDisconnected();
            }
        }
    }

}

