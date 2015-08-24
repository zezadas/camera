/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.controller;

import com.sonyericsson.android.camera.controller.ControllerMessage;

/*
 * Exception performing whole class analysis ignored.
 */
public class State {
    public State();

    public boolean canHandleCaptureRequest();

    public void entry();

    public void exit();

    public void handleAbort(ControllerMessage var1);

    public void handleAfCancel(ControllerMessage var1);

    public void handleAfDone(ControllerMessage var1);

    public void handleAfStart(ControllerMessage var1);

    public void handleAudioResourceError(ControllerMessage var1);

    public void handleBurstCompressedData(ControllerMessage var1);

    public void handleBurstStart(ControllerMessage var1);

    public void handleBurstStop(ControllerMessage var1);

    public void handleCameraSetupFinished(ControllerMessage var1);

    public void handleCapture(ControllerMessage var1);

    public void handleChangeCapturingMode(ControllerMessage var1);

    public void handleClickContentProgress(ControllerMessage var1);

    public void handleCloseSettingsDialog(ControllerMessage var1);

    public void handleCompressedData(ControllerMessage var1);

    public void handleControllerPause(ControllerMessage var1);

    public void handleControllerResume(ControllerMessage var1);

    public void handleDeviceError(ControllerMessage var1);

    public void handleFaceDetect(ControllerMessage var1);

    public void handleFaceDetectChange(ControllerMessage var1);

    public void handleFaceIdentify(ControllerMessage var1);

    public void handleFocusPositionCancel(ControllerMessage var1);

    public void handleFocusPositionChange(ControllerMessage var1);

    public void handleFocusPositionContinue(ControllerMessage var1);

    public void handleFocusPositionFinish(ControllerMessage var1);

    public void handleFocusPositionStart(ControllerMessage var1);

    public void handleKeyBack(ControllerMessage var1);

    public void handleLaunch(ControllerMessage var1);

    public void handleObjectTracking(ControllerMessage var1);

    public void handleObjectTrackingInvisible(ControllerMessage var1);

    public void handleObjectTrackingLost(ControllerMessage var1);

    public void handleObjectTrackingStart(ControllerMessage var1);

    public void handleOpenSettingsDialog(ControllerMessage var1);

    public void handleReachHighTemperature(ControllerMessage var1);

    public void handleSceneChanged(ControllerMessage var1);

    public void handleSelfTimerCancel(ControllerMessage var1);

    public void handleSelfTimerCapture(ControllerMessage var1);

    public void handleSelfTimerCountdown(ControllerMessage var1);

    public void handleSelfTimerFinish(ControllerMessage var1);

    public void handleSelfTimerStart(ControllerMessage var1);

    public void handleShutterDone(ControllerMessage var1);

    public void handleSmileCapture(ControllerMessage var1);

    public void handleStorageError(ControllerMessage var1);

    public void handleStorageMounted(ControllerMessage var1);

    public void handleStorageShouldChange(ControllerMessage var1);

    public void handleStoreDone(ControllerMessage var1);

    public void handleSurfaceChanged(ControllerMessage var1);

    public void handleSurfaceCreated(ControllerMessage var1);

    public void handleSurfaceDestroyed(ControllerMessage var1);

    public void handleVideoFinished(ControllerMessage var1);

    public void handleVideoInfo(ControllerMessage var1);

    public void handleVideoPauseResume(ControllerMessage var1);

    public void handleVideoPaused(ControllerMessage var1);

    public void handleVideoProgress(ControllerMessage var1);

    public void handleVideoStartWaitDone(ControllerMessage var1);

    public void handleZoomFinish(ControllerMessage var1);

    public void handleZoomPrepare(ControllerMessage var1);

    public void handleZoomProgress(ControllerMessage var1);

    public void handleZoomStart(ControllerMessage var1);

    public void handleZoomStop(ControllerMessage var1);

    public boolean isBackKeyValid();

    public boolean isMenuAvailable();

    public boolean isRecording();

    public String toString();
}

