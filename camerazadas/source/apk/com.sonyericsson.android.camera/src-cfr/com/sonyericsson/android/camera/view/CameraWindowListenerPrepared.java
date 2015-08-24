/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.view;

import com.sonyericsson.android.camera.view.CameraWindow;
import com.sonyericsson.android.camera.view.CameraWindowListener;
import com.sonyericsson.cameracommon.viewfinder.indicators.GeotagIndicator;
import com.sonyericsson.cameracommon.viewfinder.indicators.Indicator;

public class CameraWindowListenerPrepared
extends CameraWindowListener {
    public static final String TAG = CameraWindowListenerPrepared.class.getSimpleName();
    final CameraWindow mCameraWindow;

    public CameraWindowListenerPrepared(CameraWindow cameraWindow) {
        if (cameraWindow == null) {
            throw new IllegalArgumentException("CameraWindow must be inflated.");
        }
        this.mCameraWindow = cameraWindow;
    }

    @Override
    public CameraWindowListener.Location getLocation() {
        return null;
    }

    @Override
    public boolean hasWithholdThermalWarning() {
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onAcquired(boolean bl, boolean bl2) {
        GeotagIndicator geotagIndicator = this.mCameraWindow.getGeoTagIndicator();
        bl = bl || bl2;
        geotagIndicator.isAcquired(bl);
    }

    @Override
    public void onDisabled() {
    }

    @Override
    public void onLost() {
        this.mCameraWindow.getGeoTagIndicator().isAcquired(false);
    }

    @Override
    public void onNotifyThermalNormal() {
        this.mCameraWindow.getThermalIndicator().set(false);
    }

    @Override
    public void onNotifyThermalWarning() {
        this.mCameraWindow.getThermalIndicator().set(true);
    }
}

