/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.wifip2pcontroller.negotiation;

import android.content.Context;
import android.net.wifi.WpsInfo;
import android.net.wifi.p2p.WifiP2pConfig;
import android.net.wifi.p2p.WifiP2pDevice;
import android.net.wifi.p2p.WifiP2pDeviceList;
import android.net.wifi.p2p.WifiP2pGroup;
import android.net.wifi.p2p.WifiP2pInfo;
import android.net.wifi.p2p.WifiP2pManager;
import android.os.Handler;
import android.os.Looper;
import com.sonymobile.cameracommon.wifip2pcontroller.common.NegotiationMessage;
import com.sonymobile.cameracommon.wifip2pcontroller.common.NetworkNode;
import com.sonymobile.cameracommon.wifip2pcontroller.communication.MessageReceivedCallback;
import com.sonymobile.cameracommon.wifip2pcontroller.communication.MessageSubmittedCallback;
import com.sonymobile.cameracommon.wifip2pcontroller.communication.UniCastSession;
import com.sonymobile.cameracommon.wifip2pcontroller.negotiation.ConnectionRequestCallback;
import com.sonymobile.cameracommon.wifip2pcontroller.negotiation.PassKeyManager;
import com.sonymobile.cameracommon.wifip2pcontroller.negotiation.WifiP2pNetworkEnvironment;
import com.sonymobile.cameracommon.wifip2pcontroller.util.Log;
import com.sonymobile.cameracommon.wifip2pcontroller.util.Util;
import java.net.InetAddress;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;

class NetworkStateMachine {
    private static final int CONNECTING_TIMEOUT = 60000;
    private static final int CONTINUOUS_TASK_INTERVAL = 3000;
    private static final boolean IS_DEBUG = false;
    private static final int RETRY_CYCLE_INTERVAL = 3000;
    private static final String TAG = NetworkStateMachine.class.getSimpleName();
    private Set<NetworkNode> mAvailableNodeSet;
    private Handler mBackHandler = null;
    private final int mClientAppVersionCode;
    private Set<NetworkNode> mConnectedNodeSet;
    private ConnectionRequestCallbackDelayed mConnectingWaitTimeoutTask;
    private Context mContext = null;
    private ContinuousNetworkScanTask mContinuousNetworkScanTask;
    private State mCurrentState;
    private NodeDiscoveryController mDiscoveryController = null;
    private WifiP2pNetworkEnvironment mEnvironment = null;
    private final Set<NetworkNode> mGroupedNodeSet;
    private Set<NetworkNode> mGroupedNodeSetInWaitingStart;
    private Set<NetworkNode> mInvitedNodeSet;
    private String mNdefPushMacAddress;
    private PassKeyManager mPassKeyManager;
    private NetworkNode mThisNode;
    private WifiP2pManager.Channel mWifiP2pChannel = null;
    private WifiP2pInfo mWifiP2pInfo = null;
    private WifiP2pManager mWifiP2pManager = null;

    NetworkStateMachine(int n, Context context, WifiP2pNetworkEnvironment wifiP2pNetworkEnvironment, Handler handler) {
        this.mCurrentState = new StateAllBlock();
        this.mAvailableNodeSet = new CopyOnWriteArraySet<NetworkNode>();
        this.mInvitedNodeSet = new CopyOnWriteArraySet<NetworkNode>();
        this.mConnectedNodeSet = new CopyOnWriteArraySet<NetworkNode>();
        this.mGroupedNodeSet = new CopyOnWriteArraySet<NetworkNode>();
        this.mThisNode = null;
        this.mPassKeyManager = null;
        this.mConnectingWaitTimeoutTask = null;
        this.mNdefPushMacAddress = null;
        this.mContinuousNetworkScanTask = null;
        this.mClientAppVersionCode = n;
        this.mContext = context;
        this.mEnvironment = wifiP2pNetworkEnvironment;
        this.mBackHandler = handler;
    }

    static /* synthetic */ Set access$2300(NetworkStateMachine networkStateMachine) {
        return networkStateMachine.mGroupedNodeSetInWaitingStart;
    }

    static /* synthetic */ String access$2500(NetworkStateMachine networkStateMachine) {
        return networkStateMachine.mNdefPushMacAddress;
    }

    private void changeTo(State state) {
        synchronized (this) {
            this.mCurrentState.disable();
            this.mCurrentState = state;
            this.mCurrentState.enable();
            return;
        }
    }

    private static String getStatusStringFromActionCallbackErrorCode(int n) {
        switch (n) {
            default: {
                throw new IllegalArgumentException("Un-Expected error code : " + n);
            }
            case 2: {
                return "BUSY";
            }
            case 0: {
                return "ERROR";
            }
            case 3: {
                return "NO_SERVICE_REQUESTS";
            }
            case 1: 
        }
        return "P2P_UNSUPPORTED";
    }

    private void notifyNodeSetChanged() {
        this.mCurrentState.handleNodeSetChanged();
        this.mEnvironment.onRemoteNodeSetChanged(this.mAvailableNodeSet, this.mInvitedNodeSet, this.mConnectedNodeSet, this.mGroupedNodeSet);
    }

    private static void printNodeSet(Set<NetworkNode> object, String object22) {
        Log.logDebug("TraceLog", "######################## " + (String)object22 + " : " + object.size());
        for (Object object22 : object) {
            Log.logDebug(TAG, object22.toString());
        }
    }

    private void startContinuousNetworkScan() {
        if (this.mContinuousNetworkScanTask == null) {
            this.mContinuousNetworkScanTask = new ContinuousNetworkScanTask();
            this.mBackHandler.post(this.mContinuousNetworkScanTask);
        }
    }

    private void stopContinuousNetworkScan() {
        if (this.mContinuousNetworkScanTask != null) {
            this.mContinuousNetworkScanTask.release();
        }
        this.mContinuousNetworkScanTask = null;
    }

