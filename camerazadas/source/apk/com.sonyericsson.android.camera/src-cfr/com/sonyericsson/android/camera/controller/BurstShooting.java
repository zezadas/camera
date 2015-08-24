/*
 * Decompiled with CFR 0_100.
 * 
 * Could not load the following classes:
 *  com.sonyericsson.cameraextension.CameraExtension
 *  com.sonyericsson.cameraextension.CameraExtension$BurstShotCallback
 *  com.sonyericsson.cameraextension.CameraExtension$BurstShotResult
 *  com.sonyericsson.cameraextension.CameraExtension$FilePathGenerator
 *  com.sonyericsson.cameraextension.CameraExtension$MediaProviderUpdator
 *  com.sonyericsson.cameraextension.CameraExtension$StorageFullDetector
 */
package com.sonyericsson.android.camera.controller;

import android.graphics.Rect;
import android.hardware.Camera;
import android.location.Location;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import com.sonyericsson.android.camera.CameraActivity;
import com.sonyericsson.android.camera.ControllerManager;
import com.sonyericsson.android.camera.burst.BurstInfoUpdator;
import com.sonyericsson.android.camera.configuration.parameters.BurstShot;
import com.sonyericsson.android.camera.controller.CameraFunctions;
import com.sonyericsson.android.camera.controller.ControllerEvent;
import com.sonyericsson.android.camera.controller.ControllerEventSource;
import com.sonyericsson.android.camera.controller.Executor;
import com.sonyericsson.android.camera.device.CameraDevice;
import com.sonyericsson.android.camera.mediasaving.BurstSavingTaskManager;
import com.sonyericsson.android.camera.mediasaving.MediaSavingUtil;
import com.sonyericsson.android.camera.util.LocalGoogleAnalyticsUtil;
import com.sonyericsson.android.camera.view.CameraWindow;
import com.sonyericsson.cameracommon.activity.BaseActivity;
import com.sonyericsson.cameracommon.contentsview.ThumbnailUtil;
import com.sonyericsson.cameracommon.mediasaving.EachDirPathBuilder;
import com.sonyericsson.cameracommon.mediasaving.MediaSavingConstants;
import com.sonyericsson.cameracommon.mediasaving.SavingTaskManager;
import com.sonyericsson.cameracommon.mediasaving.StorageController;
import com.sonyericsson.cameracommon.mediasaving.StoreDataResult;
import com.sonyericsson.cameracommon.mediasaving.location.GeotagManager;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.PhotoSavingRequest;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.SavingRequest;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.TakenStatusCommon;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.TakenStatusPhoto;
import com.sonyericsson.cameracommon.utility.MeasurePerformance;
import com.sonyericsson.cameracommon.utility.RotationUtil;
import com.sonyericsson.cameraextension.CameraExtension;
import com.sonymobile.cameracommon.googleanalytics.GoogleAnalyticsUtil;
import com.sonymobile.cameracommon.googleanalytics.parameters.Event;
import java.io.File;
import java.io.IOException;

public class BurstShooting {
    private static final String TAG = BurstShooting.class.getSimpleName();
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

    public BurstShooting(CameraFunctions cameraFunctions) {
        this.mHandler = new MessageHandler();
        this.mCallbackBestEffort = new StoreDataCallbackBestEffort();
        this.mCallbackHigh = new StoreDataCallbackHigh();
        this.mMinimumPictureCount = 1;
        this.mController = cameraFunctions;
    }

    static /* synthetic */ int access$1208(BurstShooting burstShooting) {
        int n = burstShooting.mPictureCount;
        burstShooting.mPictureCount = n + 1;
        return n;
    }

    static /* synthetic */ int access$1708(BurstShooting burstShooting) {
        int n = burstShooting.mSavedPictureCount;
        burstShooting.mSavedPictureCount = n + 1;
        return n;
    }

