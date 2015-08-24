/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.wifip2pcontroller.negotiation;

import android.content.Context;
import android.net.wifi.p2p.WifiP2pGroup;
import android.net.wifi.p2p.WifiP2pInfo;
import android.os.Handler;
import android.os.HandlerThread;
import com.sonymobile.cameracommon.wifip2pcontroller.common.NetworkNode;
import com.sonymobile.cameracommon.wifip2pcontroller.negotiation.ConnectionRequestCallback;
import com.sonymobile.cameracommon.wifip2pcontroller.negotiation.NetworkStateCallback;
import com.sonymobile.cameracommon.wifip2pcontroller.negotiation.NetworkStateMachine;
import com.sonymobile.cameracommon.wifip2pcontroller.negotiation.NodeStateCallback;
import com.sonymobile.cameracommon.wifip2pcontroller.negotiation.PassKeyManager;
import com.sonymobile.cameracommon.wifip2pcontroller.negotiation.WifiP2pStateChangedBroadcastReceivers;
import java.util.Set;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class WifiP2pNetworkEnvironment {
    private static final boolean IS_DEBUG = false;
    private static final String TAG;
    private Handler mBackHandler;
    private HandlerThread mBackThread;
    private WifiP2pStateChangedBroadcastReceivers mBroadcastReceivers;
    private NetworkStateCallback mNetworkStateCallback;
    private NetworkStateMachine mNetworkStateMachine;
    private NodeStateCallback mNodeStateCallback;

    static;

    public WifiP2pNetworkEnvironment();

    private static Set<NetworkNode> newSetWithCloneElements(Set<NetworkNode> var0);

    public void cancelConnect(boolean var1);

    public void cancelWaitConnecting();

    public void initialize(Context var1, int var2);

    void onGroupInfoUpdated(WifiP2pGroup var1);

    void onNetworkDisabled();

    void onNetworkEnabled();

    void onNetworkInfoUpdated(WifiP2pInfo var1);

    void onRemoteNodeSetChanged(Set<NetworkNode> var1, Set<NetworkNode> var2, Set<NetworkNode> var3, Set<NetworkNode> var4);

    void onThisNodeChanged(NetworkNode var1);

    public void release();

    public void requestConnect(NetworkNode var1, String var2, ConnectionRequestCallback var3);

    public void requestWaitConnecting(ConnectionRequestCallback var1);

    /* varargs */ void sendEventAsyncToStateMachine(NetworkStateMachine.Event var1, Object ... var2);

    public void setCallbacks(NetworkStateCallback var1, NodeStateCallback var2);

    public void setPassKeyManager(PassKeyManager var1);

    public void updateThisNode(NetworkNode var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class NetworkStateMachineEventPost
    implements NetworkStateMachine.EventPost {
        final /* synthetic */ WifiP2pNetworkEnvironment this$0;

        private NetworkStateMachineEventPost(WifiP2pNetworkEnvironment var1);

        /* synthetic */ NetworkStateMachineEventPost(WifiP2pNetworkEnvironment var1,  var2);

        @Override
        public /* varargs */ void postEvent(NetworkStateMachine.Event var1, Object ... var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class SendEventToStateMachineTask
    implements Runnable {
        private final Object[] mArgs;
        private final NetworkStateMachine.Event mEvent;
        private final NetworkStateMachine mStateMachine;

        /* varargs */ SendEventToStateMachineTask(NetworkStateMachine var1, NetworkStateMachine.Event var2, Object ... var3);

        @Override
        public void run();
    }

}

