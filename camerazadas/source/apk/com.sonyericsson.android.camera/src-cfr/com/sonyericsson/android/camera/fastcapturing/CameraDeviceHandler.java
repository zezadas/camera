/*
 * Decompiled with CFR 0_100.
 * 
 * Could not load the following classes:
 *  com.sonyericsson.cameraextension.CameraExtension
 *  com.sonyericsson.cameraextension.CameraExtension$AutoFocusCallback
 *  com.sonyericsson.cameraextension.CameraExtension$AutoFocusResult
 *  com.sonyericsson.cameraextension.CameraExtension$BurstShotCallback
 *  com.sonyericsson.cameraextension.CameraExtension$BurstShotResult
 *  com.sonyericsson.cameraextension.CameraExtension$FaceDetectionCallback
 *  com.sonyericsson.cameraextension.CameraExtension$FaceDetectionResult
 *  com.sonyericsson.cameraextension.CameraExtension$FilePathGenerator
 *  com.sonyericsson.cameraextension.CameraExtension$MediaProviderUpdator
 *  com.sonyericsson.cameraextension.CameraExtension$ObjectTrackingCallback
 *  com.sonyericsson.cameraextension.CameraExtension$ObjectTrackingResult
 *  com.sonyericsson.cameraextension.CameraExtension$SceneRecognitionCallback
 *  com.sonyericsson.cameraextension.CameraExtension$SceneRecognitionResult
 *  com.sonyericsson.cameraextension.CameraExtension$StorageFullDetector
 */
package com.sonyericsson.android.camera.fastcapturing;

import android.app.Activity;
import android.content.ContentResolver;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.PointF;
import android.graphics.Rect;
import android.hardware.Camera;
import android.location.Location;
import android.media.CamcorderProfile;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.util.Log;
import android.view.OrientationEventListener;
import android.view.SurfaceHolder;
import com.sonyericsson.android.camera.CameraSize;
import com.sonyericsson.android.camera.ExtendedActivity;
import com.sonyericsson.android.camera.ShutterToneGenerator;
import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.BurstShot;
import com.sonyericsson.android.camera.configuration.parameters.CaptureFrameShape;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.configuration.parameters.FaceIdentify;
import com.sonyericsson.android.camera.configuration.parameters.Flash;
import com.sonyericsson.android.camera.configuration.parameters.FocusMode;
import com.sonyericsson.android.camera.configuration.parameters.Hdr;
import com.sonyericsson.android.camera.configuration.parameters.Microphone;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;
import com.sonyericsson.android.camera.configuration.parameters.Resolution;
import com.sonyericsson.android.camera.configuration.parameters.Scene;
import com.sonyericsson.android.camera.configuration.parameters.SoftSkin;
import com.sonyericsson.android.camera.configuration.parameters.Stabilizer;
import com.sonyericsson.android.camera.configuration.parameters.VideoHdr;
import com.sonyericsson.android.camera.configuration.parameters.VideoSize;
import com.sonyericsson.android.camera.configuration.parameters.VideoStabilizer;
import com.sonyericsson.android.camera.configuration.parameters.WhiteBalance;
import com.sonyericsson.android.camera.device.CameraDeviceUtil;
import com.sonyericsson.android.camera.fastcapturing.FastCapturingCameraUtils;
import com.sonyericsson.android.camera.fastcapturing.PlatformDependencyResolver;
import com.sonyericsson.android.camera.fastcapturing.PreviewFrameGrabber;
import com.sonyericsson.android.camera.fastcapturing.StateMachine;
import com.sonyericsson.android.camera.util.LocalGoogleAnalyticsUtil;
import com.sonyericsson.android.camera.util.capability.HardwareCapability;
import com.sonyericsson.cameracommon.activity.BaseActivity;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingKey;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingValue;
import com.sonyericsson.cameracommon.commonsetting.CommonSettings;
import com.sonyericsson.cameracommon.commonsetting.values.FastCapture;
import com.sonyericsson.cameracommon.commonsetting.values.ShutterSound;
import com.sonyericsson.cameracommon.device.CameraExtensionVersion;
import com.sonyericsson.cameracommon.device.CommonPlatformDependencyResolver;
import com.sonyericsson.cameracommon.mediasaving.MediaSavingConstants;
import com.sonyericsson.cameracommon.mediasaving.SavingTaskManager;
import com.sonyericsson.cameracommon.mediasaving.location.GeotagManager;
import com.sonyericsson.cameracommon.mediasaving.location.LocationSettingsReader;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.PhotoSavingRequest;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.SavingRequest;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.TakenStatusCommon;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.TakenStatusPhoto;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.TakenStatusVideo;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.VideoSavingRequest;
import com.sonyericsson.cameracommon.status.CameraStatusPublisher;
import com.sonyericsson.cameracommon.status.EachCameraStatusPublisher;
import com.sonyericsson.cameracommon.status.EachCameraStatusValue;
import com.sonyericsson.cameracommon.status.GlobalCameraStatusPublisher;
import com.sonyericsson.cameracommon.status.GlobalCameraStatusValue;
import com.sonyericsson.cameracommon.status.eachcamera.BurstShooting;
import com.sonyericsson.cameracommon.status.eachcamera.DeviceStatus;
import com.sonyericsson.cameracommon.status.eachcamera.FaceDetection;
import com.sonyericsson.cameracommon.status.eachcamera.FaceIdentification;
import com.sonyericsson.cameracommon.status.eachcamera.Metadata;
import com.sonyericsson.cameracommon.status.eachcamera.ObjectTracking;
import com.sonyericsson.cameracommon.status.eachcamera.PhotoLight;
import com.sonyericsson.cameracommon.status.eachcamera.SceneRecognition;
import com.sonyericsson.cameracommon.status.eachcamera.VideoNoiseReduction;
import com.sonyericsson.cameracommon.status.eachcamera.VideoRecordingFps;
import com.sonyericsson.cameracommon.status.eachcamera.VideoResolution;
import com.sonyericsson.cameracommon.status.eachcamera.VideoStabilizerStatus;
import com.sonyericsson.cameracommon.status.global.BuiltInCameraIds;
import com.sonyericsson.cameracommon.utility.CameraLogger;
import com.sonyericsson.cameracommon.utility.MeasurePerformance;
import com.sonyericsson.cameracommon.utility.PresetConfigurationResolver;
import com.sonyericsson.cameracommon.utility.RotationUtil;
import com.sonyericsson.cameraextension.CameraExtension;
import com.sonymobile.cameracommon.cameraparametervalidator.CameraParameterValidator;
import com.sonymobile.cameracommon.googleanalytics.GoogleAnalyticsUtil;
import com.sonymobile.cameracommon.googleanalytics.parameters.Event;
import com.sonymobile.cameracommon.media.recorder.RecorderException;
import com.sonymobile.cameracommon.media.recorder.RecorderFactory;
import com.sonymobile.cameracommon.media.recorder.RecorderInterface;
import com.sonymobile.cameracommon.media.recorder.RecorderParameters;
import com.sonymobile.cameracommon.media.utility.NotificationStreamManager;
import com.sonymobile.cameracommon.photoanalyzer.faceidentification.FaceIdentificationFactory;
import com.sonymobile.cameracommon.photoanalyzer.faceidentification.FaceIdentificationUtil;
import com.sonymobile.cameracommon.testevent.TestEventSender;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

public class CameraDeviceHandler {
    public static final int STATUS_OPENED = 2;
    public static final int STATUS_OPENING = 1;
    public static final int STATUS_RELEASED = 0;
    private static final String TAG = "CameraDeviceHandler";
    private BurstShot mBurstShotSetting = null;
    private Rect mCamcordRect = null;
    private Camera mCamera = null;
    private int mCameraDeviceId = 0;
    private CameraExtension mCameraExtension = null;
    private Camera.CameraInfo mCameraInfo = null;
    private ExecutorService mCloseDeviceExecutorService;
    private Future<?> mCloseDeviceFuture;
    private CommonSettings mCommonSettings = null;
    private Context mContext = null;
    private int mCurrentDeviceState = 0;
    private Camera.ErrorCallback mErrorCallback = null;
    private com.sonymobile.cameracommon.photoanalyzer.faceidentification.FaceIdentification mFaceIdService = null;
    private FaceIdentify mFaceIdentifySetting = null;
    private FastCaptureOrientation mFastCaptureOrientation = null;
    private FastCapture mFastCaptureSetting = null;
    private Flash mFlashSetting = null;
    private GeotagManager mGeotagManager = null;
    private boolean mIsCameraDisabled = false;
    private boolean mIsFaceDetectionAlreadyStarted = false;
    private boolean mIsImmediateReleaseRequested = false;
    private boolean mIsLaunchAndCaptureShutterSoundEnabled = false;
    private boolean mIsObjectTrackingAlreadyStarted = false;
    private boolean mIsPreScanSucceeded = false;
    private Boolean mIsRecording = false;
    private boolean mIsSceneRecognitionAlreadyStarted = false;
    private boolean mIsSecureOneShotPhoto = false;
    private boolean mIsSmartCoverCamera = false;
    private PhotoSavingRequest mLastSavingRequest;
    private VideoSavingRequest mLastVideoSavingRequest;
    private int mLatestBurstId = -1;
    private Camera.Parameters mLatestCachedParameters = null;
    private LoadSettingsThread mLoadSettingsThread = null;
    private NotificationStreamManager mNotificationStreamManager;
    private final OnAutoFocusCallback mOnAutoFocusCallback;
    private final OnFaceDetectionCallback mOnFaceDetectionCallback;
    private final OnObjectTrackedCallback mOnObjectTrackedCallback;
    private final OnPictureTakenCallback mOnPictureTakenCallback;
    private OnPreAutoFocusCallback mOnPreAutoFocusCallback;
    private final OnSceneModeChangedCallback mOnSceneModeChangedCallback;
    private final OnShutterCallback mOnShutterCallback;
    private OnZoomChangedCallback mOnZoomChangedCallback;
    private OpenDeviceThread mOpenDeviceThread = null;
    private CaptureFrameShape mPhotoCaptureFrameShapeSetting = null;
    private FocusMode mPhotoFocusModeSetting = null;
    private Hdr mPhotoHdrSetting = null;
    private com.sonyericsson.android.camera.configuration.parameters.PhotoLight mPhotoLightSetting = null;
    private Resolution mPhotoResolutionSetting = null;
    private Stabilizer mPhotoStabilizerSetting = null;
    private Rect mPictureRect = null;
    private PreProcessState mPreProcessState = PreProcessState.NOT_STARTED;
    private SharedPreferences mPreferences = null;
    private PreviewFrameGrabber mPreviewFrameGrabber = null;
    private Rect mPreviewRect = null;
    private final RequestContinuousPreviewFrameCallback mRequestContinuousPreviewFrameCallback;
    private final RequestOnePreviewFrameCallback mRequestOnePreviewFrameCallback;
    private ShutterSound mShutterSoundSetting = null;
    private SoftSkin mSoftSkinSetting = null;
    private StateMachine mStateMachine;
    private Handler mUiThreadHandler = new Handler();
    private FocusMode mVideoFocusModeSetting = null;
    private VideoHdr mVideoHdrSetting = null;
    private Microphone mVideoMicrophoneSetting = null;
    private RecorderInterface mVideoRecorder;
    private Scene mVideoSceneSetting = null;
    private VideoSize mVideoSizeSetting = null;
    private VideoStabilizer mVideoStabilizerSetting = null;
    private WhiteBalance mVideoWhiteBalanceSetting = null;

    public CameraDeviceHandler() {
        this.mRequestOnePreviewFrameCallback = new RequestOnePreviewFrameCallback();
        this.mRequestContinuousPreviewFrameCallback = new RequestContinuousPreviewFrameCallback();
        this.mOnAutoFocusCallback = new OnAutoFocusCallback();
        this.mOnShutterCallback = new OnShutterCallback();
        this.mOnPictureTakenCallback = new OnPictureTakenCallback();
        this.mOnSceneModeChangedCallback = new OnSceneModeChangedCallback();
        this.mOnFaceDetectionCallback = new OnFaceDetectionCallback();
        this.mOnObjectTrackedCallback = new OnObjectTrackedCallback();
    }

    static /* synthetic */ Camera.CameraInfo access$3500(CameraDeviceHandler cameraDeviceHandler) {
        return cameraDeviceHandler.mCameraInfo;
    }

    private static final void assertNotNull(Rect rect) {
        if (CameraLogger.isUserdebugOrEngBuild && rect == null) {
            throw new IllegalArgumentException("PictureRect is null");
        }
    }

    private void awaitFinishingRecording() {
        if (this.mVideoRecorder == null) {
            return;
        }
        if (this.mVideoRecorder.isRecordingOrPaused()) {
            this.disableRecordingSoundIfNeeded();
        }
        this.mVideoRecorder.awaitFinish();
    }

    private void changePreProcessStateTo(PreProcessState preProcessState) {
        this.mPreProcessState = preProcessState;
    }

    private void clearCloseDeviceTask() {
        if (this.isCloseDeviceTaskWorking()) {
            this.joinCloseDeviceTask();
        }
        if (this.mCloseDeviceFuture != null) {
            this.mCloseDeviceFuture.cancel(true);
            this.mCloseDeviceFuture = null;
        }
        if (this.mCloseDeviceExecutorService != null) {
            this.mCloseDeviceExecutorService.shutdown();
            this.mCloseDeviceExecutorService = null;
        }
    }

