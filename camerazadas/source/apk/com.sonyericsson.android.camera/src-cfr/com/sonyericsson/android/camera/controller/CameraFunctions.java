/*
 * Decompiled with CFR 0_100.
 * 
 * Could not load the following classes:
 *  android.os.storage.StorageManager$StorageType
 */
package com.sonyericsson.android.camera.controller;

import android.content.Context;
import android.graphics.Rect;
import android.hardware.Camera;
import android.location.Location;
import android.media.CamcorderProfile;
import android.net.Uri;
import android.os.Handler;
import android.os.storage.StorageManager;
import android.view.SurfaceHolder;
import com.sonyericsson.android.camera.CameraActivity;
import com.sonyericsson.android.camera.CameraSize;
import com.sonyericsson.android.camera.ControllerManager;
import com.sonyericsson.android.camera.LaunchConditions;
import com.sonyericsson.android.camera.ShutterToneGenerator;
import com.sonyericsson.android.camera.configuration.Configurations;
import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.ParameterSelectability;
import com.sonyericsson.android.camera.configuration.parameters.AutoReview;
import com.sonyericsson.android.camera.configuration.parameters.AutoUpload;
import com.sonyericsson.android.camera.configuration.parameters.BurstShot;
import com.sonyericsson.android.camera.configuration.parameters.CaptureFrameShape;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.DestinationToSave;
import com.sonyericsson.android.camera.configuration.parameters.Ev;
import com.sonyericsson.android.camera.configuration.parameters.FaceIdentify;
import com.sonyericsson.android.camera.configuration.parameters.Facing;
import com.sonyericsson.android.camera.configuration.parameters.FastCapture;
import com.sonyericsson.android.camera.configuration.parameters.Flash;
import com.sonyericsson.android.camera.configuration.parameters.FocusMode;
import com.sonyericsson.android.camera.configuration.parameters.Geotag;
import com.sonyericsson.android.camera.configuration.parameters.Hdr;
import com.sonyericsson.android.camera.configuration.parameters.Iso;
import com.sonyericsson.android.camera.configuration.parameters.Metering;
import com.sonyericsson.android.camera.configuration.parameters.Microphone;
import com.sonyericsson.android.camera.configuration.parameters.ParameterApplicable;
import com.sonyericsson.android.camera.configuration.parameters.PhotoLight;
import com.sonyericsson.android.camera.configuration.parameters.Resolution;
import com.sonyericsson.android.camera.configuration.parameters.Scene;
import com.sonyericsson.android.camera.configuration.parameters.SelfTimer;
import com.sonyericsson.android.camera.configuration.parameters.ShutterSound;
import com.sonyericsson.android.camera.configuration.parameters.SmileCapture;
import com.sonyericsson.android.camera.configuration.parameters.SoftSkin;
import com.sonyericsson.android.camera.configuration.parameters.Stabilizer;
import com.sonyericsson.android.camera.configuration.parameters.SuperResolution;
import com.sonyericsson.android.camera.configuration.parameters.TouchBlock;
import com.sonyericsson.android.camera.configuration.parameters.TouchCapture;
import com.sonyericsson.android.camera.configuration.parameters.VideoAutoReview;
import com.sonyericsson.android.camera.configuration.parameters.VideoHdr;
import com.sonyericsson.android.camera.configuration.parameters.VideoSelfTimer;
import com.sonyericsson.android.camera.configuration.parameters.VideoSize;
import com.sonyericsson.android.camera.configuration.parameters.VideoSmileCapture;
import com.sonyericsson.android.camera.configuration.parameters.VideoStabilizer;
import com.sonyericsson.android.camera.configuration.parameters.VolumeKey;
import com.sonyericsson.android.camera.configuration.parameters.WhiteBalance;
import com.sonyericsson.android.camera.controller.AutoZoom;
import com.sonyericsson.android.camera.controller.BurstShooting;
import com.sonyericsson.android.camera.controller.ControllerEvent;
import com.sonyericsson.android.camera.controller.ControllerEventSource;
import com.sonyericsson.android.camera.controller.ControllerMessage;
import com.sonyericsson.android.camera.controller.EventDispatcher;
import com.sonyericsson.android.camera.controller.Executor;
import com.sonyericsson.android.camera.controller.FaceDetect;
import com.sonyericsson.android.camera.controller.ObjectTracking;
import com.sonyericsson.android.camera.controller.SceneRecognition;
import com.sonyericsson.android.camera.controller.Selftimer;
import com.sonyericsson.android.camera.controller.Shooting;
import com.sonyericsson.android.camera.controller.TouchFocus;
import com.sonyericsson.android.camera.controller.VideoDevice;
import com.sonyericsson.android.camera.device.CameraDevice;
import com.sonyericsson.android.camera.device.CameraDeviceException;
import com.sonyericsson.android.camera.device.CameraSurfaceHolder;
import com.sonyericsson.android.camera.mediasaving.BurstSavingTaskManager;
import com.sonyericsson.android.camera.parameter.ParameterManager;
import com.sonyericsson.android.camera.parameter.Parameters;
import com.sonyericsson.android.camera.util.MaxVideoSize;
import com.sonyericsson.android.camera.util.capability.CapabilityItem;
import com.sonyericsson.android.camera.util.capability.CapabilityList;
import com.sonyericsson.android.camera.util.capability.HardwareCapability;
import com.sonyericsson.android.camera.view.CameraWindow;
import com.sonyericsson.cameracommon.mediasaving.CameraStorageManager;
import com.sonyericsson.cameracommon.mediasaving.SavingTaskManager;
import com.sonyericsson.cameracommon.mediasaving.StorageController;
import com.sonyericsson.cameracommon.mediasaving.StoreDataResult;
import com.sonyericsson.cameracommon.mediasaving.location.GeotagManager;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.PhotoSavingRequest;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.SavingRequest;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.TakenStatusCommon;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.TakenStatusPhoto;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.TakenStatusVideo;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.VideoSavingRequest;
import com.sonyericsson.cameracommon.messagepopup.MessagePopup;
import com.sonyericsson.cameracommon.rotatableview.RotatableDialog;
import com.sonyericsson.cameracommon.status.CameraStatusPublisher;
import com.sonyericsson.cameracommon.status.EachCameraStatusPublisher;
import com.sonyericsson.cameracommon.status.eachcamera.VideoNoiseReduction;
import com.sonyericsson.cameracommon.status.eachcamera.VideoRecordingFps;
import com.sonyericsson.cameracommon.status.eachcamera.VideoResolution;
import com.sonyericsson.cameracommon.status.eachcamera.VideoStabilizerStatus;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonyericsson.cameracommon.utility.ClassDefinitionChecker;
import com.sonyericsson.cameracommon.utility.MeasurePerformance;
import com.sonyericsson.cameracommon.utility.PositionConverter;
import com.sonyericsson.cameracommon.utility.RecordingUtil;
import com.sonyericsson.cameracommon.utility.RotationUtil;
import com.sonymobile.cameracommon.media.utility.AudioResourceChecker;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.List;

