/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.view.onscreenbutton;

import android.graphics.Canvas;
import android.view.MotionEvent;
import com.sonyericsson.android.camera.ControllerManager;
import com.sonyericsson.android.camera.view.settings.SettingController;
import com.sonyericsson.cameracommon.utility.MeasurePerformance;
import com.sonyericsson.cameracommon.viewfinder.onscreenbutton.OnScreenButton;
import com.sonyericsson.cameracommon.viewfinder.onscreenbutton.OnScreenButtonListener;

public class CaptureButtonEventHandler
implements OnScreenButtonListener {
    private static final String TAG = CaptureButtonEventHandler.class.getSimpleName();
    private final ControllerManager mController;
    private final int mType;
    private final SettingController mView;

    public CaptureButtonEventHandler(int n, SettingController settingController, ControllerManager controllerManager) {
        this.mType = n;
        this.mView = settingController;
        this.mController = controllerManager;
    }

    private void closeSettingDialog() {
        if (this.mType == 0) {
            this.mView.closeDialogTemporary();
            return;
        }
        this.mView.closeDialogs();
    }

    /*
     * Enabled aggressive block sorting
     */
    void notifyListener(MotionEvent motionEvent) {
        switch (motionEvent.getAction()) {
            default: {
                break;
            }
            case 0: {
                this.closeSettingDialog();
            }
        }
        this.mController.onCaptureButtonEvent(this.mType, motionEvent);
    }

    @Override
    public void onCancel(OnScreenButton onScreenButton, MotionEvent motionEvent) {
        this.notifyListener(motionEvent);
    }

    @Override
    public void onDispatchDraw(OnScreenButton onScreenButton, Canvas canvas) {
        MeasurePerformance.measureTime(MeasurePerformance.PerformanceIds.LAUNCH_TO_DISPATCH_DRAW, false);
        MeasurePerformance.measureTime(MeasurePerformance.PerformanceIds.STARTUP_TIME, false);
    }

    @Override
    public void onDown(OnScreenButton onScreenButton, MotionEvent motionEvent) {
        this.notifyListener(motionEvent);
    }

    @Override
    public void onMove(OnScreenButton onScreenButton, MotionEvent motionEvent) {
        this.notifyListener(motionEvent);
    }

    @Override
    public void onUp(OnScreenButton onScreenButton, MotionEvent motionEvent) {
        this.notifyListener(motionEvent);
    }
}