    private void updateNodeSet(WifiP2pDeviceList object) {
        CopyOnWriteArraySet<NetworkNode> copyOnWriteArraySet = new CopyOnWriteArraySet<NetworkNode>();
        CopyOnWriteArraySet<NetworkNode> copyOnWriteArraySet2 = new CopyOnWriteArraySet<NetworkNode>();
        CopyOnWriteArraySet<NetworkNode> copyOnWriteArraySet3 = new CopyOnWriteArraySet<NetworkNode>();
        block5 : for (WifiP2pDevice wifiP2pDevice : object.getDeviceList()) {
            NetworkNode networkNode = new NetworkNode();
            networkNode.getStateUpdator().setMacAddress(wifiP2pDevice.deviceAddress).setScreenName(wifiP2pDevice.deviceName).setStatus(wifiP2pDevice.status).setGroupOwner(wifiP2pDevice.isGroupOwner()).done();
            switch (wifiP2pDevice.status) {
                default: {
                    throw new IllegalArgumentException("Un-Expected status");
                }
                case 2: 
                case 3: 
                case 4: {
                    copyOnWriteArraySet.add(networkNode);
                    continue block5;
                }
                case 1: {
                    copyOnWriteArraySet2.add(networkNode);
                    continue block5;
                }
                case 0: 
            }
            copyOnWriteArraySet3.add(networkNode);
        }
        this.mAvailableNodeSet.clear();
        this.mAvailableNodeSet = copyOnWriteArraySet;
        this.mInvitedNodeSet.clear();
        this.mInvitedNodeSet = copyOnWriteArraySet2;
        Util.updateNetworkNodeState(this.mConnectedNodeSet, copyOnWriteArraySet3);
        this.mConnectedNodeSet.clear();
        this.mConnectedNodeSet = copyOnWriteArraySet3;
        this.notifyNodeSetChanged();
    }

