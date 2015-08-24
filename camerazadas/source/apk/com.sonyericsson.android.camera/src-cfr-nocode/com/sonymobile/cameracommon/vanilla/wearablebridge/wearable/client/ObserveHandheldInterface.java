/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.vanilla.wearablebridge.wearable.client;

import com.sonymobile.cameracommon.vanilla.wearablebridge.common.AbstractCapturableState;

public interface ObserveHandheldInterface {

    public static interface PhotoStateObserver {
        public void onCaptureFailed();

        public void onCaptureSucceeded();

        public void onStateChanged(AbstractCapturableState.AbstractPhotoState var1);
    }

    public static interface VideoStateObserver {
        public void onStartRecordingFailed();

        public void onStartRecordingSucceeded();

        public void onStateChanged(AbstractCapturableState.AbstractVideoState var1);

        public void onStopRecordingFailed();

        public void onStopRecordingSucceeded();
    }

}