    /*
     * Enabled aggressive block sorting
     */
    private PhotoSavingRequest createSavingRequest(String object, SavingRequest.StoreDataCallback storeDataCallback) {
        int n = RotationUtil.getNormalizedRotation(this.mController.mCameraActivity.getSensorOrientationDegree());
        Camera.CameraInfo cameraInfo = CameraDevice.getCameraInfo(this.mController.mControllerManager.getCameraId());
        n = cameraInfo.facing == 1 ? (cameraInfo.orientation + 360 - n) % 360 : (cameraInfo.orientation + n) % 360;
        object = new PhotoSavingRequest(new TakenStatusCommon(System.currentTimeMillis(), n, this.mController.mCameraActivity.getGeoTagManager().getCurrentLocation(), this.mController.mCameraDevice.getPictureRect().width(), this.mController.mCameraDevice.getPictureRect().height(), "image/jpeg", ".JPG", SavingTaskManager.SavedFileType.BURST, (String)object, "", true, false), new TakenStatusPhoto());
        object.addCallback(storeDataCallback);
        object.setSomcType(2);
        return object;
    }

    private PhotoSavingRequest getCopiedSavingRequest() {
        return new PhotoSavingRequest(this.mCurrentSavingRequest);
    }

    private String getPath() {
        String string = "/dev/null";
        if (this.mPathBuilder != null) {
            string = this.mPathBuilder.assignImageFilePath();
        }
        return string;
    }

    private EachDirPathBuilder getPathBuilder() {
        try {
            EachDirPathBuilder eachDirPathBuilder = new EachDirPathBuilder(MediaSavingConstants.BURST_DIR_NAME);
            return eachDirPathBuilder;
        }
        catch (IOException var1_2) {
            return null;
        }
    }

    private void onShootingDone() {
        this.mController.mCameraWindow.fadeoutCounter();
        if (this.mCoverResult != null) {
            this.mController.mCameraWindow.startEarlyThumbnailInsertAnimation(this.mCoverResult.savingRequest.getRequestId());
        }
    }

    private void prepareNextShot(boolean bl) {
        if (MediaSavingUtil.isCoverPicture(this.mCurrentSavingRequest.getSomcType())) {
            this.mCurrentSavingRequest.setSomcType(129);
        }
        this.mController.updateSavingRequest(this.mCurrentSavingRequest, bl);
    }

    private void sendGoogleAnalyticsBurstEvent() {
        if (this.mPictureCount < 1) {
            return;
        }
        LocalGoogleAnalyticsUtil.getInstance().sendEventSettings();
        GoogleAnalyticsUtil.getInstance().setUserOperation(Event.CaptureOperation.BURST);
    }

    private void setIsCapturing(boolean bl) {
        this.mIsCapturing = bl;
    }

    private void setIsStopRequested(boolean bl) {
        this.mIsStopRequested = bl;
    }

    private void storeCoverResult(StoreDataResult object) {
        if (this.mCoverResult == null) {
            this.mCoverResult = object;
            object = ThumbnailUtil.createThumbnailViewFromUri(this.mController.mCameraActivity, object.uri, object.savingRequest.common.orientation);
            this.mController.mCameraWindow.setEarlyThumbnailView((View)object);
            if (this.isStopRequested()) {
                this.mHandler.sendEmptyMessageDelayed(0, 0);
            }
        }
    }

    public void clear() {
        this.setIsCapturing(false);
        this.setIsStopRequested(false);
        this.mBurstId = 0;
        this.mHandler.clear();
        this.mCoverResult = null;
        this.mPictureCount = 0;
        this.mMinimumPictureCount = 1;
        this.mSavedPictureCount = 0;
        this.mStartedBy = ControllerEventSource.OTHER;
    }

    public void finish() {
        this.stop();
    }

    public int getPictureCount() {
        return this.mPictureCount;
    }

    public ControllerEventSource getStartedBy() {
        return this.mStartedBy;
    }

    public boolean isBurstGroupStoreCompleted() {
        if (this.mPictureCount == this.mSavedPictureCount) {
            return true;
        }
        return false;
    }

