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
import com.sonyericsson.android.camera.controller.EventDispatcher;
import com.sonyericsson.android.camera.controller.StateTransitionController;
import com.sonyericsson.android.camera.parameter.Parameters;
import com.sonyericsson.cameracommon.mediasaving.StorageController;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class ControllerManager {
    private static final String TAG;
    private final CameraActivity mCameraActivity;
    private CapturingMode mCapturingMode;
    private StateTransitionController mController;
    private final EventDispatcher mEventDispatcher;
    private CapturingMode mMainPhotoMode;

    static;

    public ControllerManager(CameraActivity var1);

    public static boolean isMenuAvailable();

    public static void resume();

    public static void suspend();

    public void abort();

    public void changeCapturingMode(CapturingMode var1);

    public void createController();

    public int getCameraId();

    public CapturingMode getCapturingMode();

    public CapturingMode getMainPhotoMode();

    public ParameterApplicable getParameterListener();

    public StorageController.StorageListener getStorageListener();

    public int getType();

    public boolean isControllerReleased();

    public void launch(Parameters var1);

    public boolean onCaptureButtonEvent(int var1, MotionEvent var2);

    public boolean onKeyDown(int var1, KeyEvent var2);

    public boolean onKeyUp(int var1, KeyEvent var2);

    public void onReachHighTemperature();

    public void release();

    public void releaseController();

    public void stopObjectTracking(Rect var1);

    public void storeCapturingMode(CapturingMode var1);

    public void storeMainPhotoMode(CapturingMode var1);
}

