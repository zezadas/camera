/*
 * Decompiled with CFR 0_100.
 * 
 * Could not load the following classes:
 *  com.sonyericsson.cameraextension.CameraExtension
 *  com.sonyericsson.cameraextension.CameraExtension$ObjectTrackingCallback
 *  com.sonyericsson.cameraextension.CameraExtension$ObjectTrackingResult
 */
package com.sonyericsson.android.camera.controller;

import android.graphics.Rect;
import android.os.Handler;
import android.os.Message;
import com.sonyericsson.android.camera.controller.CameraFunctions;
import com.sonyericsson.android.camera.controller.ControllerEvent;
import com.sonyericsson.android.camera.controller.Executor;
import com.sonyericsson.android.camera.device.CameraDevice;
import com.sonyericsson.android.camera.view.CameraWindow;
import com.sonyericsson.cameracommon.utility.PositionConverter;
import com.sonyericsson.cameraextension.CameraExtension;

public class ObjectTracking {
    private static final String TAG = ObjectTracking.class.getSimpleName();
    private ObjectTrackingCallback mCallback = null;
    private final CameraFunctions mController;
    private final ObjectTrackingHandler mHandler;
    private boolean mIsAlreadyLost = true;
    private Rect mPosition;
    private boolean mShouldWaitForLost = false;

    public ObjectTracking(CameraFunctions cameraFunctions) {
        this.mHandler = new ObjectTrackingHandler();
        this.mController = cameraFunctions;
    }

    static /* synthetic */ CameraFunctions access$100(ObjectTracking objectTracking) {
        return objectTracking.mController;
    }

    private void startTracking(Rect rect) {
        this.mCallback = new ObjectTrackingCallback();
        this.mController.mCameraWindow.startObjectTrackingAnimation(rect);
        this.mController.mCameraDevice.startObjectTracking(PositionConverter.getInstance().convertFaceToDevice(rect), (CameraExtension.ObjectTrackingCallback)this.mCallback);
    }

    public void invisible() {
        this.mController.mCameraWindow.hideObjectRectangles();
    }

    public void onObjectTracked(Rect rect) {
        if (rect.isEmpty()) {
            this.mController.mCameraWindow.hideObjectRectangles();
            return;
        }
        this.mController.mCameraWindow.updateObjectRectangles(PositionConverter.getInstance().convertDeviceToFace(rect));
    }

    public void start(Rect rect) {
        if (rect != null) {
            this.mPosition = rect;
            if (this.mIsAlreadyLost) {
                this.startTracking(rect);
            }
        } else {
            return;
        }
        this.stop(false);
        this.mShouldWaitForLost = true;
    }

    public void stop(boolean bl) {
        this.mController.mCameraDevice.stopObjectTracking(bl);
        this.mController.mCameraWindow.clearObjectRectangles();
        Executor.cancelEvent(ControllerEvent.EV_OBJECT_TRACKING);
        this.mHandler.stopTimeoutCount();
        if (bl) {
            this.mShouldWaitForLost = false;
            this.mIsAlreadyLost = true;
        }
    }

    /*
     * Failed to analyse overrides
     */
    private class ObjectTrackingCallback
    implements CameraExtension.ObjectTrackingCallback {
        private ObjectTrackingCallback() {
        }

        /*
         * Enabled aggressive block sorting
         */
        public void onObjectTracked(CameraExtension.ObjectTrackingResult objectTrackingResult) {
            if (objectTrackingResult == null) return;
            if (ObjectTracking.this.mShouldWaitForLost) {
                if (!objectTrackingResult.mIsLost) return;
                {
                    ObjectTracking.access$100((ObjectTracking)ObjectTracking.this).mCameraDevice.stopObjectTrackingCallback();
                    ObjectTracking.this.startTracking(ObjectTracking.this.mPosition);
                    ObjectTracking.this.mShouldWaitForLost = false;
                }
            }
            if (ObjectTracking.this.mIsAlreadyLost && objectTrackingResult.mIsLost) {
                return;
            }
            ObjectTracking.this.mIsAlreadyLost = objectTrackingResult.mIsLost;
            if (objectTrackingResult.mIsLost) {
                ObjectTracking.this.mHandler.startTimeoutCount();
                return;
            }
            ObjectTracking.this.mHandler.stopTimeoutCount();
            Executor.postEvent(ControllerEvent.EV_OBJECT_TRACKING, 0, objectTrackingResult.mRectOfTrackedObject);
        }
    }

    private class ObjectTrackingHandler
    extends Handler {
        private static final int MSG_TIMEOUT_INVISIBLE = 2;
        private static final int MSG_TIMEOUT_LOST = 1;
        private static final int TIMEOUT_INVISIBLE = 500;
        private static final int TIMEOUT_LOST = 3000;

        private ObjectTrackingHandler() {
        }

        @Override
        public void handleMessage(Message message) {
            if (!ObjectTracking.access$100((ObjectTracking)ObjectTracking.this).mCameraDevice.isObjectTrackingRunning()) {
                return;
            }
            switch (message.what) {
                default: {
                    return;
                }
                case 1: {
                    Executor.sendEmptyEvent(ControllerEvent.EV_OBJECT_TRACKING_LOST);
                    return;
                }
                case 2: 
            }
            Executor.postEmptyEvent(ControllerEvent.EV_OBJECT_TRACKING_INVISIBLE);
        }

        public void startTimeoutCount() {
            this.sendEmptyMessageDelayed(1, 3000);
            this.sendEmptyMessageDelayed(2, 500);
        }

        public void stopTimeoutCount() {
            this.removeMessages(1);
            this.removeMessages(2);
        }
    }

}

