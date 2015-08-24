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
import com.sonyericsson.cameraextension.CameraExtension;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class ObjectTracking {
    private static final String TAG;
    private ObjectTrackingCallback mCallback;
    private final CameraFunctions mController;
    private final ObjectTrackingHandler mHandler;
    private boolean mIsAlreadyLost;
    private Rect mPosition;
    private boolean mShouldWaitForLost;

    static;

    public ObjectTracking(CameraFunctions var1);

    static /* synthetic */ boolean access$000(ObjectTracking var0);

    static /* synthetic */ boolean access$002(ObjectTracking var0, boolean var1);

    static /* synthetic */ CameraFunctions access$100(ObjectTracking var0);

    static /* synthetic */ Rect access$200(ObjectTracking var0);

    static /* synthetic */ void access$300(ObjectTracking var0, Rect var1);

    static /* synthetic */ boolean access$400(ObjectTracking var0);

    static /* synthetic */ boolean access$402(ObjectTracking var0, boolean var1);

    static /* synthetic */ ObjectTrackingHandler access$500(ObjectTracking var0);

    private void startTracking(Rect var1);

    public void invisible();

    public void onObjectTracked(Rect var1);

    public void start(Rect var1);

    public void stop(boolean var1);

    /*
     * Failed to analyse overrides
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class ObjectTrackingCallback
    implements CameraExtension.ObjectTrackingCallback {
        final /* synthetic */ ObjectTracking this$0;

        private ObjectTrackingCallback(ObjectTracking var1);

        /* synthetic */ ObjectTrackingCallback(ObjectTracking var1,  var2);

        public void onObjectTracked(CameraExtension.ObjectTrackingResult var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class ObjectTrackingHandler
    extends Handler {
        private static final int MSG_TIMEOUT_INVISIBLE = 2;
        private static final int MSG_TIMEOUT_LOST = 1;
        private static final int TIMEOUT_INVISIBLE = 500;
        private static final int TIMEOUT_LOST = 3000;
        final /* synthetic */ ObjectTracking this$0;

        private ObjectTrackingHandler(ObjectTracking var1);

        /* synthetic */ ObjectTrackingHandler(ObjectTracking var1,  var2);

        @Override
        public void handleMessage(Message var1);

        public void startTimeoutCount();

        public void stopTimeoutCount();
    }

}

