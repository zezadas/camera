/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.vanilla.wearablebridge.common;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.wearable.DataApi;
import com.google.android.gms.wearable.DataEvent;
import com.google.android.gms.wearable.DataEventBuffer;
import com.google.android.gms.wearable.MessageApi;
import com.google.android.gms.wearable.MessageEvent;
import com.google.android.gms.wearable.Node;
import com.google.android.gms.wearable.NodeApi;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ThreadFactory;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public abstract class WearableBridgeBase {
    private static final String TAG;
    private static final int TIMEOUT_DURATION_MILLIS = 3000;
    private ExecutorService mBackWorker;
    private Context mContext;
    private GoogleApiClient mGoogleApiClient;
    private boolean mIsNowOnResolutionForGooglePlayApiServiceConnection;
    private OnConnectionChangedCallback mOnConnectionChangedCallback;
    private OnConnectionFailedCallback mOnConnectionFailedCallback;
    private OnDataChangedCallback mOnDataChangedCallback;
    private OnMessageReceivedCallback mOnMessageReceivedCallback;
    private OnNodeConnectionChangedCallback mOnNodeConnectionChangedCallback;
    private PendingResult<NodeApi.GetConnectedNodesResult> mPendingNodeResult;

    static;

    public WearableBridgeBase(Context var1);

    static /* synthetic */ Context access$1000(WearableBridgeBase var0);

    static /* synthetic */ Context access$1002(WearableBridgeBase var0, Context var1);

    static /* synthetic */ OnNodeConnectionChangedCallback access$1202(WearableBridgeBase var0, OnNodeConnectionChangedCallback var1);

    static /* synthetic */ OnMessageReceivedCallback access$1302(WearableBridgeBase var0, OnMessageReceivedCallback var1);

    static /* synthetic */ OnDataChangedCallback access$1402(WearableBridgeBase var0, OnDataChangedCallback var1);

    static /* synthetic */ boolean access$1700(WearableBridgeBase var0);

    static /* synthetic */ boolean access$1702(WearableBridgeBase var0, boolean var1);

    static /* synthetic */ String access$1800(WearableBridgeBase var0);

    static /* synthetic */ void access$1900(WearableBridgeBase var0);

    static /* synthetic */ void access$2000(WearableBridgeBase var0);

    static /* synthetic */ ExecutorService access$2100(WearableBridgeBase var0);

    static /* synthetic */ GoogleApiClient access$700(WearableBridgeBase var0);

    static /* synthetic */ GoogleApiClient access$702(WearableBridgeBase var0, GoogleApiClient var1);

    static /* synthetic */ OnConnectionFailedCallback access$800(WearableBridgeBase var0);

    static /* synthetic */ OnConnectionFailedCallback access$802(WearableBridgeBase var0, OnConnectionFailedCallback var1);

    static /* synthetic */ OnConnectionChangedCallback access$900(WearableBridgeBase var0);

    static /* synthetic */ OnConnectionChangedCallback access$902(WearableBridgeBase var0, OnConnectionChangedCallback var1);

    private final String getTargetNodeId();

    private void releaseApiCallbacks();

    private void setupApiCallbacks();

    public abstract void onDataChanged(List<DataEvent> var1);

    public abstract void onMessageReceived(String var1, String var2);

    public abstract void onNodeConnected(Node var1);

    public abstract void onNodeDisconnected(Node var1);

    public void onPause();

    public void onResume();

    public void release();

    public void submitMessageAsync(String var1, String var2);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class ConnectionTask
    implements Runnable {
        final /* synthetic */ WearableBridgeBase this$0;

        private ConnectionTask(WearableBridgeBase var1);

        /* synthetic */ ConnectionTask(WearableBridgeBase var1,  var2);

        @Override
        public void run();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class DisconnectionTask
    implements Runnable {
        final /* synthetic */ WearableBridgeBase this$0;

        private DisconnectionTask(WearableBridgeBase var1);

        /* synthetic */ DisconnectionTask(WearableBridgeBase var1,  var2);

        @Override
        public void run();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class InitializeTask
    implements Runnable {
        final /* synthetic */ WearableBridgeBase this$0;

        private InitializeTask(WearableBridgeBase var1);

        /* synthetic */ InitializeTask(WearableBridgeBase var1,  var2);

        @Override
        public void run();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class OnConnectionChangedCallback
    implements GoogleApiClient.ConnectionCallbacks {
        final /* synthetic */ WearableBridgeBase this$0;

        private OnConnectionChangedCallback(WearableBridgeBase var1);

        /* synthetic */ OnConnectionChangedCallback(WearableBridgeBase var1,  var2);

        @Override
        public void onConnected(Bundle var1);

        @Override
        public void onConnectionSuspended(int var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class OnConnectionFailedCallback
    implements GoogleApiClient.OnConnectionFailedListener {
        final /* synthetic */ WearableBridgeBase this$0;

        private OnConnectionFailedCallback(WearableBridgeBase var1);

        /* synthetic */ OnConnectionFailedCallback(WearableBridgeBase var1,  var2);

        @Override
        public void onConnectionFailed(ConnectionResult var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class OnDataChangedCallback
    implements DataApi.DataListener {
        final /* synthetic */ WearableBridgeBase this$0;

        private OnDataChangedCallback(WearableBridgeBase var1);

        /* synthetic */ OnDataChangedCallback(WearableBridgeBase var1,  var2);

        @Override
        public void onDataChanged(DataEventBuffer var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class OnMessageReceivedCallback
    implements MessageApi.MessageListener {
        final /* synthetic */ WearableBridgeBase this$0;

        private OnMessageReceivedCallback(WearableBridgeBase var1);

        /* synthetic */ OnMessageReceivedCallback(WearableBridgeBase var1,  var2);

        @Override
        public void onMessageReceived(MessageEvent var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class OnNodeConnectionChangedCallback
    implements NodeApi.NodeListener {
        final /* synthetic */ WearableBridgeBase this$0;

        private OnNodeConnectionChangedCallback(WearableBridgeBase var1);

        /* synthetic */ OnNodeConnectionChangedCallback(WearableBridgeBase var1,  var2);

        @Override
        public void onPeerConnected(Node var1);

        @Override
        public void onPeerDisconnected(Node var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class ReleaseTask
    implements Runnable {
        final /* synthetic */ WearableBridgeBase this$0;

        private ReleaseTask(WearableBridgeBase var1);

        /* synthetic */ ReleaseTask(WearableBridgeBase var1,  var2);

        @Override
        public void run();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class SubmitMessageTask
    implements Runnable {
        private final String mMessage;
        private final String mPath;
        final /* synthetic */ WearableBridgeBase this$0;

        public SubmitMessageTask(WearableBridgeBase var1, String var2, String var3);

        @Override
        public void run();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class ThreadFactoryImpl
    implements ThreadFactory {
        final /* synthetic */ WearableBridgeBase this$0;

        private ThreadFactoryImpl(WearableBridgeBase var1);

        /* synthetic */ ThreadFactoryImpl(WearableBridgeBase var1,  var2);

        @Override
        public Thread newThread(Runnable var1);
    }

}