public abstract class CameraFunctions
implements SavingRequest.StoreDataCallback {
    private static final String TAG = CameraFunctions.class.getSimpleName();
    protected final AutoZoom mAutoZoom;
    protected final BurstShooting mBurstShooting;
    protected final CameraActivity mCameraActivity;
    protected final CameraDevice mCameraDevice;
    protected final CameraWindow mCameraWindow;
    protected final ControllerManager mControllerManager;
    protected Selftimer mCurrentSelfTimer;
    protected final EventDispatcher mEventDispatcher;
    protected final FaceDetect mFaceDetect;
    protected boolean mIsVideoSmileCapturing;
    protected final ObjectTracking mObjectTracking;
    protected final ParameterManager mParameterManager;
    protected final BurstSavingTaskManager mSavingTaskManager;
    protected final SceneRecognition mSceneRecognition;
    protected final Selftimer mSelfTimer;
    protected final SettingsController mSettingsController;
    protected final Shooting mShooting;
    protected final CameraStorageManager mStorageManager;
    protected final TouchFocus mTouchFocus;
    protected final VideoDevice mVideoDevice;
    protected final Selftimer mVideoSelfTimer;

    public CameraFunctions(CameraActivity cameraActivity, EventDispatcher eventDispatcher) {
        this.mSettingsController = new SettingsController();
        this.mCameraActivity = cameraActivity;
        this.mCameraDevice = cameraActivity.getCameraDevice();
        this.mCameraWindow = cameraActivity.getContentView();
        this.mControllerManager = cameraActivity.getControllerManager();
        this.mParameterManager = cameraActivity.getParameterManager();
        this.mSavingTaskManager = (BurstSavingTaskManager)cameraActivity.getSavingTaskManager();
        this.mStorageManager = cameraActivity.getStorageManager();
        this.mEventDispatcher = eventDispatcher;
        this.mAutoZoom = new AutoZoom(this);
        this.mBurstShooting = new BurstShooting(this);
        this.mFaceDetect = new FaceDetect(this);
        this.mObjectTracking = new ObjectTracking(this);
        this.mSelfTimer = new Selftimer(this, 1);
        this.mVideoSelfTimer = new Selftimer(this, 2);
        this.mSceneRecognition = new SceneRecognition(this);
        this.mTouchFocus = new TouchFocus(this);
        this.mShooting = new Shooting(this);
        this.mVideoDevice = new VideoDevice(this);
    }

    private void changeSmileCapturePhotoToVideo(Parameters parameters) {
        SmileCapture smileCapture = parameters.getSmileCapture();
        VideoSmileCapture videoSmileCapture = parameters.getVideoSmileCapture();
        this.mCameraWindow.setPhotoSmileLevel(SmileCapture.OFF);
        this.mCameraWindow.setVideoSmileLevel(videoSmileCapture);
        if (smileCapture != videoSmileCapture.getSmileCapture(this.mCameraActivity.isOneShot())) {
            this.mCameraDevice.setSmileCapture(videoSmileCapture.getSmileCapture(this.mCameraActivity.isOneShot()));
            this.mFaceDetect.update(parameters.getFocusMode(), videoSmileCapture.getSmileCapture(this.mCameraActivity.isOneShot()));
        }
    }

    private void changeSmileCaptureVideoToPhoto(Parameters parameters) {
        SmileCapture smileCapture = parameters.getSmileCapture();
        VideoSmileCapture videoSmileCapture = parameters.getVideoSmileCapture();
        this.mCameraWindow.setVideoSmileLevel(VideoSmileCapture.OFF);
        this.mCameraWindow.setPhotoSmileLevel(smileCapture);
        if (smileCapture != videoSmileCapture.getSmileCapture(this.mCameraActivity.isOneShot())) {
            this.mCameraDevice.setSmileCapture(smileCapture);
            this.mFaceDetect.update(parameters.getFocusMode(), smileCapture);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private PhotoSavingRequest createPhotoSavingRequest(SavingTaskManager.SavedFileType object, String string) {
        switch (.$SwitchMap$com$sonyericsson$cameracommon$mediasaving$SavingTaskManager$SavedFileType[object.ordinal()]) {
            default: {
                throw new IllegalArgumentException("Unexpected type : " + object);
            }
            case 2: 
            case 3: 
        }
        boolean bl = HardwareCapability.getCapability((int)this.mCameraDevice.getCameraId()).VIDEO_SNAPSHOT.get();
        int n = bl ? this.mCameraDevice.getPictureRect().width() : this.mCameraDevice.getPreviewRect().width();
        int n2 = bl ? this.mCameraDevice.getPictureRect().height() : this.mCameraDevice.getPreviewRect().height();
        object = new PhotoSavingRequest(this.createTakenStatusCommon((SavingTaskManager.SavedFileType)object, n, n2, "image/jpeg", ".JPG", string), new TakenStatusPhoto());
        object.addCallback(this);
        object.setExtraOutput(this.mCameraActivity.getExtraOutput());
        return object;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private TakenStatusCommon createTakenStatusCommon(SavingTaskManager.SavedFileType savedFileType, int n, int n2, String string, String string2, String string3) {
        long l = System.currentTimeMillis();
        int n3 = this.getOrientation();
        Location location = this.mCameraActivity.getGeoTagManager().getCurrentLocation();
        boolean bl = this.mCameraActivity.shouldAddToMediaStore();
        boolean bl2 = this.isSuperResolutionZoom();
        String string4 = this.mCameraActivity.getConfigurations().getCropValue();
        switch (.$SwitchMap$com$sonyericsson$cameracommon$mediasaving$SavingTaskManager$SavedFileType[savedFileType.ordinal()]) {
            default: {
                do {
                    return new TakenStatusCommon(l, n3, location, n, n2, string, string2, savedFileType, string3, string4, bl, bl2);
                    break;
                } while (true);
            }
            case 5: 
        }
        bl2 = false;
        return new TakenStatusCommon(l, n3, location, n, n2, string, string2, savedFileType, string3, string4, bl, bl2);
    }

    private VideoSavingRequest createVideoSavingRequest(VideoSize.VideoProfile object, SavingTaskManager.SavedFileType savedFileType, String string) {
        int n = this.mCameraDevice.getPictureRect().width();
        int n2 = this.mCameraDevice.getPictureRect().height();
        String string2 = "image/jpeg";
        String string3 = ".JPG";
        if (object.getCamcorderProfile() != null) {
            n = object.getCamcorderProfile().videoFrameWidth;
            n2 = object.getCamcorderProfile().videoFrameHeight;
            string2 = object.mMimeType;
            string3 = object.mExt;
        }
        switch (.$SwitchMap$com$sonyericsson$cameracommon$mediasaving$SavingTaskManager$SavedFileType[savedFileType.ordinal()]) {
            default: {
                throw new IllegalArgumentException("Unexpected type : " + (Object)savedFileType);
            }
            case 5: 
        }
        object = new VideoSavingRequest(this.createTakenStatusCommon(savedFileType, n, n2, string2, string3, string), new TakenStatusVideo(Integer.MAX_VALUE, this.mCameraActivity.getStorageController().getAvailableStorageSize() * 1024));
        object.addCallback(this);
        object.setExtraOutput(this.mCameraActivity.getExtraOutput());
        return object;
    }

    private boolean isSuperResolutionZoom() {
        boolean bl;
        SuperResolution superResolution = this.mCameraActivity.getParameterManager().getParameters().getSuperResolution();
        int n = this.mCameraActivity.getCameraDevice().getZoom();
        int n2 = HardwareCapability.getCapability((int)this.mCameraActivity.getControllerManager().getCameraId()).MAX_SR_ZOOM.get();
        boolean bl2 = bl = false;
        if (superResolution == SuperResolution.ON) {
            bl2 = bl;
            if (n > 0) {
                bl2 = bl;
                if (n <= n2) {
                    bl2 = true;
                }
            }
        }
        return bl2;
    }

    private void updatePhotoSelftimer(SelfTimer selfTimer) {
        this.mCameraWindow.setSelfTimer(this.mParameterManager.getParameters().capturingMode, selfTimer);
        this.mSelfTimer.update(selfTimer.getDurationInMillisecond(), selfTimer.getSoundType());
    }

    private void updateVideoSelftimer(VideoSelfTimer videoSelfTimer) {
        this.mCameraWindow.setSelfTimer(this.mParameterManager.getParameters().capturingMode, videoSelfTimer);
        this.mVideoSelfTimer.update(videoSelfTimer.getTime(), videoSelfTimer.getSoundType());
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public void addCaptureRequest(SavingTaskManager.SavedFileType object) {
        if (this.mCameraActivity.isOneShot()) {
            return;
        }
        if (!this.mShooting.canAcceptNextCaptureRequest()) return;
        object = this.createPhotoSavingRequest((SavingTaskManager.SavedFileType)object, null);
        if (!this.mSavingTaskManager.canPushStoreTask()) return;
        this.mShooting.addCaptureRequest((PhotoSavingRequest)object);
    }

    public void applyAllParameters(Parameters parameters) {
        this.mSettingsController.applyAllParameters(parameters);
    }

    public void applyPhotoSmileCapture(SmileCapture smileCapture) {
        this.mCameraDevice.setSmileCapture(smileCapture);
        this.mCameraWindow.setPhotoSmileLevel(smileCapture);
        Parameters parameters = this.getParams();
        this.mFaceDetect.update(parameters.getFocusMode(), smileCapture);
        this.mCameraWindow.setFocusMode(parameters.getFocusMode());
    }

    public void applyVideoSmileCapture(VideoSmileCapture videoSmileCapture) {
        this.mCameraDevice.setSmileCapture(videoSmileCapture.getSmileCapture(this.mCameraActivity.isOneShot()));
        this.mCameraWindow.setVideoSmileLevel(videoSmileCapture);
        Parameters parameters = this.getParams();
        this.mFaceDetect.update(parameters.getFocusMode(), videoSmileCapture.getSmileCapture(this.mCameraActivity.isOneShot()));
    }

    public void cancelSelfTimer(boolean bl) {
        this.mCurrentSelfTimer.stop(bl);
        this.updateStatus();
        this.restoreLightSetting();
        this.restoreFocusMode(false);
        this.mCameraWindow.showDefaultView();
    }

    protected abstract void captureAutoTransition();

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public void changeCapturingMode(CapturingMode object) {
        if (!this.mEventDispatcher.isCaptureValid()) {
            return;
        }
        CapturingMode capturingMode = this.mControllerManager.getCapturingMode();
        boolean bl = this.shouldKeepZoomStep(capturingMode, (CapturingMode)object);
        boolean bl2 = !bl;
        boolean bl3 = false;
        this.mAutoZoom.keepZoomStep(bl);
        Executor.sendEmergencyEvent(ControllerEvent.EV_ABORT);
        this.mCameraActivity.getControllerManager().storeCapturingMode((CapturingMode)object);
        this.mParameterManager.changeCapturingMode((CapturingMode)object);
        if (capturingMode.getCameraId() != object.getCameraId()) {
            this.reopenCamera(this.getParams().capturingMode.getCameraId());
            bl3 = true;
        }
        if (capturingMode.getType() != object.getType()) {
            bl3 = true;
        }
        if (!capturingMode.equals(object)) {
            for (CapturingMode capturingMode2 : CapturingMode.values()) {
                Parameters parameters = this.mParameterManager.getParameters(capturingMode2);
                if (parameters == null) continue;
                parameters.set(PhotoLight.OFF);
                if (!parameters.getFlash().equals(Flash.LED_ON)) continue;
                parameters.set(Flash.getDefaultValue());
                this.mCameraWindow.setEmptyShortcut();
            }
        }
        if (bl2) {
            this.mCameraWindow.hideSurfaceView();
        }
        this.setInitState(false);
        this.mParameterManager.applyCapturingMode(bl3, capturingMode);
        this.mAutoZoom.keepZoomStep(false);
        if (this.mCameraWindow.showSurfaceView()) return;
        object = this.mCameraDevice.getSurfaceHolder();
        if (object != null) {
            object = new CameraSurfaceHolder((SurfaceHolder)object, this.mCameraWindow.getSurfaceRect().width(), this.mCameraWindow.getSurfaceRect().height());
            Executor.sendEvent(ControllerEvent.EV_SURFACE_CHANGED, 0, object);
            return;
        }
        CameraLogger.e(TAG, "changeCapturingMode: surface is null");
    }

    /*
     * Enabled aggressive block sorting
     */
    public void changeSurfaceSize(int n) {
        this.mCameraDevice.stopPreview();
        this.mCameraWindow.hideSurfaceView();
        if (n == 1) {
            this.mCameraWindow.setResolution(this.getParams().getResolution());
        } else {
            this.mCameraWindow.setVideoSize(this.getParams().getVideoSize());
        }
        this.mCameraWindow.showSurfaceView();
    }

    public void consumeSelfTimer(ControllerEventSource controllerEventSource, boolean bl) {
        this.mEventDispatcher.updateSelfTimerStatus(false);
        this.restoreLightSetting();
    }

    public PhotoSavingRequest createImageSavingRequest(SavingTaskManager.SavedFileType object) {
        object = this.createPhotoSavingRequest((SavingTaskManager.SavedFileType)object, null);
        this.setExifInfo(object.common.orientation, object.common.location);
        return object;
    }

    public VideoSavingRequest createMovieSavingRequest(VideoSize.VideoProfile object, String string) {
        object = this.createVideoSavingRequest((VideoSize.VideoProfile)object, SavingTaskManager.SavedFileType.VIDEO, string);
        this.setExifInfo(object.common.orientation, object.common.location);
        return object;
    }

    public void doExtraOperation(LaunchConditions.ExtraOperation extraOperation) {
        this.mCameraActivity.consumeExtraOperation();
        switch (.$SwitchMap$com$sonyericsson$android$camera$LaunchConditions$ExtraOperation[extraOperation.ordinal()]) {
            default: {
                return;
            }
            case 1: {
                this.mCameraWindow.showBalloonTips();
                this.mCameraActivity.doFirstRunAction();
                return;
            }
            case 2: 
        }
        this.mCameraWindow.openSettingsMenu();
        ControllerManager.suspend();
    }

    public void exitFromShooting() {
        this.mShooting.stopAutoFocus();
        this.mCameraWindow.enableClickOnThumbnail();
    }

    public void finish() {
        this.prepareForFinish();
        this.mCameraDevice.finishPreviewing();
        this.mAutoZoom.clear();
        this.mBurstShooting.clear();
        this.mSelfTimer.stop(false);
        this.mVideoSelfTimer.stop(false);
        this.mTouchFocus.clear();
        this.mFaceDetect.clear();
        this.mObjectTracking.stop(true);
    }

    public void finishBurstShot() {
        this.mCameraDevice.finishBurstShot(this.getParams());
        Resolution resolution = this.getParams().getResolution();
        this.mCameraWindow.setResolution(resolution);
    }

    public void finishDelayed() {
        new Handler().postDelayed(new Runnable(){

            @Override
            public void run() {
                CameraFunctions.this.mCameraActivity.finish(0);
            }
        }, 800);
    }

    public void finishDragging() {
        this.restoreFocusMode(true);
        this.mFaceDetect.enableFaceIdentification(this.getParams().getFaceIdentify().getBooleanValue());
        this.mSceneRecognition.start();
    }

    public void finishManualRecording() {
        this.applyVideoSmileCapture(VideoSmileCapture.OFF);
        this.mCameraDevice.commitParameters();
    }

    public void finishModelessRecording() {
        this.mEventDispatcher.setSendLongPressEvent(this.getParams().getBurstShot().isBurstShotOn());
        Parameters parameters = this.getParams();
        this.restoreFocusMode(false);
        this.changeSmileCaptureVideoToPhoto(parameters);
        if (parameters.capturingMode.equals(CapturingMode.SCENE_RECOGNITION)) {
            if (SuperResolution.isSupported(this.mParameterManager.getParameters().capturingMode, this.mCameraActivity.isOneShotVideo())) {
                this.mParameterManager.getParameters().set(SuperResolution.ON);
            }
            this.mCameraWindow.updateZoombar(this.mCameraDevice.getZoom(), this.mCameraDevice.getMaxZoom(), this.mCameraDevice.getMaxSrZoom());
        }
        this.mFaceDetect.enableFaceIdentification(parameters.getFaceIdentify().getBooleanValue());
        this.mCameraDevice.setStabilizer(parameters.getStabilizer());
        this.mCameraDevice.finishRec(parameters.getResolution());
    }

    public void finishRecording(ControllerMessage controllerMessage) {
        this.mCameraDevice.setPhotoShutterSound(this.getParams().getShutterSound().getBooleanValue());
        this.mCameraWindow.enableClickOnThumbnail();
        if (controllerMessage != null && controllerMessage.isAbortEvent()) {
            this.mCameraDevice.commitParameters();
            return;
        }
        this.mCameraDevice.setPictureSize(this.getParams().getResolution().getPictureRect());
        if (this.mControllerManager.getType() == 2) {
            this.finishManualRecording();
            return;
        }
        this.finishModelessRecording();
    }

    public void finishSelfTimer() {
        this.mCurrentSelfTimer.finish();
        this.restoreLightSetting();
    }

    public int getOrientation() {
        int n = RotationUtil.getNormalizedRotation(this.mCameraActivity.getSensorOrientationDegree());
        Camera.CameraInfo cameraInfo = CameraDevice.getCameraInfo(this.mControllerManager.getCameraId());
        if (cameraInfo.facing == 1) {
            return (cameraInfo.orientation + 360 - n) % 360;
        }
        return (cameraInfo.orientation + n) % 360;
    }

    public ParameterApplicable getParameterListener() {
        return this.mSettingsController;
    }

    public Parameters getParams() {
        return this.mParameterManager.getParameters();
    }

    public Selftimer getSelftimer(int n) {
        if (n == 2) {
            return this.mVideoSelfTimer;
        }
        return this.mSelfTimer;
    }

    public long getTimeMillisForLastPictureTaken() {
        return this.mShooting.getTimeMillisForLastPictureTaken();
    }

    /*
     * Enabled aggressive block sorting
     */
    public boolean isEnoughStorageSizeAvailable() {
        if (!this.mCameraActivity.isOneShot()) return true;
        MaxVideoSize maxVideoSize = MaxVideoSize.create(this.mCameraActivity.getConfigurations(), this.getParams().getVideoSize(), this.mCameraActivity.getStorageController());
        if (maxVideoSize.getMaxDuration() > 0) {
            if (maxVideoSize.getMaxDuration() >= 1000) return true;
            return false;
        }
        if (maxVideoSize.getMaxFileSize() > 0 && maxVideoSize.getMaxFileSize() < this.getParams().getVideoSize().getMinFileSize() * 1024) return false;
        return true;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onStoreComplete(StoreDataResult storeDataResult) {
        if (Configurations.isLogForOperatorsEnabled()) {
            CameraLogger.dForOperators("The image is saved completely");
        }
        if (this.mCameraActivity.isOneShot()) {
            this.mCameraActivity.finishOneShot(storeDataResult);
        } else if (this.mCameraWindow != null) {
            this.mCameraWindow.onStoreComplete(storeDataResult);
        }
        this.mCameraActivity.enableAutoOffTimer();
        Executor.sendEvent(ControllerEvent.EV_STORE_DONE, 0, storeDataResult);
    }

    public void onVideoError(boolean bl) {
        this.releaseVideoDevice();
        if (bl) {
            return;
        }
        Executor.postEmptyEvent(ControllerEvent.EV_DEVICE_ERROR);
    }

    public void pauseSceneRecognition() {
        this.mSceneRecognition.pause();
    }

    public void prepareBurstShot() {
        this.mSceneRecognition.stop();
        this.mFaceDetect.stop();
        this.mCameraDevice.prepareBurstShot(this.getParams());
        this.mSavingTaskManager.prepareBulkInsert();
        Resolution resolution = BurstShot.getBurstResolution(this.getParams());
        this.mCameraWindow.setResolution(resolution);
    }

    public void prepareDragging() {
        this.mSceneRecognition.pause();
        this.mFaceDetect.enableFaceIdentification(false);
        FocusMode focusMode = this.mCameraWindow.getFocusMode();
        if (FocusMode.TOUCH_FOCUS != focusMode) {
            this.setFocusMode(FocusMode.TOUCH_FOCUS);
        }
    }

    public void prepareForFinish() {
        this.mEventDispatcher.stopTranslation();
        Executor.clear();
        this.mCameraDevice.clearResumeDeviceTask();
        this.releaseVideoDevice();
        this.mCameraDevice.turnOffLight();
    }

    public void prepareManualRecording() {
        this.mCameraWindow.disableClickOnThumbnail();
        this.applyVideoSmileCapture(this.getParams().getVideoSmileCapture());
        this.mCameraDevice.commitParameters();
        this.mFaceDetect.start();
    }

    public void prepareModelessRecording() {
        FocusMode focusMode;
        this.mCameraWindow.disableClickOnThumbnail();
        if (this.mSceneRecognition.isSceneRecognition() && !HardwareCapability.getCapability((int)this.mControllerManager.getCameraId()).SCENE_RECOGNITION_TYPES.get().contains("recording")) {
            this.mSceneRecognition.stop();
        }
        Parameters parameters = this.getParams();
        if (parameters.capturingMode.equals(CapturingMode.SCENE_RECOGNITION) && ((focusMode = this.mCameraWindow.getFocusMode()) == null || !focusMode.equals(FocusMode.FACE_DETECTION))) {
            this.setFocusMode(FocusMode.FACE_DETECTION);
        }
        this.mEventDispatcher.setSendLongPressEvent(false);
        this.changeSmileCapturePhotoToVideo(parameters);
        parameters.set(SuperResolution.OFF);
        this.mCameraWindow.updateZoombar(this.mCameraDevice.getZoom(), this.mCameraDevice.getMaxZoom(), this.mCameraDevice.getMaxSrZoom());
        this.mCameraDevice.setSteadyShot(parameters.getVideoStabilizer());
        this.mTouchFocus.clear();
        this.mFaceDetect.enableFaceIdentification(false);
    }

    public void prepareRecording() {
        this.mCameraDevice.setVideoPictureSize(this.getParams().getVideoSize().getVideoRect());
        this.mCameraDevice.setPhotoShutterSound(false);
        if (this.mControllerManager.getType() == 2) {
            this.prepareManualRecording();
            return;
        }
        this.prepareModelessRecording();
    }

    public void prepareView() {
        this.mCameraWindow.prepare(this.getParams());
        this.mEventDispatcher.startTouchEventTranslation();
        this.mCameraWindow.showDefaultView();
        this.mCameraWindow.showIcons();
    }

    public void releaseVideoDevice() {
        this.mVideoDevice.release();
        this.mCameraActivity.enableAutoOffTimer();
    }

    public boolean reopenCamera(int n) {
        MeasurePerformance.measureTime(MeasurePerformance.PerformanceIds.SWITCH_CAMERA_DEVICE, true);
        this.mCameraDevice.close();
        try {
            this.mCameraDevice.open(n);
        }
        catch (CameraDeviceException var2_2) {
            Executor.postEvent(ControllerEvent.EV_DEVICE_ERROR, 100, this.mCameraDevice.getCamera());
            CameraLogger.e(TAG, "Open camera failed.", var2_2);
            return false;
        }
        MeasurePerformance.measureTime(MeasurePerformance.PerformanceIds.SWITCH_CAMERA_DEVICE, false);
        return true;
    }

    public boolean restoreFocusMode(boolean bl) {
        FocusMode focusMode = this.mCameraWindow.getFocusMode();
        FocusMode focusMode2 = this.getParams().getFocusMode();
        if (focusMode == null || focusMode != focusMode2) {
            if (focusMode != FocusMode.TOUCH_FOCUS) {
                this.setFocusMode(focusMode2);
                return true;
            }
            if (bl) {
                this.setFocusMode(focusMode2);
                return true;
            }
        }
        return false;
    }

    public void restoreLightSetting() {
        if (this.mControllerManager.getType() == 2 || this.mCameraActivity.isOneShotVideo()) {
            if (this.getParams().getPhotoLight().getBooleanValue()) {
                this.mCameraDevice.turnOnLight();
                return;
            }
            this.mCameraDevice.turnOffLight();
            return;
        }
        Flash flash = this.getParams().getFlash();
        this.mCameraDevice.setFlashMode(flash);
        this.mCameraDevice.commitParameters();
    }

    public void selfTimerCapture(ControllerEventSource controllerEventSource) {
        this.mCurrentSelfTimer.stop(true);
        Executor.sendEvent(ControllerEvent.EV_SELFTIMER_CAPTURE, controllerEventSource);
    }

    public void setCurrentSelftimer(Parameters parameters) {
        this.mCurrentSelfTimer = this.getSelftimer(parameters.capturingMode.getType());
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setExifInfo(int n, Location location) {
        Double d = null;
        Double d2 = null;
        Double d3 = null;
        Double d4 = null;
        Long l = null;
        Double d5 = d;
        Double d6 = d2;
        Double d7 = d3;
        Long l2 = l;
        if (location != null) {
            double d8 = location.getLatitude();
            double d9 = location.getLongitude();
            boolean bl = d8 != 0.0 || d9 != 0.0;
            d5 = d;
            d6 = d2;
            d7 = d3;
            l2 = l;
            if (bl) {
                d = d8;
                d2 = d9;
                if (location.hasAltitude()) {
                    d4 = location.getAltitude();
                }
                d5 = d;
                d6 = d2;
                d7 = d4;
                l2 = l;
                if (location.getTime() != 0) {
                    l2 = location.getTime() / 1000;
                    d7 = d4;
                    d6 = d2;
                    d5 = d;
                }
            }
        }
        this.mCameraDevice.setExifInfo(n, d5, d6, d7, l2);
    }

    public void setFocusMode(FocusMode focusMode) {
        this.mSettingsController.set(focusMode);
        this.mSettingsController.commit();
    }

    protected abstract void setInitState(boolean var1);

    public void setPreviewDisplay(CameraSurfaceHolder cameraSurfaceHolder) {
        try {
            this.mCameraDevice.setPreviewDisplay(cameraSurfaceHolder.getSurface());
            return;
        }
        catch (IOException var1_2) {
            Executor.postEvent(ControllerEvent.EV_DEVICE_ERROR, -256, this.mCameraDevice.getCamera());
            CameraLogger.e(TAG, "setPreviewDisplay failed.", var1_2);
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public boolean shouldAfStartAfterSelfTimer(int n) {
        if (this.mControllerManager.getType() == 2 || n == 2 || this.mControllerManager.getCameraId() == 1) {
            return false;
        }
        return true;
    }

    /*
     * Enabled aggressive block sorting
     */
    public boolean shouldKeepZoomStep(CapturingMode object, CapturingMode capturingMode) {
        if (object.getCameraId() == capturingMode.getCameraId() && object.getType() != capturingMode.getType()) {
            object = capturingMode.getType() == 1 ? this.mParameterManager.getParameters(capturingMode).getResolution().getPictureRect() : this.mParameterManager.getParameters(capturingMode).getVideoSize().getVideoRect();
            if (!this.shouldRestartPreview((Rect)object)) {
                return true;
            }
        }
        return false;
    }

    public boolean shouldRestartPreview(Rect rect) {
        if (CameraSize.isAspectRatioDifferent(this.mCameraDevice.getPreviewRect(), rect)) {
            return true;
        }
        return false;
    }

    public void showErrorMessage(int n) {
        switch (n) {
            default: {
                this.mCameraActivity.getMessagePopup().showUnknownErrorMessage();
                return;
            }
            case 100: {
                this.mCameraActivity.getMessagePopup().showDeviceErrorMessage();
                return;
            }
            case -1: 
        }
        this.mCameraActivity.getMessagePopup().showRecordingSizeLimitError();
    }

    public void startModelessRecording() {
        this.mFaceDetect.start();
        this.mCameraDevice.prepareRec(this.getParams().getVideoSize());
        this.startRecording();
    }

    public void startPreview() {
        try {
            this.mCameraDevice.startPreview();
            return;
        }
        catch (CameraDeviceException var1_1) {
            Executor.postEvent(ControllerEvent.EV_DEVICE_ERROR, -255, this.mCameraDevice.getCamera());
            CameraLogger.e(TAG, "startPreview failed.", var1_1);
            return;
        }
    }

    public void startPreview(CameraSurfaceHolder cameraSurfaceHolder) {
        this.setPreviewDisplay(cameraSurfaceHolder);
        if (!this.mCameraDevice.isPreviewing()) {
            this.startPreview();
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void startRecording() {
        Object object;
        boolean bl;
        VideoSavingRequest videoSavingRequest;
        VideoStabilizer videoStabilizer;
        block12 : {
            this.mCameraActivity.disableAutoOffTimer();
            object = this.getParams().getVideoSize();
            videoStabilizer = this.getParams().getVideoStabilizer();
            String string = RecordingUtil.getOutputFile(object.getVideoProfile().mExt, this.mCameraActivity);
            RecordingUtil.deleteFile(string, true);
            bl = this.getParams().getMicrophone().getBooleanValue();
            videoSavingRequest = this.createMovieSavingRequest(object.getVideoProfile(), string);
            this.mCameraWindow.setRecordingOrientation(this.mCameraActivity.getOrientation());
            this.mCameraActivity.getCameraDevice().unlockCamera();
            try {
                if (this.mVideoDevice.setup((VideoSize)object, videoStabilizer, bl, videoSavingRequest, string, this.getOrientation(), this.mParameterManager.getParameters().getShutterSound())) break block12;
                this.mCameraActivity.getCameraDevice().lockCamera();
                this.onVideoError(false);
                return;
            }
            catch (FileNotFoundException var3_2) {
                this.mCameraActivity.getCameraDevice().lockCamera();
                this.onVideoError(true);
                return;
            }
        }
        videoStabilizer = this.mCameraWindow;
        int n = this.mVideoDevice.getDuration();
        bl = object.isConstraint() || this.mCameraActivity.getConfigurations().hasLimitForSizeOrDuration();
        videoStabilizer.prepareRecording(n, bl, this.mCameraDevice.isVideoHdrOn());
        this.mCameraDevice.startVideoMetadata();
        this.mCameraDevice.setVideoDevice(this.mVideoDevice);
        if (this.mVideoDevice.start()) {
            this.mCameraWindow.showRecordingView();
            if (!ClassDefinitionChecker.isMediaRecorderPauseAndResumeSupported()) return;
            {
                this.mCameraWindow.requestToAddVideoChapter(this.getOrientation());
                return;
            }
        }
        this.mCameraWindow.hideRecordingView();
        this.updateSelftimers();
        this.releaseVideoDevice();
        if (!this.mCameraActivity.isOneShot()) {
            if (this.mControllerManager.getType() == 1 && this.shouldRestartPreview(this.mCameraDevice.getPhotoPreviewSize(this.getParams().getResolution()))) {
                this.mCameraWindow.setResolution(this.getParams().getResolution());
                this.mCameraDevice.finishRec(this.getParams().getResolution());
                this.mCameraWindow.showSurfaceView();
            }
            this.finishRecording(null);
        }
        if (videoSavingRequest.getFilePath() != null) {
            try {
                object = new File(videoSavingRequest.getFilePath());
                if (object.exists() && object.isFile() && !object.delete()) {
                    CameraLogger.e(TAG, "videoFile.delete(): [Unable to delete empty video file.]");
                }
            }
            catch (Exception var3_3) {
                CameraLogger.e(TAG, "DoFastestCamcordTask: [Unable to delete empty media file.]");
            }
        }
        if (AudioResourceChecker.isAudioResourceAvailable(this.mCameraActivity)) {
            Executor.postEvent(ControllerEvent.EV_DEVICE_ERROR, 100, null);
            return;
        }
        Executor.postEmptyEvent(ControllerEvent.EV_AUDIO_RESOURCE_ERROR);
    }

    public void startSelfTimer(int n, ControllerEventSource controllerEventSource) {
        if (!(this.mSavingTaskManager.canPushStoreTask() && this.mCameraActivity.updateRemain())) {
            return;
        }
        this.mCurrentSelfTimer = this.getSelftimer(n);
        this.mCurrentSelfTimer.start(controllerEventSource);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void startViewFinder() {
        this.restoreLightSetting();
        this.restoreFocusMode(false);
        this.updateStatus();
        this.mIsVideoSmileCapturing = false;
        if (this.mSceneRecognition.isSceneRecognition()) {
            this.mSceneRecognition.start();
        } else {
            this.mSceneRecognition.stop();
        }
        if (this.mControllerManager.getCapturingMode() == CapturingMode.SCENE_RECOGNITION || this.mControllerManager.getCapturingMode() == CapturingMode.FRONT_PHOTO || this.mControllerManager.getCapturingMode() == CapturingMode.SUPERIOR_FRONT || this.mCameraWindow.getFocusMode() == FocusMode.FACE_DETECTION || this.getParams().getSmileCapture() != SmileCapture.OFF) {
            this.mFaceDetect.start();
        }
        this.mFaceDetect.enableFaceIdentification(this.getParams().getFaceIdentify().getBooleanValue());
        this.mCameraWindow.showDefaultView();
    }

    public void stopObjectTracking(Rect rect) {
        if (CameraSize.isAspectRatioDifferent(this.mCameraDevice.getPreviewRect(), rect)) {
            this.mObjectTracking.stop(true);
        }
    }

    public void suspendViewFinder() {
        this.mCameraDevice.suspend(this.mFaceDetect.isFaceDetect(), this.mSceneRecognition.isSceneRecognition());
        this.mCameraDevice.turnOffLight();
        this.mCameraWindow.hideDefaultView(this.mControllerManager.getType());
    }

    /*
     * Enabled aggressive block sorting
     */
    public void updateFaceDetect(Parameters parameters) {
        SmileCapture smileCapture = parameters.capturingMode.getType() == 2 || this.mCameraActivity.isOneShotVideo() ? SmileCapture.OFF : parameters.getSmileCapture();
        this.mFaceDetect.update(parameters.getFocusMode(), smileCapture);
        this.mFaceDetect.enableFaceIdentification(parameters.getFaceIdentify().getBooleanValue());
    }

    /*
     * Enabled aggressive block sorting
     */
    public PhotoSavingRequest updateSavingRequest(PhotoSavingRequest photoSavingRequest, boolean bl) {
        photoSavingRequest.setDateTaken(System.currentTimeMillis());
        switch (.$SwitchMap$com$sonyericsson$cameracommon$mediasaving$SavingTaskManager$SavedFileType[photoSavingRequest.common.savedFileType.ordinal()]) {
            case 1: {
                if (!bl) break;
            }
            default: {
                return photoSavingRequest;
            }
            case 2: 
            case 3: 
            case 4: 
        }
        return new PhotoSavingRequest(photoSavingRequest, photoSavingRequest.common.orientation);
    }

    public void updateSelftimers() {
        this.updatePhotoSelftimer(this.getParams().getSelfTimer());
        this.updateVideoSelftimer(this.getParams().getVideoSelfTimer());
        this.setCurrentSelftimer(this.getParams());
    }

    /*
     * Enabled aggressive block sorting
     */
    public void updateStatus() {
        EventDispatcher eventDispatcher = this.mEventDispatcher;
        boolean bl = this.mParameterManager.isSelfTimerOn() || this.mParameterManager.isVideoSelfTimerOn();
        eventDispatcher.setShouldSelfTimerStart(bl);
        this.mEventDispatcher.updateLongPressStatus(this.mParameterManager.getParameters().capturingMode.getType(), this.mParameterManager.getParameters().getBurstShot().isBurstShotOn());
    }

    class SettingsController
    implements ParameterApplicable {
        SettingsController() {
        }

        /*
         * Enabled aggressive block sorting
         */
        public void applyAllParameters(Parameters parameters) {
            PositionConverter.getInstance().init(parameters.capturingMode.isFront(), CameraFunctions.this.mCameraDevice.getDisplayOrientation(), CameraFunctions.this.mCameraWindow.getSurfaceRect(), CameraFunctions.this.mCameraDevice.getPreviewRect());
            if (CameraFunctions.this.mCameraActivity.hasExtraOutputPath()) {
                ParameterKey.DESTINATION_TO_SAVE.setSelectability(ParameterSelectability.FIXED);
            } else if (CameraFunctions.this.mStorageManager.isToggledStorageReady()) {
                ParameterKey.DESTINATION_TO_SAVE.setSelectability(ParameterSelectability.SELECTABLE);
            } else {
                ParameterKey.DESTINATION_TO_SAVE.setSelectability(ParameterSelectability.UNAVAILABLE);
            }
            CameraFunctions.this.mStorageManager.setCurrentStorage(ParameterManager.getDestinationToSave().get().getType());
            CameraFunctions.this.mCameraActivity.setGeotag(parameters.getGeotag().isGeotagOn());
            CameraFunctions.this.mCameraActivity.getShutterToneGenerator().setShutterSound(parameters.getShutterSound());
            CameraFunctions.this.mEventDispatcher.updateTouchEventTranslator(parameters);
            CameraFunctions.this.mBurstShooting.update(parameters.getBurstShot());
            CameraFunctions.this.updateFaceDetect(parameters);
            CameraFunctions.this.mSceneRecognition.update(parameters.capturingMode);
            CameraFunctions.this.mSelfTimer.update(parameters.getSelfTimer().getDurationInMillisecond(), parameters.getSelfTimer().getSoundType());
            CameraFunctions.this.mVideoSelfTimer.update(parameters.getVideoSelfTimer().getTime(), parameters.getVideoSelfTimer().getSoundType());
            CameraFunctions.this.setCurrentSelftimer(parameters);
            CameraFunctions.this.mShooting.update(parameters.capturingMode.getCameraId());
            CameraFunctions.this.mShooting.update(parameters.getFocusMode());
        }

        @Override
        public void commit() {
            CameraFunctions.this.mCameraDevice.commit();
            CameraFunctions.this.mCameraWindow.commit();
            Camera.Parameters parameters = CameraFunctions.this.mCameraDevice.getParameters();
            if (parameters != null) {
                String string = parameters.get("sony-vs");
                String string2 = parameters.get("sony-video-nr");
                int n = CameraFunctions.this.getParams().capturingMode.getCameraId();
                new EachCameraStatusPublisher(CameraFunctions.this.mCameraActivity, n).putFromParameter(parameters).put(new VideoResolution(CameraFunctions.this.getParams().getVideoSize().getVideoRect())).put((VideoResolution)new VideoRecordingFps(CameraFunctions.this.getParams().getVideoSize().getVideoFrameRate())).put((VideoRecordingFps)VideoStabilizerStatus.fromCameraParameter(string)).put((VideoStabilizerStatus)VideoNoiseReduction.fromCameraParameter(string2)).publish();
            }
            CameraFunctions.this.mEventDispatcher.updateTouchEventTranslator(CameraFunctions.this.getParams());
        }

        @Override
        public void set(AutoReview autoReview) {
            CameraFunctions.this.mCameraWindow.setAutoReviweDuration(autoReview);
        }

        @Override
        public void set(AutoUpload autoUpload) {
        }

        @Override
        public void set(BurstShot object) {
            object = CameraFunctions.this.getParams();
            BurstShot burstShot = object.getBurstShot();
            CameraFunctions.this.mBurstShooting.update(burstShot);
            CameraFunctions.this.mCameraDevice.setBurstShutterSound(object.getShutterSound());
        }

        @Override
        public void set(CaptureFrameShape captureFrameShape) {
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void set(CapturingMode capturingMode) {
            CameraFunctions.this.mCameraDevice.setCapturingMode(capturingMode);
            CameraFunctions.this.mCameraWindow.setCapturingMode(capturingMode);
            CameraFunctions.this.mCameraDevice.setVideoSize(CameraFunctions.this.getParams().getVideoSize());
            CameraFunctions.this.mShooting.update(capturingMode.getCameraId());
            CameraFunctions.this.mSceneRecognition.update(capturingMode);
            CameraFunctions.this.mAutoZoom.update(capturingMode.getCameraId());
            CameraFunctions.this.updateFaceDetect(CameraFunctions.this.getParams());
            CameraFunctions.this.updateSelftimers();
            if (capturingMode.getType() == 1) {
                CameraFunctions.this.mCameraWindow.setPhotoSmileLevel(CameraFunctions.this.getParams().getSmileCapture());
            } else {
                CameraFunctions.this.mCameraWindow.setPhotoSmileLevel(SmileCapture.OFF);
            }
            CameraFunctions.this.restoreFocusMode(true);
            this.set(CameraFunctions.this.getParams().getBurstShot());
            PositionConverter.getInstance().init(capturingMode.isFront(), CameraFunctions.this.mCameraDevice.getDisplayOrientation(), CameraFunctions.this.mCameraWindow.getSurfaceRect(), CameraFunctions.this.mCameraDevice.getPreviewRect());
        }

        @Override
        public void set(DestinationToSave destinationToSave) {
            CameraFunctions.this.mStorageManager.setCurrentStorage(destinationToSave.getType());
            CameraFunctions.this.mStorageManager.requestCheckAll();
        }

        @Override
        public void set(Ev ev) {
            CameraFunctions.this.mCameraDevice.setEv(ev);
        }

        @Override
        public void set(FaceIdentify faceIdentify) {
            CameraFunctions.this.mFaceDetect.enableFaceIdentification(faceIdentify.getBooleanValue());
        }

        @Override
        public void set(Facing facing) {
        }

        @Override
        public void set(FastCapture fastCapture) {
        }

        @Override
        public void set(Flash flash) {
            CameraFunctions.this.mCameraDevice.setFlashMode(flash);
        }

        @Override
        public void set(FocusMode focusMode) {
            CameraFunctions.this.mCameraDevice.setFocusMode(focusMode);
            CameraFunctions.this.mCameraWindow.setFocusMode(focusMode);
            CameraFunctions.this.mShooting.update(focusMode);
            CameraFunctions.this.mObjectTracking.stop(true);
            CameraFunctions.this.updateFaceDetect(CameraFunctions.this.getParams());
        }

        @Override
        public void set(Geotag geotag) {
            boolean bl = geotag.isGeotagOn();
            CameraFunctions.this.mCameraWindow.setGeotag(bl);
            CameraFunctions.this.mCameraActivity.setGeotag(bl);
        }

        @Override
        public void set(Hdr object) {
            CameraFunctions.this.mCameraDevice.setHdr((Hdr)object);
            object = CameraFunctions.this.getParams();
            CameraFunctions.this.mCameraDevice.setPictureSize(object.getResolution().getPictureRect());
        }

        @Override
        public void set(Iso iso) {
            CameraFunctions.this.mCameraDevice.setIso(iso);
        }

        @Override
        public void set(Metering metering) {
            CameraFunctions.this.mCameraDevice.setMetering(metering);
        }

        @Override
        public void set(Microphone microphone) {
        }

        @Override
        public void set(PhotoLight photoLight) {
        }

        @Override
        public void set(Resolution resolution) {
            CameraFunctions.this.mCameraDevice.setResolution(resolution);
            CameraFunctions.this.mCameraWindow.setResolution(resolution);
            CameraFunctions.this.mAutoZoom.clear();
            CameraFunctions.this.mTouchFocus.clear();
        }

        @Override
        public void set(Scene scene) {
            CameraFunctions.this.mCameraDevice.setScene(scene);
        }

        @Override
        public void set(SelfTimer selfTimer) {
            CameraFunctions.this.updatePhotoSelftimer(selfTimer);
            CameraFunctions.this.setCurrentSelftimer(CameraFunctions.this.getParams());
        }

        @Override
        public void set(ShutterSound shutterSound) {
            CameraFunctions.this.mCameraActivity.getShutterToneGenerator().setShutterSound(shutterSound);
            CameraFunctions.this.mCameraDevice.setShutterSound(shutterSound);
        }

        @Override
        public void set(SmileCapture smileCapture) {
            if (CameraFunctions.this.getParams().capturingMode.getType() == 1) {
                CameraFunctions.this.applyPhotoSmileCapture(smileCapture);
            }
        }

        @Override
        public void set(SoftSkin softSkin) {
            CameraFunctions.this.mCameraDevice.setSoftSkin(softSkin);
        }

        @Override
        public void set(Stabilizer stabilizer) {
            CameraFunctions.this.mCameraDevice.setStabilizer(stabilizer);
        }

        @Override
        public void set(SuperResolution superResolution) {
        }

        @Override
        public void set(TouchBlock touchBlock) {
        }

        @Override
        public void set(TouchCapture touchCapture) {
            CameraFunctions.this.mCameraWindow.setTouchCapture(touchCapture);
        }

        @Override
        public void set(VideoAutoReview videoAutoReview) {
            CameraFunctions.this.mCameraWindow.setVideoAutoReviweDuration(videoAutoReview);
        }

        @Override
        public void set(VideoHdr videoHdr) {
            CameraFunctions.this.mCameraDevice.setVideoHdr(videoHdr);
        }

        @Override
        public void set(VideoSelfTimer videoSelfTimer) {
            CameraFunctions.this.updateVideoSelftimer(videoSelfTimer);
            CameraFunctions.this.setCurrentSelftimer(CameraFunctions.this.getParams());
        }

        @Override
        public void set(VideoSize videoSize) {
            CameraFunctions.this.mCameraDevice.setPreviewSizeAndFpsRangeForVideo(videoSize);
            CameraFunctions.this.mCameraDevice.setVideoSize(videoSize);
            CameraFunctions.this.mCameraWindow.setVideoSize(videoSize);
            CameraFunctions.this.mAutoZoom.clear();
        }

        @Override
        public void set(VideoSmileCapture videoSmileCapture) {
        }

        @Override
        public void set(VideoStabilizer videoStabilizer) {
            if (CameraFunctions.this.getParams().capturingMode.getType() == 2) {
                CameraFunctions.this.mCameraDevice.setSteadyShot(videoStabilizer);
            }
        }

        @Override
        public void set(VolumeKey volumeKey) {
        }

        @Override
        public void set(WhiteBalance whiteBalance) {
            CameraFunctions.this.mCameraDevice.setWhiteBalance(whiteBalance);
        }
    }

}

