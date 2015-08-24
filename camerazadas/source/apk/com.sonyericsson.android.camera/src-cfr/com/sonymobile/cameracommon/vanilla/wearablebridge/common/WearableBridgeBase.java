/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.vanilla.wearablebridge.common;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.wearable.DataApi;
import com.google.android.gms.wearable.DataEvent;
import com.google.android.gms.wearable.DataEventBuffer;
import com.google.android.gms.wearable.MessageApi;
import com.google.android.gms.wearable.MessageEvent;
import com.google.android.gms.wearable.Node;
import com.google.android.gms.wearable.NodeApi;
import com.google.android.gms.wearable.Wearable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

public abstract class WearableBridgeBase {
    private static final String TAG = WearableBridgeBase.class.getSimpleName();
    private static final int TIMEOUT_DURATION_MILLIS = 3000;
    private ExecutorService mBackWorker = null;
    private Context mContext = null;
    private GoogleApiClient mGoogleApiClient = null;
    private boolean mIsNowOnResolutionForGooglePlayApiServiceConnection = false;
    private OnConnectionChangedCallback mOnConnectionChangedCallback = null;
    private OnConnectionFailedCallback mOnConnectionFailedCallback = null;
    private OnDataChangedCallback mOnDataChangedCallback = null;
    private OnMessageReceivedCallback mOnMessageReceivedCallback = null;
    private OnNodeConnectionChangedCallback mOnNodeConnectionChangedCallback = null;
    private PendingResult<NodeApi.GetConnectedNodesResult> mPendingNodeResult;

    public WearableBridgeBase(Context object) {
        this.mBackWorker = Executors.newSingleThreadExecutor(new ThreadFactoryImpl());
        this.mContext = object;
        this.mOnConnectionChangedCallback = new OnConnectionChangedCallback();
        this.mOnConnectionFailedCallback = new OnConnectionFailedCallback();
        this.mOnNodeConnectionChangedCallback = new OnNodeConnectionChangedCallback();
        this.mOnMessageReceivedCallback = new OnMessageReceivedCallback();
        this.mOnDataChangedCallback = new OnDataChangedCallback();
        object = new InitializeTask();
        this.mBackWorker.execute((Runnable)object);
    }

    private final String getTargetNodeId() {
        this.mPendingNodeResult = Wearable.NodeApi.getConnectedNodes(this.mGoogleApiClient);
        Object object = this.mPendingNodeResult.await();
        this.mPendingNodeResult = null;
        if ((object = object.getNodes()) == null || object.isEmpty()) {
            return null;
        }
        return ((Node)object.get(0)).getId();
    }

    private void releaseApiCallbacks() {
        if (Wearable.NodeApi != null && this.mGoogleApiClient != null && this.mOnNodeConnectionChangedCallback != null) {
            Wearable.NodeApi.removeListener(this.mGoogleApiClient, this.mOnNodeConnectionChangedCallback);
        }
        if (Wearable.MessageApi != null && this.mGoogleApiClient != null && this.mOnMessageReceivedCallback != null) {
            Wearable.MessageApi.removeListener(this.mGoogleApiClient, this.mOnMessageReceivedCallback);
        }
        if (Wearable.DataApi != null && this.mGoogleApiClient != null && this.mOnDataChangedCallback != null) {
            Wearable.DataApi.removeListener(this.mGoogleApiClient, this.mOnDataChangedCallback);
        }
    }

    private void setupApiCallbacks() {
        if (Wearable.NodeApi != null) {
            Wearable.NodeApi.addListener(this.mGoogleApiClient, this.mOnNodeConnectionChangedCallback);
        }
        if (Wearable.MessageApi != null) {
            Wearable.MessageApi.addListener(this.mGoogleApiClient, this.mOnMessageReceivedCallback);
        }
        if (Wearable.DataApi != null) {
            Wearable.DataApi.addListener(this.mGoogleApiClient, this.mOnDataChangedCallback);
        }
    }

    public abstract void onDataChanged(List<DataEvent> var1);

    public abstract void onMessageReceived(String var1, String var2);

    public abstract void onNodeConnected(Node var1);

    public abstract void onNodeDisconnected(Node var1);

    public void onPause() {
        DisconnectionTask disconnectionTask = new DisconnectionTask();
        this.mBackWorker.execute(disconnectionTask);
    }

