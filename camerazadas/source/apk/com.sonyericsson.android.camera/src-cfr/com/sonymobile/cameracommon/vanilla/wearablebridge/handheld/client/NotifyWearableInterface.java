/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.vanilla.wearablebridge.handheld.client;

import com.sonymobile.cameracommon.vanilla.wearablebridge.common.AbstractCapturableState;

public interface NotifyWearableInterface {

    public static interface LifeCycleNotifier {
        public void onPause();

        public void onResume();
    }

    public static interface PhotoStateNotifier {
        public void onCaptureFailed();

        public void onCaptureSucceeded();

        public void onStateChanged(AbstractCapturableState.AbstractPhotoState var1);
    }

    public static interface VideoStateNotifier {
        public void onStartRecordingFailed();

        public void onStartRecordingSucceeded();

        public void onStateChanged(AbstractCapturableState.AbstractVideoState var1);

        public void onStopRecordingFailed();

        public void onStopRecordingSucceeded();
    }

}

