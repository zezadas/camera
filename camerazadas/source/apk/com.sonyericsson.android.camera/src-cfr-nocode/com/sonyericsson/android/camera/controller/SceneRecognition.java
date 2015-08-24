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
import com.sonyericsson.cameraextension.CameraExtension;

/*
 * Failed to analyse overrides
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class SceneRecognition
implements CameraExtension.SceneRecognitionCallback {
    private static final String TAG;
    private final CameraFunctions mController;
    private boolean mIsSceneRecognition;

    static;

    public SceneRecognition(CameraFunctions var1);

    private CameraExtension.SceneRecognitionResult createResult(CameraExtension.SceneMode var1, CameraExtension.DeviceStabilityCondition var2, boolean var3);

    private void hideNotification();

    private void updateNotification(CameraExtension.SceneRecognitionResult var1);

    public boolean isSceneRecognition();

    public void onRecognizedSceneChanged(CameraExtension.SceneRecognitionResult var1);

    public void onSceneModeChanged(CameraExtension.SceneRecognitionResult var1);

    public void pause();

    public void start();

    public void stop();

    public void update(CapturingMode var1);
}

