/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.controller;

import android.hardware.Camera;
import android.os.Handler;
import android.os.Message;
import com.sonyericsson.android.camera.CameraActivity;
import com.sonyericsson.android.camera.configuration.parameters.FocusMode;
import com.sonyericsson.android.camera.configuration.parameters.SuperResolution;
import com.sonyericsson.android.camera.controller.CameraFunctions;
import com.sonyericsson.android.camera.controller.ControllerEvent;
import com.sonyericsson.android.camera.controller.ControllerEventSource;
import com.sonyericsson.android.camera.controller.EventDispatcher;
import com.sonyericsson.android.camera.controller.Executor;
import com.sonyericsson.android.camera.controller.ZoomDirection;
import com.sonyericsson.android.camera.device.CameraDevice;
import com.sonyericsson.android.camera.parameter.ParameterManager;
import com.sonyericsson.android.camera.parameter.Parameters;
import com.sonyericsson.android.camera.util.capability.CapabilityItem;
import com.sonyericsson.android.camera.util.capability.CapabilityList;
import com.sonyericsson.android.camera.util.capability.HardwareCapability;
import com.sonyericsson.android.camera.view.CameraWindow;
import com.sonyericsson.cameracommon.controller.ZoomController;
import com.sonyericsson.cameracommon.messagepopup.MessagePopup;
import com.sonyericsson.cameracommon.rotatableview.RotatableToast;

public class AutoZoom {
    private static final int DELAY_ZOOMBAR_HIDE = 1000;
    private static final int MIN_ZOOM_STEP = 0;
    private static final String TAG = AutoZoom.class.getSimpleName();
    private static final int TEXT_ZOOM_NOT_SUPPORTED = 2131296432;
    private final AutoZoomCallback mCallback = new AutoZoomCallback();
    private final CameraFunctions mController;
    private float mCurrentZoomLength;
    private boolean mIsDeviceZooming;
    private boolean mIsFocusModeChangedInZoom;
    private boolean mIsUiZooming;
    private boolean mKeepZoomStep;
    private ZoomState mState;
    private final ZoombarHandler mZoombarHandler;

    public AutoZoom(CameraFunctions cameraFunctions) {
        this.mZoombarHandler = new ZoombarHandler();
        this.mController = cameraFunctions;
        this.mCurrentZoomLength = this.mController.mCameraDevice.getZoom();
    }

    static /* synthetic */ CameraFunctions access$300(AutoZoom autoZoom) {
        return autoZoom.mController;
    }

    private int getMaxZoom() {
        SuperResolution superResolution = this.mController.mParameterManager.getParameters().getSuperResolution();
        int n = this.mController.mCameraDevice.getZoom();
        if (superResolution == SuperResolution.ON && n < this.mController.mCameraDevice.getMaxSrZoom()) {
            return this.mController.mCameraDevice.getMaxSrZoom();
        }
        return this.mController.mCameraDevice.getMaxZoom();
    }

    /*
     * Enabled aggressive block sorting
     */
    private void setFocusMode(FocusMode focusMode) {
        if (this.mController.getParams().getFocusMode() == FocusMode.MULTI) {
            this.mIsFocusModeChangedInZoom = !this.mIsFocusModeChangedInZoom;
            this.mController.mCameraDevice.setFocusMode(focusMode);
            this.mController.mCameraDevice.commitParameters();
            this.mController.mCameraWindow.setFocusMode(focusMode);
            this.mController.mCameraWindow.showCurrentAfRectangle();
        }
    }

    private void setState(ZoomState zoomState) {
        this.mState = zoomState;
    }

    private void startAutoZoom(int n) {
        if (this.mIsDeviceZooming) {
            return;
        }
        if (n != 0) {
            this.setFocusMode(FocusMode.SINGLE);
        }
        try {
            this.mController.mCameraDevice.startSmoothZoom(n, this.mCallback);
            this.mIsDeviceZooming = true;
            return;
        }
        catch (Exception var2_2) {
            this.finish(ControllerEventSource.OTHER);
            return;
        }
    }

