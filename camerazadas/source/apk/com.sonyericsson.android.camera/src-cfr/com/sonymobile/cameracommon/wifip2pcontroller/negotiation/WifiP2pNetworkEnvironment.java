/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.wifip2pcontroller.negotiation;

import android.content.Context;
import android.net.wifi.p2p.WifiP2pGroup;
import android.net.wifi.p2p.WifiP2pInfo;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.util.Log;
import com.sonymobile.cameracommon.wifip2pcontroller.common.NetworkNode;
import com.sonymobile.cameracommon.wifip2pcontroller.negotiation.ConnectionRequestCallback;
import com.sonymobile.cameracommon.wifip2pcontroller.negotiation.NetworkStateCallback;
import com.sonymobile.cameracommon.wifip2pcontroller.negotiation.NetworkStateMachine;
import com.sonymobile.cameracommon.wifip2pcontroller.negotiation.NodeStateCallback;
import com.sonymobile.cameracommon.wifip2pcontroller.negotiation.PassKeyManager;
import com.sonymobile.cameracommon.wifip2pcontroller.negotiation.WifiP2pStateChangedBroadcastReceivers;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class WifiP2pNetworkEnvironment {
    private static final boolean IS_DEBUG = false;
    private static final String TAG = WifiP2pNetworkEnvironment.class.getSimpleName();
    private Handler mBackHandler = null;
    private HandlerThread mBackThread = null;
    private WifiP2pStateChangedBroadcastReceivers mBroadcastReceivers = null;
    private NetworkStateCallback mNetworkStateCallback = null;
    private NetworkStateMachine mNetworkStateMachine = null;
    private NodeStateCallback mNodeStateCallback = null;

    private static Set<NetworkNode> newSetWithCloneElements(Set<NetworkNode> object) {
        HashSet<NetworkNode> hashSet = new HashSet<NetworkNode>();
        object = object.iterator();
        while (object.hasNext()) {
            hashSet.add(((NetworkNode)object.next()).clone());
        }
        return hashSet;
    }

    public void cancelConnect(boolean bl) {
        this.sendEventAsyncToStateMachine(NetworkStateMachine.Event.CANCEL_CONNECTION, bl);
    }

    public void cancelWaitConnecting() {
        this.sendEventAsyncToStateMachine(NetworkStateMachine.Event.CANCEL_WAIT_CONNECTING, new Object[0]);
    }

    public void initialize(Context context, int n) {
        this.mBackThread = new HandlerThread("WifiP2pBackWorker");
        this.mBackThread.start();
        if (this.mBackThread.getLooper() == null) {
            Log.e("TraceLog", "###### getLooper() is NULL");
        }
        this.mBackHandler = new Handler(this.mBackThread.getLooper());
        this.mNetworkStateMachine = new NetworkStateMachine(n, context, this, this.mBackHandler);
        this.sendEventAsyncToStateMachine(NetworkStateMachine.Event.INITIALIZE, new Object[0]);
        this.mBroadcastReceivers = new WifiP2pStateChangedBroadcastReceivers();
        this.mBroadcastReceivers.initialize(context, new NetworkStateMachineEventPost());
    }

    void onGroupInfoUpdated(WifiP2pGroup wifiP2pGroup) {
        if (this.mNetworkStateCallback != null) {
            this.mNetworkStateCallback.onGroupInfoUpdated(wifiP2pGroup);
        }
    }

    void onNetworkDisabled() {
        if (this.mNetworkStateCallback != null) {
            this.mNetworkStateCallback.onNetworkDisabled();
        }
    }

    void onNetworkEnabled() {
        if (this.mNetworkStateCallback != null) {
            this.mNetworkStateCallback.onNetworkEnabled();
        }
    }

    void onNetworkInfoUpdated(WifiP2pInfo wifiP2pInfo) {
        if (this.mNetworkStateCallback != null) {
            this.mNetworkStateCallback.onNetworkInfoUpdated(wifiP2pInfo);
        }
    }

    void onRemoteNodeSetChanged(Set<NetworkNode> set, Set<NetworkNode> set2, Set<NetworkNode> set3, Set<NetworkNode> set4) {
        if (this.mNodeStateCallback != null) {
            set = WifiP2pNetworkEnvironment.newSetWithCloneElements(set);
            set2 = WifiP2pNetworkEnvironment.newSetWithCloneElements(set2);
            set3 = WifiP2pNetworkEnvironment.newSetWithCloneElements(set3);
            set4 = WifiP2pNetworkEnvironment.newSetWithCloneElements(set4);
            this.mNodeStateCallback.onRemoteNodeSetChanged(set, set2, set3, set4);
        }
    }

    void onThisNodeChanged(NetworkNode networkNode) {
        if (this.mNodeStateCallback != null) {
            this.mNodeStateCallback.onThisNodeChanged(networkNode);
        }
    }

    public void release() {
        if (this.mBroadcastReceivers != null) {
            this.mBroadcastReceivers.release();
            this.mBroadcastReceivers = null;
        }
        if (this.mNetworkStateMachine != null) {
            this.sendEventAsyncToStateMachine(NetworkStateMachine.Event.RELEASE, new Object[0]);
            this.mNetworkStateMachine = null;
        }
        this.mBackThread.quitSafely();
        this.mBackThread = null;
        this.mBackHandler = null;
        this.mNetworkStateCallback = null;
        this.mNodeStateCallback = null;
    }

    public void requestConnect(NetworkNode networkNode, String string, ConnectionRequestCallback connectionRequestCallback) {
        this.sendEventAsyncToStateMachine(NetworkStateMachine.Event.REQUEST_CONNECTION, networkNode, string, connectionRequestCallback);
    }

    public void requestWaitConnecting(ConnectionRequestCallback connectionRequestCallback) {
        this.sendEventAsyncToStateMachine(NetworkStateMachine.Event.WAIT_CONNECTING, connectionRequestCallback);
    }

    /* varargs */ void sendEventAsyncToStateMachine(NetworkStateMachine.Event object, Object ... arrobject) {
        object = new SendEventToStateMachineTask(this.mNetworkStateMachine, (NetworkStateMachine.Event)object, arrobject);
        this.mBackHandler.post((Runnable)object);
    }

    public void setCallbacks(NetworkStateCallback networkStateCallback, NodeStateCallback nodeStateCallback) {
        this.mNetworkStateCallback = networkStateCallback;
        this.mNodeStateCallback = nodeStateCallback;
    }

    public void setPassKeyManager(PassKeyManager passKeyManager) {
        this.mNetworkStateMachine.setPassKeyManager(passKeyManager);
    }

    public void updateThisNode(NetworkNode networkNode) {
        this.mNetworkStateMachine.updateThisNode(networkNode);
    }

    private class NetworkStateMachineEventPost
    implements NetworkStateMachine.EventPost {
        private NetworkStateMachineEventPost() {
        }

        @Override
        public /* varargs */ void postEvent(NetworkStateMachine.Event event, Object ... arrobject) {
            WifiP2pNetworkEnvironment.this.sendEventAsyncToStateMachine(event, arrobject);
        }
    }

    private static class SendEventToStateMachineTask
    implements Runnable {
        private final Object[] mArgs;
        private final NetworkStateMachine.Event mEvent;
        private final NetworkStateMachine mStateMachine;

        /* varargs */ SendEventToStateMachineTask(NetworkStateMachine networkStateMachine, NetworkStateMachine.Event event, Object ... arrobject) {
            this.mStateMachine = networkStateMachine;
            this.mEvent = event;
            this.mArgs = arrobject;
        }

        @Override
        public void run() {
            this.mStateMachine.sendEvent(this.mEvent, this.mArgs);
        }
    }

}