    /*
     * Exception decompiling
     */
    /* varargs */ void sendEvent(Event var1_1, Object ... var2_2) {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // org.benf.cfr.reader.util.ConfusedCFRException: First case is not immediately after switch.
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.examineSwitchContiguity(SwitchReplacer.java:361)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.replaceRawSwitches(SwitchReplacer.java:62)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:415)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:213)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:158)
        // org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:91)
        // org.benf.cfr.reader.entities.Method.analyse(Method.java:353)
        // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:731)
        // org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:663)
        // org.benf.cfr.reader.Main.doJar(Main.java:126)
        // org.benf.cfr.reader.Main.main(Main.java:178)
        throw new IllegalStateException("Decompilation failed");
    }

    void setPassKeyManager(PassKeyManager passKeyManager) {
        this.mPassKeyManager = passKeyManager;
    }

    void updateThisNode(NetworkNode networkNode) {
        this.mThisNode.getStateUpdator().setPublicOpenedStreamSet(networkNode.getPublicOpenedStreamSet()).setRequiredStreamSet(networkNode.getRequiredStreams()).done();
    }

    private class ConnectionRequestCallbackDelayed
    implements Runnable {
        private final ConnectionRequestCallback mCallback;

        public ConnectionRequestCallbackDelayed(ConnectionRequestCallback connectionRequestCallback) {
            this.mCallback = connectionRequestCallback;
        }

        public void onNodeConnected(NetworkNode networkNode) {
            this.mCallback.onNodeConnected(networkNode);
        }

        @Override
        public void run() {
            this.mCallback.onNodeConnectionFailed();
        }
    }

    private class ContinuousNetworkScanTask
    implements Runnable {
        private boolean mIsGroupInfoAlreadyDone;
        private boolean mIsInfoAlreadyDone;
        private volatile boolean mIsReleased;
        private final RequestGroupInfoCallback mRequestGroupInfoCallback;
        private final RequestInfoCallback mRequestInfoCallback;

        private ContinuousNetworkScanTask() {
            this.mIsReleased = false;
            this.mIsInfoAlreadyDone = true;
            this.mIsGroupInfoAlreadyDone = true;
            this.mRequestInfoCallback = new RequestInfoCallback();
            this.mRequestGroupInfoCallback = new RequestGroupInfoCallback();
        }

        public void release() {
            this.mIsReleased = true;
            this.mIsInfoAlreadyDone = true;
        }

        /*
         * Enabled aggressive block sorting
         * Lifted jumps to return sites
         */
        @Override
        public void run() {
            if (this.mIsReleased) {
                return;
            }
            if (this.mIsInfoAlreadyDone) {
                this.mIsInfoAlreadyDone = false;
                NetworkStateMachine.this.mWifiP2pManager.requestConnectionInfo(NetworkStateMachine.this.mWifiP2pChannel, this.mRequestInfoCallback);
            }
            if (this.mIsGroupInfoAlreadyDone) {
                this.mIsGroupInfoAlreadyDone = false;
                NetworkStateMachine.this.mWifiP2pManager.requestGroupInfo(NetworkStateMachine.this.mWifiP2pChannel, this.mRequestGroupInfoCallback);
            }
            if (this.mIsReleased) return;
            NetworkStateMachine.this.mBackHandler.postDelayed(this, 3000);
        }

        private class RequestGroupInfoCallback
        implements WifiP2pManager.GroupInfoListener {
            private RequestGroupInfoCallback() {
            }

            @Override
            public void onGroupInfoAvailable(WifiP2pGroup wifiP2pGroup) {
                NetworkStateMachine.this.mEnvironment.onGroupInfoUpdated(wifiP2pGroup);
                ContinuousNetworkScanTask.this.mIsGroupInfoAlreadyDone = true;
            }
        }

        private class RequestInfoCallback
        implements WifiP2pManager.ConnectionInfoListener {
            private RequestInfoCallback() {
            }

            /*
             * Enabled aggressive block sorting
             */
            @Override
            public void onConnectionInfoAvailable(WifiP2pInfo wifiP2pInfo) {
                NetworkStateMachine.this.mWifiP2pInfo = wifiP2pInfo;
                if (NetworkStateMachine.access$1300((NetworkStateMachine)NetworkStateMachine.this).groupFormed) {
                    if (NetworkStateMachine.access$1300((NetworkStateMachine)NetworkStateMachine.this).isGroupOwner) {
                        NetworkStateMachine.this.sendEvent(Event.ON_CHANGED_TO_GROUP_OWNER, new Object[0]);
                    } else {
                        NetworkStateMachine.this.sendEvent(Event.ON_CHANGED_TO_GROUP_CLIENT, new Object[0]);
                    }
                } else {
                    NetworkStateMachine.this.sendEvent(Event.ON_CHANGED_TO_UNDEFINED, new Object[0]);
                }
                if (NetworkStateMachine.access$1300((NetworkStateMachine)NetworkStateMachine.this).isGroupOwner && NetworkStateMachine.this.mThisNode != null && NetworkStateMachine.access$1300((NetworkStateMachine)NetworkStateMachine.this).groupOwnerAddress != null) {
                    NetworkStateMachine.this.mThisNode.getStateUpdator().setIpAddress(NetworkStateMachine.access$1300((NetworkStateMachine)NetworkStateMachine.this).groupOwnerAddress.getHostAddress()).done();
                }
                NetworkStateMachine.this.mEnvironment.onNetworkInfoUpdated(NetworkStateMachine.this.mWifiP2pInfo);
                ContinuousNetworkScanTask.this.mIsInfoAlreadyDone = true;
            }
        }

    }

    static enum Event {
        INITIALIZE,
        RELEASE,
        NETWORK_ENABLED,
        NETWORK_DISABLED,
        ON_DISCOVERY_STARTED,
        ON_DISCOVERY_STOPPED,
        CHANNEL_DISCONNECTED,
        NODE_CONNECTED,
        NODE_DISCONNECTED,
        WAIT_CONNECTING,
        CANCEL_WAIT_CONNECTING,
        REQUEST_CONNECTION,
        CANCEL_CONNECTION,
        NODE_CHANGED,
        ON_PEERS_AVAILABLE,
        THIS_NODE_CHANGED,
        ON_THIS_NODE_STRUCT_UPDATED,
        ON_CHANGED_TO_GROUP_OWNER,
        ON_CHANGED_TO_GROUP_CLIENT,
        ON_CHANGED_TO_UNDEFINED,
        ON_PING_REQUESTED;
        

        private Event() {
        }
    }

    static interface EventPost {
        public /* varargs */ void postEvent(Event var1, Object ... var2);
    }

    private static class NodeDiscoveryController {
        private static final int SHORT_TIME_NODE_DISCOVERY_REQUEST_INTERVAL = 10000;
        private static final int SHORT_TIME_NODE_DISCOVERY_TIMEOUT = 1000;
        private static final String TAG = NodeDiscoveryController.class.getSimpleName();
        private Handler mBackWorker = null;
        private RequestToStartContinuousDiscoveryTask mStartDiscoveryTask = null;
        private RequestToStartShortTimeDiscoveryTask mStartShortTimeDiscoveryTask = null;
        private RequestToStopContinuousDiscoveryTask mStopDiscoveryTask = null;
        private RequestToStopShortTimeDiscoveryTask mStopShortTimeDiscoveryTask = null;
        private WifiP2pManager.Channel mWifiP2pChannel = null;
        private WifiP2pManager mWifiP2pManager = null;

        public NodeDiscoveryController(WifiP2pManager wifiP2pManager, WifiP2pManager.Channel channel, Handler handler) {
            this.mWifiP2pManager = wifiP2pManager;
            this.mWifiP2pChannel = channel;
            this.mBackWorker = handler;
        }

        public void onDiscoveryStarted() {
        }

        public void onDiscoveryStopped() {
            if (this.mBackWorker != null) {
                this.mBackWorker.post(this.mStartDiscoveryTask);
            }
        }

        public void release() {
            this.mWifiP2pManager = null;
            this.mWifiP2pChannel = null;
            this.mBackWorker = null;
        }

        public void startContinuousAvailableNodeDiscovery() {
            if (this.mStartDiscoveryTask == null) {
                this.mStartDiscoveryTask = new RequestToStartContinuousDiscoveryTask();
            }
            if (this.mStopDiscoveryTask == null) {
                this.mStopDiscoveryTask = new RequestToStopContinuousDiscoveryTask();
            }
            this.mBackWorker.post(this.mStartDiscoveryTask);
        }

        public void stopContinuousAvailableNodeDiscovery() {
            if (this.mStartDiscoveryTask != null) {
                this.mBackWorker.removeCallbacks(this.mStartDiscoveryTask);
            }
            if (this.mStopDiscoveryTask != null) {
                this.mBackWorker.post(this.mStopDiscoveryTask);
            }
            this.mStartDiscoveryTask = null;
            this.mStopDiscoveryTask = null;
        }

        private class RequestToStartContinuousDiscoveryTask
        implements Runnable {
            private final StartDiscoveryCallback mStartDiscoveryCallback;

            private RequestToStartContinuousDiscoveryTask() {
                this.mStartDiscoveryCallback = new StartDiscoveryCallback();
            }

            @Override
            public void run() {
                if (NodeDiscoveryController.this.mWifiP2pManager != null) {
                    NodeDiscoveryController.this.mWifiP2pManager.discoverPeers(NodeDiscoveryController.this.mWifiP2pChannel, this.mStartDiscoveryCallback);
                }
            }

            private class StartDiscoveryCallback
            implements WifiP2pManager.ActionListener {
                private StartDiscoveryCallback() {
                }

                @Override
                public void onFailure(int n) {
                    if (NodeDiscoveryController.this.mBackWorker != null && NodeDiscoveryController.this.mStartDiscoveryTask != null) {
                        NodeDiscoveryController.this.mBackWorker.post(NodeDiscoveryController.this.mStartDiscoveryTask);
                    }
                }

                @Override
                public void onSuccess() {
                }
            }

        }

        private class RequestToStartShortTimeDiscoveryTask
        implements Runnable {
            private final StartShortTimeDiscoveryCallback mStartShortTimeDiscoveryCallback;

            private RequestToStartShortTimeDiscoveryTask() {
                this.mStartShortTimeDiscoveryCallback = new StartShortTimeDiscoveryCallback();
            }

            @Override
            public void run() {
                if (NodeDiscoveryController.this.mWifiP2pManager != null) {
                    NodeDiscoveryController.this.mWifiP2pManager.discoverPeers(NodeDiscoveryController.this.mWifiP2pChannel, this.mStartShortTimeDiscoveryCallback);
                }
            }

            private class StartShortTimeDiscoveryCallback
            implements WifiP2pManager.ActionListener {
                private StartShortTimeDiscoveryCallback() {
                }

                @Override
                public void onFailure(int n) {
                    if (NodeDiscoveryController.this.mBackWorker != null && NodeDiscoveryController.this.mStopShortTimeDiscoveryTask != null) {
                        NodeDiscoveryController.this.mBackWorker.postDelayed(NodeDiscoveryController.this.mStopShortTimeDiscoveryTask, 1000);
                    }
                }

                @Override
                public void onSuccess() {
                    if (NodeDiscoveryController.this.mBackWorker != null && NodeDiscoveryController.this.mStopShortTimeDiscoveryTask != null) {
                        NodeDiscoveryController.this.mBackWorker.postDelayed(NodeDiscoveryController.this.mStopShortTimeDiscoveryTask, 1000);
                    }
                }
            }

        }

        private class RequestToStopContinuousDiscoveryTask
        implements Runnable {
            private final StopDiscoveryCallback mStopDiscoveryCallback;

            private RequestToStopContinuousDiscoveryTask() {
                this.mStopDiscoveryCallback = new StopDiscoveryCallback();
            }

            @Override
            public void run() {
                if (NodeDiscoveryController.this.mWifiP2pManager != null) {
                    NodeDiscoveryController.this.mWifiP2pManager.stopPeerDiscovery(NodeDiscoveryController.this.mWifiP2pChannel, this.mStopDiscoveryCallback);
                }
            }

            private class StopDiscoveryCallback
            implements WifiP2pManager.ActionListener {
                private StopDiscoveryCallback() {
                }

                @Override
                public void onFailure(int n) {
                    if (NodeDiscoveryController.this.mBackWorker != null && NodeDiscoveryController.this.mStopDiscoveryTask == null) {
                        NodeDiscoveryController.this.mBackWorker.post(RequestToStopContinuousDiscoveryTask.this);
                    }
                }

                @Override
                public void onSuccess() {
                }
            }

        }

        private class RequestToStopShortTimeDiscoveryTask
        implements Runnable {
            private final StopShortTimeDiscoveryCallback mStopDiscoveryCallback;

            private RequestToStopShortTimeDiscoveryTask() {
                this.mStopDiscoveryCallback = new StopShortTimeDiscoveryCallback();
            }

            @Override
            public void run() {
                if (NodeDiscoveryController.this.mWifiP2pManager != null) {
                    NodeDiscoveryController.this.mWifiP2pManager.stopPeerDiscovery(NodeDiscoveryController.this.mWifiP2pChannel, this.mStopDiscoveryCallback);
                }
            }

            private class StopShortTimeDiscoveryCallback
            implements WifiP2pManager.ActionListener {
                private StopShortTimeDiscoveryCallback() {
                }

                @Override
                public void onFailure(int n) {
                    if (NodeDiscoveryController.this.mBackWorker != null && NodeDiscoveryController.this.mStartShortTimeDiscoveryTask != null) {
                        NodeDiscoveryController.this.mBackWorker.postDelayed(NodeDiscoveryController.this.mStartShortTimeDiscoveryTask, 10000);
                    }
                }

                @Override
                public void onSuccess() {
                    if (NodeDiscoveryController.this.mBackWorker != null && NodeDiscoveryController.this.mStartShortTimeDiscoveryTask != null) {
                        NodeDiscoveryController.this.mBackWorker.postDelayed(NodeDiscoveryController.this.mStartShortTimeDiscoveryTask, 10000);
                    }
                }
            }

        }

    }

    abstract class State {
        State() {
        }

        abstract void disable();

        abstract void enable();

        void handleCancelConnection(boolean bl) {
        }

        void handleCancelWaitConnecting() {
        }

        void handleChannelDisconnected() {
        }

        void handleInitialize() {
        }

        void handleNetworkDisabled() {
        }

        void handleNetworkEnabled() {
        }

        void handleNodeChanged() {
        }

        void handleNodeConnected() {
        }

        void handleNodeDisconnected() {
        }

        void handleNodeSetChanged() {
        }

        void handleOnChangedToGroupClient() {
        }

        void handleOnChangedToGroupOwner() {
        }

        void handleOnChangedToUndefined() {
        }

        void handleOnDiscoveryStarted() {
        }

        void handleOnDiscoveryStopped() {
        }

        void handleOnPeersAvailable(WifiP2pDeviceList wifiP2pDeviceList) {
        }

        void handleOnPingRequested() {
        }

        void handleOnThisNetworkNodeUpdated() {
        }

        void handleRelease() {
        }

        void handleRequestConnection(NetworkNode networkNode, String string, ConnectionRequestCallback connectionRequestCallback) {
        }

        void handleThisNodeChanged(WifiP2pDevice wifiP2pDevice) {
        }

        void handleWaitConnecting(ConnectionRequestCallback connectionRequestCallback) {
        }
    }

    class StateAllBlock
    extends State {
        StateAllBlock() {
        }

        @Override
        void disable() {
        }

        @Override
        void enable() {
        }

        @Override
        void handleInitialize() {
            NetworkStateMachine.this.changeTo(new StateUndefined());
            NetworkStateMachine.this.sendEvent(Event.INITIALIZE, new Object[0]);
        }

        @Override
        void handleOnPingRequested() {
        }
    }

    class StateGroupClient
    extends StateUndefined {
        private static final String TAG = "NSM.StateGroupClient";
        private boolean mIsAlreadyPingRequested;
        private UniCastSession mNegoSession;

        StateGroupClient() {
            super();
            this.mNegoSession = null;
            this.mIsAlreadyPingRequested = false;
        }

        private void doRequestSubmitToGroupOwner(byte[] arrby, MessageSubmittedCallback messageSubmittedCallback) {
            if (NetworkStateMachine.this.mWifiP2pInfo != null && NetworkStateMachine.access$1300((NetworkStateMachine)NetworkStateMachine.this).groupOwnerAddress != null) {
                this.mNegoSession.requestSubmitMessage(arrby, NetworkStateMachine.access$1300((NetworkStateMachine)NetworkStateMachine.this).groupOwnerAddress.getHostAddress(), 8980, messageSubmittedCallback);
                return;
            }
            messageSubmittedCallback.onSubmitFailed();
        }

        private void requestToNotifyThisNodeToGroupOwner() {
            this.mIsAlreadyPingRequested = true;
            if (NetworkStateMachine.this.mThisNode != null && NetworkStateMachine.this.mThisNode.getMacAddress() != null && NetworkStateMachine.this.mWifiP2pInfo != null && NetworkStateMachine.access$1300((NetworkStateMachine)NetworkStateMachine.this).groupOwnerAddress != null) {
                this.doRequestSubmitToGroupOwner(new NegotiationMessage.NegoMsg(NegotiationMessage.NegoType.GROUP_CLIENT_IDENTIFIER, NetworkStateMachine.this.mPassKeyManager.getCurrentValidPassKey(), NetworkStateMachine.this.mThisNode).encodeToJson().getBytes(), new RequestNotifyThisNodeCallback());
                return;
            }
            this.ping(3000);
        }

        @Override
        void disable() {
            if (this.mNegoSession != null) {
                this.mNegoSession.stopReceiveMessage();
                this.mNegoSession.release();
                this.mNegoSession = null;
            }
        }

        @Override
        void enable() {
            this.mNegoSession = new UniCastSession();
            this.mNegoSession.startReceiveMessage(8990, new NegoReceiveCallback());
            NetworkStateMachine.this.mThisNode.getStateUpdator().setTcpPort(8990).setUdpPort(8991).setGroupOwner(false).done();
            this.ping();
        }

        @Override
        void handleOnChangedToGroupClient() {
        }

        @Override
        void handleOnChangedToGroupOwner() {
        }

        @Override
        void handleOnChangedToUndefined() {
            NetworkStateMachine.this.mGroupedNodeSet.clear();
            NetworkStateMachine.this.notifyNodeSetChanged();
            NetworkStateMachine.this.changeTo(new StateUndefined());
        }

        @Override
        void handleOnDiscoveryStarted() {
        }

        @Override
        void handleOnDiscoveryStopped() {
        }

        @Override
        void handleOnPeersAvailable(WifiP2pDeviceList wifiP2pDeviceList) {
            super.handleOnPeersAvailable(wifiP2pDeviceList);
            this.ping();
        }

        @Override
        void handleOnPingRequested() {
            if (!this.mIsAlreadyPingRequested) {
                this.requestToNotifyThisNodeToGroupOwner();
            }
        }

        @Override
        void handleOnThisNetworkNodeUpdated() {
            this.ping();
        }

        @Override
        void handleRequestConnection(NetworkNode networkNode, String string, ConnectionRequestCallback connectionRequestCallback) {
            this.doRequestSubmitToGroupOwner(new NegotiationMessage.NegoMsg(NegotiationMessage.NegoType.CONNECTION_REQUEST, NetworkStateMachine.this.mPassKeyManager.getCurrentValidPassKey(), networkNode).encodeToJson().getBytes(), new RequestConnectionCallback());
        }

        @Override
        void handleThisNodeChanged(WifiP2pDevice wifiP2pDevice) {
            super.handleThisNodeChanged(wifiP2pDevice);
            this.ping();
        }

        private class HandleNodeStateUpdateTask
        implements Runnable {
            private final NegotiationMessage.NegoMsg mNegoMsg;

            HandleNodeStateUpdateTask(NegotiationMessage.NegoMsg negoMsg) {
                this.mNegoMsg = negoMsg;
            }

            @Override
            public void run() {
                NetworkStateMachine.this.mGroupedNodeSet.clear();
                for (NetworkNode networkNode : this.mNegoMsg.getNetworkNodeArray()) {
                    NetworkStateMachine.this.mGroupedNodeSet.add(networkNode);
                    if (!NetworkStateMachine.this.mThisNode.equalsWithMacAddress(networkNode)) continue;
                    NetworkStateMachine.this.mThisNode.getStateUpdator().setIpAddress(networkNode.getIpAddress()).done();
                    if (networkNode.equals(NetworkStateMachine.this.mThisNode)) continue;
                    StateGroupClient.this.ping();
                }
                NetworkStateMachine.this.notifyNodeSetChanged();
            }
        }

        private class NegoReceiveCallback
        implements MessageReceivedCallback {
            private NegoReceiveCallback() {
            }

            @Override
            public void onMessageReceived(byte[] object, String string) {
                if ((object = (Object)NegotiationMessage.NegoMsg.decodeFromJson(new String((byte[])object))) == null) {
                    return;
                }
                switch (.$SwitchMap$com$sonymobile$cameracommon$wifip2pcontroller$common$NegotiationMessage$NegoType[object.getMessageType().ordinal()]) {
                    default: {
                        return;
                    }
                    case 1: {
                        throw new IllegalStateException("Client state received GROUP_CLIENT_IDENTIFIER");
                    }
                    case 3: {
                        object = new HandleNodeStateUpdateTask((NegotiationMessage.NegoMsg)object);
                        NetworkStateMachine.this.mBackHandler.post((Runnable)object);
                        return;
                    }
                    case 2: 
                }
                throw new IllegalStateException("Client state received CONNECTION_REQUEST");
            }
        }

        private class RequestConnectionCallback
        implements MessageSubmittedCallback {
            private RequestConnectionCallback() {
            }

            @Override
            public void onSubmitFailed() {
            }

            @Override
            public void onSubmitSucceeded() {
            }
        }

        private class RequestNotifyThisNodeCallback
        implements MessageSubmittedCallback {
            private RequestNotifyThisNodeCallback() {
            }

            @Override
            public void onSubmitFailed() {
                StateGroupClient.this.mIsAlreadyPingRequested = false;
                StateGroupClient.this.ping();
            }

            @Override
            public void onSubmitSucceeded() {
                StateGroupClient.this.mIsAlreadyPingRequested = false;
            }
        }

    }

    class StateGroupOwner
    extends StateUndefined {
        private static final String TAG = "NSM.StateGroupOwner";
        private UniCastSession mNegoSession;
        private int mNegoSessionSubmitCount;
        private final RemoteConnectionCallback mRemoteConnectionCallback;

        StateGroupOwner() {
            super();
            this.mNegoSession = null;
            this.mNegoSessionSubmitCount = 0;
            this.mRemoteConnectionCallback = new RemoteConnectionCallback();
        }

        static /* synthetic */ int access$3406(StateGroupOwner stateGroupOwner) {
            int n;
            stateGroupOwner.mNegoSessionSubmitCount = n = stateGroupOwner.mNegoSessionSubmitCount - 1;
            return n;
        }

        private NegotiationMessage.NegoMsg generateAllNodesStatusUpdateNegoMsg() {
            HashSet hashSet = new HashSet();
            hashSet.addAll(NetworkStateMachine.this.mGroupedNodeSet);
            return new NegotiationMessage.NegoMsg(NegotiationMessage.NegoType.NODE_STATUS_UPDATE, NetworkStateMachine.this.mPassKeyManager.getCurrentValidPassKey(), hashSet.toArray(new NetworkNode[0]));
        }

        private void requestToNotifyAllNodesStatusToAllGroupClient() {
            byte[] arrby = this.generateAllNodesStatusUpdateNegoMsg().encodeToJson().getBytes();
            for (NetworkNode networkNode : NetworkStateMachine.this.mConnectedNodeSet) {
                if (networkNode.getIpAddress() == null) continue;
                ++this.mNegoSessionSubmitCount;
                this.mNegoSession.requestSubmitMessage(arrby, networkNode.getIpAddress(), 8990, new NegoSubmitCallback());
            }
        }

        private void updateGroupedNodeSet() {
            Object object = Util.checkDiffWithMacAddressAndGetOnlyIncludedInLeftSet(NetworkStateMachine.this.mGroupedNodeSet, NetworkStateMachine.this.mConnectedNodeSet);
            NetworkStateMachine.this.mGroupedNodeSet.removeAll(object);
            object = Util.getNetworkNodeWithMacAddress(NetworkStateMachine.this.mGroupedNodeSet, NetworkStateMachine.this.mThisNode.getMacAddress());
            NetworkStateMachine.this.mGroupedNodeSet.remove(object);
            NetworkStateMachine.this.mGroupedNodeSet.add(NetworkStateMachine.this.mThisNode);
        }

        @Override
        void disable() {
            this.mNegoSession.stopReceiveMessage();
            this.mNegoSession.release();
            this.mNegoSession = null;
        }

        @Override
        void enable() {
            this.mNegoSession = new UniCastSession();
            this.mNegoSession.startReceiveMessage(8980, new NegoReceiveCallback());
            NetworkStateMachine.this.mThisNode.getStateUpdator().setTcpPort(8980).setUdpPort(8981).setGroupOwner(true).done();
            this.mNegoSessionSubmitCount = 0;
        }

        @Override
        void handleOnChangedToGroupClient() {
        }

        @Override
        void handleOnChangedToGroupOwner() {
        }

        @Override
        void handleOnChangedToUndefined() {
            NetworkStateMachine.this.mGroupedNodeSet.clear();
            NetworkStateMachine.this.notifyNodeSetChanged();
            NetworkStateMachine.this.changeTo(new StateUndefined());
        }

        @Override
        void handleOnDiscoveryStarted() {
        }

        @Override
        void handleOnDiscoveryStopped() {
        }

        @Override
        void handleOnPeersAvailable(WifiP2pDeviceList wifiP2pDeviceList) {
            this.updateGroupedNodeSet();
            super.handleOnPeersAvailable(wifiP2pDeviceList);
            this.ping();
        }

        @Override
        void handleOnPingRequested() {
            if (this.mNegoSessionSubmitCount <= 0) {
                this.requestToNotifyAllNodesStatusToAllGroupClient();
            }
        }

        @Override
        void handleOnThisNetworkNodeUpdated() {
            this.ping();
        }

        @Override
        void handleThisNodeChanged(WifiP2pDevice wifiP2pDevice) {
            NetworkStateMachine.this.mThisNode.getStateUpdator().setMacAddress(wifiP2pDevice.deviceAddress).setScreenName(wifiP2pDevice.deviceName).setStatus(wifiP2pDevice.status).setGroupOwner(true).done();
            this.ping();
        }

        private class NegoReceiveCallback
        implements MessageReceivedCallback {
            private NegoReceiveCallback() {
            }

            /*
             * Enabled aggressive block sorting
             */
            @Override
            public void onMessageReceived(byte[] object, String object2) {
                if ((object = NegotiationMessage.NegoMsg.decodeFromJson(new String((byte[])object))) == null) {
                    Log.logDebug("NSM.StateGroupOwner", "Failed to deserialize message.");
                    return;
                }
                switch (com.sonymobile.cameracommon.wifip2pcontroller.negotiation.NetworkStateMachine$1.$SwitchMap$com$sonymobile$cameracommon$wifip2pcontroller$common$NegotiationMessage$NegoType[object.getMessageType().ordinal()]) {
                    default: {
                        return;
                    }
                    case 1: {
                        if (!NetworkStateMachine.this.mPassKeyManager.isValidPassKey(object.getPassKey())) {
                            Log.logDebug("NSM.StateGroupOwner", "PassKey is invalid.");
                            Log.logDebug("NSM.StateGroupOwner", "PassKeyManager : " + NetworkStateMachine.this.mPassKeyManager.toString());
                            NetworkStateMachine.this.mWifiP2pManager.removeGroup(NetworkStateMachine.this.mWifiP2pChannel, null);
                            return;
                        }
                        object = object.getNetworkNodeArray()[0];
                        object.getStateUpdator().setIpAddress((String)object2).done();
                        object2 = Util.getNetworkNodeWithMacAddress(NetworkStateMachine.this.mConnectedNodeSet, object.getMacAddress());
                        if (object2 == null) return;
                        {
                            NetworkNode.copy((NetworkNode)object, (NetworkNode)object2);
                            Util.removeNetworkNodeWithMacAddress(NetworkStateMachine.this.mGroupedNodeSet, object2.getMacAddress());
                            NetworkStateMachine.this.mGroupedNodeSet.add(object2.clone());
                            StateGroupOwner.this.updateGroupedNodeSet();
                            NetworkStateMachine.this.notifyNodeSetChanged();
                            StateGroupOwner.this.ping();
                            return;
                        }
                    }
                    case 2: {
                        object = object.getNetworkNodeArray()[0];
                        NetworkStateMachine.this.mBackHandler.post(new Runnable((NetworkNode)object){
                            final /* synthetic */ NetworkNode val$notifiedNode;

                            @Override
                            public void run() {
                                NetworkStateMachine.this.sendEvent(Event.REQUEST_CONNECTION, this.val$notifiedNode, null, StateGroupOwner.this.mRemoteConnectionCallback);
                            }
                        });
                        return;
                    }
                    case 3: 
                }
                throw new IllegalStateException("Owner state received NODE_STATUS_UPDATE");
            }

        }

        private class NegoSubmitCallback
        implements MessageSubmittedCallback {
            private NegoSubmitCallback() {
            }

            @Override
            public void onSubmitFailed() {
                StateGroupOwner.access$3406(StateGroupOwner.this);
                StateGroupOwner.this.ping();
            }

            @Override
            public void onSubmitSucceeded() {
                StateGroupOwner.access$3406(StateGroupOwner.this);
            }
        }

        private class RemoteConnectionCallback
        implements ConnectionRequestCallback {
            private RemoteConnectionCallback() {
            }

            @Override
            public void onNodeConnected(NetworkNode networkNode) {
                StateGroupOwner.this.ping();
            }

            @Override
            public void onNodeConnectionFailed() {
            }
        }

    }

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

        StateUndefined() {
            this.mIsWaitConnect = false;
            this.mChannelDisconnectedCallback = new ChannelDisconnectedCallback();
            this.mStopDiscoveryCallback = new StopDiscoveryCallback();
            this.mCancelConnectCallback = new CancelConnectCallback();
            this.mRemoveGroupCallback = new RemoveGroupCallback();
            this.mRequestPeersCallback = new RequestPeersCallback();
            this.mConnectionCallback = new ConnectionCallback();
        }

        private void initialize() {
            NetworkStateMachine.this.mThisNode = new NetworkNode();
            NetworkStateMachine.this.mThisNode.getStateUpdator().setClientApplicationVersionCode(NetworkStateMachine.this.mClientAppVersionCode).done();
            NetworkStateMachine.this.mThisNode.setOnNetworkNodeStateChangedCallback(new ThisNodeStateChangedCallback());
            NetworkStateMachine.this.mWifiP2pManager = (WifiP2pManager)NetworkStateMachine.this.mContext.getSystemService("wifip2p");
            NetworkStateMachine.this.mWifiP2pChannel = NetworkStateMachine.this.mWifiP2pManager.initialize(NetworkStateMachine.this.mContext, Looper.myLooper(), this.mChannelDisconnectedCallback);
            NetworkStateMachine.this.mWifiP2pManager.cancelConnect(NetworkStateMachine.this.mWifiP2pChannel, this.mCancelConnectCallback);
            NetworkStateMachine.this.mWifiP2pManager.removeGroup(NetworkStateMachine.this.mWifiP2pChannel, this.mRemoveGroupCallback);
            NetworkStateMachine.this.mDiscoveryController = new NodeDiscoveryController(NetworkStateMachine.this.mWifiP2pManager, NetworkStateMachine.this.mWifiP2pChannel, NetworkStateMachine.this.mBackHandler);
            NetworkStateMachine.this.mDiscoveryController.startContinuousAvailableNodeDiscovery();
            NetworkStateMachine.this.startContinuousNetworkScan();
        }

        @Override
        void disable() {
            if (NetworkStateMachine.this.mDiscoveryController != null) {
                NetworkStateMachine.this.mDiscoveryController.stopContinuousAvailableNodeDiscovery();
            }
        }

        @Override
        void enable() {
            if (NetworkStateMachine.this.mDiscoveryController != null) {
                this.mIsWaitConnect = false;
                NetworkStateMachine.this.mDiscoveryController.startContinuousAvailableNodeDiscovery();
            }
        }

        @Override
        void handleCancelConnection(boolean bl) {
            NetworkStateMachine.this.mWifiP2pManager.cancelConnect(NetworkStateMachine.this.mWifiP2pChannel, this.mCancelConnectCallback);
            if (bl) {
                NetworkStateMachine.this.mWifiP2pManager.removeGroup(NetworkStateMachine.this.mWifiP2pChannel, this.mRemoveGroupCallback);
            }
        }

        @Override
        void handleCancelWaitConnecting() {
            NetworkStateMachine.this.mBackHandler.removeCallbacks(NetworkStateMachine.this.mConnectingWaitTimeoutTask);
            NetworkStateMachine.this.mConnectingWaitTimeoutTask = null;
        }

        @Override
        void handleInitialize() {
            this.initialize();
        }

        @Override
        void handleNetworkDisabled() {
            NetworkStateMachine.this.mEnvironment.onNetworkDisabled();
        }

        @Override
        void handleNetworkEnabled() {
            NetworkStateMachine.this.mEnvironment.onNetworkEnabled();
        }

        @Override
        void handleNodeChanged() {
            NetworkStateMachine.this.mWifiP2pManager.requestPeers(NetworkStateMachine.this.mWifiP2pChannel, this.mRequestPeersCallback);
        }

        /*
         * Unable to fully structure code
         * Enabled aggressive block sorting
         * Lifted jumps to return sites
         */
        @Override
        void handleNodeSetChanged() {
            if (NetworkStateMachine.access$2400(NetworkStateMachine.this) == null) return;
            var1_1 = NetworkStateMachine.access$1700(NetworkStateMachine.this).iterator();
            do lbl-1000: // 4 sources:
            {
                if (var1_1.hasNext() == false) return;
                var2_2 = (NetworkNode)var1_1.next();
                if (NetworkStateMachine.access$400(NetworkStateMachine.this).equalsWithMacAddress(var2_2)) ** GOTO lbl-1000
                if (NetworkStateMachine.access$2500(NetworkStateMachine.this) == null) continue;
                if (!NetworkStateMachine.access$2500(NetworkStateMachine.this).equals(var2_2.getMacAddress())) ** GOTO lbl-1000
                NetworkStateMachine.access$2400(NetworkStateMachine.this).onNodeConnected(var2_2);
                NetworkStateMachine.access$100(NetworkStateMachine.this).removeCallbacks(NetworkStateMachine.access$2400(NetworkStateMachine.this));
                NetworkStateMachine.access$2402(NetworkStateMachine.this, null);
                NetworkStateMachine.access$2502(NetworkStateMachine.this, null);
                return;
            } while (Util.getNetworkNodeWithMacAddress(NetworkStateMachine.access$2300(NetworkStateMachine.this), var2_2.getMacAddress()) != null);
            NetworkStateMachine.access$2400(NetworkStateMachine.this).onNodeConnected(var2_2);
            NetworkStateMachine.access$100(NetworkStateMachine.this).removeCallbacks(NetworkStateMachine.access$2400(NetworkStateMachine.this));
            NetworkStateMachine.access$2402(NetworkStateMachine.this, null);
        }

        @Override
        void handleOnChangedToGroupClient() {
            NetworkStateMachine.this.changeTo(new StateGroupClient());
        }

        @Override
        void handleOnChangedToGroupOwner() {
            NetworkStateMachine.this.changeTo(new StateGroupOwner());
        }

        @Override
        void handleOnDiscoveryStarted() {
            NetworkStateMachine.this.mDiscoveryController.onDiscoveryStarted();
        }

        @Override
        void handleOnDiscoveryStopped() {
            if (!this.mIsWaitConnect) {
                NetworkStateMachine.this.mDiscoveryController.onDiscoveryStopped();
            }
        }

        @Override
        void handleOnPeersAvailable(WifiP2pDeviceList wifiP2pDeviceList) {
            NetworkStateMachine.this.updateNodeSet(wifiP2pDeviceList);
        }

        @Override
        void handleRelease() {
            NetworkStateMachine.this.changeTo(new StateAllBlock());
            this.release();
        }

        @Override
        void handleRequestConnection(NetworkNode object, String object2, ConnectionRequestCallback connectionRequestCallback) {
            NetworkStateMachine.this.mNdefPushMacAddress = (String)object2;
            object2 = new WifiP2pConfig();
            object2.deviceAddress = object.getMacAddress();
            object2.groupOwnerIntent = 0;
            object = new WpsInfo();
            object.setup = 0;
            object2.wps = object;
            NetworkStateMachine.this.mConnectingWaitTimeoutTask = new ConnectionRequestCallbackDelayed(connectionRequestCallback);
            NetworkStateMachine.this.mBackHandler.postDelayed(NetworkStateMachine.this.mConnectingWaitTimeoutTask, 60000);
            NetworkStateMachine.this.mWifiP2pManager.connect(NetworkStateMachine.this.mWifiP2pChannel, (WifiP2pConfig)object2, this.mConnectionCallback);
        }

        @Override
        void handleThisNodeChanged(WifiP2pDevice wifiP2pDevice) {
            NetworkStateMachine.this.mThisNode.getStateUpdator().setMacAddress(wifiP2pDevice.deviceAddress).setScreenName(wifiP2pDevice.deviceName).setStatus(wifiP2pDevice.status).setGroupOwner(wifiP2pDevice.isGroupOwner()).done();
        }

        @Override
        void handleWaitConnecting(ConnectionRequestCallback connectionRequestCallback) {
            this.mIsWaitConnect = true;
            NetworkStateMachine.this.mGroupedNodeSetInWaitingStart = new CopyOnWriteArraySet(NetworkStateMachine.this.mGroupedNodeSet);
            NetworkStateMachine.this.mBackHandler.removeCallbacks(NetworkStateMachine.this.mConnectingWaitTimeoutTask);
            NetworkStateMachine.this.mConnectingWaitTimeoutTask = new ConnectionRequestCallbackDelayed(connectionRequestCallback);
            NetworkStateMachine.this.mBackHandler.postDelayed(NetworkStateMachine.this.mConnectingWaitTimeoutTask, 60000);
        }

        protected void ping() {
            this.ping(0);
        }

        protected void ping(int n) {
            if (NetworkStateMachine.this.mBackHandler != null) {
                NetworkStateMachine.this.mBackHandler.postDelayed(new Runnable(){

                    @Override
                    public void run() {
                        NetworkStateMachine.this.sendEvent(Event.ON_PING_REQUESTED, new Object[0]);
                    }
                }, n);
            }
        }

        protected void release() {
            NetworkStateMachine.this.stopContinuousNetworkScan();
            if (NetworkStateMachine.this.mDiscoveryController != null) {
                NetworkStateMachine.this.mDiscoveryController.stopContinuousAvailableNodeDiscovery();
                NetworkStateMachine.this.mDiscoveryController.release();
                NetworkStateMachine.this.mDiscoveryController = null;
            }
            NetworkStateMachine.this.mWifiP2pManager.stopPeerDiscovery(NetworkStateMachine.this.mWifiP2pChannel, this.mStopDiscoveryCallback);
            NetworkStateMachine.this.mWifiP2pManager.cancelConnect(NetworkStateMachine.this.mWifiP2pChannel, this.mCancelConnectCallback);
            NetworkStateMachine.this.mWifiP2pManager.removeGroup(NetworkStateMachine.this.mWifiP2pChannel, this.mRemoveGroupCallback);
            NetworkStateMachine.this.mContext = null;
            NetworkStateMachine.this.mEnvironment = null;
            NetworkStateMachine.this.mBackHandler = null;
            NetworkStateMachine.this.mWifiP2pManager = null;
            NetworkStateMachine.this.mWifiP2pChannel = null;
            NetworkStateMachine.this.mWifiP2pInfo = null;
            NetworkStateMachine.this.mAvailableNodeSet.clear();
            NetworkStateMachine.this.mInvitedNodeSet.clear();
            NetworkStateMachine.this.mConnectedNodeSet.clear();
            NetworkStateMachine.this.mGroupedNodeSet.clear();
            NetworkStateMachine.this.mThisNode = null;
            NetworkStateMachine.this.setPassKeyManager(null);
        }

        private class CancelConnectCallback
        implements WifiP2pManager.ActionListener {
            private CancelConnectCallback() {
            }

            @Override
            public void onFailure(int n) {
            }

            @Override
            public void onSuccess() {
            }
        }

        private class ChannelDisconnectedCallback
        implements WifiP2pManager.ChannelListener {
            private ChannelDisconnectedCallback() {
            }

            @Override
            public void onChannelDisconnected() {
                NetworkStateMachine.this.sendEvent(Event.CHANNEL_DISCONNECTED, new Object[0]);
                throw new RuntimeException();
            }
        }

        private class ConnectionCallback
        implements WifiP2pManager.ActionListener {
            private ConnectionCallback() {
            }

            @Override
            public void onFailure(int n) {
            }

            @Override
            public void onSuccess() {
            }
        }

        private class RemoveGroupCallback
        implements WifiP2pManager.ActionListener {
            private RemoveGroupCallback() {
            }

            @Override
            public void onFailure(int n) {
            }

            @Override
            public void onSuccess() {
            }
        }

        private class RequestPeersCallback
        implements WifiP2pManager.PeerListListener {
            private RequestPeersCallback() {
            }

            @Override
            public void onPeersAvailable(WifiP2pDeviceList wifiP2pDeviceList) {
                NetworkStateMachine.this.sendEvent(Event.ON_PEERS_AVAILABLE, wifiP2pDeviceList);
            }
        }

        private class StopDiscoveryCallback
        implements WifiP2pManager.ActionListener {
            private StopDiscoveryCallback() {
            }

            @Override
            public void onFailure(int n) {
            }

            @Override
            public void onSuccess() {
            }
        }

    }

    private class ThisNodeStateChangedCallback
    implements NetworkNode.OnNetworkNodeStateChangedCallback {
        private ThisNodeStateChangedCallback() {
        }

        @Override
        public void onNetworkNodeStateChanged(NetworkNode networkNode) {
            networkNode = networkNode.clone();
            networkNode.setOnNetworkNodeStateChangedCallback(null);
            NetworkStateMachine.this.mEnvironment.onThisNodeChanged(networkNode);
            NetworkStateMachine.this.mBackHandler.post(new Runnable(){

                @Override
                public void run() {
                    NetworkStateMachine.this.sendEvent(Event.ON_THIS_NODE_STRUCT_UPDATED, new Object[0]);
                }
            });
        }

    }

}