    private void stopAutoZoom() {
        if (this.mIsDeviceZooming) {
            this.mController.mCameraDevice.stopSmoothZoom();
            this.mIsDeviceZooming = false;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public void clear() {
        this.stop();
        this.mZoombarHandler.removeMessages(0);
        if (!this.mKeepZoomStep) {
            this.setZoom(0, false);
            this.mController.mCameraWindow.initZoom();
        }
        this.mIsFocusModeChangedInZoom = false;
    }

    public void finish(ControllerEventSource controllerEventSource) {
        if (this.mState != null) {
            this.mState.finishZoom();
        }
        this.mController.mEventDispatcher.updateZoomStatus(false, controllerEventSource);
        if (this.mIsUiZooming) {
            this.mIsUiZooming = false;
        }
    }

    public boolean isZoomAvailable() {
        return this.mState.isZoomAvailable();
    }

    public boolean isZooming() {
        return this.mIsUiZooming;
    }

    public void keepZoomStep(boolean bl) {
        this.mKeepZoomStep = bl;
    }

    public void onZoomProgress(int n, boolean bl) {
        this.mController.mCameraWindow.updateZoombar(n, this.mController.mCameraDevice.getMaxZoom(), this.mController.mCameraDevice.getMaxSrZoom());
        this.mController.mCameraDevice.setZoom(n);
        if (bl && n == 0) {
            this.setFocusMode(FocusMode.MULTI);
        }
    }

    public void prepare(ControllerEventSource controllerEventSource) {
        if (this.mState != null && this.mState.prepare()) {
            this.mController.mEventDispatcher.updateZoomStatus(true, controllerEventSource);
            this.mIsUiZooming = true;
        }
    }

    public void setZoom(int n) {
        this.setZoom(n, true);
    }

    public void setZoom(int n, boolean bl) {
        if (this.mState != null) {
            this.mState.setZoomStep(n, bl);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public void start(ZoomDirection zoomDirection) {
        if (zoomDirection == ZoomDirection.IN) {
            this.mState.startZoomIn();
            return;
        } else {
            if (zoomDirection == ZoomDirection.OUT) {
                this.mState.startZoomOut();
                return;
            }
            if (zoomDirection != ZoomDirection.IN_OUT) return;
            {
                this.mState.startZoom(zoomDirection.getScaleLength());
                return;
            }
        }
    }

    public void stop() {
        if (this.mState != null) {
            this.mState.stopZoom();
        }
    }

    public void update(int n) {
        if (n == 1) {
            this.setState(new ZoomFront());
            return;
        }
        if (HardwareCapability.getCapability((int)n).SMOOTH_ZOOM.get().booleanValue() && this.mController.mCameraDevice.getParameters() != null) {
            if (this.mController.mCameraDevice.getMaxZoom() > 0) {
                this.setState(new ZoomSupported());
                return;
            }
            this.setState(new ZoomNotSupported());
            return;
        }
        this.setState(new ZoomNotSupported());
    }

    private static class AutoZoomCallback
    implements Camera.OnZoomChangeListener {
        private AutoZoomCallback() {
        }

        @Override
        public void onZoomChange(int n, boolean bl, Camera camera) {
            Executor.postEvent(ControllerEvent.EV_ZOOM_PROGRESS, n, bl);
        }
    }

    private class ZoomFront
    extends ZoomNotSupported {
        private ZoomFront() {
            super();
        }

        @Override
        public boolean prepare() {
            AutoZoom.access$300((AutoZoom)AutoZoom.this).mCameraActivity.getMessagePopup().showRotatableToastMessage(2131296432, 1, RotatableToast.ToastPosition.TOP);
            return true;
        }
    }

    private class ZoomNotSupported
    implements ZoomState {
        public ZoomNotSupported() {
            AutoZoom.access$300((AutoZoom)AutoZoom.this).mCameraDevice.clearZoomChangeListener();
        }

        @Override
        public void finishZoom() {
        }

        @Override
        public boolean isZoomAvailable() {
            return false;
        }

        @Override
        public boolean prepare() {
            return false;
        }

        @Override
        public void setZoomStep(int n, boolean bl) {
        }

        @Override
        public void startZoom(float f) {
        }

        @Override
        public void startZoomIn() {
        }

        @Override
        public void startZoomOut() {
        }

        @Override
        public void stopZoom() {
        }
    }

    private static interface ZoomState {
        public void finishZoom();

        public boolean isZoomAvailable();

        public boolean prepare();

        public void setZoomStep(int var1, boolean var2);

        public void startZoom(float var1);

        public void startZoomIn();

        public void startZoomOut();

        public void stopZoom();
    }

    private class ZoomSupported
    implements ZoomState {
        private int mStartZoomValue;

        private ZoomSupported() {
        }

        @Override
        public void finishZoom() {
            AutoZoom.this.mZoombarHandler.sendEmptyMessageDelayed(0, 1000);
            Executor.cancelEvent(ControllerEvent.EV_ZOOM_PROGRESS);
        }

        @Override
        public boolean isZoomAvailable() {
            return true;
        }

        @Override
        public boolean prepare() {
            this.mStartZoomValue = AutoZoom.access$300((AutoZoom)AutoZoom.this).mCameraDevice.getZoom();
            AutoZoom.this.mCurrentZoomLength = AutoZoom.access$300((AutoZoom)AutoZoom.this).mCameraDevice.getZoom();
            AutoZoom.this.mZoombarHandler.removeMessages(0);
            AutoZoom.access$300((AutoZoom)AutoZoom.this).mCameraWindow.hideFaceRectangles();
            AutoZoom.access$300((AutoZoom)AutoZoom.this).mCameraWindow.showZoombar(Executor.isRecording());
            return true;
        }

        @Override
        public void setZoomStep(int n, boolean bl) {
            AutoZoom.access$300((AutoZoom)AutoZoom.this).mCameraDevice.setZoom(n);
            if (bl) {
                AutoZoom.access$300((AutoZoom)AutoZoom.this).mCameraDevice.commitParameters();
            }
            AutoZoom.access$300((AutoZoom)AutoZoom.this).mCameraWindow.updateZoombar(n, AutoZoom.access$300((AutoZoom)AutoZoom.this).mCameraDevice.getMaxZoom(), AutoZoom.access$300((AutoZoom)AutoZoom.this).mCameraDevice.getMaxSrZoom());
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void startZoom(float f) {
            SuperResolution superResolution = AutoZoom.access$300((AutoZoom)AutoZoom.this).mParameterManager.getParameters().getSuperResolution();
            int n = AutoZoom.access$300((AutoZoom)AutoZoom.this).mCameraDevice.getZoom();
            if (f > 0.0f && superResolution == SuperResolution.ON && n == AutoZoom.access$300((AutoZoom)AutoZoom.this).mCameraDevice.getMaxSrZoom() && this.mStartZoomValue < AutoZoom.access$300((AutoZoom)AutoZoom.this).mCameraDevice.getMaxSrZoom()) {
                return;
            }
            AutoZoom.this.mCurrentZoomLength = ZoomController.getZoomValue(AutoZoom.this.mCurrentZoomLength, f);
            if (AutoZoom.this.mCurrentZoomLength < 0.0f) {
                AutoZoom.this.mCurrentZoomLength = 0.0f;
            } else {
                n = AutoZoom.this.getMaxZoom();
                if (AutoZoom.this.mCurrentZoomLength > (float)n) {
                    AutoZoom.this.mCurrentZoomLength = n;
                }
            }
            AutoZoom.this.startAutoZoom(Math.round(AutoZoom.this.mCurrentZoomLength));
        }

        @Override
        public void startZoomIn() {
            SuperResolution superResolution = AutoZoom.access$300((AutoZoom)AutoZoom.this).mParameterManager.getParameters().getSuperResolution();
            int n = AutoZoom.access$300((AutoZoom)AutoZoom.this).mCameraDevice.getZoom();
            if (superResolution == SuperResolution.ON && n == AutoZoom.access$300((AutoZoom)AutoZoom.this).mCameraDevice.getMaxSrZoom() && this.mStartZoomValue != AutoZoom.access$300((AutoZoom)AutoZoom.this).mCameraDevice.getMaxSrZoom()) {
                return;
            }
            AutoZoom.this.startAutoZoom(AutoZoom.this.getMaxZoom());
        }

        @Override
        public void startZoomOut() {
            if (AutoZoom.access$300((AutoZoom)AutoZoom.this).mCameraDevice.getZoom() != 0) {
                AutoZoom.this.startAutoZoom(0);
            }
        }

        @Override
        public void stopZoom() {
            AutoZoom.this.stopAutoZoom();
        }
    }

    class ZoombarHandler
    extends Handler {
        private static final int MSG_HIDE = 0;

        ZoombarHandler() {
        }

        @Override
        public void handleMessage(Message message) {
            switch (message.what) {
                default: {
                    return;
                }
                case 0: 
            }
            AutoZoom.access$300((AutoZoom)AutoZoom.this).mCameraWindow.hideZoombar();
        }
    }

}

