/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.controller;

import android.graphics.Rect;
import com.sonyericsson.android.camera.controller.CameraFunctions;
import com.sonyericsson.android.camera.controller.EventDispatcher;
import com.sonyericsson.android.camera.device.CameraDevice;
import com.sonyericsson.android.camera.view.CameraWindow;
import com.sonyericsson.cameracommon.utility.PositionConverter;

public class TouchFocus {
    private static final String TAG = TouchFocus.class.getSimpleName();
    private final CameraFunctions mController;
    private Rect mLastPosition = new Rect();

    public TouchFocus(CameraFunctions cameraFunctions) {
        this.mController = cameraFunctions;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private void setFocusPosition(Rect rect, boolean bl) {
        if (rect == null) {
            return;
        }
        this.setLastPosition(rect);
        this.mController.mCameraWindow.updateTouchRectangle(rect);
        rect = PositionConverter.getInstance().convertToDevice(rect);
        this.mController.mCameraDevice.setFocusRect(rect);
        if (!bl) return;
        this.mController.mCameraDevice.commitParameters();
    }

    private void setLastPosition(Rect rect) {
        this.mLastPosition = rect;
    }

    public void clear() {
        this.setFocusPosition(new Rect(), false);
        this.hideTouchFocusRectangle();
    }

    public void finish(Rect rect) {
        this.mController.mEventDispatcher.updateTouchFocusStatus(false);
        this.mController.mCameraWindow.startTouchUpAnimation(rect);
        this.setFocusPosition(rect, true);
    }

    public Rect getLastPosition() {
        return this.mLastPosition;
    }

    public void hideTouchFocusRectangle() {
        this.mController.mEventDispatcher.updateTouchFocusStatus(false);
        this.mController.mCameraWindow.clearTouchRectangle();
    }

    public void setFocusPosition(Rect rect) {
        this.setFocusPosition(rect, true);
    }

    public void singleTapUp(Rect rect) {
        if (rect == null) {
            return;
        }
        this.mController.mCameraWindow.startTouchDownAnimation(rect);
        this.setFocusPosition(rect, true);
    }

    public void start(Rect rect) {
        if (rect == null) {
            return;
        }
        this.mController.mCameraWindow.hideBalloonTips();
        this.mController.mCameraWindow.startTouchDownAnimation(rect);
        this.setFocusPosition(rect, true);
        this.mController.mEventDispatcher.updateTouchFocusStatus(true);
    }

    public void updateTouchFocusRectangle(Rect rect) {
        this.setLastPosition(rect);
        this.mController.mCameraWindow.updateTouchRectangle(rect);
    }
}