    private PhotoSavingRequest createPreCaptureSavingRequest() {
        long l = System.currentTimeMillis();
        int n = this.mFastCaptureOrientation.getOrientation();
        Location location = null;
        if (this.mGeotagManager != null) {
            location = this.mGeotagManager.getCurrentLocation();
        }
        Rect rect = this.getPictureRect();
        return new PhotoSavingRequest(new TakenStatusCommon(l, n, location, rect.width(), rect.height(), "image/jpeg", ".JPG", SavingTaskManager.SavedFileType.PHOTO, null, "", false, false), new TakenStatusPhoto());
    }

    private void disableRecordingSoundIfNeeded() {
        if (VideoStabilizer.isIntelligentActive(this.mVideoStabilizerSetting)) {
            this.setVideoRecordSound(false);
            this.trySetParametersToDevice(this.getLatestCachedParameters());
        }
    }

    private void doSetParametersToDevice(Camera camera, Camera.Parameters parameters) {
        camera.setParameters(parameters);
        this.mLatestCachedParameters.remove("key-sony-ext-shuttersound");
        this.mLatestCachedParameters.remove("key-sony-ext-recordingsound");
    }

    private void finishVideoNrSetting() {
        if (HardwareCapability.getInstance().getCameraExtensionVersion().isLaterThanOrEqualTo(1, 8)) {
            this.setVideoNr(false);
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private Camera getCameraInstance() {
        Camera camera = null;
        synchronized (this) {
            boolean bl = this.mIsImmediateReleaseRequested;
            if (bl) return camera;
            if (!this.isOpenDeviceTaskFinishedSuccessfully()) return camera;
            return this.mCamera;
        }
    }

    private static int getCameraTypeFrom(FastCapture fastCapture) {
        switch (.$SwitchMap$com$sonyericsson$cameracommon$commonsetting$values$FastCapture[fastCapture.ordinal()]) {
            default: {
                throw new IllegalStateException("getCameraTypeFrom():[FastCapture=" + fastCapture + "]");
            }
            case 1: 
            case 2: 
            case 3: {
                return 1;
            }
            case 4: 
        }
        return 2;
    }

    private String getDependHdrIsValue(Hdr hdr, Stabilizer stabilizer) {
        switch (.$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$Hdr[hdr.ordinal()]) {
            default: {
                return null;
            }
            case 1: {
                return hdr.getValue();
            }
            case 2: {
                return hdr.getValue();
            }
            case 3: 
        }
        if (stabilizer == Stabilizer.ON) {
            return stabilizer.getValue();
        }
        return hdr.getValue();
    }

    private FaceIdentify getFaceIdentify() {
        return this.mFaceIdentifySetting;
    }

    private boolean isMicrophoneEnabled() {
        if (this.mVideoMicrophoneSetting.equals(Microphone.ON)) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private boolean isOpenDeviceTaskFinishedSuccessfully() {
        if (this.mOpenDeviceThread == null) return false;
        try {
            this.mOpenDeviceThread.join(4000);
            if (this.mOpenDeviceThread == null) {
                return false;
            }
            if (!this.mOpenDeviceThread.isAlive()) return this.mOpenDeviceThread.isSuccess();
            {
                CameraLogger.e("CameraDeviceHandler", "mOpenDeviceThread.join() timeout.");
                return false;
            }
        }
        catch (CancellationException var1_1) {
            CameraLogger.e("CameraDeviceHandler", "isOpenDeviceTaskFinishedSuccessfully():[task is canceled]", var1_1);
            return false;
        }
        catch (InterruptedException var1_2) {
            CameraLogger.e("CameraDeviceHandler", "isOpenDeviceTaskFinishedSuccessfully():[task is Interrupted]", var1_2);
            return false;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private boolean isPictureSizeSupported(Rect rect, Camera.Parameters iterator) {
        if (iterator.getSupportedPictureSizes() == null) {
            return false;
        }
        iterator = iterator.getSupportedPictureSizes().iterator();
        do {
            if (!iterator.hasNext()) return false;
            Camera.Size size = iterator.next();
        } while (size.width != rect.width() || size.height != rect.height());
        return true;
    }

    private static boolean isPreProcessRequiredFrom(FastCapture fastCapture) {
        switch (.$SwitchMap$com$sonyericsson$cameracommon$commonsetting$values$FastCapture[fastCapture.ordinal()]) {
            default: {
                throw new IllegalStateException("isPreAfRequiredFrom():[FastCapture=" + fastCapture + "]");
            }
            case 1: 
            case 2: 
            case 4: {
                return false;
            }
            case 3: 
        }
        return true;
    }

    private boolean isSceneRecognitionSupported() {
        return PlatformDependencyResolver.isSceneRecognitionSupported(this.mLatestCachedParameters);
    }

    private void joinCloseDeviceTask() {
        if (this.mCloseDeviceFuture != null) {
            try {
                this.mCloseDeviceFuture.get();
                return;
            }
            catch (InterruptedException var1_1) {
                CameraLogger.e("CameraDeviceHandler", "Camera closing has been interrupted.", var1_1);
                return;
            }
            catch (ExecutionException var1_2) {
                CameraLogger.e("CameraDeviceHandler", "Camera closing failed.", var1_2);
                return;
            }
        }
        CameraLogger.e("CameraDeviceHandler", "joinCloseDeviceTask: Close camera device task is not submitted.");
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private void loadSettings() {
        if (this.mContext != null) {
            Context context = this.mContext;
            synchronized (context) {
                this.mPreferences = this.mContext.getSharedPreferences("com.sonyericsson.android.camera.shared_preferences", 0);
            }
        }
        if (this.mContext != null) {
            this.mCommonSettings = new CommonSettings(this.mContext.getContentResolver(), this.mContext);
            this.mCommonSettings.load();
        }
        if (this.mFastCaptureSetting == null) {
            this.mFastCaptureSetting = (FastCapture)this.mCommonSettings.get(CommonSettingKey.FAST_CAPTURE);
        }
        this.mShutterSoundSetting = (ShutterSound)this.mCommonSettings.get(CommonSettingKey.SHUTTER_SOUND);
        this.mFlashSetting = FastCapturingCameraUtils.loadParameter(this.mPreferences, 1, this.mCameraDeviceId, ParameterKey.FLASH, Flash.AUTO);
        if (!FastCapturingCameraUtils.isSettingValueAvailableInSharedPreferences(this.mPreferences, 1, this.mCameraDeviceId, ParameterKey.BURST_SHOT)) {
            return;
        }
        this.mPhotoLightSetting = FastCapturingCameraUtils.loadParameter(this.mPreferences, 1, this.mCameraDeviceId, ParameterKey.PHOTO_LIGHT, com.sonyericsson.android.camera.configuration.parameters.PhotoLight.OFF);
        this.mPhotoResolutionSetting = FastCapturingCameraUtils.loadParameter(this.mPreferences, 1, this.mCameraDeviceId, ParameterKey.RESOLUTION, Resolution.VGA);
        this.mPhotoCaptureFrameShapeSetting = FastCapturingCameraUtils.loadParameter(this.mPreferences, 1, this.mCameraDeviceId, ParameterKey.CAPTURE_FRAME_SHAPE, CaptureFrameShape.WIDE);
        this.mPhotoFocusModeSetting = FastCapturingCameraUtils.loadParameter(this.mPreferences, 1, this.mCameraDeviceId, ParameterKey.FOCUS_MODE, FocusMode.SINGLE);
        this.mPhotoStabilizerSetting = FastCapturingCameraUtils.loadParameter(this.mPreferences, this.mCameraDeviceId, 1, ParameterKey.STABILIZER, Stabilizer.OFF);
        this.mPhotoHdrSetting = FastCapturingCameraUtils.loadParameter(this.mPreferences, this.mCameraDeviceId, 1, ParameterKey.HDR, Hdr.HDR_OFF);
        this.mFaceIdentifySetting = FastCapturingCameraUtils.loadParameter(this.mPreferences, 1, this.mCameraDeviceId, ParameterKey.FACE_IDENTIFY, FaceIdentify.OFF);
        this.mSoftSkinSetting = FastCapturingCameraUtils.loadParameter(this.mPreferences, 1, this.mCameraDeviceId, ParameterKey.SOFT_SKIN, SoftSkin.ON);
        this.mBurstShotSetting = this.mIsSecureOneShotPhoto ? BurstShot.OFF : FastCapturingCameraUtils.loadParameter(this.mPreferences, 1, this.mCameraDeviceId, ParameterKey.BURST_SHOT, BurstShot.BEST_EFFORT);
        if (!(this.mFaceIdentifySetting != FaceIdentify.ON || this.mContext == null || FaceIdentificationUtil.exist(this.mContext))) {
            this.mFaceIdentifySetting = FaceIdentify.OFF;
        }
        this.mVideoSizeSetting = FastCapturingCameraUtils.loadParameter(this.mPreferences, 2, this.mCameraDeviceId, ParameterKey.VIDEO_SIZE, VideoSize.VGA);
        this.mVideoSceneSetting = FastCapturingCameraUtils.loadParameter(this.mPreferences, 2, this.mCameraDeviceId, ParameterKey.SCENE, Scene.OFF);
        this.mVideoFocusModeSetting = FastCapturingCameraUtils.loadParameter(this.mPreferences, 2, this.mCameraDeviceId, ParameterKey.FOCUS_MODE, FocusMode.FACE_DETECTION);
        this.mVideoWhiteBalanceSetting = FastCapturingCameraUtils.loadParameter(this.mPreferences, 2, this.mCameraDeviceId, ParameterKey.WHITE_BALANCE, WhiteBalance.AUTO);
        this.mVideoStabilizerSetting = FastCapturingCameraUtils.loadParameter(this.mPreferences, 2, this.mCameraDeviceId, ParameterKey.VIDEO_STABILIZER, VideoStabilizer.ON);
        this.mVideoMicrophoneSetting = FastCapturingCameraUtils.loadParameter(this.mPreferences, 2, this.mCameraDeviceId, ParameterKey.MICROPHONE, Microphone.ON);
        this.mVideoHdrSetting = FastCapturingCameraUtils.loadParameter(this.mPreferences, 2, this.mCameraDeviceId, ParameterKey.VIDEO_HDR, VideoHdr.OFF);
    }

    private static void logPerformance(String string) {
        Log.e("TraceLog", "[PERFORMANCE] [TIME = " + System.currentTimeMillis() + "] [" + "CameraDeviceHandler" + "] [" + Thread.currentThread().getName() + " : " + string + "]");
    }

    private boolean openCamera() {
        block6 : {
            block7 : {
                try {
                    this.mCamera = Camera.open(this.mCameraDeviceId);
                    if (this.mCamera == null) {
                        this.mCurrentDeviceState = 0;
                        return false;
                    }
                }
                catch (Exception var1_1) {
                    this.mCamera = null;
                    this.mCurrentDeviceState = 0;
                    return false;
                }
                this.mCamera.setErrorCallback(this.mErrorCallback);
                Camera.Parameters parameters = this.mCamera.getParameters();
                HardwareCapability.getInstance().setCameraParameters(this.mContext, this.mCameraDeviceId, parameters);
                try {
                    this.mCameraExtension = CameraExtension.open((Camera)this.mCamera, (int)this.mCameraDeviceId);
                    if (this.mCameraExtension != null) break block6;
                    if (this.mCamera == null) break block7;
                }
                catch (RuntimeException var1_3) {
                    CameraLogger.w("CameraDeviceHandler", "run():[CameraExtension use failed]");
                    if (this.mCamera != null) {
                        this.mCamera.release();
                        this.mCamera = null;
                    }
                    this.mCurrentDeviceState = 0;
                    return false;
                }
                this.mCamera.release();
                this.mCamera = null;
            }
            this.mCurrentDeviceState = 0;
            return false;
        }
        new EachCameraStatusPublisher(this.mContext, this.mCameraDeviceId).put(new DeviceStatus(DeviceStatus.Value.POWER_ON)).publish();
        new GlobalCameraStatusPublisher(this.mContext).put(new BuiltInCameraIds(this.mCameraDeviceId)).publish();
        return true;
    }

    private void overlayBurstCaptureParameters(int n, Camera.Parameters object) {
        if (!PlatformDependencyResolver.isBurstCaptureSupported((Camera.Parameters)object)) {
            throw new IllegalStateException("setBurstCaptureParameters():[Burst not supported]");
        }
        if (this.mShutterSoundSetting == ShutterSound.ON && this.mCameraDeviceId == 0) {
            object = ShutterToneGenerator.getSoundFilePath(ShutterToneGenerator.Type.SOUND_BURST_SHUTTER, com.sonyericsson.android.camera.configuration.parameters.ShutterSound.SOUND1);
            this.mCameraExtension.setBurstShutterSoundFilePath((String)object);
        }
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private void prepareMediaRecorder(VideoSavingRequest object, RecorderInterface.RecorderListener object2, boolean bl) {
        Object object3 = this.getCameraInstance();
        if (object3 == null) {
            return;
        }
        object3.unlock();
        object3 = this.mContext;
        Handler handler = this.mUiThreadHandler;
        bl = VideoStabilizer.isIntelligentActive(this.mVideoStabilizerSetting) && bl;
        this.mVideoRecorder = RecorderFactory.create((Context)object3, (RecorderInterface.RecorderListener)object2, handler, 1000, bl);
        object2 = this.mVideoSizeSetting.getVideoProfile().getCamcorderProfile();
        if (object2 == null) {
            throw new RuntimeException("CamcorderProfile is null.");
        }
        object = RecorderParameters.newRecordParameters().setLocation(object.common.location).setMaxDuration((int)object.video.maxDurationMills).setMaxFileSize(object.video.maxFileSizeBytes).setMicrophoneEnabled(this.isMicrophoneEnabled()).setOrientationHint(object.common.orientation).setProfile((CamcorderProfile)object2).setUri(Uri.fromFile(new File(object.getFilePath()))).build();
        if (this.mVideoRecorder.prepare(this.mCamera, (RecorderParameters)object)) return;
        CameraLogger.e("CameraDeviceHandler", "prepareMediaRecorder() : failed");
        this.awaitFinishingRecording();
        throw new RuntimeException("prepareMediaRecorder():[Failed to prepare MediaRecorder.]");
    }

    /*
     * Enabled aggressive block sorting
     */
    private void prepareVideoNrSetting() {
        boolean bl = HardwareCapability.getInstance().getCameraExtensionVersion().isLaterThanOrEqualTo(1, 8);
        boolean bl2 = HardwareCapability.getInstance().isVideoNrSupported(this.mCameraDeviceId);
        boolean bl3 = this.mVideoSizeSetting != VideoSize.FULL_HD_60FPS;
        if (!bl) return;
        if (bl2 && bl3) {
            this.setVideoNr(true);
        }
    }

    private void prepareZoom(Camera camera) {
        this.mOnZoomChangedCallback = new OnZoomChangedCallback();
        camera.setZoomChangeListener(this.mOnZoomChangedCallback);
    }

    private void reconnectCamera() {
        Camera camera = this.getCameraInstance();
        if (camera == null) {
            return;
        }
        try {
            camera.reconnect();
            return;
        }
        catch (IOException var1_2) {
            throw new RuntimeException("reconnectCamera():[Failed to reconnect Camera.]");
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    private void releaseCamera() {
        // MONITORENTER : this
        switch (this.mCurrentDeviceState) {
            case 2: {
                ** GOTO lbl-1000
            }
            case 1: {
                this.mIsImmediateReleaseRequested = true;
                ** GOTO lbl12
            }
            default: lbl-1000: // 2 sources:
            {
                this.isOpenDeviceTaskFinishedSuccessfully();
                this.releaseCameraImmediately();
                this.mIsImmediateReleaseRequested = false;
            }
lbl12: // 3 sources:
            case 0: 
        }
        // MONITOREXIT : this
    }

    private void releaseCameraImmediately() {
        synchronized (this) {
            this.releaseCameraImmediatelyNotSynchronized();
            return;
        }
    }

    private void releaseCameraImmediatelyNotSynchronized() {
        this.stopSceneRecognitionNotSynchronized();
        this.stopFaceDetectionNotSynchronized();
        this.deselectObject();
        new EachCameraStatusPublisher(this.mContext, this.mCameraDeviceId).putDefaultAll().publish();
        new GlobalCameraStatusPublisher(this.mContext).putDefaultAll().publish();
        this.mPreviewRect = null;
        this.mPictureRect = null;
        this.mCamcordRect = null;
        this.mFastCaptureSetting = null;
        this.mShutterSoundSetting = null;
        this.mFlashSetting = null;
        this.mPhotoResolutionSetting = null;
        this.mPhotoCaptureFrameShapeSetting = null;
        this.mPhotoFocusModeSetting = null;
        this.mPhotoStabilizerSetting = null;
        this.mPhotoHdrSetting = null;
        this.mBurstShotSetting = null;
        this.mFaceIdentifySetting = null;
        this.mVideoSizeSetting = null;
        this.mVideoSceneSetting = null;
        this.mVideoFocusModeSetting = null;
        this.mVideoWhiteBalanceSetting = null;
        this.mVideoStabilizerSetting = null;
        this.mVideoMicrophoneSetting = null;
        this.mVideoHdrSetting = null;
        if (this.mGeotagManager != null) {
            this.mGeotagManager.releaseResource();
            this.mGeotagManager.release();
            this.mGeotagManager = null;
        }
        if (this.mFastCaptureOrientation != null) {
            this.mFastCaptureOrientation.disable();
            this.mFastCaptureOrientation = null;
        }
        this.mOpenDeviceThread = null;
        this.mLoadSettingsThread = null;
        this.mContext = null;
        if (this.mCameraExtension != null && this.mCameraDeviceId == 0) {
            this.mCameraExtension.waitForCurrentSavingTaskStackCleared(4000);
            this.mCameraExtension.setBurstShotCallback(null);
            this.mCameraExtension.setBurstStorageFullDetector(null);
        }
        this.mCameraInfo = null;
        if (this.mCamera != null) {
            this.mCamera.setZoomChangeListener(null);
            this.mCamera.setErrorCallback(null);
            this.mCamera.stopPreview();
            Camera camera = this.mCamera;
            this.mCamera = null;
            camera.release();
        }
        if (this.mCameraExtension != null) {
            this.mCameraExtension.release();
            this.mCameraExtension = null;
        }
        this.changePreProcessStateTo(PreProcessState.NOT_STARTED);
        this.mLatestCachedParameters = null;
        this.mIsPreScanSucceeded = false;
        this.mIsLaunchAndCaptureShutterSoundEnabled = false;
        this.mCurrentDeviceState = 0;
    }

    private void resetShutterSound() {
        if (this.mIsLaunchAndCaptureShutterSoundEnabled) {
            this.mLatestCachedParameters.set("key-sony-ext-shuttersound", "/system/media/audio/ui/camera_click.ogg");
            this.trySetParametersToDevice(this.mLatestCachedParameters);
            this.mIsLaunchAndCaptureShutterSoundEnabled = false;
        }
    }

    private void selectDefaultCameraLightSettingsIfSharedPreferencesIsEmpty(Camera.Parameters parameters) {
        if (this.mFlashSetting == null && PlatformDependencyResolver.isFlashLightSupported(parameters)) {
            this.mFlashSetting = Flash.getFlashFromParameterString(PlatformDependencyResolver.getDefaultFlash(parameters));
        }
        if (this.mPhotoLightSetting == null && PlatformDependencyResolver.isPhotoLightSupported(parameters)) {
            this.mPhotoLightSetting = com.sonyericsson.android.camera.configuration.parameters.PhotoLight.getPhotoLightFromParameterString(PlatformDependencyResolver.getDefaultPhotolight(parameters));
        }
    }

    private void sendGoogleAnalyticsEvents(BaseActivity baseActivity) {
        boolean bl = baseActivity.isAlreadyHighTemperature();
        int n = (int)this.mVideoRecorder.getRecordingTimeMillis();
        LocalGoogleAnalyticsUtil.getInstance().sendEventSettings();
        GoogleAnalyticsUtil.getInstance().sendRecordingEvent(Event.CaptureOperation.RECORDING, bl, n, false);
    }

    /*
     * Enabled aggressive block sorting
     */
    private boolean setCameraLight(String object) {
        Camera.Parameters parameters = this.getLatestCachedParameters();
        if (parameters == null) {
            return false;
        }
        parameters.setFlashMode((String)object);
        EachCameraStatusPublisher eachCameraStatusPublisher = new EachCameraStatusPublisher(this.mContext, this.mCameraDeviceId);
        object = "torch".equals(object) ? PhotoLight.Value.ON : PhotoLight.Value.OFF;
        eachCameraStatusPublisher.put(new PhotoLight((PhotoLight.Value)object)).publish();
        return this.trySetParametersToDevice(parameters);
    }

    private void setCommonCaptureParameters(int n, Camera.Parameters parameters) {
        this.setSceneToParameters(n, parameters);
        this.setFocusModeToParameters(n, parameters);
        this.setWhiteBalanceToParameters(n, parameters);
        this.setMeteringToParameters(n, parameters);
        this.setMicrophone();
        this.setVideoHdrToParameters(n, parameters);
        this.setIso(parameters);
        this.setFpsRange(n, parameters);
        this.setRecordingHintToParameters(n, parameters);
        this.setJpegEncodingQuality(2);
        this.setShutterSound(parameters);
        this.setDcModeParameters(parameters);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void setCurrentSettingsToParameters(int n, Camera.Parameters parameters) {
        this.setPreviewPictureAndCamcordSizeToParameters(n, parameters);
        if (this.mPhotoHdrSetting == null) {
            switch (this.mCameraDeviceId) {
                default: {
                    CameraLogger.w("CameraDeviceHandler", "CameraId[" + this.mCameraDeviceId + "] is not supported.");
                    this.mPhotoHdrSetting = Hdr.getDefault(CapturingMode.SCENE_RECOGNITION);
                    break;
                }
                case 0: {
                    this.mPhotoHdrSetting = Hdr.getDefault(CapturingMode.SCENE_RECOGNITION);
                    break;
                }
                case 1: {
                    this.mPhotoHdrSetting = this.isSceneRecognitionSupported() ? Hdr.getDefault(CapturingMode.SUPERIOR_FRONT) : Hdr.getDefault(CapturingMode.FRONT_PHOTO);
                }
            }
        }
        if (this.mPhotoStabilizerSetting == null) {
            switch (this.mCameraDeviceId) {
                default: {
                    CameraLogger.w("CameraDeviceHandler", "CameraId[" + this.mCameraDeviceId + "] is not supported.");
                    this.mPhotoStabilizerSetting = Stabilizer.getDefault(CapturingMode.SCENE_RECOGNITION);
                    break;
                }
                case 0: {
                    this.mPhotoStabilizerSetting = Stabilizer.getDefault(CapturingMode.SCENE_RECOGNITION);
                    break;
                }
                case 1: {
                    this.mPhotoStabilizerSetting = this.isSceneRecognitionSupported() ? Stabilizer.getDefault(CapturingMode.SUPERIOR_FRONT) : Stabilizer.getDefault(CapturingMode.FRONT_PHOTO);
                }
            }
        }
        this.setStabilizerToParameters(n, parameters);
        if (this.mBurstShotSetting == null) {
            this.mBurstShotSetting = BurstShot.getDefault();
        }
        if (this.mBurstShotSetting == BurstShot.HIGH) {
            this.overlayBurstCaptureParameters(n, parameters);
        }
        this.setCommonCaptureParameters(n, parameters);
    }

    private void setDcModeParameters(Camera.Parameters parameters) {
        CommonPlatformDependencyResolver.DcCategory.NORMAL.writeTo(parameters);
    }

    private void setFocusModeToParameters(int n, Camera.Parameters parameters) {
        switch (n) {
            default: {
                throw new IllegalStateException("setFocusModeToParameters():[UnExpected State]");
            }
            case 1: {
                if (this.mPhotoFocusModeSetting != null) {
                    parameters.setFocusMode(this.mPhotoFocusModeSetting.getValue());
                    return;
                }
                parameters.setFocusMode(PlatformDependencyResolver.getDefaultFocusModeForFastCapturePhoto(parameters));
                return;
            }
            case 2: 
        }
        if (this.mVideoFocusModeSetting != null) {
            parameters.setFocusMode(this.mVideoFocusModeSetting.getValueForVideo());
            return;
        }
        parameters.setFocusMode(PlatformDependencyResolver.getDefaultFocusModeForFastCaptureVideo(parameters));
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private void setFpsRange(int n, Camera.Parameters parameters) {
        List<int[]> list;
        if (parameters == null) {
            return;
        }
        int n2 = -1;
        switch (n) {
            default: {
                n = n2;
                break;
            }
            case 1: {
                n = 60;
                break;
            }
            case 2: {
                n = n2;
                if (this.mVideoSizeSetting == null) break;
                n = this.mVideoSizeSetting.getVideoFrameRate();
            }
        }
        if ((list = parameters.getSupportedPreviewFpsRange()) == null) return;
        int[] arrn = CameraDeviceUtil.computePreviewFpsRange(n, list);
        if (arrn.length <= 0) return;
        parameters.setPreviewFpsRange(arrn[0], arrn[1]);
        parameters.setPreviewFrameRate(arrn[1] / 1000);
    }

    private void setIso(Camera.Parameters parameters) {
        if (PlatformDependencyResolver.isIsoSupported(parameters, "auto")) {
            parameters.set("sony-ae-mode", "auto");
        }
    }

    private void setJpegEncodingQuality(int n) {
        this.mLatestCachedParameters.setJpegQuality(MediaSavingConstants.JpegQuality.getPlatformQualityFromCameraProfile(n));
    }

    private void setMeteringToParameters(int n, Camera.Parameters parameters) {
        String string = PlatformDependencyResolver.getDefaultMeteringForFastCapture(parameters);
        if (string != null) {
            parameters.set("sony-metering-mode", string);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void setPictureSize(int n, Camera.Parameters parameters) {
        if (!(this.mPhotoResolutionSetting != null && this.isPictureSizeSupported(this.mPhotoResolutionSetting.getPictureRect(), parameters))) {
            switch (this.mCameraDeviceId) {
                case 0: {
                    if (this.mPhotoCaptureFrameShapeSetting == null) {
                        this.mPhotoCaptureFrameShapeSetting = CaptureFrameShape.getDefaultValue(CapturingMode.SCENE_RECOGNITION);
                    }
                    this.mPhotoResolutionSetting = PlatformDependencyResolver.getDefaultResolutionFrom(this.mContext, this.mPhotoCaptureFrameShapeSetting, parameters, this.mCameraDeviceId);
                }
                default: {
                    break;
                }
                case 1: {
                    if (this.isSceneRecognitionSupported()) {
                        this.mPhotoCaptureFrameShapeSetting = CaptureFrameShape.getDefaultValue(CapturingMode.SUPERIOR_FRONT);
                        this.mPhotoResolutionSetting = PlatformDependencyResolver.getDefaultResolutionFrom(this.mContext, this.mPhotoCaptureFrameShapeSetting, parameters, this.mCameraDeviceId);
                        break;
                    }
                    this.mPhotoResolutionSetting = PlatformDependencyResolver.getDefaultResolution(parameters, this.mContext);
                }
            }
        }
        if (this.mPhotoResolutionSetting != null) {
            this.mPictureRect = this.mPhotoResolutionSetting.getPictureRect();
            parameters.setPictureSize(this.mPictureRect.width(), this.mPictureRect.height());
        }
        CameraDeviceHandler.assertNotNull(this.mPictureRect);
    }

    private void setPreviewPictureAndCamcordSizeToParameters(int n, Camera.Parameters parameters) {
        this.setPictureSize(n, parameters);
        this.setVideoSize(n, parameters);
        this.setPreviewSize(n, parameters);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void setPreviewSize(int n, Camera.Parameters parameters) {
        switch (n) {
            default: {
                throw new IllegalStateException("setPreviewSize():[UnExpected FastCapture]");
            }
            case 1: {
                this.mPreviewRect = PlatformDependencyResolver.getOptimalPreviewSize(this.mContext, parameters, n, this.mPictureRect);
                break;
            }
            case 2: {
                this.mPreviewRect = PlatformDependencyResolver.getOptimalPreviewSize(this.mContext, parameters, n, this.mCamcordRect);
            }
        }
        parameters.setPreviewSize(this.mPreviewRect.width(), this.mPreviewRect.height());
    }

    private void setRecordingHintToParameters(int n, Camera.Parameters parameters) {
        switch (n) {
            default: {
                throw new IllegalStateException("setVideoModeToParameters():[UnExpected State]");
            }
            case 1: {
                this.finishVideoNrSetting();
                parameters.setRecordingHint(false);
                return;
            }
            case 2: 
        }
        this.prepareVideoNrSetting();
        parameters.setRecordingHint(true);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void setSceneToParameters(int n, Camera.Parameters parameters) {
        if (this.mCameraDeviceId == 1) {
            this.setSoftSkin(n, parameters);
            return;
        } else {
            switch (n) {
                default: {
                    throw new IllegalStateException("setSceneToParameters():[UnExpected State]");
                }
                case 1: {
                    String string = PlatformDependencyResolver.getDefaultSceneModeForFastCapture(parameters);
                    if (string == null) return;
                    parameters.setSceneMode(string);
                    return;
                }
                case 2: {
                    if (this.mVideoSceneSetting == null) return;
                    parameters.setSceneMode(this.mVideoSceneSetting.getValue());
                    return;
                }
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void setShutterSound(Camera.Parameters parameters) {
        boolean bl = false;
        boolean bl2 = !this.isShutterSoundOff();
        this.setPhotoShutterSound(bl2);
        bl2 = bl;
        if (!this.isShutterSoundOff()) {
            bl2 = true;
        }
        this.setVideoRecordSound(bl2);
        if (this.mShutterSoundSetting == ShutterSound.ON && this.mFastCaptureSetting == FastCapture.LAUNCH_AND_CAPTURE) {
            this.mLatestCachedParameters.set("key-sony-ext-shuttersound", ShutterToneGenerator.getSoundFilePath(ShutterToneGenerator.Type.SOUND_FAST_CAPTURE_SHUTTER_DONE, com.sonyericsson.android.camera.configuration.parameters.ShutterSound.SOUND1));
            this.mIsLaunchAndCaptureShutterSoundEnabled = true;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private void setSoftSkin(int n, Camera.Parameters parameters) {
        switch (n) {
            default: {
                throw new IllegalStateException("setSoftSkin():[UnExpected State]");
            }
            case 1: {
                List<String> list = parameters.getSupportedSceneModes();
                if (list == null) {
                    return;
                }
                if (PlatformDependencyResolver.isSoftSkinSupported(parameters) && list.contains("portrait")) {
                    SoftSkin softSkin = SoftSkin.ON;
                    if (this.mSoftSkinSetting != null) {
                        softSkin = this.mSoftSkinSetting;
                    }
                    parameters.setSceneMode("auto");
                    parameters.set("sony-soft-skin-level-for-picture", softSkin.getLevel(PlatformDependencyResolver.getSoftSkinMaxLevel(parameters)));
                    return;
                }
                String string = null;
                if (this.mSoftSkinSetting != null) {
                    string = this.mSoftSkinSetting.getScene().getValue();
                } else if (list.contains("soft-skin")) {
                    string = SoftSkin.ON.getScene().getValue();
                }
                if (string == null) return;
                parameters.setSceneMode(string);
                return;
            }
            case 2: 
        }
        String string = PlatformDependencyResolver.getDefaultSceneModeForFastCapture(parameters);
        if (string == null) return;
        parameters.setSceneMode(string);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void setStabilizerToParameters(int n, Camera.Parameters parameters) {
        String string = null;
        switch (n) {
            default: {
                throw new IllegalStateException("setStabilizerToParameters():[UnExpected State]");
            }
            case 1: {
                if (PlatformDependencyResolver.isHdrSupported(parameters)) {
                    string = this.getDependHdrIsValue(this.mPhotoHdrSetting, this.mPhotoStabilizerSetting);
                } else if (PlatformDependencyResolver.isImageStabilizerSupported(parameters)) {
                    string = this.mPhotoStabilizerSetting.getValue();
                }
                if (string != null) {
                    this.setStabilizer(parameters, n, string);
                }
                return;
            }
            case 2: 
        }
        this.setVideoStabilizerToParameters(n, parameters);
    }

    private void setStreamNotificationMute(boolean bl) {
        if (this.mNotificationStreamManager == null) {
            this.mNotificationStreamManager = new NotificationStreamManager(this.mContext);
        }
        this.mNotificationStreamManager.setStreamMute(bl);
    }

    private void setVideoHdrToParameters(int n, Camera.Parameters parameters) {
        switch (n) {
            default: {
                throw new IllegalStateException("setStabilizerToParameters():[UnExpected State]");
            }
            case 1: {
                parameters.set("sony-video-hdr", "off");
                return;
            }
            case 2: 
        }
        if (PlatformDependencyResolver.isVideoHdrSupported(parameters)) {
            if (this.mVideoHdrSetting != null) {
                parameters.set("sony-video-hdr", this.mVideoHdrSetting.getValue());
                return;
            }
            parameters.set("sony-video-hdr", "on");
            return;
        }
        parameters.set("sony-video-hdr", "off");
    }

    private void setVideoNr(boolean bl) {
        if (this.mLatestCachedParameters == null) {
            return;
        }
        if (bl) {
            this.mLatestCachedParameters.set("sony-video-nr", "on");
            return;
        }
        this.mLatestCachedParameters.set("sony-video-nr", "off");
    }

    /*
     * Enabled aggressive block sorting
     */
    private void setVideoSize(int n, Camera.Parameters parameters) {
        if (this.mVideoSizeSetting == null) {
            this.mVideoSizeSetting = PlatformDependencyResolver.getDefaultVideoSize(parameters);
            this.mCamcordRect = this.mVideoSizeSetting != null ? this.mVideoSizeSetting.getVideoRect() : new Rect(0, 0, parameters.getPreviewSize().width, parameters.getPreviewSize().height);
        } else {
            this.mCamcordRect = this.mVideoSizeSetting.getVideoRect();
        }
        parameters.set("video-size", "" + this.mCamcordRect.width() + "x" + this.mCamcordRect.height());
        if (n == 2) {
            parameters.setPictureSize(this.mCamcordRect.width(), this.mCamcordRect.height());
        }
    }

    private void setVideoStabilizerToParameters(int n, Camera.Parameters parameters) {
        if (!PlatformDependencyResolver.isVideoStabilizerSupported(parameters)) {
            return;
        }
        if (this.mVideoStabilizerSetting != null) {
            this.setStabilizer(parameters, n, this.mVideoStabilizerSetting.getValue());
            return;
        }
        VideoStabilizer videoStabilizer = VideoStabilizer.getRecommendedVideoStabilizerValue(this.mCameraDeviceId, this.mVideoSizeSetting);
        this.setStabilizer(parameters, n, videoStabilizer.getValue());
        this.mVideoStabilizerSetting = videoStabilizer;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void setWhiteBalanceToParameters(int n, Camera.Parameters parameters) {
        switch (n) {
            default: {
                throw new IllegalStateException("setWhiteBalanceToParameters():[UnExpected State]");
            }
            case 1: {
                String string = PlatformDependencyResolver.getDefaultWhiteBalanceForFastCapturePhoto(parameters);
                if (string == null) return;
                parameters.setWhiteBalance(string);
                return;
            }
            case 2: {
                if (this.mVideoWhiteBalanceSetting == null) return;
                parameters.setWhiteBalance(this.mVideoWhiteBalanceSetting.getValue());
                return;
            }
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private void startObjectTracking() {
        synchronized (this) {
            block7 : {
                block6 : {
                    if (this.mCameraExtension == null || this.mLatestCachedParameters == null || !PlatformDependencyResolver.isObjectTrackingSuppoted(this.mLatestCachedParameters)) break block6;
                    boolean bl = this.mIsObjectTrackingAlreadyStarted;
                    if (!bl) break block7;
                }
                do {
                    return;
                    break;
                } while (true);
            }
            this.mCameraExtension.setObjectTrackingCallback((CameraExtension.ObjectTrackingCallback)this.mOnObjectTrackedCallback, 75, 100);
            this.mCameraExtension.startObjectTracking();
            this.mIsObjectTrackingAlreadyStarted = true;
            new EachCameraStatusPublisher(this.mContext, this.mCameraDeviceId).put(new ObjectTracking(ObjectTracking.Value.ON)).publish();
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    private void stopFaceDetectionNotSynchronized() {
        if (!(this.mIsFaceDetectionAlreadyStarted && this.mLatestCachedParameters != null && PlatformDependencyResolver.isFaceDetectionSupported(this.mLatestCachedParameters) && this.mCamera != null && this.mCameraExtension != null)) {
            return;
        }
        this.mCameraExtension.setFaceDetectionCallback(null);
        try {
            this.mCamera.stopFaceDetection();
        }
        catch (RuntimeException var1_1) {
            CameraLogger.w("CameraDeviceHandler", ".stopFaceDetection():[stopFaceDetection failed]", var1_1);
        }
        this.mIsFaceDetectionAlreadyStarted = false;
        new EachCameraStatusPublisher(this.mContext, this.mCameraDeviceId).put(new FaceIdentification(FaceIdentification.Value.OFF)).put((FaceIdentification)new FaceDetection(FaceDetection.Value.OFF)).publish();
    }

    private void stopObjectTracking() {
        synchronized (this) {
            this.stopObjectTrackingNotSynchronized();
            return;
        }
    }

    private void stopObjectTrackingNotSynchronized() {
        if (!(this.mCameraExtension != null && this.mLatestCachedParameters != null && PlatformDependencyResolver.isObjectTrackingSuppoted(this.mLatestCachedParameters) && this.mIsObjectTrackingAlreadyStarted)) {
            return;
        }
        this.mCameraExtension.setObjectTrackingCallback(null, 0, 0);
        this.mCameraExtension.stopObjectTracking();
        this.mIsObjectTrackingAlreadyStarted = false;
        new EachCameraStatusPublisher(this.mContext, this.mCameraDeviceId).put(new ObjectTracking(ObjectTracking.Value.OFF)).publish();
    }

    private void stopPreview() {
        if (this.isRecorderWorking() || this.mCamera == null) {
            return;
        }
        this.mCamera.stopPreview();
    }

    /*
     * Enabled aggressive block sorting
     */
    private void stopSceneRecognitionNotSynchronized() {
        if (!(this.mIsSceneRecognitionAlreadyStarted && this.mCameraExtension != null && this.mLatestCachedParameters != null && PlatformDependencyResolver.isSceneRecognitionSupported(this.mLatestCachedParameters))) {
            return;
        }
        this.mCameraExtension.stopSceneRecognition();
        this.mIsSceneRecognitionAlreadyStarted = false;
        new EachCameraStatusPublisher(this.mContext, this.mCameraDeviceId).put(new SceneRecognition(SceneRecognition.Value.OFF)).publish();
    }

    private void stopVideoMetadata() {
        if (HardwareCapability.getInstance().isVideoMetaDataSupported(this.mCameraDeviceId) && this.mCameraExtension != null) {
            this.mCameraExtension.stopVideoMetadata();
            new EachCameraStatusPublisher(this.mContext, this.mCameraDeviceId).put(new Metadata(Metadata.Value.OFF)).publish();
        }
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public void applyCameraLightSetting(int n) {
        Camera.Parameters parameters = this.getLatestCachedParameters();
        if (parameters == null) {
            return;
        }
        if (PlatformDependencyResolver.isFlashLightSupported(parameters)) {
            this.setCameraLight(this.mFlashSetting.getValue());
        } else {
            if (!PlatformDependencyResolver.isPhotoLightSupported(parameters)) return;
            this.setCameraLight(this.mPhotoLightSetting.getValue());
        }
        this.trySetParametersToDevice(parameters);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void applySavingRequest(SavingRequest savingRequest, Camera.Parameters parameters) {
        if (parameters != null) {
            parameters.setRotation(savingRequest.common.orientation);
            parameters.removeGpsData();
            if (savingRequest.common.location != null) {
                double d = savingRequest.common.location.getLatitude();
                double d2 = savingRequest.common.location.getLongitude();
                boolean bl = d != 0.0 || d2 != 0.0;
                if (bl) {
                    parameters.setGpsLatitude(d);
                    parameters.setGpsLongitude(d2);
                    if (savingRequest.common.location.hasAltitude()) {
                        parameters.setGpsAltitude(savingRequest.common.location.getAltitude());
                    }
                    if (savingRequest.common.location.getTime() != 0) {
                        parameters.setGpsTimestamp(savingRequest.common.location.getTime() / 1000);
                    }
                }
            }
            this.trySetParametersToDevice(parameters);
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void autoFocus() {
        if (this.mOnPreAutoFocusCallback != null || this.mCameraExtension == null) {
            return;
        }
        try {
            this.mCameraExtension.startAutoFocus((CameraExtension.AutoFocusCallback)this.mOnAutoFocusCallback, true, true, true);
            return;
        }
        catch (RuntimeException var1_1) {
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public void cancelAutoFocus() {
        if (this.mOnPreAutoFocusCallback != null || this.mCameraExtension == null) {
            return;
        }
        this.mCameraExtension.stopAutoFocus();
    }

    public void captureWhileRecording(PhotoSavingRequest photoSavingRequest) {
        Camera camera = this.getCameraInstance();
        if (camera == null) {
            return;
        }
        if (this.mLatestCachedParameters.isVideoSnapshotSupported()) {
            this.takePicture(photoSavingRequest);
            return;
        }
        this.mPreviewFrameGrabber = new PreviewFrameGrabber(photoSavingRequest);
        this.mPreviewFrameGrabber.setOnPreviewFrameGrabbedListener(new OnPreviewFrameGrabbedCallback(photoSavingRequest));
        this.mPreviewFrameGrabber.requestFrame(camera);
    }

    public void changeBurstShotSettingTo(BurstShot burstShot) {
    }

    /*
     * Enabled aggressive block sorting
     */
    public boolean changeCameraModeTo(int n, boolean bl) {
        Camera camera = this.getCameraInstance();
        if (camera == null) {
            return false;
        }
        this.requestCacheParameters();
        Camera.Parameters parameters = this.getLatestCachedParameters();
        switch (n) {
            default: {
                throw new IllegalStateException("changeCameraModeTo():[preview] [UnExpected camera TYPE]");
            }
            case 1: {
                parameters.setPictureSize(this.mPictureRect.width(), this.mPictureRect.height());
                this.mPreviewRect = PlatformDependencyResolver.getOptimalPreviewSize(this.mContext, parameters, n, this.mPictureRect);
                break;
            }
            case 2: {
                Rect rect = null;
                List<Camera.Size> list = parameters.getSupportedPictureSizes();
                if (list != null) {
                    rect = CameraSize.getOptimalVideoSnapshotSizeFromCamerSizeList(this.mCamcordRect, list);
                }
                if (rect != null) {
                    parameters.setPictureSize(rect.width(), rect.height());
                }
                this.mPreviewRect = PlatformDependencyResolver.getOptimalPreviewSize(this.mContext, parameters, n, this.mCamcordRect);
            }
        }
        parameters.setPreviewSize(this.mPreviewRect.width(), this.mPreviewRect.height());
        if (bl) {
            if (PlatformDependencyResolver.isVideoStabilizerSupported(parameters)) {
                this.setStabilizer(parameters, 2, this.mVideoStabilizerSetting.getValue());
            }
        } else {
            this.setSceneToParameters(n, parameters);
            this.setFocusModeToParameters(n, parameters);
            this.setWhiteBalanceToParameters(n, parameters);
            this.setMeteringToParameters(n, parameters);
            this.setStabilizerToParameters(n, parameters);
        }
        this.setRecordingHintToParameters(n, parameters);
        bl = this.willPreviewBeRestarted();
        if (bl) {
            this.stopPreview();
        }
        this.trySetParametersToDevice(parameters);
        if (bl) {
            camera.startPreview();
        }
        new EachCameraStatusPublisher(this.mContext, this.mCameraDeviceId).putFromParameter(camera.getParameters()).publish();
        return bl;
    }

    /*
     * Enabled aggressive block sorting
     */
    public boolean deselectObject() {
        if (!(this.mIsObjectTrackingAlreadyStarted && this.getCameraInstance() != null && PlatformDependencyResolver.isObjectTrackingSuppoted(this.mLatestCachedParameters))) {
            return false;
        }
        this.mCameraExtension.deselectObject();
        this.stopObjectTracking();
        return true;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    public void finalizeRecording() {
        // MONITORENTER : this
        var2_1 = this.mVideoRecorder;
        if (var2_1 != null) {
            this.disableRecordingSoundIfNeeded();
            this.mVideoRecorder.stop();
            this.mLastVideoSavingRequest.setDuration(this.mVideoRecorder.getRecordingTimeMillis());
        }
        this.mIsRecording = false;
        if (this.mStateMachine != null) {
            this.mStateMachine.onVideoRecordingDone(this.mLastVideoSavingRequest);
        }
        // MONITOREXIT : this
        var1_3 = this.isShutterSoundOff() == false;
        this.setPhotoShutterSound(var1_3);
        this.trySetParametersToDevice(this.mLatestCachedParameters);
        this.setStreamNotificationMute(false);
        if (this.mContext == null) {
            return;
        } else {
            ** GOTO lbl20
        }
        catch (RecorderException var2_2) {
            throw new RuntimeException("stopRecording():[Failed to stop MediaRecorder.]");
        }
lbl20: // 2 sources:
        new EachCameraStatusPublisher(this.mContext, this.mCameraDeviceId).put(new DeviceStatus(DeviceStatus.Value.STILL_PREVIEW)).publish();
    }

    public BurstShot getBurstShotSetting() {
        return this.mBurstShotSetting;
    }

    public Rect getCamcordRect() {
        return this.mCamcordRect;
    }

    public int getCameraDeviceStatus() {
        return this.mCurrentDeviceState;
    }

    public int getCameraId() {
        return this.mCameraDeviceId;
    }

    public com.sonymobile.cameracommon.photoanalyzer.faceidentification.FaceIdentification getFaceIdService() {
        return this.mFaceIdService;
    }

    public Flash getFlashSetting() {
        return this.mFlashSetting;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public Camera.Parameters getLatestCachedParameters() {
        if (this.mCurrentDeviceState != 2) {
            return null;
        }
        if (this.mLatestCachedParameters != null) return this.mLatestCachedParameters;
        Camera camera = this.getCameraInstance();
        if (camera == null) return null;
        this.mLatestCachedParameters = camera.getParameters();
        if (this.mLatestCachedParameters != null) return this.mLatestCachedParameters;
        CameraLogger.e("CameraDeviceHandler", "getLatestCachedParameters: mLatestCachedParameters is null");
        return null;
    }

    public int getMaxSuperResolutionZoom() {
        Camera.Parameters parameters = this.getLatestCachedParameters();
        if (parameters == null) {
            return 0;
        }
        return PlatformDependencyResolver.getMaxSuperResolutionZoom(parameters);
    }

    public int getMaxZoom() {
        Camera.Parameters parameters = this.getLatestCachedParameters();
        if (parameters == null) {
            return 0;
        }
        return parameters.getMaxZoom();
    }

    public Rect getPictureRect() {
        return this.mPictureRect;
    }

    public PreProcessState getPreProcessState() {
        return this.mPreProcessState;
    }

    public Rect getPreviewRect() {
        return this.mPreviewRect;
    }

    public ShutterSound getShutterSound() {
        return this.mShutterSoundSetting;
    }

    public VideoHdr getVideoHdr() {
        return this.mVideoHdrSetting;
    }

    public VideoSize getVideoSize() {
        return this.mVideoSizeSetting;
    }

    public VideoStabilizer getVideoStabilizer() {
        return this.mVideoStabilizerSetting;
    }

    public void initialize() {
        this.mIsImmediateReleaseRequested = false;
    }

    public boolean isCameraDeviceIsOpenedRightNow() {
        if (this.mCurrentDeviceState == 2) {
            return true;
        }
        return false;
    }

    public boolean isCameraDisabled() {
        return this.mIsCameraDisabled;
    }

    public boolean isCameraFront() {
        if (this.mCameraDeviceId == 1) {
            return true;
        }
        return false;
    }

    public boolean isCloseDeviceTaskWorking() {
        if (this.mCloseDeviceFuture != null) {
            return true;
        }
        return false;
    }

    public boolean isImmediateReleaseRequested() {
        return this.mIsImmediateReleaseRequested;
    }

    public boolean isOpenDeviceThreadAlive() {
        if (this.mOpenDeviceThread != null && this.mOpenDeviceThread.isAlive()) {
            return true;
        }
        return false;
    }

    public boolean isPreCaptureAlreadyDone() {
        if (this.mPreProcessState == PreProcessState.PRE_CAPTURE_DONE) {
            return true;
        }
        return false;
    }

    public boolean isPreCaptureOnGoing() {
        if (this.mPreProcessState == PreProcessState.PRE_CAPTURE_STARTED) {
            return true;
        }
        return false;
    }

    public boolean isPreScanAlreadyDone() {
        if (this.mPreProcessState == PreProcessState.PRE_SCAN_DONE || this.mPreProcessState == PreProcessState.PRE_CAPTURE_STARTED || this.mPreProcessState == PreProcessState.PRE_CAPTURE_DONE) {
            return true;
        }
        return false;
    }

    public boolean isPreScanOnGoing() {
        if (this.mPreProcessState == PreProcessState.PRE_SCAN_STARTED) {
            return true;
        }
        return false;
    }

    public boolean isPreScanSucceeded() {
        return this.mIsPreScanSucceeded;
    }

    public boolean isRecorderWorking() {
        if (this.mVideoRecorder == null) {
            CameraLogger.d("CameraDeviceHandler", "Video Recorder: null");
            return false;
        }
        if (!(this.mVideoRecorder.isRecordingOrPaused() || this.mVideoRecorder.isStopping())) {
            CameraLogger.d("CameraDeviceHandler", "Video Recorder: not working");
            return false;
        }
        CameraLogger.d("CameraDeviceHandler", "Video Recorder: working");
        return true;
    }

    public boolean isRecording() {
        return this.mIsRecording;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public boolean isShutterSoundOff() {
        if (this.mShutterSoundSetting == null) return false;
        switch (this.mShutterSoundSetting) {
            default: {
                return false;
            }
            case OFF: 
        }
        return true;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void onError() {
        synchronized (this) {
            this.mCamera.release();
            this.mCamera = null;
            return;
        }
    }

    public void overlaySmartCoverCameraSetting() {
        this.mFlashSetting = Flash.OFF;
        this.mPhotoResolutionSetting = Resolution.EIGHT_MP;
        this.mPhotoFocusModeSetting = FastCapturingCameraUtils.loadParameter(this.mPreferences, 1, this.mCameraDeviceId, ParameterKey.FOCUS_MODE, FocusMode.SINGLE);
        this.mPhotoStabilizerSetting = FastCapturingCameraUtils.loadParameter(this.mPreferences, this.mCameraDeviceId, 1, ParameterKey.STABILIZER, Stabilizer.OFF);
        this.mBurstShotSetting = BurstShot.OFF;
        this.mFaceIdentifySetting = FaceIdentify.OFF;
        this.mSoftSkinSetting = SoftSkin.OFF;
    }

    public void pauseRecording() {
        try {
            if (this.mVideoRecorder != null) {
                this.mVideoRecorder.pause();
            }
            this.setStreamNotificationMute(false);
            return;
        }
        catch (RecorderException var1_1) {
            throw new RuntimeException("pauseRecording():[Failed to pause MediaRecorder.]");
        }
    }

    public void preCapture() {
        Camera camera = this.getCameraInstance();
        if (camera == null) {
            return;
        }
        this.mLastSavingRequest = this.createPreCaptureSavingRequest();
        this.applySavingRequest(this.mLastSavingRequest, this.mLatestCachedParameters);
        this.changePreProcessStateTo(PreProcessState.PRE_CAPTURE_STARTED);
        camera.takePicture(new OnPreCaptureShutterCallback(), null, new OnPreCapturePictureTakenCallback());
        GoogleAnalyticsUtil.getInstance().setUserOperation(Event.CaptureOperation.SHOOTING);
    }

    public void preScan() {
        if (this.mCameraExtension != null) {
            this.mOnPreAutoFocusCallback = new OnPreAutoFocusCallback();
            this.mCameraExtension.startAutoFocus((CameraExtension.AutoFocusCallback)this.mOnPreAutoFocusCallback, true, true, true);
            this.changePreProcessStateTo(PreProcessState.PRE_SCAN_STARTED);
        }
    }

    public void prepareAdditionalFeatures(int n, ExtendedActivity extendedActivity) {
        Camera camera = this.getCameraInstance();
        if (camera == null) {
            return;
        }
        this.prepareZoom(camera);
        switch (n) {
            default: {
                throw new IllegalStateException("prepareAdditionalSettings():[UnExpected State]");
            }
            case 1: {
                this.startFaceDetection();
                this.startFaceIdService(extendedActivity);
                this.startSceneRecognition();
                return;
            }
            case 2: 
        }
        this.startFaceDetection();
        this.startFaceIdService(extendedActivity);
        this.startSceneRecognition();
    }

    public void releaseCameraInstance() {
        CameraLogger.d("CameraDeviceHandler", "releaseCameraInstance():[IN]");
        if (!this.isRecorderWorking()) {
            this.releaseCamera();
            return;
        }
        this.mCloseDeviceExecutorService = Executors.newSingleThreadExecutor();
        this.mCloseDeviceFuture = this.mCloseDeviceExecutorService.submit(new CloseDeviceTask());
    }

    public void releaseVideo() {
        synchronized (this) {
            this.awaitFinishingRecording();
            this.setStreamNotificationMute(false);
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public void requestCacheParameters() {
        Camera camera = this.getCameraInstance();
        if (camera == null) {
            return;
        }
        this.mLatestCachedParameters = camera.getParameters();
        if (this.mLatestCachedParameters != null) return;
        CameraLogger.e("CameraDeviceHandler", "requestCacheParameters: mLatestCachedParameters is null.");
    }

    public void requestContinuousPreviewFrame(boolean bl) {
        Camera camera = this.getCameraInstance();
        if (camera == null) {
            return;
        }
        if (bl) {
            camera.setOneShotPreviewCallback(this.mRequestContinuousPreviewFrameCallback);
            return;
        }
        camera.setOneShotPreviewCallback(null);
    }

    public void requestOnePreviewFrame() {
        Camera camera = this.getCameraInstance();
        if (camera == null) {
            return;
        }
        camera.setOneShotPreviewCallback(this.mRequestOnePreviewFrameCallback);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public void resetFocusMode() {
        if (this.getCameraInstance() == null) {
            return;
        }
        Camera.Parameters parameters = this.getLatestCachedParameters();
        if (parameters == null) return;
        if (parameters.getMaxNumFocusAreas() < 1) return;
        parameters.setFocusMode(PlatformDependencyResolver.getDefaultFocusModeForFastCapturePhoto(parameters));
        parameters.set("sony-focus-area", "center");
        ArrayList<Camera.Area> arrayList = new ArrayList<Camera.Area>();
        arrayList.add(new Camera.Area(new Rect(), 0));
        parameters.setFocusAreas(arrayList);
        if (!this.trySetParametersToDevice(parameters)) return;
    }

    /*
     * Enabled aggressive block sorting
     */
    public void restoreSettingAfterRecording() {
        this.reconnectCamera();
        this.stopVideoMetadata();
        boolean bl = !this.isShutterSoundOff();
        this.setVideoRecordSound(bl);
        this.trySetParametersToDevice(this.getLatestCachedParameters());
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public void resumePhotoLight() {
        Camera.Parameters parameters = this.getLatestCachedParameters();
        if (parameters == null) {
            return;
        }
        if (PlatformDependencyResolver.isFlashLightSupported(parameters)) {
            this.setCameraLight(this.mFlashSetting.getValue());
            return;
        }
        if (!PlatformDependencyResolver.isPhotoLightSupported(parameters)) return;
        this.setCameraLight(this.mPhotoLightSetting.getValue());
    }

    public void resumeRecording() {
        this.setStreamNotificationMute(true);
        try {
            if (this.mVideoRecorder != null) {
                this.mVideoRecorder.resume();
            }
            return;
        }
        catch (RecorderException var1_1) {
            throw new RuntimeException("resumeRecording():[Failed to resume MediaRecorder.]");
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public boolean selectObject(PointF pointF) {
        if (!(this.getCameraInstance() != null && PlatformDependencyResolver.isObjectTrackingSuppoted(this.mLatestCachedParameters))) {
            return false;
        }
        if (this.mIsObjectTrackingAlreadyStarted) {
            this.stopObjectTracking();
        }
        this.startObjectTracking();
        int n = (int)(pointF.x * (float)this.mPreviewRect.width());
        int n2 = (int)(pointF.y * (float)this.mPreviewRect.height());
        this.mCameraExtension.selectObject(n, n2);
        return true;
    }

    public boolean setAdditionalSettings(ParameterKey object, ParameterValue parameterValue) {
        boolean bl = true;
        switch (.$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterKey[object.ordinal()]) {
            default: {
                bl = false;
            }
            case 4: {
                return bl;
            }
            case 1: {
                this.mPhotoHdrSetting = (Hdr)parameterValue;
                object = this.getLatestCachedParameters();
                this.setStabilizer((Camera.Parameters)object, 1, this.mPhotoHdrSetting.getValue());
                return this.trySetParametersToDevice((Camera.Parameters)object);
            }
            case 2: {
                this.mPhotoStabilizerSetting = (Stabilizer)parameterValue;
                object = this.getLatestCachedParameters();
                this.setStabilizer((Camera.Parameters)object, 1, this.mPhotoStabilizerSetting.getValue());
                return this.trySetParametersToDevice((Camera.Parameters)object);
            }
            case 3: {
                this.mFlashSetting = (Flash)parameterValue;
                return this.setCameraLight(this.mFlashSetting.getValue());
            }
            case 5: 
        }
        this.mPhotoLightSetting = (com.sonyericsson.android.camera.configuration.parameters.PhotoLight)parameterValue;
        return this.setCameraLight(this.mPhotoLightSetting.getValue());
    }

    public void setErrorCallback(Camera.ErrorCallback errorCallback) {
        this.mErrorCallback = errorCallback;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public void setFocusPosition(PointF object) {
        if (this.getCameraInstance() == null) {
            return;
        }
        Camera.Parameters parameters = this.getLatestCachedParameters();
        if (parameters == null) return;
        if (parameters.getMaxNumFocusAreas() < 1) return;
        int n = (int)(object.x * 2000.0f - 1000.0f);
        int n2 = (int)(object.y * 2000.0f - 1000.0f);
        object = new Camera.Area(new Rect(n - 50, n2 - 50, n + 50, n2 + 50), 1000);
        if (!new Rect(-1000, -1000, 1000, 1000).contains(object.rect)) return;
        parameters.set("sony-focus-area", "user");
        ArrayList<Camera.Area> arrayList = new ArrayList<Camera.Area>();
        arrayList.add((Camera.Area)object);
        parameters.setFocusAreas(arrayList);
        if (!this.trySetParametersToDevice(parameters)) return;
    }

    public void setMicrophone() {
        if (this.mVideoMicrophoneSetting == null) {
            this.mVideoMicrophoneSetting = Microphone.ON;
        }
    }

    void setModeLessBurstPreviewPictureAndCamcordSizeToParameters(int n, Camera.Parameters parameters) {
        this.mPictureRect = PlatformDependencyResolver.getBurstPictureSizeAccordingTo(parameters).getPictureRect();
        parameters.setPictureSize(this.mPictureRect.width(), this.mPictureRect.height());
        this.setVideoSize(n, parameters);
        this.setPreviewSize(n, parameters);
    }

    void setModeLessBurstStabilizerToParameters(int n, Camera.Parameters parameters) {
        switch (n) {
            default: {
                throw new IllegalStateException("setBurstCaptureStabilizerToParameters():[UnExpected State]");
            }
            case 1: {
                this.setStabilizer(parameters, n, "off");
                return;
            }
            case 2: 
        }
        this.setVideoStabilizerToParameters(n, parameters);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setPhotoHdrSettings(ParameterValue parameterValue) {
        Camera.Parameters parameters = this.getLatestCachedParameters();
        if (!(parameters != null && PlatformDependencyResolver.isHdrSupported(parameters))) {
            return;
        }
        this.mPhotoHdrSetting = (Hdr)parameterValue;
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setPhotoShutterSound(boolean bl) {
        if (this.mCamera == null || 17 > Build.VERSION.SDK_INT) {
            return;
        }
        if (bl) {
            this.mLatestCachedParameters.set("key-sony-ext-shuttersound", "/system/media/audio/ui/camera_click.ogg");
            return;
        }
        this.mLatestCachedParameters.set("key-sony-ext-shuttersound", ShutterToneGenerator.getSoundFilePath(ShutterToneGenerator.Type.SOUND_OFF, com.sonyericsson.android.camera.configuration.parameters.ShutterSound.OFF));
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public void setSelectedFacePosition(int n, int n2) {
        synchronized (this) {
            block6 : {
                CameraExtension cameraExtension = this.mCameraExtension;
                if (cameraExtension != null) break block6;
                do {
                    return;
                    break;
                } while (true);
            }
            this.mCameraExtension.setSelectFacePos(n, n2);
            return;
        }
    }

    public void setStabilizer(Camera.Parameters parameters, int n, String string) {
        if (n == 2) {
            parameters.set("sony-is", "off");
            parameters.set("sony-vs", string);
            return;
        }
        parameters.set("sony-is", string);
        parameters.set("sony-vs", "off");
    }

    public void setStateMachine(StateMachine stateMachine) {
        this.mStateMachine = stateMachine;
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setTorch(boolean bl) {
        Camera.Parameters parameters = this.getLatestCachedParameters();
        if (parameters == null) {
            CameraLogger.e("CameraDeviceHandler", "setTorch: params is null.");
            return;
        }
        String string = bl ? "torch" : "off";
        parameters.setFlashMode(string);
        this.trySetParametersToDevice(parameters);
    }

    public void setVideoRecordSound(boolean bl) {
        if (this.mCamera == null) {
            return;
        }
        if (bl) {
            this.mLatestCachedParameters.set("key-sony-ext-recordingsound", "/system/media/audio/ui/VideoRecord.ogg");
            return;
        }
        this.mLatestCachedParameters.set("key-sony-ext-recordingsound", ShutterToneGenerator.getSoundFilePath(ShutterToneGenerator.Type.SOUND_OFF, com.sonyericsson.android.camera.configuration.parameters.ShutterSound.OFF));
    }

    public int startBurstCapture(CameraExtension.FilePathGenerator filePathGenerator, CameraExtension.MediaProviderUpdator mediaProviderUpdator) {
        this.mLatestCachedParameters.set("sony-burst-shot", "on");
        int n = PlatformDependencyResolver.getBurstFrameRate(this.mLatestCachedParameters, this.mContext);
        this.mLatestCachedParameters.set("sony-burst-shot-frame-rate", n);
        this.setJpegEncodingQuality(1);
        this.trySetParametersToDevice(this.mLatestCachedParameters);
        this.mCameraExtension.setBurstShotCallback((CameraExtension.BurstShotCallback)new OnBurstShotCallback());
        this.mCameraExtension.setBurstStorageFullDetector((CameraExtension.StorageFullDetector)new BurstStorageFullDetector());
        this.mLatestBurstId = this.mCameraExtension.startBurstShot(filePathGenerator, mediaProviderUpdator);
        new EachCameraStatusPublisher(this.mContext, this.mCameraDeviceId).put(new BurstShooting(BurstShooting.Value.ON)).publish();
        return this.mLatestBurstId;
    }

    /*
     * Exception decompiling
     */
    public void startCameraOpen(Context var1_1, int var2_2, FastCapture var3_3, boolean var4_4) {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // org.benf.cfr.reader.util.ConfusedCFRException: First case is not immediately after switch.
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.examineSwitchContiguity(SwitchReplacer.java:361)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.replaceRawSwitches(SwitchReplacer.java:62)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:415)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:213)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:158)
        // org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:91)
        // org.benf.cfr.reader.entities.Method.analyse(Method.java:353)
        // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:731)
        // org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:663)
        // org.benf.cfr.reader.Main.doJar(Main.java:126)
        // org.benf.cfr.reader.Main.main(Main.java:178)
        throw new IllegalStateException("Decompilation failed");
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void startFaceDetection() {
        synchronized (this) {
            boolean bl = this.mIsFaceDetectionAlreadyStarted;
            if (!bl && this.mLatestCachedParameters != null && PlatformDependencyResolver.isFaceDetectionSupported(this.mLatestCachedParameters) && this.mCamera != null && this.mCameraExtension != null) {
                this.mCameraExtension.setFaceDetectionCallback((CameraExtension.FaceDetectionCallback)this.mOnFaceDetectionCallback);
                this.mCamera.startFaceDetection();
                this.mIsFaceDetectionAlreadyStarted = true;
                if (this.mFaceIdentifySetting == null) {
                    new EachCameraStatusPublisher(this.mContext, this.mCameraDeviceId).put(new FaceDetection(FaceDetection.Value.ON)).publish();
                } else {
                    EachCameraStatusPublisher eachCameraStatusPublisher = new EachCameraStatusPublisher(this.mContext, this.mCameraDeviceId);
                    FaceIdentification.Value value = FaceIdentify.ON.getValue().equals(this.mFaceIdentifySetting.getValue()) ? FaceIdentification.Value.ON : FaceIdentification.Value.OFF;
                    eachCameraStatusPublisher.put(new FaceIdentification(value)).put((FaceIdentification)new FaceDetection(FaceDetection.Value.ON)).publish();
                }
            }
            return;
        }
    }

    public void startFaceIdService(Activity activity) {
        if (this.getFaceIdentify() == FaceIdentify.ON && this.mFaceIdService == null) {
            this.mFaceIdService = FaceIdentificationFactory.createNewInstance(activity);
        }
    }

    public void startLiveViewFinder(SurfaceHolder surfaceHolder) {
        Camera camera = this.getCameraInstance();
        if (camera == null) {
            return;
        }
        if (surfaceHolder == null) {
            CameraLogger.e("CameraDeviceHandler", "Camera.setPreviewDisplay() failed. Because surfaceHolder is null.");
            return;
        }
        try {
            camera.setPreviewDisplay(surfaceHolder);
            return;
        }
        catch (IOException var1_2) {
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void startPreview() {
        Camera camera = this.getCameraInstance();
        if (camera == null) return;
        try {
            camera.startPreview();
            return;
        }
        catch (RuntimeException var1_2) {
            if (this.mStateMachine == null) return;
            this.mStateMachine.onDeviceError(StateMachine.ErrorCode.ERROR_ON_START_PREVIEW, var1_2);
            return;
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    public void startRecording(VideoSavingRequest object, RecorderInterface.RecorderListener object2) {
        bl = true;
        this.setPhotoShutterSound(false);
        this.setFpsRange(2, this.getLatestCachedParameters());
        this.trySetParametersToDevice(this.getLatestCachedParameters());
        this.mIsLaunchAndCaptureShutterSoundEnabled = false;
        this.setStreamNotificationMute(true);
        // MONITORENTER : this
        this.mLastVideoSavingRequest = object;
        bl2 = this.isShutterSoundOff() == false;
        this.prepareMediaRecorder((VideoSavingRequest)object, (RecorderInterface.RecorderListener)object2, bl2);
        if (this.mVideoRecorder != null) {
            if (this.mCameraExtension != null && HardwareCapability.getInstance().isVideoMetaDataSupported(this.mCameraDeviceId)) {
                this.mCameraExtension.startVideoMetadata();
                new EachCameraStatusPublisher(this.mContext, this.mCameraDeviceId).put(new Metadata(Metadata.Value.ON)).publish();
            }
            this.mVideoRecorder.start();
            this.mIsRecording = true;
        }
        if ((object = this.getCameraInstance()) != null) {
            new EachCameraStatusPublisher(this.mContext, this.mCameraDeviceId).putFromParameter(object.getParameters()).put(new DeviceStatus(DeviceStatus.Value.VIDEO_RECORDING)).publish();
            // MONITOREXIT : this
            return;
        } else {
            ** GOTO lbl43
        }
        catch (RecorderException recorderException) {
            CameraLogger.w("CameraDeviceHandler", "mMediaRecorder.start() fail.");
            object2 = this.getCameraInstance();
            if (object2 != null) {
                CameraLogger.w("CameraDeviceHandler", "Camera.lock() after mMediaRecorder.start() fail.");
                object2.lock();
            }
            this.releaseVideo();
            bl2 = this.isShutterSoundOff() == false ? bl : false;
            this.setPhotoShutterSound(bl2);
            object2 = this.mLastVideoSavingRequest.getFilePath();
            if (object2 == null) throw new RuntimeException(recorderException);
            try {
                object2 = new File(this.mLastVideoSavingRequest.getFilePath());
                if (object2.exists() == false) throw new RuntimeException(recorderException);
                if (object2.isFile() == false) throw new RuntimeException(recorderException);
                if (object2.delete() != false) throw new RuntimeException(recorderException);
                CameraLogger.e("CameraDeviceHandler", "videoFile.delete(): [Unable to delete empty video file.]");
            }
            catch (Exception var2_4) {
                CameraLogger.e("CameraDeviceHandler", "startRecording: [Unable to delete empty media file.]");
                throw new RuntimeException(recorderException);
            }
            throw new RuntimeException(recorderException);
        }
lbl43: // 2 sources:
        new EachCameraStatusPublisher(this.mContext, this.mCameraDeviceId).put(new DeviceStatus(DeviceStatus.Value.VIDEO_RECORDING)).publish();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     */
    public void startSceneRecognition() {
        synchronized (this) {
            boolean bl = this.mIsSceneRecognitionAlreadyStarted;
            if (!bl && this.mCameraExtension != null && this.mLatestCachedParameters != null && PlatformDependencyResolver.isSceneRecognitionSupported(this.mLatestCachedParameters)) {
                this.mCameraExtension.startSceneRecognition((CameraExtension.SceneRecognitionCallback)this.mOnSceneModeChangedCallback);
                this.mIsSceneRecognitionAlreadyStarted = true;
                new EachCameraStatusPublisher(this.mContext, this.mCameraDeviceId).put(new SceneRecognition(SceneRecognition.Value.ON)).publish();
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public void startSmoothZoom(int n) {
        Camera camera;
        if (this.mOnZoomChangedCallback == null || (camera = this.getCameraInstance()) == null) {
            return;
        }
        camera.startSmoothZoom(n);
    }

    public int stopBurstCapture() {
        if (this.mCameraExtension == null) {
            return -1;
        }
        this.mCameraExtension.stopBurstShot();
        this.mLatestCachedParameters.set("sony-burst-shot", "off");
        this.setJpegEncodingQuality(2);
        this.trySetParametersToDevice(this.mLatestCachedParameters);
        new EachCameraStatusPublisher(this.mContext, this.mCameraDeviceId).put(new BurstShooting(BurstShooting.Value.OFF)).publish();
        return this.mLatestBurstId;
    }

    public void stopFaceDetection() {
        synchronized (this) {
            this.stopFaceDetectionNotSynchronized();
            return;
        }
    }

    public void stopFaceIdService() {
        if (this.mFaceIdService != null) {
            this.mFaceIdService.release();
            this.mFaceIdService = null;
        }
    }

    public void stopLiveViewFinder() {
        this.stopFaceDetection();
        this.stopSceneRecognition();
        this.stopPreview();
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    public void stopRecording(BaseActivity var1_1) {
        // MONITORENTER : this
        var2_3 = this.mVideoRecorder;
        if (var2_3 == null) ** GOTO lbl8
        try {
            this.disableRecordingSoundIfNeeded();
            this.mVideoRecorder.stop();
            this.sendGoogleAnalyticsEvents(var1_1);
lbl8: // 2 sources:
            // MONITOREXIT : this
            return;
        }
        catch (RecorderException var1_2) {
            throw new RuntimeException("stopRecording():[Failed to stop MediaRecorder.]");
        }
    }

    public void stopSceneRecognition() {
        synchronized (this) {
            this.stopSceneRecognitionNotSynchronized();
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public void stopSmoothZoom() {
        Camera camera;
        if (this.mOnZoomChangedCallback == null || (camera = this.getCameraInstance()) == null) {
            return;
        }
        camera.stopSmoothZoom();
        this.requestCacheParameters();
    }

    /*
     * Enabled aggressive block sorting
     */
    public void suspendPhotoLight() {
        Camera.Parameters parameters = this.getLatestCachedParameters();
        if (parameters == null) return;
        if (PlatformDependencyResolver.isFlashLightSupported(parameters)) {
            if (this.mFlashSetting != Flash.LED_ON) return;
            {
                this.setCameraLight(Flash.LED_OFF.getValue());
                return;
            }
        }
        if (!(PlatformDependencyResolver.isPhotoLightSupported(parameters) && this.mPhotoLightSetting == com.sonyericsson.android.camera.configuration.parameters.PhotoLight.ON)) {
            return;
        }
        this.setCameraLight(com.sonyericsson.android.camera.configuration.parameters.PhotoLight.OFF.getValue());
    }

    /*
     * Enabled aggressive block sorting
     */
    public void takePicture(PhotoSavingRequest object) {
        Object object2 = this.getCameraInstance();
        if (object2 == null) {
            return;
        }
        if (this.mIsLaunchAndCaptureShutterSoundEnabled) {
            this.resetShutterSound();
        }
        this.mLastSavingRequest = object;
        object2.takePicture(this.mOnShutterCallback, null, this.mOnPictureTakenCallback);
        object2 = new EachCameraStatusPublisher(this.mContext, this.mCameraDeviceId);
        object = object.common.savedFileType == SavingTaskManager.SavedFileType.PHOTO_DURING_REC ? DeviceStatus.Value.PICTURE_TAKING_DURING_VIDEO_RECORDING : DeviceStatus.Value.PICTURE_TAKING;
        object2.put(new DeviceStatus((DeviceStatus.Value)object)).publish();
    }

    public boolean trySetParametersToDevice(Camera.Parameters parameters) {
        Camera camera = this.getCameraInstance();
        if (camera == null) {
            return false;
        }
        try {
            CameraParameterValidator.validate(this.mContext, 2131099648, 2131099649, parameters);
            this.doSetParametersToDevice(camera, this.mLatestCachedParameters);
            this.mLatestCachedParameters = camera.getParameters();
            return true;
        }
        catch (RuntimeException var1_2) {
            CameraLogger.e("CameraDeviceHandler", ".trySetParametersToDevice():[RuntimeException:Failed to setParameters()]");
            CameraLogger.e("CameraDeviceHandler", ".trySetParametersToDevice():[mIsRecording = " + this.mIsRecording + "]");
            this.mLatestCachedParameters = null;
            return false;
        }
    }

    public boolean waitForCameraInitialization() {
        if (this.getCameraInstance() != null) {
            return true;
        }
        return false;
    }

    public boolean willPreviewBeRestarted() {
        Camera.Parameters parameters = this.getLatestCachedParameters();
        if (!PlatformDependencyResolver.getOptimalPreviewSize(this.mContext, parameters, 1, this.mPictureRect).equals(PlatformDependencyResolver.getOptimalPreviewSize(this.mContext, parameters, 2, this.mCamcordRect))) {
            return true;
        }
        return false;
    }

    /*
     * Failed to analyse overrides
     */
    class BurstStorageFullDetector
    implements CameraExtension.StorageFullDetector {
        BurstStorageFullDetector() {
        }

        public boolean isCurrentStorageFull() {
            if (CameraDeviceHandler.this.mStateMachine != null) {
                return CameraDeviceHandler.this.mStateMachine.isStorageFull();
            }
            return false;
        }
    }

    private class CloseDeviceTask
    implements Runnable {
        private CloseDeviceTask() {
        }

        @Override
        public void run() {
            CameraDeviceHandler.this.awaitFinishingRecording();
            CameraDeviceHandler.this.restoreSettingAfterRecording();
            CameraDeviceHandler.this.releaseCamera();
        }
    }

    private class FastCaptureOrientation
    extends OrientationEventListener {
        private int mOrientation;

        FastCaptureOrientation(Context context) {
            super(context);
            this.mOrientation = -1;
        }

        int getOrientation() {
            int n = RotationUtil.getNormalizedRotation(this.mOrientation);
            switch (CameraDeviceHandler.access$3500((CameraDeviceHandler)CameraDeviceHandler.this).facing) {
                default: {
                    return (CameraDeviceHandler.access$3500((CameraDeviceHandler)CameraDeviceHandler.this).orientation + n) % 360;
                }
                case 0: {
                    return (CameraDeviceHandler.access$3500((CameraDeviceHandler)CameraDeviceHandler.this).orientation + n) % 360;
                }
                case 1: 
            }
            return (CameraDeviceHandler.access$3500((CameraDeviceHandler)CameraDeviceHandler.this).orientation + 360 - n) % 360;
        }

        @Override
        public void onOrientationChanged(int n) {
            this.mOrientation = n;
        }
    }

    private class LoadSettingsThread
    extends Thread {
        private LoadSettingsThread() {
        }

        @Override
        public void run() {
            CameraDeviceHandler.this.loadSettings();
            if (CameraDeviceHandler.this.mFastCaptureSetting == FastCapture.LAUNCH_AND_CAPTURE) {
                if (PresetConfigurationResolver.isGeoTagEnabled(CameraDeviceHandler.this.mCommonSettings.get(CommonSettingKey.GEO_TAG), CameraDeviceHandler.this.mContext)) {
                    CameraDeviceHandler.this.mGeotagManager = new GeotagManager(CameraDeviceHandler.this.mContext);
                    CameraDeviceHandler.this.mGeotagManager.assignResource();
                    CameraDeviceHandler.this.mUiThreadHandler.post(new Runnable(){

                        @Override
                        public void run() {
                            if (CameraDeviceHandler.this.mContext != null && CameraDeviceHandler.this.mGeotagManager != null) {
                                CameraDeviceHandler.this.mGeotagManager.startLocationUpdates(LocationSettingsReader.isLocationProviderAllowed(CameraDeviceHandler.this.mContext, "gps"), LocationSettingsReader.isLocationProviderAllowed(CameraDeviceHandler.this.mContext, "network"));
                            }
                        }
                    });
                }
                CameraDeviceHandler.this.mFastCaptureOrientation = new FastCaptureOrientation(CameraDeviceHandler.this.mContext);
                CameraDeviceHandler.this.mFastCaptureOrientation.enable();
            }
            if (CameraDeviceHandler.this.mIsSmartCoverCamera) {
                CameraDeviceHandler.this.overlaySmartCoverCameraSetting();
            }
        }

    }

    /*
     * Failed to analyse overrides
     */
    class OnAutoFocusCallback
    implements CameraExtension.AutoFocusCallback {
        OnAutoFocusCallback() {
        }

        public void onAutoFocus(CameraExtension.AutoFocusResult autoFocusResult) {
            if (CameraDeviceHandler.this.mStateMachine != null) {
                CameraDeviceHandler.this.mStateMachine.onAutoFocusDone(autoFocusResult.isFocused());
            }
        }
    }

    /*
     * Failed to analyse overrides
     */
    class OnBurstShotCallback
    implements CameraExtension.BurstShotCallback {
        OnBurstShotCallback() {
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        public void onBurstFrameDropped(CameraExtension.BurstShotResult burstShotResult) {
            if (CameraDeviceHandler.this.mStateMachine == null) return;
            switch (burstShotResult.mErrorCode) {
                default: {
                    CameraLogger.e("CameraDeviceHandler", "OnBurstFrameDropped():[UnExpected Error] [ErrorCode=" + burstShotResult.mErrorCode + "]");
                    return;
                }
                case 1: 
            }
            CameraDeviceHandler.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_STORAGE_ERROR, new Object[0]);
        }

        public void onBurstGroupStoreCompleted(CameraExtension.BurstShotResult burstShotResult) {
            if (CameraDeviceHandler.this.mStateMachine != null) {
                CameraDeviceHandler.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_ON_BURST_GROUP_STORE_COMPLETED, new Object[]{burstShotResult});
            }
        }

        public void onBurstPictureStoreCompleted(CameraExtension.BurstShotResult burstShotResult) {
            if (CameraDeviceHandler.this.mStateMachine != null) {
                CameraDeviceHandler.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_ON_BURST_STORE_COMPLETED, new Object[0]);
            }
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        public void onBurstShutterDone(CameraExtension.BurstShotResult burstShotResult) {
            if (CameraDeviceHandler.this.mStateMachine == null) return;
            switch (burstShotResult.mErrorCode) {
                default: {
                    CameraLogger.e("CameraDeviceHandler", "OnBurstShutterDone():[UnExpected Error] [ErrorCode=" + burstShotResult.mErrorCode + "]");
                    return;
                }
                case 0: {
                    CameraDeviceHandler.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_ON_BURST_SHUTTER_DONE, new Object[]{burstShotResult});
                    return;
                }
                case 2: 
            }
            CameraDeviceHandler.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_STORAGE_ERROR, new Object[0]);
        }
    }

    /*
     * Failed to analyse overrides
     */
    class OnFaceDetectionCallback
    implements CameraExtension.FaceDetectionCallback {
        OnFaceDetectionCallback() {
        }

        public void onFaceDetection(CameraExtension.FaceDetectionResult faceDetectionResult) {
            if (CameraDeviceHandler.this.mStateMachine == null || faceDetectionResult == null) {
                return;
            }
            CameraDeviceHandler.this.mStateMachine.onFaceDetected(faceDetectionResult);
        }
    }

    /*
     * Failed to analyse overrides
     */
    class OnObjectTrackedCallback
    implements CameraExtension.ObjectTrackingCallback {
        OnObjectTrackedCallback() {
        }

        public void onObjectTracked(CameraExtension.ObjectTrackingResult objectTrackingResult) {
            if (CameraDeviceHandler.this.mStateMachine == null || objectTrackingResult == null) {
                return;
            }
            CameraDeviceHandler.this.mStateMachine.onObjectTracked(objectTrackingResult);
        }
    }

    class OnPictureTakenCallback
    implements Camera.PictureCallback {
        OnPictureTakenCallback() {
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void onPictureTaken(byte[] object, Camera object2) {
            TestEventSender.onPictureTaken();
            if (CameraDeviceHandler.this.mStateMachine != null) {
                CameraDeviceHandler.this.mStateMachine.onTakePictureDone((byte[])object, CameraDeviceHandler.this.mLastSavingRequest);
            }
            object2 = new EachCameraStatusPublisher(CameraDeviceHandler.this.mContext, CameraDeviceHandler.this.mCameraDeviceId);
            object = CameraDeviceHandler.this.mVideoRecorder == null ? DeviceStatus.Value.STILL_PREVIEW : DeviceStatus.Value.VIDEO_RECORDING;
            object2.put(new DeviceStatus((DeviceStatus.Value)object)).publish();
        }
    }

    /*
     * Failed to analyse overrides
     */
    class OnPreAutoFocusCallback
    implements CameraExtension.AutoFocusCallback {
        OnPreAutoFocusCallback() {
        }

        public void onAutoFocus(CameraExtension.AutoFocusResult autoFocusResult) {
            CameraDeviceHandler.this.mOnPreAutoFocusCallback = null;
            CameraDeviceHandler.this.changePreProcessStateTo(PreProcessState.PRE_SCAN_DONE);
            CameraDeviceHandler.this.mIsPreScanSucceeded = autoFocusResult.isFocused();
            if (CameraDeviceHandler.this.mStateMachine != null) {
                if (!CameraDeviceHandler.this.mIsPreScanSucceeded) {
                    CameraDeviceHandler.this.resetShutterSound();
                }
                CameraDeviceHandler.this.mStateMachine.onInitialAutoFocusDone(autoFocusResult.isFocused());
            }
        }
    }

    class OnPreCapturePictureTakenCallback
    implements Camera.PictureCallback {
        OnPreCapturePictureTakenCallback() {
        }

        /*
         * Loose catch block
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         * Lifted jumps to return sites
         */
        @Override
        public void onPictureTaken(byte[] arrby, Camera camera) {
            MeasurePerformance.measureTime(MeasurePerformance.PerformanceIds.STOT_TO_SHOT, false);
            MeasurePerformance.outResult();
            MeasurePerformance.measureTime(MeasurePerformance.PerformanceIds.STOT_TO_SHOT, true);
            CameraDeviceHandler.this.changePreProcessStateTo(PreProcessState.PRE_CAPTURE_DONE);
            camera = CameraDeviceHandler.this.getCameraInstance();
            if (camera != null) {
                camera.startPreview();
            }
            if (CameraDeviceHandler.this.mStateMachine == null) return;
            CameraDeviceHandler.this.mStateMachine.onPreTakePictureDone(arrby, CameraDeviceHandler.this.mLastSavingRequest);
            return;
            catch (RuntimeException runtimeException) {
                if (CameraDeviceHandler.this.mStateMachine == null) return;
                CameraDeviceHandler.this.mStateMachine.onDeviceError(StateMachine.ErrorCode.ERROR_ON_START_PREVIEW, runtimeException);
                return;
            }
        }
    }

    class OnPreCaptureShutterCallback
    implements Camera.ShutterCallback {
        OnPreCaptureShutterCallback() {
        }

        @Override
        public void onShutter() {
            if (CameraDeviceHandler.this.mStateMachine != null) {
                CameraDeviceHandler.this.mStateMachine.onPreShutterDone(CameraDeviceHandler.this.mLastSavingRequest);
            }
        }
    }

    private class OnPreviewFrameGrabbedCallback
    implements PreviewFrameGrabber.OnPreviewFrameGrabbedListener {
        private final PhotoSavingRequest mPreviewFrameRequest;

        public OnPreviewFrameGrabbedCallback(PhotoSavingRequest photoSavingRequest) {
            this.mPreviewFrameRequest = photoSavingRequest;
        }

        @Override
        public void onPreviewFrameGrabbed(PreviewFrameGrabber previewFrameGrabber, byte[] arrby) {
            if (CameraDeviceHandler.this.mStateMachine != null) {
                CameraDeviceHandler.this.mStateMachine.onTakePictureDone(arrby, this.mPreviewFrameRequest);
            }
        }

        @Override
        public void onPreviewShutterDone() {
            if (CameraDeviceHandler.this.mStateMachine != null) {
                CameraDeviceHandler.this.mStateMachine.onShutterDone(this.mPreviewFrameRequest);
            }
        }
    }

    /*
     * Failed to analyse overrides
     */
    class OnSceneModeChangedCallback
    implements CameraExtension.SceneRecognitionCallback {
        OnSceneModeChangedCallback() {
        }

        /*
         * Enabled aggressive block sorting
         */
        public void onSceneModeChanged(CameraExtension.SceneRecognitionResult sceneRecognitionResult) {
            if (sceneRecognitionResult == null || CameraDeviceHandler.this.mStateMachine == null) {
                return;
            }
            CameraDeviceHandler.this.mStateMachine.onSceneModeChanged(sceneRecognitionResult);
        }
    }

    class OnShutterCallback
    implements Camera.ShutterCallback {
        OnShutterCallback() {
        }

        @Override
        public void onShutter() {
            MeasurePerformance.measureTime(MeasurePerformance.PerformanceIds.STOT_TO_SHOT, false);
            MeasurePerformance.outResult();
            MeasurePerformance.measureTime(MeasurePerformance.PerformanceIds.STOT_TO_SHOT, true);
            if (CameraDeviceHandler.this.mStateMachine != null) {
                CameraDeviceHandler.this.mStateMachine.onShutterDone(CameraDeviceHandler.this.mLastSavingRequest);
            }
        }
    }

    public class OnZoomChangedCallback
    implements Camera.OnZoomChangeListener {
        @Override
        public void onZoomChange(int n, boolean bl, Camera camera) {
            CameraDeviceHandler.this.getLatestCachedParameters().setZoom(n);
            if (CameraDeviceHandler.this.mStateMachine != null) {
                CameraDeviceHandler.this.mStateMachine.onZoomChange(n, bl, camera);
            }
        }
    }

    private class OpenDeviceThread
    extends Thread {
        private static final String TAG = "OpenDeviceThread";
        private volatile boolean mIsSuccess;

        private OpenDeviceThread() {
            this.mIsSuccess = false;
        }

        public boolean isSuccess() {
            return this.mIsSuccess;
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         * Lifted jumps to return sites
         */
        @Override
        public void run() {
            MeasurePerformance.measureTime(MeasurePerformance.PerformanceIds.OPEN_CAMERA_DEVICE_TASK, true);
            if (!CameraDeviceHandler.this.openCamera()) {
                return;
            }
            CameraDeviceHandler.this.mLatestCachedParameters = CameraDeviceHandler.this.mCamera.getParameters();
            if (CameraDeviceHandler.this.mLatestCachedParameters == null) {
                CameraLogger.e("OpenDeviceThread", "run: mLatestCachedParameters is null.");
                return;
            }
            try {
                CameraDeviceHandler.this.mLoadSettingsThread.join(4000);
                if (CameraDeviceHandler.this.mLoadSettingsThread.isAlive()) {
                    CameraLogger.e("OpenDeviceThread", "LoadSettingsThread Timeouted.");
                    return;
                }
            }
            catch (CancellationException var1_1) {
                CameraLogger.e("OpenDeviceThread", "LoadSettingsThread is Cancelled.", var1_1);
                return;
            }
            catch (InterruptedException var1_2) {
                CameraLogger.e("OpenDeviceThread", "LoadSettingsThread is Interrupted.", var1_2);
                return;
            }
            if (CameraDeviceHandler.this.mCamera == null) return;
            CameraDeviceHandler.this.setCurrentSettingsToParameters(CameraDeviceHandler.getCameraTypeFrom(CameraDeviceHandler.this.mFastCaptureSetting), CameraDeviceHandler.this.mLatestCachedParameters);
            CameraDeviceHandler.assertNotNull(CameraDeviceHandler.this.mPictureRect);
            CameraParameterValidator.validate(CameraDeviceHandler.this.mContext, 2131099648, 2131099649, CameraDeviceHandler.this.mLatestCachedParameters);
            CameraDeviceHandler.this.doSetParametersToDevice(CameraDeviceHandler.this.mCamera, CameraDeviceHandler.this.mLatestCachedParameters);
            if (CameraDeviceHandler.this.mCamera != null) {
                CameraDeviceHandler.this.mCamera.startPreview();
            }
            if (CameraDeviceHandler.this.mIsImmediateReleaseRequested) {
                CameraDeviceHandler.this.releaseCameraImmediatelyNotSynchronized();
                CameraDeviceHandler.this.mIsImmediateReleaseRequested = false;
                return;
            }
            if (CameraDeviceHandler.isPreProcessRequiredFrom(CameraDeviceHandler.this.mFastCaptureSetting)) {
                CameraDeviceHandler.this.preScan();
            }
            CameraDeviceHandler.this.selectDefaultCameraLightSettingsIfSharedPreferencesIsEmpty(CameraDeviceHandler.this.mLatestCachedParameters);
            this.mIsSuccess = true;
            CameraDeviceHandler.this.mCurrentDeviceState = 2;
            MeasurePerformance.measureTime(MeasurePerformance.PerformanceIds.OPEN_CAMERA_DEVICE_TASK, false);
            Object object = CameraDeviceHandler.this.mLatestCachedParameters;
            String string = object.get("sony-vs");
            object = object.get("sony-video-nr");
            new EachCameraStatusPublisher(CameraDeviceHandler.this.mContext, CameraDeviceHandler.this.mCameraDeviceId).putFromParameter(CameraDeviceHandler.this.mLatestCachedParameters).put(new DeviceStatus(DeviceStatus.Value.STILL_PREVIEW)).put((DeviceStatus)new VideoResolution(CameraDeviceHandler.this.mCamcordRect)).put((VideoResolution)new VideoRecordingFps(CameraDeviceHandler.this.mVideoSizeSetting.getVideoFrameRate())).put((VideoRecordingFps)VideoStabilizerStatus.fromCameraParameter(string)).put((VideoStabilizerStatus)VideoNoiseReduction.fromCameraParameter((String)object)).publish();
        }
    }

    public static enum PreProcessState {
        NOT_STARTED,
        PRE_SCAN_STARTED,
        PRE_SCAN_DONE,
        PRE_CAPTURE_STARTED,
        PRE_CAPTURE_DONE;
        

        private PreProcessState() {
        }
    }

    private class RequestContinuousPreviewFrameCallback
    implements Camera.PreviewCallback {
        private RequestContinuousPreviewFrameCallback() {
        }

        @Override
        public void onPreviewFrame(byte[] object, Camera camera) {
            if (CameraDeviceHandler.this.mStateMachine != null) {
                CameraDeviceHandler.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_ON_CONTINUOUS_PREVIEW_FRAME_UPDATED, object);
            }
            if ((object = (Object)CameraDeviceHandler.this.getCameraInstance()) != null) {
                object.setOneShotPreviewCallback(CameraDeviceHandler.this.mRequestContinuousPreviewFrameCallback);
            }
        }
    }

    private class RequestOnePreviewFrameCallback
    implements Camera.PreviewCallback {
        private RequestOnePreviewFrameCallback() {
        }

        @Override
        public void onPreviewFrame(byte[] arrby, Camera object) {
            if (CameraDeviceHandler.this.mStateMachine != null && CameraDeviceHandler.this.mLatestCachedParameters != null) {
                object = new Camera.CameraInfo();
                Camera.getCameraInfo(CameraDeviceHandler.this.mCameraDeviceId, (Camera.CameraInfo)object);
                CameraDeviceHandler.this.mStateMachine.sendEvent(StateMachine.TransitterEvent.EVENT_ON_ONE_PREVIEW_FRAME_UPDATED, arrby, CameraDeviceHandler.this.mLatestCachedParameters.getPreviewFormat(), CameraDeviceHandler.this.getPreviewRect());
            }
        }
    }

}

