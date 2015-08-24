/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.wifip2pcontroller.negotiation;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.NetworkInfo;
import android.net.wifi.p2p.WifiP2pDevice;
import android.os.Parcelable;
import com.sonymobile.cameracommon.wifip2pcontroller.negotiation.NetworkStateMachine;

public class WifiP2pStateChangedBroadcastReceivers {
    private static final boolean IS_DEBUG = false;
    private static final String TAG = WifiP2pStateChangedBroadcastReceivers.class.getSimpleName();
    private ConnectionChangedReceiver mConnectionChangedReceiver;
    private Context mContext = null;
    private DiscoveryChangedReceiver mDiscoveryChangedReceiver;
    private PeersChangedReceiver mPeersChangedReceiver;
    private StateChangedReceiver mStateChangedReceiver;
    private NetworkStateMachine.EventPost mStateMachineEventPost = null;
    private ThisDeviceChangedReceiver mThisDeviceChangedReceiver;

    public WifiP2pStateChangedBroadcastReceivers() {
        this.mStateChangedReceiver = new StateChangedReceiver();
        this.mPeersChangedReceiver = new PeersChangedReceiver();
        this.mConnectionChangedReceiver = new ConnectionChangedReceiver();
        this.mThisDeviceChangedReceiver = new ThisDeviceChangedReceiver();
        this.mDiscoveryChangedReceiver = new DiscoveryChangedReceiver();
    }

    public void initialize(Context context, NetworkStateMachine.EventPost object) {
        this.mContext = context;
        this.mStateMachineEventPost = object;
        object = new IntentFilter("android.net.wifi.p2p.STATE_CHANGED");
        IntentFilter intentFilter = new IntentFilter("android.net.wifi.p2p.PEERS_CHANGED");
        IntentFilter intentFilter2 = new IntentFilter("android.net.wifi.p2p.CONNECTION_STATE_CHANGE");
        IntentFilter intentFilter3 = new IntentFilter("android.net.wifi.p2p.THIS_DEVICE_CHANGED");
        IntentFilter intentFilter4 = new IntentFilter("android.net.wifi.p2p.DISCOVERY_STATE_CHANGE");
        context.registerReceiver(this.mStateChangedReceiver, (IntentFilter)object);
        context.registerReceiver(this.mPeersChangedReceiver, intentFilter);
        context.registerReceiver(this.mConnectionChangedReceiver, intentFilter2);
        context.registerReceiver(this.mThisDeviceChangedReceiver, intentFilter3);
        context.registerReceiver(this.mDiscoveryChangedReceiver, intentFilter4);
    }

    public void release() {
        this.mContext.unregisterReceiver(this.mStateChangedReceiver);
        this.mContext.unregisterReceiver(this.mPeersChangedReceiver);
        this.mContext.unregisterReceiver(this.mConnectionChangedReceiver);
        this.mContext.unregisterReceiver(this.mThisDeviceChangedReceiver);
        this.mContext.unregisterReceiver(this.mDiscoveryChangedReceiver);
        this.mContext = null;
        this.mStateMachineEventPost = null;
    }

    private class ConnectionChangedReceiver
    extends BroadcastReceiver {
        private ConnectionChangedReceiver() {
        }

        @Override
        public void onReceive(Context object, Intent intent) {
            object = (NetworkInfo)intent.getParcelableExtra("networkInfo");
            if (object == null) {
                return;
            }
            if (object.isConnected()) {
                WifiP2pStateChangedBroadcastReceivers.this.mStateMachineEventPost.postEvent(NetworkStateMachine.Event.NODE_CONNECTED, new Object[0]);
                return;
            }
            WifiP2pStateChangedBroadcastReceivers.this.mStateMachineEventPost.postEvent(NetworkStateMachine.Event.NODE_DISCONNECTED, new Object[0]);
        }
    }

    private class DiscoveryChangedReceiver
    extends BroadcastReceiver {
        private DiscoveryChangedReceiver() {
        }

        @Override
        public void onReceive(Context context, Intent intent) {
            int n = intent.getIntExtra("discoveryState", 0);
            switch (n) {
                default: {
                    throw new IllegalArgumentException("Illegal Discovery State : " + n);
                }
                case 2: {
                    WifiP2pStateChangedBroadcastReceivers.this.mStateMachineEventPost.postEvent(NetworkStateMachine.Event.ON_DISCOVERY_STARTED, new Object[0]);
                    return;
                }
                case 1: 
            }
            WifiP2pStateChangedBroadcastReceivers.this.mStateMachineEventPost.postEvent(NetworkStateMachine.Event.ON_DISCOVERY_STOPPED, new Object[0]);
        }
    }

    private class PeersChangedReceiver
    extends BroadcastReceiver {
        private PeersChangedReceiver() {
        }

        @Override
        public void onReceive(Context context, Intent intent) {
            WifiP2pStateChangedBroadcastReceivers.this.mStateMachineEventPost.postEvent(NetworkStateMachine.Event.NODE_CHANGED, new Object[0]);
        }
    }

    private class StateChangedReceiver
    extends BroadcastReceiver {
        private StateChangedReceiver() {
        }

        @Override
        public void onReceive(Context context, Intent intent) {
            switch (intent.getIntExtra("wifi_p2p_state", -1)) {
                default: {
                    WifiP2pStateChangedBroadcastReceivers.this.mStateMachineEventPost.postEvent(NetworkStateMachine.Event.NETWORK_DISABLED, new Object[0]);
                    return;
                }
                case 2: 
            }
            WifiP2pStateChangedBroadcastReceivers.this.mStateMachineEventPost.postEvent(NetworkStateMachine.Event.NETWORK_ENABLED, new Object[0]);
        }
    }

    private class ThisDeviceChangedReceiver
    extends BroadcastReceiver {
        private ThisDeviceChangedReceiver() {
        }

        @Override
        public void onReceive(Context object, Intent intent) {
            object = (WifiP2pDevice)intent.getParcelableExtra("wifiP2pDevice");
            WifiP2pStateChangedBroadcastReceivers.this.mStateMachineEventPost.postEvent(NetworkStateMachine.Event.THIS_NODE_CHANGED, object);
        }
    }

}

