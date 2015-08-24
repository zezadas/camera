/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.vanilla.wearablebridge.wearable.client;

import android.content.Context;
import android.os.Handler;
import com.google.android.gms.wearable.DataEvent;
import com.google.android.gms.wearable.Node;
import com.sonymobile.cameracommon.vanilla.wearablebridge.common.AbstractCapturableState;
import com.sonymobile.cameracommon.vanilla.wearablebridge.common.WearableBridgeBase;
import com.sonymobile.cameracommon.vanilla.wearablebridge.wearable.client.NotifyHandheldInterface;
import com.sonymobile.cameracommon.vanilla.wearablebridge.wearable.client.ObserveHandheldInterface;
import java.util.List;

public class WearableBridgeClient
extends WearableBridgeBase {
    private static final String TAG = WearableBridgeClient.class.getSimpleName();
    private Handler mCallbackHandler = null;
    private NotifyHandheldInterface.LifeCycleNotifier mLifeCycleNotifier = null;
    private NotifyHandheldInterface.PhotoEventNotifier mPhotoEventNotifier = null;
    private ObserveHandheldInterface.PhotoStateObserver mPhotoStateObserver = null;
    private NotifyHandheldInterface.VideoEventNotifier mVideoEventNotifier = null;
    private ObserveHandheldInterface.VideoStateObserver mVideoStateObserver = null;

    public WearableBridgeClient(Context context, Handler handler, ObserveHandheldInterface.PhotoStateObserver photoStateObserver, ObserveHandheldInterface.VideoStateObserver videoStateObserver) {
        super(context);
        this.mCallbackHandler = handler;
        this.mPhotoStateObserver = photoStateObserver;
        this.mVideoStateObserver = videoStateObserver;
        this.mLifeCycleNotifier = new LifeCycleNotiferImpl();
        this.mPhotoEventNotifier = new PhotoEventNotifierImpl();
        this.mVideoEventNotifier = new VideoEventNotifierImpl();
    }

    public NotifyHandheldInterface.LifeCycleNotifier getLifeCycleNotifier() {
        return this.mLifeCycleNotifier;
    }

    public NotifyHandheldInterface.PhotoEventNotifier getPhotoEventNotifier() {
        return this.mPhotoEventNotifier;
    }

    public NotifyHandheldInterface.VideoEventNotifier getVideoEventNotifier() {
        return this.mVideoEventNotifier;
    }

    @Override
    public void onDataChanged(List<DataEvent> object) {
        object = new HandleDataTask((List<DataEvent>)object);
        if (this.mCallbackHandler != null) {
            this.mCallbackHandler.post((Runnable)object);
        }
    }

    @Override
    public void onMessageReceived(String object, String string) {
        object = new HandleMessageTask((String)object, string);
        if (this.mCallbackHandler != null) {
            this.mCallbackHandler.post((Runnable)object);
        }
    }

    @Override
    public void onNodeConnected(Node object) {
        object = new HandleNodeConnectionTask(true, (Node)object);
        this.mCallbackHandler.post((Runnable)object);
    }

    @Override
    public void onNodeDisconnected(Node object) {
        object = new HandleNodeConnectionTask(false, (Node)object);
        this.mCallbackHandler.post((Runnable)object);
    }

    @Override
    public void onResume() {
        super.onResume();
        this.mLifeCycleNotifier.onResume();
    }

    @Override
    public void release() {
        super.release();
        this.mLifeCycleNotifier = null;
        this.mPhotoEventNotifier = null;
        this.mVideoEventNotifier = null;
        this.mCallbackHandler = null;
        this.mPhotoStateObserver = null;
        this.mVideoStateObserver = null;
    }

    private class HandleDataTask
    implements Runnable {
        private final List<DataEvent> mDataEventList;

        public HandleDataTask(List<DataEvent> list) {
            this.mDataEventList = list;
        }

        @Override
        public void run() {
        }
    }

    private class HandleMessageTask
    implements Runnable {
        private final String mMessage;
        private final String mPath;

        public HandleMessageTask(String string, String string2) {
            this.mPath = string;
            this.mMessage = string2;
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void run() {
            if (this.mPath == null || "/wearablebridge/lifecycle".equals(this.mPath)) return;
            if ("/wearablebridge/photo/state".equals(this.mPath)) {
                AbstractCapturableState.AbstractPhotoState abstractPhotoState = AbstractCapturableState.AbstractPhotoState.valueOf(this.mMessage);
                WearableBridgeClient.this.mPhotoStateObserver.onStateChanged(abstractPhotoState);
                return;
            }
            if ("/wearablebridge/photo".equals(this.mPath)) {
                if (this.mMessage == null) return;
                {
                    if ("msg-photo-on-capture-succeeded".equals(this.mMessage)) {
                        WearableBridgeClient.this.mPhotoStateObserver.onCaptureSucceeded();
                        return;
                    }
                    if (!"mst-photo-on-capture-failed".equals(this.mMessage)) return;
                    {
                        WearableBridgeClient.this.mPhotoStateObserver.onCaptureFailed();
                        return;
                    }
                }
            }
            if (!"/wearablebridge/video/state".equals(this.mPath) && "/wearablebridge/video".equals(this.mPath)) return;
        }
    }

    private class HandleNodeConnectionTask
    implements Runnable {
        private final boolean mIsConnected;
        private final Node mNode;

        public HandleNodeConnectionTask(boolean bl, Node node) {
            this.mIsConnected = bl;
            this.mNode = node;
        }

        @Override
        public void run() {
        }
    }

    private class LifeCycleNotiferImpl
    implements NotifyHandheldInterface.LifeCycleNotifier {
        private LifeCycleNotiferImpl() {
        }

        @Override
        public void onPause() {
            WearableBridgeClient.this.submitMessageAsync("/wearablebridge/lifecycle", "msg-life-cycle-on-pause");
        }

        @Override
        public void onResume() {
            WearableBridgeClient.this.submitMessageAsync("/wearablebridge/lifecycle", "msg-life-cycle-on-resume");
        }
    }

    private class PhotoEventNotifierImpl
    implements NotifyHandheldInterface.PhotoEventNotifier {
        private PhotoEventNotifierImpl() {
        }

        @Override
        public void onPhotoCaptureRequested() {
            WearableBridgeClient.this.submitMessageAsync("/wearablebridge/photo", "msg-photo-on-capture-requested");
        }
    }

    private class VideoEventNotifierImpl
    implements NotifyHandheldInterface.VideoEventNotifier {
        private VideoEventNotifierImpl() {
        }

        @Override
        public void onStartVideoRecRequested() {
        }

        @Override
        public void onStopVideoRecRequested() {
        }
    }

}

