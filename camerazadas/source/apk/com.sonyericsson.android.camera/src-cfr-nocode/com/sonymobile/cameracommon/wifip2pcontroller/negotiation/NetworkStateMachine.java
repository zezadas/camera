/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.wifip2pcontroller.negotiation;

import android.content.Context;
import android.net.wifi.p2p.WifiP2pDevice;
import android.net.wifi.p2p.WifiP2pDeviceList;
import android.net.wifi.p2p.WifiP2pGroup;
import android.net.wifi.p2p.WifiP2pInfo;
import android.net.wifi.p2p.WifiP2pManager;
import android.os.Handler;
import com.sonymobile.cameracommon.wifip2pcontroller.common.NegotiationMessage;
import com.sonymobile.cameracommon.wifip2pcontroller.common.NetworkNode;
import com.sonymobile.cameracommon.wifip2pcontroller.communication.MessageReceivedCallback;
import com.sonymobile.cameracommon.wifip2pcontroller.communication.MessageSubmittedCallback;
import com.sonymobile.cameracommon.wifip2pcontroller.communication.UniCastSession;
import com.sonymobile.cameracommon.wifip2pcontroller.negotiation.ConnectionRequestCallback;
import com.sonymobile.cameracommon.wifip2pcontroller.negotiation.PassKeyManager;
import com.sonymobile.cameracommon.wifip2pcontroller.negotiation.WifiP2pNetworkEnvironment;
import java.util.Set;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
class NetworkStateMachine {
    private static final int CONNECTING_TIMEOUT = 60000;
    private static final int CONTINUOUS_TASK_INTERVAL = 3000;
    private static final boolean IS_DEBUG = false;
    private static final int RETRY_CYCLE_INTERVAL = 3000;
    private static final String TAG;
    private Set<NetworkNode> mAvailableNodeSet;
    private Handler mBackHandler;
    private final int mClientAppVersionCode;
    private Set<NetworkNode> mConnectedNodeSet;
    private ConnectionRequestCallbackDelayed mConnectingWaitTimeoutTask;
    private Context mContext;
    private ContinuousNetworkScanTask mContinuousNetworkScanTask;
    private State mCurrentState;
    private NodeDiscoveryController mDiscoveryController;
    private WifiP2pNetworkEnvironment mEnvironment;
    private final Set<NetworkNode> mGroupedNodeSet;
    private Set<NetworkNode> mGroupedNodeSetInWaitingStart;
    private Set<NetworkNode> mInvitedNodeSet;
    private String mNdefPushMacAddress;
    private PassKeyManager mPassKeyManager;
    private NetworkNode mThisNode;
    private WifiP2pManager.Channel mWifiP2pChannel;
    private WifiP2pInfo mWifiP2pInfo;
    private WifiP2pManager mWifiP2pManager;

    static;

    NetworkStateMachine(int var1, Context var2, WifiP2pNetworkEnvironment var3, Handler var4);

    static /* synthetic */ WifiP2pNetworkEnvironment access$000(NetworkStateMachine var0);

    static /* synthetic */ WifiP2pNetworkEnvironment access$002(NetworkStateMachine var0, WifiP2pNetworkEnvironment var1);

    static /* synthetic */ Handler access$100(NetworkStateMachine var0);

    static /* synthetic */ void access$1000(NetworkStateMachine var0);

    static /* synthetic */ Handler access$102(NetworkStateMachine var0, Handler var1);

    static /* synthetic */ void access$1200(NetworkStateMachine var0);

    static /* synthetic */ WifiP2pInfo access$1300(NetworkStateMachine var0);

    static /* synthetic */ WifiP2pInfo access$1302(NetworkStateMachine var0, WifiP2pInfo var1);

    static /* synthetic */ Set access$1400(NetworkStateMachine var0);

    static /* synthetic */ Set access$1500(NetworkStateMachine var0);

    static /* synthetic */ Set access$1600(NetworkStateMachine var0);

    static /* synthetic */ Set access$1700(NetworkStateMachine var0);

    static /* synthetic */ void access$200(NetworkStateMachine var0, State var1);

