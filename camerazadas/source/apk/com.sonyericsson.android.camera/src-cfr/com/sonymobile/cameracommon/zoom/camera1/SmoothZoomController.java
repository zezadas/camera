/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.zoom.camera1;

import android.hardware.Camera;
import android.os.Handler;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

public class SmoothZoomController {
    private static final String TAG = SmoothZoomController.class.getSimpleName();
    private ExecutorService mBackWorker = null;
    private Camera mCamera = null;
    private boolean mIsSmoothZoomStartRequired = false;
    private final boolean mIsSmoothZoomSupportedPlatform;
    private Camera.OnZoomChangeListener mOnZoomChangedCallback = null;
    private Handler mUiWorker = null;
    private int mZoomChangeInterval = 33;

    public SmoothZoomController(Camera object, Handler handler, Camera.OnZoomChangeListener onZoomChangeListener) {
        this.mCamera = object;
        object = this.mCamera.getParameters();
        if (object != null && object.isSmoothZoomSupported()) {
            this.mIsSmoothZoomSupportedPlatform = true;
            this.mCamera.setZoomChangeListener(onZoomChangeListener);
            return;
        }
        this.mIsSmoothZoomSupportedPlatform = false;
        this.mUiWorker = handler;
        this.mBackWorker = Executors.newSingleThreadExecutor();
        this.mOnZoomChangedCallback = onZoomChangeListener;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void release() {
        this.mIsSmoothZoomStartRequired = false;
        if (this.mBackWorker != null) {
            this.mBackWorker.shutdown();
            try {
                this.mBackWorker.awaitTermination(500, TimeUnit.MILLISECONDS);
            }
            catch (InterruptedException var1_1) {
                var1_1.printStackTrace();
            }
            this.mBackWorker = null;
        }
        this.mUiWorker = null;
        if (this.mCamera != null) {
            this.mCamera.setZoomChangeListener(null);
            this.mCamera = null;
        }
        this.mOnZoomChangedCallback = null;
    }

    public void setZoomChangeInterval(int n) {
        this.mZoomChangeInterval = n;
    }

    public void startSmoothZoom(int n) {
        if (this.mIsSmoothZoomSupportedPlatform) {
            this.mCamera.startSmoothZoom(n);
            return;
        }
        if (!this.mIsSmoothZoomStartRequired) {
            this.mIsSmoothZoomStartRequired = true;
            SmoothZoomTask smoothZoomTask = new SmoothZoomTask(n);
            this.mBackWorker.execute(smoothZoomTask);
            return;
        }
        CameraLogger.d(TAG, "SmoothZoomController : Already started.");
    }

    public void stopSmoothZoom() {
        if (this.mIsSmoothZoomSupportedPlatform) {
            this.mCamera.stopSmoothZoom();
            return;
        }
        this.mIsSmoothZoomStartRequired = false;
    }

    private class SmoothZoomTask
    implements Runnable {
        private final int mTargetZoom;
        private long mTaskStartTimestampMillis;

        public SmoothZoomTask(int n) {
            this.mTaskStartTimestampMillis = 0;
            this.mTargetZoom = n;
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         * Lifted jumps to return sites
         */
        @Override
        public void run() {
            while (SmoothZoomController.this.mIsSmoothZoomStartRequired) {
                if (SmoothZoomController.this.mCamera != null) {
                    this.mTaskStartTimestampMillis = System.currentTimeMillis();
                    Object object = SmoothZoomController.this.mCamera.getParameters();
                    int n = object.getZoom();
                    if (n < this.mTargetZoom) {
                        ++n;
                    } else {
                        if (this.mTargetZoom >= n) {
                            object = new ZoomCallbackTask(this.mTargetZoom, true, SmoothZoomController.this.mCamera);
                            SmoothZoomController.this.mUiWorker.post((Runnable)object);
                            SmoothZoomController.this.mIsSmoothZoomStartRequired = false;
                            return;
                        }
                        --n;
                    }
                    object.setZoom(n);
                    SmoothZoomController.this.mCamera.setParameters((Camera.Parameters)object);
                    object = new ZoomCallbackTask(n, false, SmoothZoomController.this.mCamera);
                    SmoothZoomController.this.mUiWorker.post((Runnable)object);
                    n = (int)(System.currentTimeMillis() - this.mTaskStartTimestampMillis);
                    n = SmoothZoomController.this.mZoomChangeInterval - n;
                    if (n <= 0) continue;
                    long l = n;
                    try {
                        Thread.sleep(l);
                    }
                    catch (InterruptedException var4_4) {
                        var4_4.printStackTrace();
                    }
                    continue;
                }
                CameraLogger.e(TAG, "SmoothZoomController : Camera is released.");
            }
        }
    }

    private class ZoomCallbackTask
    implements Runnable {
        private final Camera mCamera;
        private final boolean mIsStopped;
        private final int mZoomValue;

        public ZoomCallbackTask(int n, boolean bl, Camera camera) {
            this.mZoomValue = n;
            this.mIsStopped = bl;
            this.mCamera = camera;
        }

        @Override
        public void run() {
            if (SmoothZoomController.this.mOnZoomChangedCallback != null) {
                SmoothZoomController.this.mOnZoomChangedCallback.onZoomChange(this.mZoomValue, this.mIsStopped, this.mCamera);
            }
        }
    }

}

