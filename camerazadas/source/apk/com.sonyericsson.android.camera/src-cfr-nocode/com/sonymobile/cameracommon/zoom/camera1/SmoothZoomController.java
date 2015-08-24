/*
 * Decompiled with CFR 0_100.
 */
package com.sonymobile.cameracommon.zoom.camera1;

import android.hardware.Camera;
import android.os.Handler;
import java.util.concurrent.ExecutorService;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class SmoothZoomController {
    private static final String TAG;
    private ExecutorService mBackWorker;
    private Camera mCamera;
    private boolean mIsSmoothZoomStartRequired;
    private final boolean mIsSmoothZoomSupportedPlatform;
    private Camera.OnZoomChangeListener mOnZoomChangedCallback;
    private Handler mUiWorker;
    private int mZoomChangeInterval;

    static;

    public SmoothZoomController(Camera var1, Handler var2, Camera.OnZoomChangeListener var3);

    static /* synthetic */ Camera.OnZoomChangeListener access$000(SmoothZoomController var0);

    static /* synthetic */ boolean access$100(SmoothZoomController var0);

    static /* synthetic */ boolean access$102(SmoothZoomController var0, boolean var1);

    static /* synthetic */ Camera access$200(SmoothZoomController var0);

    static /* synthetic */ Handler access$300(SmoothZoomController var0);

    static /* synthetic */ int access$400(SmoothZoomController var0);

    static /* synthetic */ String access$500();

    public void release();

    public void setZoomChangeInterval(int var1);

    public void startSmoothZoom(int var1);

    public void stopSmoothZoom();

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class SmoothZoomTask
    implements Runnable {
        private final int mTargetZoom;
        private long mTaskStartTimestampMillis;
        final /* synthetic */ SmoothZoomController this$0;

        public SmoothZoomTask(SmoothZoomController var1, int var2);

        @Override
        public void run();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class ZoomCallbackTask
    implements Runnable {
        private final Camera mCamera;
        private final boolean mIsStopped;
        private final int mZoomValue;
        final /* synthetic */ SmoothZoomController this$0;

        public ZoomCallbackTask(SmoothZoomController var1, int var2, boolean var3, Camera var4);

        @Override
        public void run();
    }

}