    static /* synthetic */ void access$2200(NetworkStateMachine var0, WifiP2pDeviceList var1);

    static /* synthetic */ Set access$2300(NetworkStateMachine var0);

    static /* synthetic */ Set access$2302(NetworkStateMachine var0, Set var1);

    static /* synthetic */ ConnectionRequestCallbackDelayed access$2400(NetworkStateMachine var0);

    static /* synthetic */ ConnectionRequestCallbackDelayed access$2402(NetworkStateMachine var0, ConnectionRequestCallbackDelayed var1);

    static /* synthetic */ String access$2500(NetworkStateMachine var0);

    static /* synthetic */ String access$2502(NetworkStateMachine var0, String var1);

    static /* synthetic */ PassKeyManager access$2800(NetworkStateMachine var0);

    static /* synthetic */ NodeDiscoveryController access$300(NetworkStateMachine var0);

    static /* synthetic */ void access$3000(NetworkStateMachine var0);

    static /* synthetic */ NodeDiscoveryController access$302(NetworkStateMachine var0, NodeDiscoveryController var1);

    static /* synthetic */ NetworkNode access$400(NetworkStateMachine var0);

    static /* synthetic */ NetworkNode access$402(NetworkStateMachine var0, NetworkNode var1);

    static /* synthetic */ int access$500(NetworkStateMachine var0);

    static /* synthetic */ WifiP2pManager access$700(NetworkStateMachine var0);

    static /* synthetic */ WifiP2pManager access$702(NetworkStateMachine var0, WifiP2pManager var1);

    static /* synthetic */ Context access$800(NetworkStateMachine var0);

    static /* synthetic */ Context access$802(NetworkStateMachine var0, Context var1);

    static /* synthetic */ WifiP2pManager.Channel access$900(NetworkStateMachine var0);

    static /* synthetic */ WifiP2pManager.Channel access$902(NetworkStateMachine var0, WifiP2pManager.Channel var1);

    private void changeTo(State var1);

    private static String getStatusStringFromActionCallbackErrorCode(int var0);

    private void notifyNodeSetChanged();

    private static void printNodeSet(Set<NetworkNode> var0, String var1);

    private void startContinuousNetworkScan();

    private void stopContinuousNetworkScan();

    private void updateNodeSet(WifiP2pDeviceList var1);

    /* varargs */ void sendEvent(Event var1, Object ... var2);

    void setPassKeyManager(PassKeyManager var1);

