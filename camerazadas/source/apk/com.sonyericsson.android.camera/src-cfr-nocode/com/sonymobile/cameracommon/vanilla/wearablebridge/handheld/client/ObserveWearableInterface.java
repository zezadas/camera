/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.vanilla.wearablebridge.handheld.client;

public interface ObserveWearableInterface {

    public static interface LifeCycleObserver {
        public void onPause();

        public void onResume();
    }

    public static interface PhotoEventObserver {
        public void onPhotoCaptureRequested();
    }

    public static interface VideoEventObserver {
        public void onStartVideoRecRequested();

        public void onStopVideoRecRequested();
    }

}