    public boolean isCapturing() {
        return this.mIsCapturing;
    }

    public boolean isStopRequested() {
        return this.mIsStopRequested;
    }

    public void logBurstShotResult(String string, CameraExtension.BurstShotResult burstShotResult) {
    }

    public void requestContinue() {
        if (this.isStopRequested()) {
            return;
        }
        this.mBurstShooting.requestContinue();
    }

    public boolean start(ControllerEventSource controllerEventSource) {
        boolean bl = false;
        this.clear();
        boolean bl2 = bl;
        if (this.mBurstShooting.isAvailable()) {
            this.mStartedBy = controllerEventSource;
            this.mPathBuilder = this.getPathBuilder();
            this.mCurrentSavingRequest = this.mBurstShooting.getSavingRequest();
            this.mCurrentSavingRequest.setRequestId(this.mController.mCameraWindow.getRequestId(false));
            bl2 = bl;
            if (this.mBurstShooting.start()) {
                this.mController.mCameraWindow.startCaptureFeedbackAnimation();
                this.mController.mCameraWindow.addCountUpView(this.mCurrentSavingRequest.getRequestId());
                bl2 = true;
            }
        }
        return bl2;
    }

    public void stop() {
        if (this.isStopRequested()) {
            return;
        }
        this.setIsStopRequested(true);
        this.onShootingDone();
        if (this.mPictureCount >= this.mMinimumPictureCount) {
            this.mBurstShooting.finish();
        }
        if (this.mPictureCount > 1) {
            this.mController.mCameraWindow.startCaptureFeedbackAnimation();
        }
        this.sendGoogleAnalyticsBurstEvent();
    }

    public void stop(int n) {
        this.mMinimumPictureCount = n;
        this.stop();
    }

    /*
     * Enabled aggressive block sorting
     */
    public void update(BurstShot burstShot) {
        switch (.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$BurstShot[burstShot.ordinal()]) {
            default: {
                this.mBurstShooting = new Off();
                break;
            }
            case 1: {
                this.mBurstShooting = new BestEffort();
                break;
            }
            case 2: {
                this.mBurstShooting = new High();
                break;
            }
            case 3: {
                this.mBurstShooting = new Off();
            }
        }
        this.clear();
    }

