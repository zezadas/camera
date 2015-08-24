/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.device;

import android.hardware.Camera;
import java.util.List;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class PreviewFrameRetriever {
    private static final String TAG;
    private Camera mCamera;
    private PreviewInfo mInfo;
    private boolean mIsPreviewCallbackRegistered;
    private final List<Request> mRequests;

    static;

    public PreviewFrameRetriever();

    static /* synthetic */ List access$100(PreviewFrameRetriever var0);

    static /* synthetic */ void access$200(PreviewFrameRetriever var0);

    private Request findWithListener(OnPreviewFrameAvarableListener var1);

    private void registerPreviewCallback();

    private void unregisterPreviewCallback();

    public void attachCamera(Camera var1);

    public void attachCamera(Camera var1, Camera.Parameters var2);

    public void dettachCamera();

    public PreviewInfo getPreviewInfo();

    public void removeRequest(OnPreviewFrameAvarableListener var1);

    public boolean request(OnPreviewFrameAvarableListener var1);

    public boolean requestPeriodic(OnPreviewFrameAvarableListener var1);

    public void setPreviewInfo(PreviewInfo var1);

    public static interface OnPreviewFrameAvarableListener {
        public void onPreviewFrameAvarable(PreviewFrameRetriever var1, byte[] var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class OnPreviewFrameCallback
    implements Camera.PreviewCallback {
        final /* synthetic */ PreviewFrameRetriever this$0;

        private OnPreviewFrameCallback(PreviewFrameRetriever var1);

        /* synthetic */ OnPreviewFrameCallback(PreviewFrameRetriever var1,  var2);

        @Override
        public void onPreviewFrame(byte[] var1, Camera var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static class PreviewInfo {
        public final int format;
        public final int height;
        public final int width;

        public PreviewInfo(int var1, int var2, int var3);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class Request {
        final OnPreviewFrameAvarableListener callback;
        final boolean periodic;

        Request(boolean var1, OnPreviewFrameAvarableListener var2);
    }

}

