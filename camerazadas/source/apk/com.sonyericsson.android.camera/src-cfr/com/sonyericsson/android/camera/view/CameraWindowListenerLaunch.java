/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.view;

import com.sonyericsson.android.camera.view.CameraWindow;
import com.sonyericsson.android.camera.view.CameraWindowListener;

public class CameraWindowListenerLaunch
extends CameraWindowListener {
    public static final String TAG = CameraWindowListenerLaunch.class.getSimpleName();
    final WeakReference<CameraWindow> mCameraWindow;
    CameraWindowListener.Location mLatestLocation = null;
    boolean mLatestThermalWarning = false;

    public CameraWindowListenerLaunch(CameraWindow cameraWindow) {
        if (cameraWindow == null) {
            throw new IllegalArgumentException("CameraWindow must be inflated.");
        }
        this.mCameraWindow = new WeakReference<CameraWindow>(cameraWindow);
    }

    @Override
    public CameraWindowListener.Location getLocation() {
        return this.mLatestLocation;
    }

    @Override
    public boolean hasWithholdThermalWarning() {
        return this.mLatestThermalWarning;
    }

    @Override
    public void onAcquired(boolean bl, boolean bl2) {
        if (this.mLatestLocation == null) {
            this.mLatestLocation = new CameraWindowListener.Location();
        }
        this.mLatestLocation.mIsAcquired = true;
        this.mLatestLocation.mIsGps = bl;
        this.mLatestLocation.mIsNetwork = bl2;
    }

    @Override
    public void onDisabled() {
    }

    @Override
    public void onLost() {
        if (this.mLatestLocation == null) {
            this.mLatestLocation = new CameraWindowListener.Location();
        }
        this.mLatestLocation.mIsAcquired = false;
    }

    @Override
    public void onNotifyThermalNormal() {
        this.mLatestThermalWarning = false;
    }

    @Override
    public void onNotifyThermalWarning() {
        this.mLatestThermalWarning = true;
    }
}

