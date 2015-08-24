/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.wifip2pcontroller.negotiation;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.sonymobile.cameracommon.wifip2pcontroller.negotiation.NetworkStateMachine;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class WifiP2pStateChangedBroadcastReceivers {
    private static final boolean IS_DEBUG = false;
    private static final String TAG;
    private ConnectionChangedReceiver mConnectionChangedReceiver;
    private Context mContext;
    private DiscoveryChangedReceiver mDiscoveryChangedReceiver;
    private PeersChangedReceiver mPeersChangedReceiver;
    private StateChangedReceiver mStateChangedReceiver;
    private NetworkStateMachine.EventPost mStateMachineEventPost;
    private ThisDeviceChangedReceiver mThisDeviceChangedReceiver;

    static;

    public WifiP2pStateChangedBroadcastReceivers();

    static /* synthetic */ NetworkStateMachine.EventPost access$100(WifiP2pStateChangedBroadcastReceivers var0);

    public void initialize(Context var1, NetworkStateMachine.EventPost var2);

    public void release();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class ConnectionChangedReceiver
    extends BroadcastReceiver {
        final /* synthetic */ WifiP2pStateChangedBroadcastReceivers this$0;

        private ConnectionChangedReceiver(WifiP2pStateChangedBroadcastReceivers var1);

        /* synthetic */ ConnectionChangedReceiver(WifiP2pStateChangedBroadcastReceivers var1,  var2);

        @Override
        public void onReceive(Context var1, Intent var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class DiscoveryChangedReceiver
    extends BroadcastReceiver {
        final /* synthetic */ WifiP2pStateChangedBroadcastReceivers this$0;

        private DiscoveryChangedReceiver(WifiP2pStateChangedBroadcastReceivers var1);

        /* synthetic */ DiscoveryChangedReceiver(WifiP2pStateChangedBroadcastReceivers var1,  var2);

        @Override
        public void onReceive(Context var1, Intent var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class PeersChangedReceiver
    extends BroadcastReceiver {
        final /* synthetic */ WifiP2pStateChangedBroadcastReceivers this$0;

        private PeersChangedReceiver(WifiP2pStateChangedBroadcastReceivers var1);

        /* synthetic */ PeersChangedReceiver(WifiP2pStateChangedBroadcastReceivers var1,  var2);

        @Override
        public void onReceive(Context var1, Intent var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class StateChangedReceiver
    extends BroadcastReceiver {
        final /* synthetic */ WifiP2pStateChangedBroadcastReceivers this$0;

        private StateChangedReceiver(WifiP2pStateChangedBroadcastReceivers var1);

        /* synthetic */ StateChangedReceiver(WifiP2pStateChangedBroadcastReceivers var1,  var2);

        @Override
        public void onReceive(Context var1, Intent var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class ThisDeviceChangedReceiver
    extends BroadcastReceiver {
        final /* synthetic */ WifiP2pStateChangedBroadcastReceivers this$0;

        private ThisDeviceChangedReceiver(WifiP2pStateChangedBroadcastReceivers var1);

        /* synthetic */ ThisDeviceChangedReceiver(WifiP2pStateChangedBroadcastReceivers var1,  var2);

        @Override
        public void onReceive(Context var1, Intent var2);
    }

}

