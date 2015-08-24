/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.fastcapturing;

import android.hardware.Camera;
import android.os.Handler;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.PhotoSavingRequest;
import java.util.concurrent.ExecutorService;

/*
 * Exception performing whole class analysis.
 */
public class PreviewFrameGrabber {
    private ExecutorService mExecService;
    private int mFrameHeight;
    private int mFrameWidth;
    private Handler mHandler;
    private OnPreviewFrameGrabbedListener mListener;
    private int mPreviewFormat;
    private PhotoSavingRequest mSavingRequest;

    public PreviewFrameGrabber(PhotoSavingRequest var1);

    static /* synthetic */ OnPreviewFrameGrabbedListener access$000(PreviewFrameGrabber var0);

    static /* synthetic */ ExecutorService access$100(PreviewFrameGrabber var0);

    static /* synthetic */ void access$200(PreviewFrameGrabber var0, byte[] var1);

    static /* synthetic */ int access$300(PreviewFrameGrabber var0);

    static /* synthetic */ int access$400(PreviewFrameGrabber var0);

    static /* synthetic */ int access$500(PreviewFrameGrabber var0);

    static /* synthetic */ PhotoSavingRequest access$600(PreviewFrameGrabber var0);

    private void callbackCaptureToUiThread(byte[] var1);

    public void release();

    public void requestFrame(Camera var1);

    public void setOnPreviewFrameGrabbedListener(OnPreviewFrameGrabbedListener var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class ConvertYuvToJpegAndCallbackTask
    implements Runnable {
        final byte[] mYuvData;
        final /* synthetic */ PreviewFrameGrabber this$0;

        public ConvertYuvToJpegAndCallbackTask(PreviewFrameGrabber var1, byte[] var2);

        @Override
        public void run();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class OnPreviewFrameCallback
    implements Camera.PreviewCallback {
        final /* synthetic */ PreviewFrameGrabber this$0;

        OnPreviewFrameCallback(PreviewFrameGrabber var1);

        @Override
        public void onPreviewFrame(byte[] var1, Camera var2);
    }

    public static interface OnPreviewFrameGrabbedListener {
        public void onPreviewFrameGrabbed(PreviewFrameGrabber var1, byte[] var2);

        public void onPreviewShutterDone();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class UiThreadCaptureCallbackTask
    implements Runnable {
        private final byte[] mJpegData;
        final /* synthetic */ PreviewFrameGrabber this$0;

        public UiThreadCaptureCallbackTask(PreviewFrameGrabber var1, byte[] var2);

        @Override
        public void run();
    }

}

