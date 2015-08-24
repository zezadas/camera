/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.vanilla.wearablebridge.handheld.server;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import com.sonymobile.cameracommon.vanilla.util.Log;
import com.sonymobile.cameracommon.vanilla.wearablebridge.common.AbstractCapturableState;
import com.sonymobile.cameracommon.vanilla.wearablebridge.common.WearableUtil;
import com.sonymobile.cameracommon.vanilla.wearablebridge.handheld.client.NotifyWearableInterface;
import com.sonymobile.cameracommon.vanilla.wearablebridge.handheld.client.ObserveWearableInterface;
import com.sonymobile.cameracommon.vanilla.wearablebridge.handheld.server.WearableBridgeServer;

public class WearableBridgeServerBroadcastReceiver
extends BroadcastReceiver {
    private static final String TAG = WearableBridgeServerBroadcastReceiver.class.getSimpleName();
    private static String mClientPackageName;
    private static Context mContext;
    private static ObserveWearableInterface.LifeCycleObserver mLifeCycleObserver;
    private static ObserveWearableInterface.PhotoEventObserver mPhotoEventObserver;
    private static ObserveWearableInterface.VideoEventObserver mVideoEventObserver;
    private static WearableBridgeServer mWearableBridgeServer;

    static {
        mContext = null;
        mClientPackageName = null;
        mWearableBridgeServer = null;
        mLifeCycleObserver = null;
        mPhotoEventObserver = null;
        mVideoEventObserver = null;
    }

    private Intent getNotifierIntent(String object) {
        object = new Intent((String)object);
        object.setPackage(mClientPackageName);
        return object;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onReceive(Context object, Intent intent) {
        mContext = object;
        if (!WearableUtil.isGooglePlayServiceAvailable((Context)object)) {
            Log.logError(TAG, "Google Play Service is not available.");
            return;
        }
        object = intent.getAction();
        if (object != null) {
            if ("com.sonymobile.cameracommon.wearablebridge.CLIENT_LIFECYCLE_ON_RESUME".equals(object)) {
                if (mWearableBridgeServer != null) {
                    mWearableBridgeServer.release();
                }
                mClientPackageName = intent.getExtras().getString("wearable-bridge-client-package-name-key");
                mLifeCycleObserver = new LifeCycleObserverImpl();
                mPhotoEventObserver = new PhotoEventObserverImpl();
                mVideoEventObserver = new VideoEventObserverImpl();
                mWearableBridgeServer = new WearableBridgeServer(mContext, new Handler(), mLifeCycleObserver, mPhotoEventObserver, mVideoEventObserver);
                mWearableBridgeServer.getLifeCycleNotifier().onResume();
            } else if ("com.sonymobile.cameracommon.wearablebridge.CLIENT_LIFECYCLE_ON_PAUSE".equals(object)) {
                if (mWearableBridgeServer != null) {
                    mWearableBridgeServer.getLifeCycleNotifier().onPause();
                    mWearableBridgeServer.release();
                    mWearableBridgeServer = null;
                }
                mClientPackageName = null;
                mLifeCycleObserver = null;
                mPhotoEventObserver = null;
                mVideoEventObserver = null;
            }
        }
        if (mWearableBridgeServer == null) return;
        if (object != null && mWearableBridgeServer.getPhotoStateNotifier() != null) {
            if ("com.sonymobile.cameracommon.wearablebridge.CLIENT_PHOTO_STATE_CHANGED".equals(object)) {
                String string = intent.getExtras().getString("wearable-bridge-photo-state-key");
                mWearableBridgeServer.getPhotoStateNotifier().onStateChanged(AbstractCapturableState.AbstractPhotoState.valueOf(string));
            } else if ("com.sonymobile.cameracommon.wearablebridge.CLIENT_PHOTO_CAPTURE_COMPLETED".equals(object)) {
                if (intent.getExtras().getBoolean("wearable-bridge-completion-status-key")) {
                    mWearableBridgeServer.getPhotoStateNotifier().onCaptureSucceeded();
                } else {
                    mWearableBridgeServer.getPhotoStateNotifier().onCaptureFailed();
                }
            }
        }
        if (object == null) return;
        if ("com.sonymobile.cameracommon.wearablebridge.CLIENT_VIDEO_STATE_CHANGED".equals(object)) {
            object = intent.getExtras().getString("wearable-bridge-video-state-key");
            mWearableBridgeServer.getVideoStateNotifier().onStateChanged(AbstractCapturableState.AbstractVideoState.valueOf((String)object));
            return;
        }
        if ("com.sonymobile.cameracommon.wearablebridge.CLIENT_VIDEO_START_REC_COMPLETED".equals(object)) {
            if (intent.getExtras().getBoolean("wearable-bridge-completion-status-key")) {
                mWearableBridgeServer.getVideoStateNotifier().onStartRecordingSucceeded();
                return;
            }
            mWearableBridgeServer.getVideoStateNotifier().onStartRecordingFailed();
            return;
        }
        if (!"com.sonymobile.cameracommon.wearablebridge.CLIENT_VIDEO_STOP_REC_COMPLETED".equals(object)) return;
        {
            if (intent.getExtras().getBoolean("wearable-bridge-completion-status-key")) {
                mWearableBridgeServer.getVideoStateNotifier().onStopRecordingSucceeded();
                return;
            }
        }
        mWearableBridgeServer.getVideoStateNotifier().onStopRecordingFailed();
    }

    private class LifeCycleObserverImpl
    implements ObserveWearableInterface.LifeCycleObserver {
        private LifeCycleObserverImpl() {
        }

        @Override
        public void onPause() {
            Intent intent = WearableBridgeServerBroadcastReceiver.this.getNotifierIntent("com.sonymobile.cameracommon.wearablebridge.SERVER_LIFECYCLE_ON_PAUSE");
            mContext.sendBroadcast(intent);
        }

        @Override
        public void onResume() {
            Intent intent = WearableBridgeServerBroadcastReceiver.this.getNotifierIntent("com.sonymobile.cameracommon.wearablebridge.SERVER_LIFECYCLE_ON_RESUME");
            mContext.sendBroadcast(intent);
        }
    }

    private class PhotoEventObserverImpl
    implements ObserveWearableInterface.PhotoEventObserver {
        private PhotoEventObserverImpl() {
        }

        @Override
        public void onPhotoCaptureRequested() {
            Intent intent = WearableBridgeServerBroadcastReceiver.this.getNotifierIntent("com.sonymobile.cameracommon.wearablebridge.SERVER_PHOTO_CAPTURE_REQUESTED");
            mContext.sendBroadcast(intent);
        }
    }

    private class VideoEventObserverImpl
    implements ObserveWearableInterface.VideoEventObserver {
        private VideoEventObserverImpl() {
        }

        @Override
        public void onStartVideoRecRequested() {
            Intent intent = WearableBridgeServerBroadcastReceiver.this.getNotifierIntent("com.sonymobile.cameracommon.wearablebridge.SERVER_VIDEO_START_REC_REQUESTED");
            mContext.sendBroadcast(intent);
        }

        @Override
        public void onStopVideoRecRequested() {
            Intent intent = WearableBridgeServerBroadcastReceiver.this.getNotifierIntent("com.sonymobile.cameracommon.wearablebridge.SERVER_VIDEO_STOP_REC_REQUESTED");
            mContext.sendBroadcast(intent);
        }
    }

}

