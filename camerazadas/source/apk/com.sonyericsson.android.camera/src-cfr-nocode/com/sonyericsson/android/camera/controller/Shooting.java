/*
 * Decompiled with CFR 0_100.
 */
package com.sonyericsson.android.camera.controller;

import android.hardware.Camera;
import com.sonyericsson.android.camera.configuration.parameters.FocusMode;
import com.sonyericsson.android.camera.controller.CameraFunctions;
import com.sonyericsson.android.camera.controller.ControllerEventSource;
import com.sonyericsson.android.camera.device.AutoFocusListener;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.PhotoSavingRequest;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.SavingRequest;
import java.util.LinkedList;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class Shooting {
    private static final boolean[] AF_AEAWBLOCK;
    private static final boolean[] AF_ALLLOCK;
    private static final int MAX_CAPTURE_REQUEST = 2;
    private static final String TAG;
    private boolean[] mAfLock;
    private ControllerEventSource mAfSource;
    private boolean mAfStarted;
    private final AutoFocusListener mAutoFocusCallback;
    private LinkedList<CaptureRequest> mCaptureRequestQueue;
    private final CameraFunctions mController;
    private boolean mIsSuccessSound;
    private boolean mIsTakePictureRequested;
    private boolean mIsVideoSnapshotSupported;
    private final PreviewCallbackForSnapshot mPreviewCallback;
    private long mTimeForLastPictureTaken;

    static;

    public Shooting(CameraFunctions var1);

    static /* synthetic */ CameraFunctions access$100(Shooting var0);

    static /* synthetic */ PreviewCallbackForSnapshot access$200(Shooting var0);

    static /* synthetic */ long access$302(Shooting var0, long var1);

    static /* synthetic */ LinkedList access$400(Shooting var0);

    private boolean capture(boolean var1, boolean var2);

    private void sendGoogleAnalyticsEvents();

    public void addCaptureRequest(PhotoSavingRequest var1);

    public boolean canAcceptNextCaptureRequest();

    public void clearCaptureRequest();

    public ControllerEventSource getAfTrigger();

    public int getCaptureRequestQueueSize();

    public long getTimeMillisForLastPictureTaken();

    public void onAutoFocus(int var1, AutoFocusListener.Result var2);

    public void startAutoFocus(ControllerEventSource var1);

    public void stopAutoFocus();

    public SavingRequest storePicture(byte[] var1);

    public boolean takeNextPicture(boolean var1);

    public void takePicture(PhotoSavingRequest var1);

    public void takeScreenShot(PhotoSavingRequest var1);

    public void update(int var1);

    public void update(FocusMode var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class AutoFocusCallback
    implements AutoFocusListener {
        public static final int AF_FAILED = 1;
        public static final int AF_SUCCESS = 0;

        private AutoFocusCallback();

        /* synthetic */ AutoFocusCallback( var1);

        @Override
        public void onAutoFocus(AutoFocusListener.Result var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private abstract class CaptureRequest {
        public final boolean mIsFirstShot;
        public PhotoSavingRequest mRequest;
        final /* synthetic */ Shooting this$0;

        public CaptureRequest(Shooting var1, boolean var2, PhotoSavingRequest var3);

        public void capture();

        public abstract void store(byte[] var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class PreviewCallbackForSnapshot
    implements Camera.PreviewCallback {
        private PreviewCallbackForSnapshot();

        /* synthetic */ PreviewCallbackForSnapshot( var1);

        @Override
        public void onPreviewFrame(byte[] var1, Camera var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class ScreenshotRequest
    extends CaptureRequest {
        final /* synthetic */ Shooting this$0;

        public ScreenshotRequest(Shooting var1, boolean var2, PhotoSavingRequest var3);

        @Override
        public void capture();

        @Override
        public void store(byte[] var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class ShutterCallback
    implements Camera.ShutterCallback {
        private final PhotoSavingRequest mRequest;
        final /* synthetic */ Shooting this$0;

        public ShutterCallback(Shooting var1, PhotoSavingRequest var2);

        @Override
        public void onShutter();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class TakePictureRequest
    extends CaptureRequest
    implements Camera.PictureCallback {
        final /* synthetic */ Shooting this$0;

        public TakePictureRequest(Shooting var1, boolean var2, PhotoSavingRequest var3);

        @Override
        public void capture();

        @Override
        public void onPictureTaken(byte[] var1, Camera var2);

        @Override
        public void store(byte[] var1);
    }

}

