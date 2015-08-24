/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.controller;

import android.hardware.Camera;
import android.os.Handler;
import android.os.Message;
import com.sonyericsson.android.camera.configuration.parameters.FocusMode;
import com.sonyericsson.android.camera.controller.CameraFunctions;
import com.sonyericsson.android.camera.controller.ControllerEventSource;
import com.sonyericsson.android.camera.controller.ZoomDirection;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class AutoZoom {
    private static final int DELAY_ZOOMBAR_HIDE = 1000;
    private static final int MIN_ZOOM_STEP = 0;
    private static final String TAG;
    private static final int TEXT_ZOOM_NOT_SUPPORTED = 2131296432;
    private final AutoZoomCallback mCallback;
    private final CameraFunctions mController;
    private float mCurrentZoomLength;
    private boolean mIsDeviceZooming;
    private boolean mIsFocusModeChangedInZoom;
    private boolean mIsUiZooming;
    private boolean mKeepZoomStep;
    private ZoomState mState;
    private final ZoombarHandler mZoombarHandler;

    static;

    public AutoZoom(CameraFunctions var1);

    static /* synthetic */ CameraFunctions access$300(AutoZoom var0);

    static /* synthetic */ float access$400(AutoZoom var0);

    static /* synthetic */ float access$402(AutoZoom var0, float var1);

    static /* synthetic */ ZoombarHandler access$500(AutoZoom var0);

    static /* synthetic */ int access$600(AutoZoom var0);

    static /* synthetic */ void access$700(AutoZoom var0, int var1);

    static /* synthetic */ void access$800(AutoZoom var0);

    private int getMaxZoom();

    private void setFocusMode(FocusMode var1);

    private void setState(ZoomState var1);

    private void startAutoZoom(int var1);

    private void stopAutoZoom();

    public void clear();

    public void finish(ControllerEventSource var1);

    public boolean isZoomAvailable();

    public boolean isZooming();

    public void keepZoomStep(boolean var1);

    public void onZoomProgress(int var1, boolean var2);

    public void prepare(ControllerEventSource var1);

    public void setZoom(int var1);

    public void setZoom(int var1, boolean var2);

    public void start(ZoomDirection var1);

    public void stop();

    public void update(int var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class AutoZoomCallback
    implements Camera.OnZoomChangeListener {
        private AutoZoomCallback();

        /* synthetic */ AutoZoomCallback( var1);

        @Override
        public void onZoomChange(int var1, boolean var2, Camera var3);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class ZoomFront
    extends ZoomNotSupported {
        final /* synthetic */ AutoZoom this$0;

        private ZoomFront(AutoZoom var1);

        /* synthetic */ ZoomFront(AutoZoom var1,  var2);

        @Override
        public boolean prepare();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class ZoomNotSupported
    implements ZoomState {
        final /* synthetic */ AutoZoom this$0;

        public ZoomNotSupported(AutoZoom var1);

        @Override
        public void finishZoom();

        @Override
        public boolean isZoomAvailable();

        @Override
        public boolean prepare();

        @Override
        public void setZoomStep(int var1, boolean var2);

        @Override
        public void startZoom(float var1);

        @Override
        public void startZoomIn();

        @Override
        public void startZoomOut();

        @Override
        public void stopZoom();
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

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class ZoomSupported
    implements ZoomState {
        private int mStartZoomValue;
        final /* synthetic */ AutoZoom this$0;

        private ZoomSupported(AutoZoom var1);

        /* synthetic */ ZoomSupported(AutoZoom var1,  var2);

        @Override
        public void finishZoom();

        @Override
        public boolean isZoomAvailable();

        @Override
        public boolean prepare();

        @Override
        public void setZoomStep(int var1, boolean var2);

        @Override
        public void startZoom(float var1);

        @Override
        public void startZoomIn();

        @Override
        public void startZoomOut();

        @Override
        public void stopZoom();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class ZoombarHandler
    extends Handler {
        private static final int MSG_HIDE = 0;
        final /* synthetic */ AutoZoom this$0;

        ZoombarHandler(AutoZoom var1);

        @Override
        public void handleMessage(Message var1);
    }

}

