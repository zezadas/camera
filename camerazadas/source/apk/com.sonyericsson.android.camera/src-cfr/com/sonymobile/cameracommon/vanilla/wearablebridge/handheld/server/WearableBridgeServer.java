/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.vanilla.wearablebridge.handheld.server;

import android.content.Context;
import android.os.Handler;
import com.google.android.gms.wearable.DataEvent;
import com.google.android.gms.wearable.Node;
import com.sonymobile.cameracommon.vanilla.wearablebridge.common.AbstractCapturableState;
import com.sonymobile.cameracommon.vanilla.wearablebridge.common.WearableBridgeBase;
import com.sonymobile.cameracommon.vanilla.wearablebridge.handheld.client.NotifyWearableInterface;
import com.sonymobile.cameracommon.vanilla.wearablebridge.handheld.client.ObserveWearableInterface;
import java.util.List;

public class WearableBridgeServer
extends WearableBridgeBase {
    private static final String TAG = WearableBridgeServer.class.getSimpleName();
    private Handler mCallbackHandler = null;
    private NotifyWearableInterface.LifeCycleNotifier mLifeCycleNotifier = null;
    private ObserveWearableInterface.LifeCycleObserver mLifeCycleObserver = null;
    private ObserveWearableInterface.PhotoEventObserver mPhotoEventObserver = null;
    private NotifyWearableInterface.PhotoStateNotifier mPhotoStateNotifier = null;
    private ObserveWearableInterface.VideoEventObserver mVideoEventObserver = null;
    private NotifyWearableInterface.VideoStateNotifier mVideoStateNotifier = null;

    public WearableBridgeServer(Context context, Handler handler, ObserveWearableInterface.LifeCycleObserver lifeCycleObserver, ObserveWearableInterface.PhotoEventObserver photoEventObserver, ObserveWearableInterface.VideoEventObserver videoEventObserver) {
        super(context);
        this.mCallbackHandler = handler;
        this.mLifeCycleObserver = lifeCycleObserver;
        this.mPhotoEventObserver = photoEventObserver;
        this.mVideoEventObserver = videoEventObserver;
        this.mLifeCycleNotifier = new LifeCycleNotifierImpl();
        this.mPhotoStateNotifier = new PhotoStateNotifierImpl();
        this.mVideoStateNotifier = new VideoStateNotifierImpl();
    }

    public NotifyWearableInterface.LifeCycleNotifier getLifeCycleNotifier() {
        return this.mLifeCycleNotifier;
    }

    public NotifyWearableInterface.PhotoStateNotifier getPhotoStateNotifier() {
        return this.mPhotoStateNotifier;
    }

    public NotifyWearableInterface.VideoStateNotifier getVideoStateNotifier() {
        return this.mVideoStateNotifier;
    }

    @Override
    public void onDataChanged(List<DataEvent> object) {
        object = new HandleDataChangedTask((List<DataEvent>)object);
        this.mCallbackHandler.post((Runnable)object);
    }

    @Override
    public void onMessageReceived(String object, String string) {
        object = new HandleMessageTask((String)object, string);
        this.mCallbackHandler.post((Runnable)object);
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
    public void release() {
        super.release();
        this.mLifeCycleNotifier = null;
        this.mPhotoStateNotifier = null;
        this.mVideoStateNotifier = null;
        this.mCallbackHandler = null;
        this.mLifeCycleObserver = null;
        this.mPhotoEventObserver = null;
        this.mVideoEventObserver = null;
    }

    private class HandleDataChangedTask
    implements Runnable {
        private final List<DataEvent> mDataEventList;

        public HandleDataChangedTask(List<DataEvent> list) {
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
            if (this.mPath == null) return;
            if ("/wearablebridge/lifecycle".equals(this.mPath)) {
                if (this.mMessage == null) return;
                {
                    if ("msg-life-cycle-on-resume".equals(this.mMessage)) {
                        WearableBridgeServer.this.mLifeCycleObserver.onResume();
                        return;
                    }
                    if (!"msg-life-cycle-on-pause".equals(this.mMessage)) return;
                    {
                        WearableBridgeServer.this.mLifeCycleObserver.onPause();
                        return;
                    }
                }
            }
            if ("/wearablebridge/photo".equals(this.mPath)) {
                if (this.mMessage == null || !"msg-photo-on-capture-requested".equals(this.mMessage)) return;
                {
                    WearableBridgeServer.this.mPhotoEventObserver.onPhotoCaptureRequested();
                    return;
                }
            }
            if (!"/wearablebridge/video".equals(this.mPath) || this.mMessage == null) return;
            if ("msg-video-on-start-rec-requested".equals(this.mMessage)) {
                WearableBridgeServer.this.mVideoEventObserver.onStartVideoRecRequested();
                return;
            }
            if (!"msg-video-on-stop-rec-requested".equals(this.mMessage)) {
                return;
            }
            WearableBridgeServer.this.mVideoEventObserver.onStopVideoRecRequested();
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

    private class LifeCycleNotifierImpl
    implements NotifyWearableInterface.LifeCycleNotifier {
        private LifeCycleNotifierImpl() {
        }

        @Override
        public void onPause() {
            WearableBridgeServer.this.submitMessageAsync("/wearablebridge/lifecycle", "msg-life-cycle-on-pause");
            WearableBridgeServer.this.onPause();
        }

        @Override
        public void onResume() {
            WearableBridgeServer.this.onResume();
            WearableBridgeServer.this.submitMessageAsync("/wearablebridge/lifecycle", "msg-life-cycle-on-resume");
        }
    }

    private class PhotoStateNotifierImpl
    implements NotifyWearableInterface.PhotoStateNotifier {
        private PhotoStateNotifierImpl() {
        }

        @Override
        public void onCaptureFailed() {
            WearableBridgeServer.this.submitMessageAsync("/wearablebridge/photo", "mst-photo-on-capture-failed");
        }

        @Override
        public void onCaptureSucceeded() {
            WearableBridgeServer.this.submitMessageAsync("/wearablebridge/photo", "msg-photo-on-capture-succeeded");
        }

        @Override
        public void onStateChanged(AbstractCapturableState.AbstractPhotoState abstractPhotoState) {
            WearableBridgeServer.this.submitMessageAsync("/wearablebridge/photo/state", abstractPhotoState.name());
        }
    }

    private class VideoStateNotifierImpl
    implements NotifyWearableInterface.VideoStateNotifier {
        private VideoStateNotifierImpl() {
        }

        @Override
        public void onStartRecordingFailed() {
        }

        @Override
        public void onStartRecordingSucceeded() {
        }

        @Override
        public void onStateChanged(AbstractCapturableState.AbstractVideoState abstractVideoState) {
        }

        @Override
        public void onStopRecordingFailed() {
        }

        @Override
        public void onStopRecordingSucceeded() {
        }
    }

}