    public void onResume() {
        ConnectionTask connectionTask = new ConnectionTask();
        this.mBackWorker.execute(connectionTask);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void release() {
        this.releaseApiCallbacks();
        ReleaseTask releaseTask = new ReleaseTask();
        this.mBackWorker.execute(releaseTask);
        this.mBackWorker.shutdown();
        if (this.mPendingNodeResult != null) {
            this.mPendingNodeResult.cancel();
            this.mPendingNodeResult = null;
        }
        try {
            this.mBackWorker.awaitTermination(3000, TimeUnit.MILLISECONDS);
        }
        catch (InterruptedException var1_2) {
            var1_2.printStackTrace();
        }
        this.mBackWorker = null;
    }

    public void submitMessageAsync(String object, String string) {
        object = new SubmitMessageTask((String)object, string);
        this.mBackWorker.execute((Runnable)object);
    }

    private class ConnectionTask
    implements Runnable {
        private ConnectionTask() {
        }

        @Override
        public void run() {
            if (!WearableBridgeBase.this.mIsNowOnResolutionForGooglePlayApiServiceConnection) {
                WearableBridgeBase.this.mGoogleApiClient.connect();
                WearableBridgeBase.this.getTargetNodeId();
            }
        }
    }

    private class DisconnectionTask
    implements Runnable {
        private DisconnectionTask() {
        }

        @Override
        public void run() {
            if (WearableBridgeBase.this.mGoogleApiClient.isConnected()) {
                // empty if block
            }
            WearableBridgeBase.this.mGoogleApiClient.disconnect();
        }
    }

    private class InitializeTask
    implements Runnable {
        private InitializeTask() {
        }

        @Override
        public void run() {
            WearableBridgeBase.this.mGoogleApiClient = new GoogleApiClient.Builder(WearableBridgeBase.this.mContext).addApi(Wearable.API).addConnectionCallbacks(WearableBridgeBase.this.mOnConnectionChangedCallback).addOnConnectionFailedListener(WearableBridgeBase.this.mOnConnectionFailedCallback).build();
        }
    }

    private class OnConnectionChangedCallback
    implements GoogleApiClient.ConnectionCallbacks {
        private OnConnectionChangedCallback() {
        }

        @Override
        public void onConnected(Bundle bundle) {
            WearableBridgeBase.this.mIsNowOnResolutionForGooglePlayApiServiceConnection = false;
            WearableBridgeBase.this.setupApiCallbacks();
        }

        @Override
        public void onConnectionSuspended(int n) {
        }
    }

    private class OnConnectionFailedCallback
    implements GoogleApiClient.OnConnectionFailedListener {
        private OnConnectionFailedCallback() {
        }

        @Override
        public void onConnectionFailed(ConnectionResult connectionResult) {
            WearableBridgeBase.this.releaseApiCallbacks();
            if (WearableBridgeBase.this.mIsNowOnResolutionForGooglePlayApiServiceConnection) {
                return;
            }
            if (connectionResult.hasResolution()) {
                WearableBridgeBase.this.mIsNowOnResolutionForGooglePlayApiServiceConnection = true;
                WearableBridgeBase.this.mGoogleApiClient.connect();
                return;
            }
            WearableBridgeBase.this.mIsNowOnResolutionForGooglePlayApiServiceConnection = false;
        }
    }

    private class OnDataChangedCallback
    implements DataApi.DataListener {
        private OnDataChangedCallback() {
        }

        @Override
        public void onDataChanged(DataEventBuffer object) {
            ArrayList<DataEvent> arrayList = new ArrayList<DataEvent>();
            object = object.iterator();
            while (object.hasNext()) {
                arrayList.add((DataEvent)((DataEvent)object.next()).freeze());
            }
            WearableBridgeBase.this.onDataChanged(arrayList);
        }
    }

    private class OnMessageReceivedCallback
    implements MessageApi.MessageListener {
        private OnMessageReceivedCallback() {
        }

        @Override
        public void onMessageReceived(MessageEvent object) {
            String string = object.getPath();
            object = new String(object.getData());
            WearableBridgeBase.this.onMessageReceived(string, (String)object);
        }
    }

    private class OnNodeConnectionChangedCallback
    implements NodeApi.NodeListener {
        private OnNodeConnectionChangedCallback() {
        }

        @Override
        public void onPeerConnected(Node node) {
            WearableBridgeBase.this.onNodeConnected(node);
        }

        @Override
        public void onPeerDisconnected(Node node) {
            WearableBridgeBase.this.onNodeDisconnected(node);
        }
    }

    private class ReleaseTask
    implements Runnable {
        private ReleaseTask() {
        }

        @Override
        public void run() {
            if (WearableBridgeBase.this.mGoogleApiClient != null) {
                if (WearableBridgeBase.this.mGoogleApiClient.isConnectionCallbacksRegistered(WearableBridgeBase.this.mOnConnectionChangedCallback)) {
                    WearableBridgeBase.this.mGoogleApiClient.unregisterConnectionCallbacks(WearableBridgeBase.this.mOnConnectionChangedCallback);
                }
                if (WearableBridgeBase.this.mGoogleApiClient.isConnectionFailedListenerRegistered(WearableBridgeBase.this.mOnConnectionFailedCallback)) {
                    WearableBridgeBase.this.mGoogleApiClient.unregisterConnectionFailedListener(WearableBridgeBase.this.mOnConnectionFailedCallback);
                }
                WearableBridgeBase.this.mGoogleApiClient = null;
            }
            WearableBridgeBase.this.mOnConnectionChangedCallback = null;
            WearableBridgeBase.this.mOnConnectionFailedCallback = null;
            WearableBridgeBase.this.mOnNodeConnectionChangedCallback = null;
            WearableBridgeBase.this.mOnMessageReceivedCallback = null;
            WearableBridgeBase.this.mOnDataChangedCallback = null;
            WearableBridgeBase.this.mContext = null;
        }
    }

    private class SubmitMessageTask
    implements Runnable {
        private final String mMessage;
        private final String mPath;

        public SubmitMessageTask(String string, String string2) {
            this.mPath = string;
            this.mMessage = string2;
        }

        @Override
        public void run() {
            Object object;
            if (!(WearableBridgeBase.this.mBackWorker.isShutdown() || (object = WearableBridgeBase.this.getTargetNodeId()) == null)) {
                object = Wearable.MessageApi.sendMessage(WearableBridgeBase.this.mGoogleApiClient, (String)object, this.mPath, this.mMessage.getBytes()).await(3000, TimeUnit.MILLISECONDS);
            }
        }
    }

    private class ThreadFactoryImpl
    implements ThreadFactory {
        private ThreadFactoryImpl() {
        }

        @Override
        public Thread newThread(Runnable runnable) {
            runnable = new Thread(runnable);
            runnable.setName("WearableBridgeBackWorker");
            return runnable;
        }
    }

}

