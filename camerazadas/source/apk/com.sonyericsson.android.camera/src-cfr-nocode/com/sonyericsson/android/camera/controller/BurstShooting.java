/*
 * Decompiled with CFR 0_100.
 * 
 * Could not load the following classes:
 *  com.sonyericsson.cameraextension.CameraExtension
 *  com.sonyericsson.cameraextension.CameraExtension$BurstShotCallback
 *  com.sonyericsson.cameraextension.CameraExtension$BurstShotResult
 *  com.sonyericsson.cameraextension.CameraExtension$FilePathGenerator
 *  com.sonyericsson.cameraextension.CameraExtension$StorageFullDetector
 */
package com.sonyericsson.android.camera.controller;

import android.hardware.Camera;
import android.os.Handler;
import android.os.Message;
import com.sonyericsson.android.camera.configuration.parameters.BurstShot;
import com.sonyericsson.android.camera.controller.CameraFunctions;
import com.sonyericsson.android.camera.controller.ControllerEventSource;
import com.sonyericsson.cameracommon.mediasaving.EachDirPathBuilder;
import com.sonyericsson.cameracommon.mediasaving.StoreDataResult;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.PhotoSavingRequest;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.SavingRequest;
import com.sonyericsson.cameraextension.CameraExtension;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class BurstShooting {
    private static final String TAG;
    private int mBurstId;
    private BurstShotMethod mBurstShooting;
    private SavingRequest.StoreDataCallback mCallbackBestEffort;
    private SavingRequest.StoreDataCallback mCallbackHigh;
    private final CameraFunctions mController;
    private StoreDataResult mCoverResult;
    private PhotoSavingRequest mCurrentSavingRequest;
    private final MessageHandler mHandler;
    private boolean mIsCapturing;
    private boolean mIsStopRequested;
    private int mMinimumPictureCount;
    private EachDirPathBuilder mPathBuilder;
    private int mPictureCount;
    private int mSavedPictureCount;
    private ControllerEventSource mStartedBy;

    static;

    public BurstShooting(CameraFunctions var1);

    static /* synthetic */ PhotoSavingRequest access$1000(BurstShooting var0, String var1, SavingRequest.StoreDataCallback var2);

    static /* synthetic */ void access$1100(BurstShooting var0, boolean var1);

    static /* synthetic */ int access$1200(BurstShooting var0);

    static /* synthetic */ int access$1202(BurstShooting var0, int var1);

    static /* synthetic */ int access$1208(BurstShooting var0);

    static /* synthetic */ PhotoSavingRequest access$1300(BurstShooting var0);

    static /* synthetic */ int access$1400(BurstShooting var0);

    static /* synthetic */ int access$1402(BurstShooting var0, int var1);

    static /* synthetic */ SavingRequest.StoreDataCallback access$1500(BurstShooting var0);

    static /* synthetic */ int access$1600(BurstShooting var0);

    static /* synthetic */ int access$1702(BurstShooting var0, int var1);

    static /* synthetic */ int access$1708(BurstShooting var0);

    static /* synthetic */ void access$1800(BurstShooting var0, StoreDataResult var1);

    static /* synthetic */ StoreDataResult access$400(BurstShooting var0);

    static /* synthetic */ CameraFunctions access$500(BurstShooting var0);

    static /* synthetic */ void access$600(BurstShooting var0, boolean var1);

    static /* synthetic */ String access$700(BurstShooting var0);

    static /* synthetic */ PhotoSavingRequest access$800(BurstShooting var0);

    static /* synthetic */ SavingRequest.StoreDataCallback access$900(BurstShooting var0);

    private PhotoSavingRequest createSavingRequest(String var1, SavingRequest.StoreDataCallback var2);

    private PhotoSavingRequest getCopiedSavingRequest();

    private String getPath();

    private EachDirPathBuilder getPathBuilder();

    private void onShootingDone();

    private void prepareNextShot(boolean var1);

    private void sendGoogleAnalyticsBurstEvent();

    private void setIsCapturing(boolean var1);

    private void setIsStopRequested(boolean var1);

    private void storeCoverResult(StoreDataResult var1);

    public void clear();

    public void finish();

    public int getPictureCount();

    public ControllerEventSource getStartedBy();

    public boolean isBurstGroupStoreCompleted();

    public boolean isCapturing();

    public boolean isStopRequested();

    public void logBurstShotResult(String var1, CameraExtension.BurstShotResult var2);

    public void requestContinue();

    public boolean start(ControllerEventSource var1);

    public void stop();

    public void stop(int var1);

    public void update(BurstShot var1);

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class BestEffort
    implements BurstShotMethod,
    Camera.ShutterCallback,
    Camera.PictureCallback {
        final /* synthetic */ BurstShooting this$0;

        private BestEffort(BurstShooting var1);

        /* synthetic */ BestEffort(BurstShooting var1,  var2);

        private void takePicture();

        @Override
        public void finish();

        @Override
        public PhotoSavingRequest getSavingRequest();

        @Override
        public boolean isAvailable();

        @Override
        public void onPictureTaken(byte[] var1, Camera var2);

        @Override
        public void onShutter();

        @Override
        public void requestContinue();

        @Override
        public boolean start();
    }

    private static interface BurstShotMethod {
        public void finish();

        public PhotoSavingRequest getSavingRequest();

        public boolean isAvailable();

        public void requestContinue();

        public boolean start();
    }

    /*
     * Failed to analyse overrides
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class High
    implements BurstShotMethod,
    CameraExtension.BurstShotCallback,
    CameraExtension.StorageFullDetector,
    CameraExtension.FilePathGenerator {
        final /* synthetic */ BurstShooting this$0;

        private High(BurstShooting var1);

        /* synthetic */ High(BurstShooting var1,  var2);

        public void finish();

        public String getNextFilePathToStorePicture();

        public PhotoSavingRequest getSavingRequest();

        public boolean isAvailable();

        public boolean isCurrentStorageFull();

        public void onBurstFrameDropped(CameraExtension.BurstShotResult var1);

        public void onBurstGroupStoreCompleted(CameraExtension.BurstShotResult var1);

        public void onBurstPictureStoreCompleted(CameraExtension.BurstShotResult var1);

        public void onBurstShutterDone(CameraExtension.BurstShotResult var1);

        public void requestContinue();

        public boolean start();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class MessageHandler
    extends Handler {
        public static final int MSG_SHOW_EARLY_THUMBNAIL = 0;
        final /* synthetic */ BurstShooting this$0;

        private MessageHandler(BurstShooting var1);

        /* synthetic */ MessageHandler(BurstShooting var1,  var2);

        public void clear();

        @Override
        public void handleMessage(Message var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private static class Off
    implements BurstShotMethod {
        private Off();

        /* synthetic */ Off( var1);

        @Override
        public void finish();

        @Override
        public PhotoSavingRequest getSavingRequest();

        @Override
        public boolean isAvailable();

        @Override
        public void requestContinue();

        @Override
        public boolean start();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class StoreDataCallbackBestEffort
    implements SavingRequest.StoreDataCallback {
        final /* synthetic */ BurstShooting this$0;

        StoreDataCallbackBestEffort(BurstShooting var1);

        @Override
        public void onStoreComplete(StoreDataResult var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class StoreDataCallbackHigh
    implements SavingRequest.StoreDataCallback {
        final /* synthetic */ BurstShooting this$0;

        StoreDataCallbackHigh(BurstShooting var1);

        @Override
        public void onStoreComplete(StoreDataResult var1);
    }

}

