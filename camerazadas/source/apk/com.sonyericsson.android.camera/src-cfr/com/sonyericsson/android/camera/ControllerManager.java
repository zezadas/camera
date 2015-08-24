/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera;

import android.graphics.Rect;
import android.view.KeyEvent;
import android.view.MotionEvent;
import com.sonyericsson.android.camera.CameraActivity;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.ParameterApplicable;
import com.sonyericsson.android.camera.controller.ControllerEvent;
import com.sonyericsson.android.camera.controller.EventDispatcher;
import com.sonyericsson.android.camera.controller.Executor;
import com.sonyericsson.android.camera.controller.StateTransitionController;
import com.sonyericsson.android.camera.parameter.Parameters;
import com.sonyericsson.android.camera.view.CameraWindow;
import com.sonyericsson.cameracommon.mediasaving.StorageController;

public class ControllerManager {
    private static final String TAG = ControllerManager.class.getSimpleName();
    private final CameraActivity mCameraActivity;
    private CapturingMode mCapturingMode = CapturingMode.UNKNOWN;
    private StateTransitionController mController;
    private final EventDispatcher mEventDispatcher;
    private CapturingMode mMainPhotoMode = CapturingMode.UNKNOWN;

    public ControllerManager(CameraActivity cameraActivity) {
        this.mCameraActivity = cameraActivity;
        this.mEventDispatcher = new EventDispatcher(cameraActivity);
        Executor.create(cameraActivity);
    }

    public static boolean isMenuAvailable() {
        return Executor.isMenuAvailable();
    }

    public static void resume() {
        Executor.sendEmptyEvent(ControllerEvent.EV_CONTROLLER_RESUME);
    }

    public static void suspend() {
        Executor.sendEmptyEvent(ControllerEvent.EV_CONTROLLER_PAUSE);
    }

    public void abort() {
        this.mEventDispatcher.cancel();
        Executor.sendEmergencyEvent(ControllerEvent.EV_ABORT);
    }

    public void changeCapturingMode(CapturingMode capturingMode) {
        if (this.mCapturingMode == capturingMode) {
            return;
        }
        Executor.sendEvent(ControllerEvent.EV_CHANGE_CAPTURING_MODE, 0, capturingMode);
    }

    public void createController() {
        this.mController = new StateTransitionController(this.mCameraActivity, this.mEventDispatcher);
        this.mController.setInitState(true);
    }

    public int getCameraId() {
        return this.mCapturingMode.getCameraId();
    }

    public CapturingMode getCapturingMode() {
        return this.mCapturingMode;
    }

    public CapturingMode getMainPhotoMode() {
        return this.mMainPhotoMode;
    }

    public ParameterApplicable getParameterListener() {
        return this.mController.getParameterListener();
    }

    public StorageController.StorageListener getStorageListener() {
        return this.mEventDispatcher;
    }

    public int getType() {
        return this.mCapturingMode.getType();
    }

    public boolean isControllerReleased() {
        if (this.mController == null) {
            return true;
        }
        return false;
    }

    public void launch(Parameters parameters) {
        this.mEventDispatcher.init(this.mCameraActivity.getContentView());
        if (this.mCapturingMode == CapturingMode.UNKNOWN) {
            return;
        }
        this.mController.applyAllParameters(parameters);
    }

    public boolean onCaptureButtonEvent(int n, MotionEvent motionEvent) {
        return this.mEventDispatcher.onCaptureButtonEvent(n, motionEvent);
    }

    public boolean onKeyDown(int n, KeyEvent keyEvent) {
        return this.mEventDispatcher.onKeyDown(n, keyEvent);
    }

    public boolean onKeyUp(int n, KeyEvent keyEvent) {
        return this.mEventDispatcher.onKeyUp(n, keyEvent);
    }

    public void onReachHighTemperature() {
        Executor.sendEmptyEvent(ControllerEvent.EV_REACH_HIGH_TEMPERATURE);
    }

    public void release() {
        this.mEventDispatcher.release();
    }

    public void releaseController() {
        if (this.mController != null) {
            this.mController.pauseSceneRecognition();
        }
        this.mController = null;
    }

    public void stopObjectTracking(Rect rect) {
        this.mController.stopObjectTracking(rect);
    }

    public void storeCapturingMode(CapturingMode capturingMode) {
        this.mCapturingMode = capturingMode;
        this.storeMainPhotoMode(capturingMode);
    }

    public void storeMainPhotoMode(CapturingMode capturingMode) {
        if (capturingMode.isMainPhoto()) {
            this.mMainPhotoMode = capturingMode;
        }
    }
}

