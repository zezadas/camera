/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.vanilla.wearablebridge.wearable.client;

public interface NotifyHandheldInterface {

    public static interface LifeCycleNotifier {
        public void onPause();

        public void onResume();
    }

    public static interface PhotoEventNotifier {
        public void onPhotoCaptureRequested();
    }

    public static interface VideoEventNotifier {
        public void onStartVideoRecRequested();

        public void onStopVideoRecRequested();
    }

}

