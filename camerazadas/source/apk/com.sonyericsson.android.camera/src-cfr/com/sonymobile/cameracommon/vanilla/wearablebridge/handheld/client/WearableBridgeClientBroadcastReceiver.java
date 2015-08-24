/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.vanilla.wearablebridge.handheld.client;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import com.sonymobile.cameracommon.vanilla.wearablebridge.handheld.client.ObserveWearableInterface;

class WearableBridgeClientBroadcastReceiver
extends BroadcastReceiver {
    private static final String TAG = WearableBridgeClientBroadcastReceiver.class.getSimpleName();
    private Handler mCallbackHandler = null;
    private ObserveWearableInterface.LifeCycleObserver mLifeCycleObserver;
    private NotifyOnPauseTask mNotifyOnPauseTask;
    private NotifyOnResumeTask mNotifyOnResumeTask;
    private NotifyPhotoCaptureRequestedTask mNotifyPhotoCaptureRequestedTask;
    private NotifyVideoStartRecRequestedTask mNotifyVideoStartRecRequestedTask;
    private NotifyVideoStopRecRequestedTask mNotifyVideoStopRecRequestedTask;
    private ObserveWearableInterface.PhotoEventObserver mPhotoEventObserver;
    private ObserveWearableInterface.VideoEventObserver mVideoEventObserver;

    public WearableBridgeClientBroadcastReceiver(Handler handler, ObserveWearableInterface.LifeCycleObserver lifeCycleObserver, ObserveWearableInterface.PhotoEventObserver photoEventObserver, ObserveWearableInterface.VideoEventObserver videoEventObserver) {
        this.mNotifyOnResumeTask = new NotifyOnResumeTask();
        this.mNotifyOnPauseTask = new NotifyOnPauseTask();
        this.mNotifyPhotoCaptureRequestedTask = new NotifyPhotoCaptureRequestedTask();
        this.mNotifyVideoStartRecRequestedTask = new NotifyVideoStartRecRequestedTask();
        this.mNotifyVideoStopRecRequestedTask = new NotifyVideoStopRecRequestedTask();
        this.mLifeCycleObserver = null;
        this.mPhotoEventObserver = null;
        this.mVideoEventObserver = null;
        this.mCallbackHandler = handler;
        this.mLifeCycleObserver = lifeCycleObserver;
        this.mPhotoEventObserver = photoEventObserver;
        this.mVideoEventObserver = videoEventObserver;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    public void onReceive(Context object, Intent intent) {
        object = intent.getAction();
        if (object == null) {
            return;
        }
        if ("com.sonymobile.cameracommon.wearablebridge.SERVER_LIFECYCLE_ON_RESUME".equals(object)) {
            this.mCallbackHandler.post(this.mNotifyOnResumeTask);
            return;
        }
        if ("com.sonymobile.cameracommon.wearablebridge.SERVER_LIFECYCLE_ON_PAUSE".equals(object)) {
            this.mCallbackHandler.post(this.mNotifyOnPauseTask);
            return;
        }
        if ("com.sonymobile.cameracommon.wearablebridge.SERVER_PHOTO_CAPTURE_REQUESTED".equals(object)) {
            this.mCallbackHandler.post(this.mNotifyPhotoCaptureRequestedTask);
            return;
        }
        if ("com.sonymobile.cameracommon.wearablebridge.SERVER_VIDEO_START_REC_REQUESTED".equals(object)) {
            this.mCallbackHandler.post(this.mNotifyVideoStartRecRequestedTask);
            return;
        }
        if (!"com.sonymobile.cameracommon.wearablebridge.SERVER_VIDEO_STOP_REC_REQUESTED".equals(object)) return;
        this.mCallbackHandler.post(this.mNotifyVideoStopRecRequestedTask);
    }

    public void release() {
        this.mCallbackHandler = null;
        this.mLifeCycleObserver = null;
        this.mPhotoEventObserver = null;
        this.mVideoEventObserver = null;
    }

    private class NotifyOnPauseTask
    implements Runnable {
        private NotifyOnPauseTask() {
        }

        @Override
        public void run() {
            WearableBridgeClientBroadcastReceiver.this.mLifeCycleObserver.onPause();
        }
    }

    private class NotifyOnResumeTask
    implements Runnable {
        private NotifyOnResumeTask() {
        }

        @Override
        public void run() {
            WearableBridgeClientBroadcastReceiver.this.mLifeCycleObserver.onResume();
        }
    }

    private class NotifyPhotoCaptureRequestedTask
    implements Runnable {
        private NotifyPhotoCaptureRequestedTask() {
        }

        @Override
        public void run() {
            WearableBridgeClientBroadcastReceiver.this.mPhotoEventObserver.onPhotoCaptureRequested();
        }
    }

    private class NotifyVideoStartRecRequestedTask
    implements Runnable {
        private NotifyVideoStartRecRequestedTask() {
        }

        @Override
        public void run() {
            WearableBridgeClientBroadcastReceiver.this.mVideoEventObserver.onStartVideoRecRequested();
        }
    }

    private class NotifyVideoStopRecRequestedTask
    implements Runnable {
        private NotifyVideoStopRecRequestedTask() {
        }

        @Override
        public void run() {
            WearableBridgeClientBroadcastReceiver.this.mVideoEventObserver.onStopVideoRecRequested();
        }
    }

}

