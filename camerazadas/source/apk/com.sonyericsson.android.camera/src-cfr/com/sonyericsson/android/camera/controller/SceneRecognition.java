/*
 * Decompiled with CFR 0_100.
 * 
 * Could not load the following classes:
 *  com.sonyericsson.cameraextension.CameraExtension
 *  com.sonyericsson.cameraextension.CameraExtension$DeviceStabilityCondition
 *  com.sonyericsson.cameraextension.CameraExtension$SceneMode
 *  com.sonyericsson.cameraextension.CameraExtension$SceneRecognitionCallback
 *  com.sonyericsson.cameraextension.CameraExtension$SceneRecognitionResult
 */
package com.sonyericsson.android.camera.controller;

import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.controller.CameraFunctions;
import com.sonyericsson.android.camera.controller.ControllerEvent;
import com.sonyericsson.android.camera.controller.Executor;
import com.sonyericsson.android.camera.device.CameraDevice;
import com.sonyericsson.android.camera.view.CameraWindow;
import com.sonyericsson.cameraextension.CameraExtension;

/*
 * Failed to analyse overrides
 */
public class SceneRecognition
implements CameraExtension.SceneRecognitionCallback {
    private static final String TAG = SceneRecognition.class.getSimpleName();
    private final CameraFunctions mController;
    private boolean mIsSceneRecognition;

    public SceneRecognition(CameraFunctions cameraFunctions) {
        this.mController = cameraFunctions;
    }

    private CameraExtension.SceneRecognitionResult createResult(CameraExtension.SceneMode sceneMode, CameraExtension.DeviceStabilityCondition deviceStabilityCondition, boolean bl) {
        CameraExtension.SceneRecognitionResult sceneRecognitionResult = new CameraExtension.SceneRecognitionResult();
        sceneRecognitionResult.sceneMode = sceneMode;
        sceneRecognitionResult.deviceStabilityCondition = deviceStabilityCondition;
        sceneRecognitionResult.isMacroRange = bl;
        return sceneRecognitionResult;
    }

    private void hideNotification() {
        this.updateNotification(this.createResult(null, null, false));
    }

    private void updateNotification(CameraExtension.SceneRecognitionResult sceneRecognitionResult) {
        this.mController.mCameraWindow.setNotificationScene(sceneRecognitionResult.sceneMode);
        this.mController.mCameraWindow.setNotificationCondition(sceneRecognitionResult.deviceStabilityCondition);
        this.mController.mCameraWindow.setNotificationMacro(sceneRecognitionResult.isMacroRange, sceneRecognitionResult.sceneMode);
    }

    public boolean isSceneRecognition() {
        return this.mIsSceneRecognition;
    }

    public void onRecognizedSceneChanged(CameraExtension.SceneRecognitionResult sceneRecognitionResult) {
        if (this.mController.mCameraDevice.isSceneRecognitionRunning()) {
            this.updateNotification(sceneRecognitionResult);
        }
    }

    public void onSceneModeChanged(CameraExtension.SceneRecognitionResult sceneRecognitionResult) {
        if (sceneRecognitionResult == null) {
            return;
        }
        Executor.postEvent(ControllerEvent.EV_SCENE_CHANGED, 0, (Object)sceneRecognitionResult);
    }

    public void pause() {
        this.mController.mCameraDevice.setSceneRecognitionCallback(null);
        this.hideNotification();
    }

    public void start() {
        if (!this.mIsSceneRecognition) {
            return;
        }
        this.mController.mCameraDevice.setSceneRecognitionCallback((CameraExtension.SceneRecognitionCallback)this);
        this.mController.mCameraDevice.startSceneRecognition();
    }

    public void stop() {
        this.hideNotification();
        this.mController.mCameraDevice.stopSceneRecognition();
        Executor.cancelEvent(ControllerEvent.EV_SCENE_CHANGED);
    }

    public void update(CapturingMode capturingMode) {
        this.mIsSceneRecognition = CameraDevice.isSceneRecognitionRequired(capturingMode);
    }
}