    private class BestEffort
    implements BurstShotMethod,
    Camera.ShutterCallback,
    Camera.PictureCallback {
        private BestEffort() {
        }

        private void takePicture() {
            BurstShooting.this.setIsCapturing(true);
            BurstShooting.access$500((BurstShooting)BurstShooting.this).mCameraDevice.commit();
            BurstShooting.access$500((BurstShooting)BurstShooting.this).mCameraDevice.takePicture(this, this);
            BurstShooting.access$1208(BurstShooting.this);
        }

        @Override
        public void finish() {
        }

        @Override
        public PhotoSavingRequest getSavingRequest() {
            String string = BurstShooting.this.getPath();
            PhotoSavingRequest photoSavingRequest = BurstShooting.this.createSavingRequest(string, BurstShooting.this.mCallbackBestEffort);
            BurstShooting.this.mController.setExifInfo(photoSavingRequest.common.orientation, photoSavingRequest.common.location);
            photoSavingRequest.setExtraOutput(Uri.fromFile(new File(string)));
            return photoSavingRequest;
        }

        @Override
        public boolean isAvailable() {
            return true;
        }

        @Override
        public void onPictureTaken(byte[] arrby, Camera object) {
            MeasurePerformance.measureTime(MeasurePerformance.PerformanceIds.STOT_TO_ON_PICT_TAKEN, false);
            MeasurePerformance.measureTime(MeasurePerformance.PerformanceIds.STOT_TO_SHOT, false);
            MeasurePerformance.outResult();
            MeasurePerformance.measureTime(MeasurePerformance.PerformanceIds.STOT_TO_SHOT, true);
            object = BurstShooting.this.getCopiedSavingRequest();
            object.setImageData(arrby);
            BurstShooting.access$500((BurstShooting)BurstShooting.this).mSavingTaskManager.storePicture((PhotoSavingRequest)object);
            BurstShooting.this.setIsCapturing(false);
            Executor.sendEvent(ControllerEvent.EV_BURST_COMPRESSED_DATA, BurstShooting.this.mPictureCount, null);
        }

        @Override
        public void onShutter() {
            Executor.sendEvent(ControllerEvent.EV_SHUTTER_DONE, BurstShooting.this.mPictureCount, null);
        }

        @Override
        public void requestContinue() {
            BurstShooting.this.prepareNextShot(false);
            BurstShooting.this.mCurrentSavingRequest.setExtraOutput(Uri.fromFile(new File(BurstShooting.this.getPath())));
            BurstShooting.this.mController.startPreview();
            this.takePicture();
        }

        @Override
        public boolean start() {
            this.takePicture();
            return true;
        }
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
     */
    private class High
    implements BurstShotMethod,
    CameraExtension.BurstShotCallback,
    CameraExtension.StorageFullDetector,
    CameraExtension.FilePathGenerator {
        private High() {
        }

        public void finish() {
            if (BurstShooting.access$500((BurstShooting)BurstShooting.this).mCameraDevice.stopBurstShot(BurstShooting.this.mBurstId) == BurstShooting.this.mBurstId) {
                BurstShooting.this.mController.finishBurstShot();
            }
        }

        public String getNextFilePathToStorePicture() {
            return BurstShooting.this.getPath();
        }

        public PhotoSavingRequest getSavingRequest() {
            PhotoSavingRequest photoSavingRequest = BurstShooting.this.createSavingRequest(null, BurstShooting.this.mCallbackHigh);
            BurstShooting.this.mController.setExifInfo(photoSavingRequest.common.orientation, photoSavingRequest.common.location);
            return photoSavingRequest;
        }

        public boolean isAvailable() {
            return true;
        }

        public boolean isCurrentStorageFull() {
            if (Math.max(0, BurstShooting.access$500((BurstShooting)BurstShooting.this).mCameraActivity.getStorageController().getAvailableStorageSize()) <= 61440) {
                return true;
            }
            return false;
        }

        public void onBurstFrameDropped(CameraExtension.BurstShotResult burstShotResult) {
            if (burstShotResult.mErrorCode == 1) {
                Executor.sendEmptyEvent(ControllerEvent.EV_STORAGE_ERROR);
            }
        }

        public void onBurstGroupStoreCompleted(CameraExtension.BurstShotResult burstShotResult) {
            synchronized (this) {
                BurstShooting.this.mSavedPictureCount = BurstShooting.this.mPictureCount;
                BurstShooting.access$500((BurstShooting)BurstShooting.this).mSavingTaskManager.getUpdator().commitBulkInsert();
                if (BurstShooting.this.mCoverResult != null) {
                    BurstShooting.access$500((BurstShooting)BurstShooting.this).mSavingTaskManager.notifyBurstShotGroupStoreComplete(BurstShooting.this.mCoverResult, true);
                    BurstShooting.this.mController.onStoreComplete(BurstShooting.this.mCoverResult);
                }
                BurstShooting.this.setIsCapturing(false);
                return;
            }
        }

        public void onBurstPictureStoreCompleted(CameraExtension.BurstShotResult burstShotResult) {
            BurstShooting.access$1708(BurstShooting.this);
            if (BurstShooting.this.isStopRequested()) {
                this.finish();
            }
            Executor.sendEvent(ControllerEvent.EV_BURST_COMPRESSED_DATA, burstShotResult.mPictureCount, null);
        }

        /*
         * Enabled aggressive block sorting
         */
        public void onBurstShutterDone(CameraExtension.BurstShotResult burstShotResult) {
            BurstShooting.this.mController.updateSavingRequest(BurstShooting.this.mCurrentSavingRequest, true);
            switch (burstShotResult.mErrorCode) {
                case 0: {
                    BurstShooting.this.mPictureCount = burstShotResult.mPictureCount;
                    Executor.sendEvent(ControllerEvent.EV_SHUTTER_DONE, burstShotResult.mPictureCount, null);
                }
                default: {
                    break;
                }
                case 2: {
                    Executor.sendEmptyEvent(ControllerEvent.EV_STORAGE_ERROR);
                }
            }
            if (BurstShooting.this.isStopRequested() && burstShotResult.mPictureCount >= BurstShooting.this.mMinimumPictureCount) {
                this.finish();
            }
        }

        public void requestContinue() {
        }

        public boolean start() {
            BurstInfoUpdator burstInfoUpdator = new BurstInfoUpdator(BurstShooting.access$500((BurstShooting)BurstShooting.this).mCameraActivity, BurstShooting.this.mCurrentSavingRequest);
            ((BurstSavingTaskManager)BurstShooting.access$500((BurstShooting)BurstShooting.this).mCameraActivity.getSavingTaskManager()).setUpdator(burstInfoUpdator);
            BurstShooting.this.mController.prepareBurstShot();
            BurstShooting.this.setIsCapturing(true);
            BurstShooting.this.mBurstId = BurstShooting.access$500((BurstShooting)BurstShooting.this).mCameraDevice.startBurstShot((CameraExtension.BurstShotCallback)this, (CameraExtension.StorageFullDetector)this, (CameraExtension.FilePathGenerator)this, (CameraExtension.MediaProviderUpdator)burstInfoUpdator);
            if (BurstShooting.this.mBurstId < 0) {
                BurstShooting.this.setIsCapturing(false);
                return false;
            }
            return true;
        }
    }

    private class MessageHandler
    extends Handler {
        public static final int MSG_SHOW_EARLY_THUMBNAIL = 0;

        private MessageHandler() {
        }

        public void clear() {
            this.removeMessages(0);
        }

        @Override
        public void handleMessage(Message message) {
            switch (message.what) {
                default: {
                    return;
                }
                case 0: 
            }
            BurstShooting.access$500((BurstShooting)BurstShooting.this).mCameraWindow.startEarlyThumbnailInsertAnimation(BurstShooting.access$400((BurstShooting)BurstShooting.this).savingRequest.getRequestId());
        }
    }

    private static class Off
    implements BurstShotMethod {
        private Off() {
        }

        @Override
        public void finish() {
        }

        @Override
        public PhotoSavingRequest getSavingRequest() {
            return null;
        }

        @Override
        public boolean isAvailable() {
            return false;
        }

        @Override
        public void requestContinue() {
        }

        @Override
        public boolean start() {
            return false;
        }
    }

    class StoreDataCallbackBestEffort
    implements SavingRequest.StoreDataCallback {
        StoreDataCallbackBestEffort() {
        }

        @Override
        public void onStoreComplete(StoreDataResult storeDataResult) {
            BurstShooting.access$1708(BurstShooting.this);
            if (MediaSavingUtil.isCoverPicture(storeDataResult.savingRequest.getSomcType())) {
                BurstShooting.this.storeCoverResult(storeDataResult);
            }
            if (BurstShooting.this.isStopRequested() && !BurstShooting.this.isCapturing() && BurstShooting.this.isBurstGroupStoreCompleted() && BurstShooting.this.mCoverResult != null) {
                BurstShooting.this.mController.onStoreComplete(BurstShooting.this.mCoverResult);
            }
        }
    }

    class StoreDataCallbackHigh
    implements SavingRequest.StoreDataCallback {
        StoreDataCallbackHigh() {
        }

        @Override
        public void onStoreComplete(StoreDataResult storeDataResult) {
            if (MediaSavingUtil.isCoverPicture(storeDataResult.savingRequest.getSomcType())) {
                BurstShooting.this.storeCoverResult(storeDataResult);
            }
        }
    }

}

