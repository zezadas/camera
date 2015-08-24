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
import com.sonyericsson.android.camera.configuration.parameters.ExposureMode;
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
import com.sonyericsson.android.camera.configuration.parameters.ShutterSpeed;
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

import lanchon.dexpatcher.annotation.DexAdd;
import lanchon.dexpatcher.annotation.DexEdit;
import lanchon.dexpatcher.annotation.DexIgnore;
import lanchon.dexpatcher.annotation.DexReplace;
import lanchon.dexpatcher.annotation.DexAction;


@DexEdit(defaultAction = DexAction.IGNORE)
public abstract class CameraFunctions
        implements SavingRequest.StoreDataCallback {
    private static final String TAG = CameraFunctions.class.getSimpleName();
    protected final AutoZoom mAutoZoom;
    protected final BurstShooting mBurstShooting;
    protected final CameraActivity mCameraActivity;
    protected final CameraDevice mCameraDevice;
    protected final CameraWindow mCameraWindow;
    protected final ControllerManager mControllerManager;
    protected final EventDispatcher mEventDispatcher;
    protected final FaceDetect mFaceDetect;
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

    @DexIgnore
    public CameraFunctions(CameraActivity cameraActivity, EventDispatcher eventDispatcher) {
        this.mSettingsController = new SettingsController();
        this.mCameraActivity = cameraActivity;
        this.mCameraDevice = cameraActivity.getCameraDevice();
        this.mCameraWindow = cameraActivity.getContentView();
        this.mControllerManager = cameraActivity.getControllerManager();
        this.mParameterManager = cameraActivity.getParameterManager();
        this.mSavingTaskManager = (BurstSavingTaskManager) cameraActivity.getSavingTaskManager();
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


    @DexIgnore
    @Override
    public void onStoreComplete(StoreDataResult storeDataResult) {
    }


    @DexEdit(defaultAction = DexAction.IGNORE)
    class SettingsController
            implements ParameterApplicable {

        @DexIgnore
        SettingsController() {
        }

        @DexAdd
        @Override
        public void set(ExposureMode var1) {
            mCameraDevice.setExposureMode(var1);
        }

        @DexAdd
        @Override
        public void set(ShutterSpeed var1) {
            mCameraDevice.setShutterSpeed(var1);
        }

        @DexIgnore
        @Override
        public void commit() {
        }

        @DexIgnore
        @Override
        public void set(AutoReview autoReview) {
        }

        @DexIgnore
        @Override
        public void set(AutoUpload autoUpload) {
        }

        @DexIgnore
        @Override
        public void set(BurstShot object) {
        }

        @DexIgnore
        @Override
        public void set(CaptureFrameShape captureFrameShape) {
        }

        @DexIgnore
        @Override
        public void set(CapturingMode capturingMode) {
        }

        @DexIgnore
        @Override
        public void set(DestinationToSave destinationToSave) {
        }

        @DexIgnore
        @Override
        public void set(Ev ev) {
        }

        @DexIgnore
        @Override
        public void set(FaceIdentify faceIdentify) {
        }

        @DexIgnore
        @Override
        public void set(Facing facing) {
        }

        @DexIgnore
        @Override
        public void set(FastCapture fastCapture) {
        }

        @DexIgnore
        @Override
        public void set(Flash flash) {
        }

        @DexIgnore
        @Override
        public void set(FocusMode focusMode) {
        }

        @DexIgnore
        @Override
        public void set(Geotag geotag) {

        }

        @DexIgnore
        @Override
        public void set(Hdr object) {
        }

        @DexIgnore
        @Override
        public void set(Iso iso) {
        }

        @DexIgnore
        @Override
        public void set(Metering metering) {
        }

        @DexIgnore
        @Override
        public void set(Microphone microphone) {
        }

        @DexIgnore
        @Override
        public void set(PhotoLight photoLight) {
        }

        @DexIgnore
        @Override
        public void set(Resolution resolution) {
        }

        @DexIgnore
        @Override
        public void set(Scene scene) {
        }

        @DexIgnore
        @Override
        public void set(SelfTimer selfTimer) {
        }

        @DexIgnore
        @Override
        public void set(ShutterSound shutterSound) {
        }

        @DexIgnore
        @Override
        public void set(SmileCapture smileCapture) {
        }

        @DexIgnore
        @Override
        public void set(SoftSkin softSkin) {
        }

        @DexIgnore
        @Override
        public void set(Stabilizer stabilizer) {
        }

        @DexIgnore
        @Override
        public void set(SuperResolution superResolution) {
        }

        @DexIgnore
        @Override
        public void set(TouchBlock touchBlock) {
        }

        @DexIgnore
        @Override
        public void set(TouchCapture touchCapture) {
        }

        @DexIgnore
        @Override
        public void set(VideoAutoReview videoAutoReview) {
        }

        @DexIgnore
        @Override
        public void set(VideoHdr videoHdr) {
        }

        @DexIgnore
        @Override
        public void set(VideoSelfTimer videoSelfTimer) {
        }

        @DexIgnore
        @Override
        public void set(VideoSize videoSize) {
        }

        @DexIgnore
        @Override
        public void set(VideoSmileCapture videoSmileCapture) {
        }

        @DexIgnore
        @Override
        public void set(VideoStabilizer videoStabilizer) {
        }

        @DexIgnore
        @Override
        public void set(VolumeKey volumeKey) {
        }

        @DexIgnore
        @Override
        public void set(WhiteBalance whiteBalance) {
        }
    }

}

