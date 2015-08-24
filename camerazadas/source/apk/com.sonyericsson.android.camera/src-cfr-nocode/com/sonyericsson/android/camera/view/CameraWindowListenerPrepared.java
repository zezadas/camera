/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.view;

import com.sonyericsson.android.camera.view.CameraWindow;
import com.sonyericsson.android.camera.view.CameraWindowListener;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class CameraWindowListenerPrepared
extends CameraWindowListener {
    public static final String TAG;
    final CameraWindow mCameraWindow;

    static;

    public CameraWindowListenerPrepared(CameraWindow var1);

    @Override
    public CameraWindowListener.Location getLocation();

    @Override
    public boolean hasWithholdThermalWarning();

    @Override
    public void onAcquired(boolean var1, boolean var2);

    @Override
    public void onDisabled();

    @Override
    public void onLost();

    @Override
    public void onNotifyThermalNormal();

    @Override
    public void onNotifyThermalWarning();
}

