/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.vanilla.wearablebridge.handheld.client;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import com.sonymobile.cameracommon.vanilla.wearablebridge.common.AbstractCapturableState;
import com.sonymobile.cameracommon.vanilla.wearablebridge.handheld.client.NotifyWearableInterface;
import com.sonymobile.cameracommon.vanilla.wearablebridge.handheld.client.ObserveWearableInterface;
import com.sonymobile.cameracommon.vanilla.wearablebridge.handheld.client.WearableBridgeClientBroadcastReceiver;

public class WearableBridgeClient {
    private static final String TAG = WearableBridgeClient.class.getSimpleName();
    private Activity mActivity = null;
    private Handler mCallbackHandler = null;
    private boolean mIsObserverEnabled = false;
    private NotifyWearableInterface.LifeCycleNotifier mLifeCycleNotifier = null;
    private ObserveWearableInterface.LifeCycleObserver mLifeCycleObserver = null;
    private ObserveWearableInterface.PhotoEventObserver mPhotoEventObserver = null;
    private NotifyWearableInterface.PhotoStateNotifier mPhotoStateNotifier = null;
    private ObserveWearableInterface.VideoEventObserver mVideoEventObserver = null;
    private NotifyWearableInterface.VideoStateNotifier mVideoStateNotifier = null;
    private IntentFilter mWearableBridgeClientBroadcastFilter = null;
    private WearableBridgeClientBroadcastReceiver mWearableBridgeClientBroadcastReceiver = null;

    public WearableBridgeClient(Activity activity, Handler handler, ObserveWearableInterface.LifeCycleObserver lifeCycleObserver, ObserveWearableInterface.PhotoEventObserver photoEventObserver, ObserveWearableInterface.VideoEventObserver videoEventObserver) {
        this.mActivity = activity;
        this.mCallbackHandler = handler;
        this.mLifeCycleObserver = lifeCycleObserver;
        this.mPhotoEventObserver = photoEventObserver;
        this.mVideoEventObserver = videoEventObserver;
        this.mLifeCycleNotifier = new LifeCycleNotifierImpl();
        this.mPhotoStateNotifier = new PhotoStateNotifierImpl();
        this.mVideoStateNotifier = new VideoStateNotifierImpl();
        this.mWearableBridgeClientBroadcastReceiver = new WearableBridgeClientBroadcastReceiver(this.mCallbackHandler, this.mLifeCycleObserver, this.mPhotoEventObserver, this.mVideoEventObserver);
        this.mWearableBridgeClientBroadcastFilter = new IntentFilter();
        this.mWearableBridgeClientBroadcastFilter.addAction("com.sonymobile.cameracommon.wearablebridge.SERVER_LIFECYCLE_ON_RESUME");
        this.mWearableBridgeClientBroadcastFilter.addAction("com.sonymobile.cameracommon.wearablebridge.SERVER_LIFECYCLE_ON_PAUSE");
        this.mWearableBridgeClientBroadcastFilter.addAction("com.sonymobile.cameracommon.wearablebridge.SERVER_PHOTO_CAPTURE_REQUESTED");
        this.mWearableBridgeClientBroadcastFilter.addAction("com.sonymobile.cameracommon.wearablebridge.SERVER_VIDEO_START_REC_REQUESTED");
        this.mWearableBridgeClientBroadcastFilter.addAction("com.sonymobile.cameracommon.wearablebridge.SERVER_VIDEO_STOP_REC_REQUESTED");
    }

    private Intent getNotifierIntent(String object) {
        object = new Intent((String)object);
        object.setPackage("com.sonymobile.cameracommon.wearablebridge");
        object.putExtra("wearable-bridge-client-package-name-key", this.mActivity.getPackageName());
        object.addFlags(36);
        return object;
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

    public void release() {
        this.mWearableBridgeClientBroadcastReceiver.release();
        this.mWearableBridgeClientBroadcastReceiver = null;
        this.mWearableBridgeClientBroadcastFilter = null;
        this.mLifeCycleNotifier = null;
        this.mPhotoStateNotifier = null;
        this.mVideoStateNotifier = null;
        this.mActivity = null;
        this.mCallbackHandler = null;
        this.mLifeCycleObserver = null;
        this.mPhotoEventObserver = null;
        this.mVideoEventObserver = null;
    }

    private class LifeCycleNotifierImpl
    implements NotifyWearableInterface.LifeCycleNotifier {
        private LifeCycleNotifierImpl() {
        }

        @Override
        public void onPause() {
            if (!WearableBridgeClient.this.mIsObserverEnabled) {
                return;
            }
            WearableBridgeClient.this.mIsObserverEnabled = false;
            Intent intent = WearableBridgeClient.this.getNotifierIntent("com.sonymobile.cameracommon.wearablebridge.CLIENT_LIFECYCLE_ON_PAUSE");
            WearableBridgeClient.this.mActivity.sendBroadcast(intent);
            WearableBridgeClient.this.mActivity.unregisterReceiver(WearableBridgeClient.this.mWearableBridgeClientBroadcastReceiver);
        }

        @Override
        public void onResume() {
            if (WearableBridgeClient.this.mIsObserverEnabled) {
                return;
            }
            WearableBridgeClient.this.mActivity.registerReceiver(WearableBridgeClient.this.mWearableBridgeClientBroadcastReceiver, WearableBridgeClient.this.mWearableBridgeClientBroadcastFilter);
            Intent intent = WearableBridgeClient.this.getNotifierIntent("com.sonymobile.cameracommon.wearablebridge.CLIENT_LIFECYCLE_ON_RESUME");
            WearableBridgeClient.this.mActivity.sendBroadcast(intent);
            WearableBridgeClient.this.mIsObserverEnabled = true;
        }
    }

    private class PhotoStateNotifierImpl
    implements NotifyWearableInterface.PhotoStateNotifier {
        private PhotoStateNotifierImpl() {
        }

        @Override
        public void onCaptureFailed() {
            if (!WearableBridgeClient.this.mIsObserverEnabled) {
                return;
            }
            Intent intent = WearableBridgeClient.this.getNotifierIntent("com.sonymobile.cameracommon.wearablebridge.CLIENT_PHOTO_CAPTURE_COMPLETED");
            intent.putExtra("wearable-bridge-completion-status-key", false);
            WearableBridgeClient.this.mActivity.sendBroadcast(intent);
        }

        @Override
        public void onCaptureSucceeded() {
            if (!WearableBridgeClient.this.mIsObserverEnabled) {
                return;
            }
            Intent intent = WearableBridgeClient.this.getNotifierIntent("com.sonymobile.cameracommon.wearablebridge.CLIENT_PHOTO_CAPTURE_COMPLETED");
            intent.putExtra("wearable-bridge-completion-status-key", true);
            WearableBridgeClient.this.mActivity.sendBroadcast(intent);
        }

        @Override
        public void onStateChanged(AbstractCapturableState.AbstractPhotoState abstractPhotoState) {
            if (!WearableBridgeClient.this.mIsObserverEnabled) {
                return;
            }
            Intent intent = WearableBridgeClient.this.getNotifierIntent("com.sonymobile.cameracommon.wearablebridge.CLIENT_PHOTO_STATE_CHANGED");
            intent.putExtra("wearable-bridge-photo-state-key", abstractPhotoState.name());
            WearableBridgeClient.this.mActivity.sendBroadcast(intent);
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