    void updateThisNode(NetworkNode var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class ConnectionRequestCallbackDelayed
    implements Runnable {
        private final ConnectionRequestCallback mCallback;
        final /* synthetic */ NetworkStateMachine this$0;

        public ConnectionRequestCallbackDelayed(NetworkStateMachine var1, ConnectionRequestCallback var2);

        public void onNodeConnected(NetworkNode var1);

        @Override
        public void run();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class ContinuousNetworkScanTask
    implements Runnable {
        private boolean mIsGroupInfoAlreadyDone;
        private boolean mIsInfoAlreadyDone;
        private volatile boolean mIsReleased;
        private final RequestGroupInfoCallback mRequestGroupInfoCallback;
        private final RequestInfoCallback mRequestInfoCallback;
        final /* synthetic */ NetworkStateMachine this$0;

        private ContinuousNetworkScanTask(NetworkStateMachine var1);

        /* synthetic */ ContinuousNetworkScanTask(NetworkStateMachine var1,  var2);

        static /* synthetic */ boolean access$5402(ContinuousNetworkScanTask var0, boolean var1);

        static /* synthetic */ boolean access$5602(ContinuousNetworkScanTask var0, boolean var1);

        public void release();

        @Override
        public void run();

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private class RequestGroupInfoCallback
        implements WifiP2pManager.GroupInfoListener {
            final /* synthetic */ ContinuousNetworkScanTask this$1;

            private RequestGroupInfoCallback(ContinuousNetworkScanTask var1);

            /* synthetic */ RequestGroupInfoCallback(ContinuousNetworkScanTask var1,  var2);

            @Override
            public void onGroupInfoAvailable(WifiP2pGroup var1);
        }

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private class RequestInfoCallback
        implements WifiP2pManager.ConnectionInfoListener {
            final /* synthetic */ ContinuousNetworkScanTask this$1;

            private RequestInfoCallback(ContinuousNetworkScanTask var1);

            /* synthetic */ RequestInfoCallback(ContinuousNetworkScanTask var1,  var2);

            @Override
            public void onConnectionInfoAvailable(WifiP2pInfo var1);
        }

    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    static final class Event
    extends Enum<Event> {
        private static final /* synthetic */ Event[] $VALUES;
        public static final /* enum */ Event CANCEL_CONNECTION;
        public static final /* enum */ Event CANCEL_WAIT_CONNECTING;
        public static final /* enum */ Event CHANNEL_DISCONNECTED;
        public static final /* enum */ Event INITIALIZE;
        public static final /* enum */ Event NETWORK_DISABLED;
        public static final /* enum */ Event NETWORK_ENABLED;
        public static final /* enum */ Event NODE_CHANGED;
        public static final /* enum */ Event NODE_CONNECTED;
        public static final /* enum */ Event NODE_DISCONNECTED;
        public static final /* enum */ Event ON_CHANGED_TO_GROUP_CLIENT;
        public static final /* enum */ Event ON_CHANGED_TO_GROUP_OWNER;
        public static final /* enum */ Event ON_CHANGED_TO_UNDEFINED;
        public static final /* enum */ Event ON_DISCOVERY_STARTED;
        public static final /* enum */ Event ON_DISCOVERY_STOPPED;
        public static final /* enum */ Event ON_PEERS_AVAILABLE;
        public static final /* enum */ Event ON_PING_REQUESTED;
        public static final /* enum */ Event ON_THIS_NODE_STRUCT_UPDATED;
        public static final /* enum */ Event RELEASE;
        public static final /* enum */ Event REQUEST_CONNECTION;
        public static final /* enum */ Event THIS_NODE_CHANGED;
        public static final /* enum */ Event WAIT_CONNECTING;

        static;

        private Event();

        public static Event valueOf(String var0);

        public static Event[] values();
    }

    static interface EventPost {
        public /* varargs */ void postEvent(Event var1, Object ... var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class NodeDiscoveryController {
        private static final int SHORT_TIME_NODE_DISCOVERY_REQUEST_INTERVAL = 10000;
        private static final int SHORT_TIME_NODE_DISCOVERY_TIMEOUT = 1000;
        private static final String TAG;
        private Handler mBackWorker;
        private RequestToStartContinuousDiscoveryTask mStartDiscoveryTask;
        private RequestToStartShortTimeDiscoveryTask mStartShortTimeDiscoveryTask;
        private RequestToStopContinuousDiscoveryTask mStopDiscoveryTask;
        private RequestToStopShortTimeDiscoveryTask mStopShortTimeDiscoveryTask;
        private WifiP2pManager.Channel mWifiP2pChannel;
        private WifiP2pManager mWifiP2pManager;

        static;

        public NodeDiscoveryController(WifiP2pManager var1, WifiP2pManager.Channel var2, Handler var3);

        static /* synthetic */ WifiP2pManager access$4100(NodeDiscoveryController var0);

        static /* synthetic */ WifiP2pManager.Channel access$4200(NodeDiscoveryController var0);

        static /* synthetic */ Handler access$4400(NodeDiscoveryController var0);

        static /* synthetic */ RequestToStartContinuousDiscoveryTask access$4500(NodeDiscoveryController var0);

        static /* synthetic */ RequestToStopContinuousDiscoveryTask access$4700(NodeDiscoveryController var0);

        static /* synthetic */ RequestToStopShortTimeDiscoveryTask access$4900(NodeDiscoveryController var0);

        static /* synthetic */ RequestToStartShortTimeDiscoveryTask access$5100(NodeDiscoveryController var0);

        public void onDiscoveryStarted();

        public void onDiscoveryStopped();

        public void release();

        public void startContinuousAvailableNodeDiscovery();

        public void stopContinuousAvailableNodeDiscovery();

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private class RequestToStartContinuousDiscoveryTask
        implements Runnable {
            private final StartDiscoveryCallback mStartDiscoveryCallback;
            final /* synthetic */ NodeDiscoveryController this$0;

            private RequestToStartContinuousDiscoveryTask(NodeDiscoveryController var1);

            /* synthetic */ RequestToStartContinuousDiscoveryTask(NodeDiscoveryController var1,  var2);

            @Override
            public void run();

            /*
             * Exception performing whole class analysis.
             * Exception performing whole class analysis ignored.
             */
            private class StartDiscoveryCallback
            implements WifiP2pManager.ActionListener {
                final /* synthetic */ RequestToStartContinuousDiscoveryTask this$1;

                private StartDiscoveryCallback(RequestToStartContinuousDiscoveryTask var1);

                /* synthetic */ StartDiscoveryCallback(RequestToStartContinuousDiscoveryTask var1,  var2);

                @Override
                public void onFailure(int var1);

                @Override
                public void onSuccess();
            }

        }

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private class RequestToStartShortTimeDiscoveryTask
        implements Runnable {
            private final StartShortTimeDiscoveryCallback mStartShortTimeDiscoveryCallback;
            final /* synthetic */ NodeDiscoveryController this$0;

            private RequestToStartShortTimeDiscoveryTask(NodeDiscoveryController var1);

            @Override
            public void run();

            /*
             * Exception performing whole class analysis.
             * Exception performing whole class analysis ignored.
             */
            private class StartShortTimeDiscoveryCallback
            implements WifiP2pManager.ActionListener {
                final /* synthetic */ RequestToStartShortTimeDiscoveryTask this$1;

                private StartShortTimeDiscoveryCallback(RequestToStartShortTimeDiscoveryTask var1);

                /* synthetic */ StartShortTimeDiscoveryCallback(RequestToStartShortTimeDiscoveryTask var1,  var2);

                @Override
                public void onFailure(int var1);

                @Override
                public void onSuccess();
            }

        }

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private class RequestToStopContinuousDiscoveryTask
        implements Runnable {
            private final StopDiscoveryCallback mStopDiscoveryCallback;
            final /* synthetic */ NodeDiscoveryController this$0;

            private RequestToStopContinuousDiscoveryTask(NodeDiscoveryController var1);

            /* synthetic */ RequestToStopContinuousDiscoveryTask(NodeDiscoveryController var1,  var2);

            @Override
            public void run();

            /*
             * Exception performing whole class analysis.
             * Exception performing whole class analysis ignored.
             */
            private class StopDiscoveryCallback
            implements WifiP2pManager.ActionListener {
                final /* synthetic */ RequestToStopContinuousDiscoveryTask this$1;

                private StopDiscoveryCallback(RequestToStopContinuousDiscoveryTask var1);

                /* synthetic */ StopDiscoveryCallback(RequestToStopContinuousDiscoveryTask var1,  var2);

                @Override
                public void onFailure(int var1);

                @Override
                public void onSuccess();
            }

        }

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private class RequestToStopShortTimeDiscoveryTask
        implements Runnable {
            private final StopShortTimeDiscoveryCallback mStopDiscoveryCallback;
            final /* synthetic */ NodeDiscoveryController this$0;

            private RequestToStopShortTimeDiscoveryTask(NodeDiscoveryController var1);

            @Override
            public void run();

            /*
             * Exception performing whole class analysis.
             * Exception performing whole class analysis ignored.
             */
            private class StopShortTimeDiscoveryCallback
            implements WifiP2pManager.ActionListener {
                final /* synthetic */ RequestToStopShortTimeDiscoveryTask this$1;

                private StopShortTimeDiscoveryCallback(RequestToStopShortTimeDiscoveryTask var1);

                /* synthetic */ StopShortTimeDiscoveryCallback(RequestToStopShortTimeDiscoveryTask var1,  var2);

                @Override
                public void onFailure(int var1);

                @Override
                public void onSuccess();
            }

        }

    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    abstract class State {
        final /* synthetic */ NetworkStateMachine this$0;

        State(NetworkStateMachine var1);

        abstract void disable();

        abstract void enable();

        void handleCancelConnection(boolean var1);

        void handleCancelWaitConnecting();

        void handleChannelDisconnected();

        void handleInitialize();

        void handleNetworkDisabled();

        void handleNetworkEnabled();

        void handleNodeChanged();

        void handleNodeConnected();

        void handleNodeDisconnected();

        void handleNodeSetChanged();

        void handleOnChangedToGroupClient();

        void handleOnChangedToGroupOwner();

        void handleOnChangedToUndefined();

        void handleOnDiscoveryStarted();

        void handleOnDiscoveryStopped();

        void handleOnPeersAvailable(WifiP2pDeviceList var1);

        void handleOnPingRequested();

        void handleOnThisNetworkNodeUpdated();

        void handleRelease();

        void handleRequestConnection(NetworkNode var1, String var2, ConnectionRequestCallback var3);

        void handleThisNodeChanged(WifiP2pDevice var1);

        void handleWaitConnecting(ConnectionRequestCallback var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class StateAllBlock
    extends State {
        final /* synthetic */ NetworkStateMachine this$0;

        StateAllBlock(NetworkStateMachine var1);

        @Override
        void disable();

        @Override
        void enable();

        @Override
        void handleInitialize();

        @Override
        void handleOnPingRequested();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class StateGroupClient
    extends StateUndefined {
        private static final String TAG = "NSM.StateGroupClient";
        private boolean mIsAlreadyPingRequested;
        private UniCastSession mNegoSession;
        final /* synthetic */ NetworkStateMachine this$0;

        StateGroupClient(NetworkStateMachine var1);

        static /* synthetic */ boolean access$3702(StateGroupClient var0, boolean var1);

        private void doRequestSubmitToGroupOwner(byte[] var1, MessageSubmittedCallback var2);

        private void requestToNotifyThisNodeToGroupOwner();

        @Override
        void disable();

        @Override
        void enable();

        @Override
        void handleOnChangedToGroupClient();

        @Override
        void handleOnChangedToGroupOwner();

        @Override
        void handleOnChangedToUndefined();

        @Override
        void handleOnDiscoveryStarted();

        @Override
        void handleOnDiscoveryStopped();

        @Override
        void handleOnPeersAvailable(WifiP2pDeviceList var1);

        @Override
        void handleOnPingRequested();

        @Override
        void handleOnThisNetworkNodeUpdated();

        @Override
        void handleRequestConnection(NetworkNode var1, String var2, ConnectionRequestCallback var3);

        @Override
        void handleThisNodeChanged(WifiP2pDevice var1);

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private class HandleNodeStateUpdateTask
        implements Runnable {
            private final NegotiationMessage.NegoMsg mNegoMsg;
            final /* synthetic */ StateGroupClient this$1;

            HandleNodeStateUpdateTask(StateGroupClient var1, NegotiationMessage.NegoMsg var2);

            @Override
            public void run();
        }

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private class NegoReceiveCallback
        implements MessageReceivedCallback {
            final /* synthetic */ StateGroupClient this$1;

            private NegoReceiveCallback(StateGroupClient var1);

            /* synthetic */ NegoReceiveCallback(StateGroupClient var1,  var2);

            @Override
            public void onMessageReceived(byte[] var1, String var2);
        }

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private class RequestConnectionCallback
        implements MessageSubmittedCallback {
            final /* synthetic */ StateGroupClient this$1;

            private RequestConnectionCallback(StateGroupClient var1);

            /* synthetic */ RequestConnectionCallback(StateGroupClient var1,  var2);

            @Override
            public void onSubmitFailed();

            @Override
            public void onSubmitSucceeded();
        }

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private class RequestNotifyThisNodeCallback
        implements MessageSubmittedCallback {
            final /* synthetic */ StateGroupClient this$1;

            private RequestNotifyThisNodeCallback(StateGroupClient var1);

            /* synthetic */ RequestNotifyThisNodeCallback(StateGroupClient var1,  var2);

            @Override
            public void onSubmitFailed();

            @Override
            public void onSubmitSucceeded();
        }

    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class StateGroupOwner
    extends StateUndefined {
        private static final String TAG = "NSM.StateGroupOwner";
        private UniCastSession mNegoSession;
        private int mNegoSessionSubmitCount;
        private final RemoteConnectionCallback mRemoteConnectionCallback;
        final /* synthetic */ NetworkStateMachine this$0;

        StateGroupOwner(NetworkStateMachine var1);

        static /* synthetic */ void access$2900(StateGroupOwner var0);

        static /* synthetic */ RemoteConnectionCallback access$3100(StateGroupOwner var0);

        static /* synthetic */ int access$3406(StateGroupOwner var0);

        private NegotiationMessage.NegoMsg generateAllNodesStatusUpdateNegoMsg();

        private void requestToNotifyAllNodesStatusToAllGroupClient();

        private void updateGroupedNodeSet();

        @Override
        void disable();

        @Override
        void enable();

        @Override
        void handleOnChangedToGroupClient();

        @Override
        void handleOnChangedToGroupOwner();

        @Override
        void handleOnChangedToUndefined();

        @Override
        void handleOnDiscoveryStarted();

        @Override
        void handleOnDiscoveryStopped();

        @Override
        void handleOnPeersAvailable(WifiP2pDeviceList var1);

        @Override
        void handleOnPingRequested();

        @Override
        void handleOnThisNetworkNodeUpdated();

        @Override
        void handleThisNodeChanged(WifiP2pDevice var1);

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private class NegoReceiveCallback
        implements MessageReceivedCallback {
            final /* synthetic */ StateGroupOwner this$1;

            private NegoReceiveCallback(StateGroupOwner var1);

            /* synthetic */ NegoReceiveCallback(StateGroupOwner var1, com.sonymobile.cameracommon.wifip2pcontroller.negotiation.NetworkStateMachine$1 var2);

            @Override
            public void onMessageReceived(byte[] var1, String var2);

        }

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private class NegoSubmitCallback
        implements MessageSubmittedCallback {
            final /* synthetic */ StateGroupOwner this$1;

            private NegoSubmitCallback(StateGroupOwner var1);

            /* synthetic */ NegoSubmitCallback(StateGroupOwner var1,  var2);

            @Override
            public void onSubmitFailed();

            @Override
            public void onSubmitSucceeded();
        }

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private class RemoteConnectionCallback
        implements ConnectionRequestCallback {
            final /* synthetic */ StateGroupOwner this$1;

            private RemoteConnectionCallback(StateGroupOwner var1);

            /* synthetic */ RemoteConnectionCallback(StateGroupOwner var1,  var2);

            @Override
            public void onNodeConnected(NetworkNode var1);

            @Override
            public void onNodeConnectionFailed();
        }

    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class StateUndefined
    extends State {
        private static final String TAG = "NSM.StateUndefined";
        private final CancelConnectCallback mCancelConnectCallback;
        private final ChannelDisconnectedCallback mChannelDisconnectedCallback;
        private final ConnectionCallback mConnectionCallback;
        private boolean mIsWaitConnect;
        private final RemoveGroupCallback mRemoveGroupCallback;
        private final RequestPeersCallback mRequestPeersCallback;
        private final StopDiscoveryCallback mStopDiscoveryCallback;
        final /* synthetic */ NetworkStateMachine this$0;

        StateUndefined(NetworkStateMachine var1);

        private void initialize();

        @Override
        void disable();

        @Override
        void enable();

        @Override
        void handleCancelConnection(boolean var1);

        @Override
        void handleCancelWaitConnecting();

        @Override
        void handleInitialize();

        @Override
        void handleNetworkDisabled();

        @Override
        void handleNetworkEnabled();

        @Override
        void handleNodeChanged();

        @Override
        void handleNodeSetChanged();

        @Override
        void handleOnChangedToGroupClient();

        @Override
        void handleOnChangedToGroupOwner();

        @Override
        void handleOnDiscoveryStarted();

        @Override
        void handleOnDiscoveryStopped();

        @Override
        void handleOnPeersAvailable(WifiP2pDeviceList var1);

        @Override
        void handleRelease();

        @Override
        void handleRequestConnection(NetworkNode var1, String var2, ConnectionRequestCallback var3);

        @Override
        void handleThisNodeChanged(WifiP2pDevice var1);

        @Override
        void handleWaitConnecting(ConnectionRequestCallback var1);

        protected void ping();

        protected void ping(int var1);

        protected void release();

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private class CancelConnectCallback
        implements WifiP2pManager.ActionListener {
            final /* synthetic */ StateUndefined this$1;

            private CancelConnectCallback(StateUndefined var1);

            /* synthetic */ CancelConnectCallback(StateUndefined var1, com.sonymobile.cameracommon.wifip2pcontroller.negotiation.NetworkStateMachine$1 var2);

            @Override
            public void onFailure(int var1);

            @Override
            public void onSuccess();
        }

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private class ChannelDisconnectedCallback
        implements WifiP2pManager.ChannelListener {
            final /* synthetic */ StateUndefined this$1;

            private ChannelDisconnectedCallback(StateUndefined var1);

            /* synthetic */ ChannelDisconnectedCallback(StateUndefined var1, com.sonymobile.cameracommon.wifip2pcontroller.negotiation.NetworkStateMachine$1 var2);

            @Override
            public void onChannelDisconnected();
        }

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private class ConnectionCallback
        implements WifiP2pManager.ActionListener {
            final /* synthetic */ StateUndefined this$1;

            private ConnectionCallback(StateUndefined var1);

            /* synthetic */ ConnectionCallback(StateUndefined var1, com.sonymobile.cameracommon.wifip2pcontroller.negotiation.NetworkStateMachine$1 var2);

            @Override
            public void onFailure(int var1);

            @Override
            public void onSuccess();
        }

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private class RemoveGroupCallback
        implements WifiP2pManager.ActionListener {
            final /* synthetic */ StateUndefined this$1;

            private RemoveGroupCallback(StateUndefined var1);

            /* synthetic */ RemoveGroupCallback(StateUndefined var1, com.sonymobile.cameracommon.wifip2pcontroller.negotiation.NetworkStateMachine$1 var2);

            @Override
            public void onFailure(int var1);

            @Override
            public void onSuccess();
        }

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private class RequestPeersCallback
        implements WifiP2pManager.PeerListListener {
            final /* synthetic */ StateUndefined this$1;

            private RequestPeersCallback(StateUndefined var1);

            /* synthetic */ RequestPeersCallback(StateUndefined var1, com.sonymobile.cameracommon.wifip2pcontroller.negotiation.NetworkStateMachine$1 var2);

            @Override
            public void onPeersAvailable(WifiP2pDeviceList var1);
        }

        /*
         * Exception performing whole class analysis.
         * Exception performing whole class analysis ignored.
         */
        private class StopDiscoveryCallback
        implements WifiP2pManager.ActionListener {
            final /* synthetic */ StateUndefined this$1;

            private StopDiscoveryCallback(StateUndefined var1);

            /* synthetic */ StopDiscoveryCallback(StateUndefined var1, com.sonymobile.cameracommon.wifip2pcontroller.negotiation.NetworkStateMachine$1 var2);

            @Override
            public void onFailure(int var1);

            @Override
            public void onSuccess();
        }

    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class ThisNodeStateChangedCallback
    implements NetworkNode.OnNetworkNodeStateChangedCallback {
        final /* synthetic */ NetworkStateMachine this$0;

        private ThisNodeStateChangedCallback(NetworkStateMachine var1);

        /* synthetic */ ThisNodeStateChangedCallback(NetworkStateMachine var1, com.sonymobile.cameracommon.wifip2pcontroller.negotiation.NetworkStateMachine$1 var2);

        @Override
        public void onNetworkNodeStateChanged(NetworkNode var1);

    }

}

