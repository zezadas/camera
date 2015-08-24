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
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.PointF;
import android.graphics.Rect;
import android.hardware.Camera;
import android.os.Handler;
import android.view.OrientationEventListener;
import android.view.SurfaceHolder;
import com.sonyericsson.android.camera.ExtendedActivity;
import com.sonyericsson.android.camera.configuration.ParameterKey;
import com.sonyericsson.android.camera.configuration.parameters.BurstShot;
import com.sonyericsson.android.camera.configuration.parameters.CaptureFrameShape;
import com.sonyericsson.android.camera.configuration.parameters.FaceIdentify;
import com.sonyericsson.android.camera.configuration.parameters.Flash;
import com.sonyericsson.android.camera.configuration.parameters.FocusMode;
import com.sonyericsson.android.camera.configuration.parameters.Hdr;
import com.sonyericsson.android.camera.configuration.parameters.Microphone;
import com.sonyericsson.android.camera.configuration.parameters.ParameterValue;
import com.sonyericsson.android.camera.configuration.parameters.PhotoLight;
import com.sonyericsson.android.camera.configuration.parameters.Resolution;
import com.sonyericsson.android.camera.configuration.parameters.Scene;
import com.sonyericsson.android.camera.configuration.parameters.SoftSkin;
import com.sonyericsson.android.camera.configuration.parameters.Stabilizer;
import com.sonyericsson.android.camera.configuration.parameters.VideoHdr;
import com.sonyericsson.android.camera.configuration.parameters.VideoSize;
import com.sonyericsson.android.camera.configuration.parameters.VideoStabilizer;
import com.sonyericsson.android.camera.configuration.parameters.WhiteBalance;
import com.sonyericsson.android.camera.fastcapturing.PreviewFrameGrabber;
import com.sonyericsson.android.camera.fastcapturing.StateMachine;
import com.sonyericsson.cameracommon.activity.BaseActivity;
import com.sonyericsson.cameracommon.commonsetting.CommonSettings;
import com.sonyericsson.cameracommon.commonsetting.values.FastCapture;
import com.sonyericsson.cameracommon.commonsetting.values.ShutterSound;
import com.sonyericsson.cameracommon.mediasaving.location.GeotagManager;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.PhotoSavingRequest;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.SavingRequest;
import com.sonyericsson.cameracommon.mediasaving.takenstatus.VideoSavingRequest;
import com.sonyericsson.cameraextension.CameraExtension;
import com.sonymobile.cameracommon.media.recorder.RecorderInterface;
import com.sonymobile.cameracommon.media.utility.NotificationStreamManager;
import com.sonymobile.cameracommon.photoanalyzer.faceidentification.FaceIdentification;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;

/*
 * Exception performing whole class analysis.
 * Exception performing whole class analysis ignored.
 */
public class CameraDeviceHandler {
    public static final int STATUS_OPENED = 2;
    public static final int STATUS_OPENING = 1;
    public static final int STATUS_RELEASED = 0;
    private static final String TAG = "CameraDeviceHandler";
    private BurstShot mBurstShotSetting;
    private Rect mCamcordRect;
    private Camera mCamera;
    private int mCameraDeviceId;
    private CameraExtension mCameraExtension;
    private Camera.CameraInfo mCameraInfo;
    private ExecutorService mCloseDeviceExecutorService;
    private Future<?> mCloseDeviceFuture;
    private CommonSettings mCommonSettings;
    private Context mContext;
    private int mCurrentDeviceState;
    private Camera.ErrorCallback mErrorCallback;
    private FaceIdentification mFaceIdService;
    private FaceIdentify mFaceIdentifySetting;
    private FastCaptureOrientation mFastCaptureOrientation;
    private FastCapture mFastCaptureSetting;
    private Flash mFlashSetting;
    private GeotagManager mGeotagManager;
    private boolean mIsCameraDisabled;
    private boolean mIsFaceDetectionAlreadyStarted;
    private boolean mIsImmediateReleaseRequested;
    private boolean mIsLaunchAndCaptureShutterSoundEnabled;
    private boolean mIsObjectTrackingAlreadyStarted;
    private boolean mIsPreScanSucceeded;
    private Boolean mIsRecording;
    private boolean mIsSceneRecognitionAlreadyStarted;
    private boolean mIsSecureOneShotPhoto;
    private boolean mIsSmartCoverCamera;
    private PhotoSavingRequest mLastSavingRequest;
    private VideoSavingRequest mLastVideoSavingRequest;
    private int mLatestBurstId;
    private Camera.Parameters mLatestCachedParameters;
    private LoadSettingsThread mLoadSettingsThread;
    private NotificationStreamManager mNotificationStreamManager;
    private final OnAutoFocusCallback mOnAutoFocusCallback;
    private final OnFaceDetectionCallback mOnFaceDetectionCallback;
    private final OnObjectTrackedCallback mOnObjectTrackedCallback;
    private final OnPictureTakenCallback mOnPictureTakenCallback;
    private OnPreAutoFocusCallback mOnPreAutoFocusCallback;
    private final OnSceneModeChangedCallback mOnSceneModeChangedCallback;
    private final OnShutterCallback mOnShutterCallback;
    private OnZoomChangedCallback mOnZoomChangedCallback;
    private OpenDeviceThread mOpenDeviceThread;
    private CaptureFrameShape mPhotoCaptureFrameShapeSetting;
    private FocusMode mPhotoFocusModeSetting;
    private Hdr mPhotoHdrSetting;
    private PhotoLight mPhotoLightSetting;
    private Resolution mPhotoResolutionSetting;
    private Stabilizer mPhotoStabilizerSetting;
    private Rect mPictureRect;
    private PreProcessState mPreProcessState;
    private SharedPreferences mPreferences;
    private PreviewFrameGrabber mPreviewFrameGrabber;
    private Rect mPreviewRect;
    private final RequestContinuousPreviewFrameCallback mRequestContinuousPreviewFrameCallback;
    private final RequestOnePreviewFrameCallback mRequestOnePreviewFrameCallback;
    private ShutterSound mShutterSoundSetting;
    private SoftSkin mSoftSkinSetting;
    private StateMachine mStateMachine;
    private Handler mUiThreadHandler;
    private FocusMode mVideoFocusModeSetting;
    private VideoHdr mVideoHdrSetting;
    private Microphone mVideoMicrophoneSetting;
    private RecorderInterface mVideoRecorder;
    private Scene mVideoSceneSetting;
    private VideoSize mVideoSizeSetting;
    private VideoStabilizer mVideoStabilizerSetting;
    private WhiteBalance mVideoWhiteBalanceSetting;

    public CameraDeviceHandler();

    static /* synthetic */ Rect access$1000(CameraDeviceHandler var0);

    static /* synthetic */ void access$1100(Rect var0);

    static /* synthetic */ Context access$1200(CameraDeviceHandler var0);

    static /* synthetic */ void access$1300(CameraDeviceHandler var0, Camera var1, Camera.Parameters var2);

    static /* synthetic */ boolean access$1400(CameraDeviceHandler var0);

    static /* synthetic */ boolean access$1402(CameraDeviceHandler var0, boolean var1);

    static /* synthetic */ void access$1500(CameraDeviceHandler var0);

    static /* synthetic */ boolean access$1600(FastCapture var0);

    static /* synthetic */ void access$1700(CameraDeviceHandler var0, Camera.Parameters var1);

    static /* synthetic */ int access$1802(CameraDeviceHandler var0, int var1);

    static /* synthetic */ VideoSize access$1900(CameraDeviceHandler var0);

    static /* synthetic */ Rect access$2000(CameraDeviceHandler var0);

    static /* synthetic */ int access$2100(CameraDeviceHandler var0);

    static /* synthetic */ void access$2200(CameraDeviceHandler var0);

    static /* synthetic */ CommonSettings access$2300(CameraDeviceHandler var0);

    static /* synthetic */ GeotagManager access$2400(CameraDeviceHandler var0);

    static /* synthetic */ GeotagManager access$2402(CameraDeviceHandler var0, GeotagManager var1);

    static /* synthetic */ Handler access$2500(CameraDeviceHandler var0);

    static /* synthetic */ FastCaptureOrientation access$2600(CameraDeviceHandler var0);

    static /* synthetic */ FastCaptureOrientation access$2602(CameraDeviceHandler var0, FastCaptureOrientation var1);

    static /* synthetic */ boolean access$2700(CameraDeviceHandler var0);

    static /* synthetic */ OnPreAutoFocusCallback access$2802(CameraDeviceHandler var0, OnPreAutoFocusCallback var1);

    static /* synthetic */ void access$2900(CameraDeviceHandler var0, PreProcessState var1);

    static /* synthetic */ boolean access$300(CameraDeviceHandler var0);

    static /* synthetic */ boolean access$3000(CameraDeviceHandler var0);

    static /* synthetic */ boolean access$3002(CameraDeviceHandler var0, boolean var1);

    static /* synthetic */ StateMachine access$3100(CameraDeviceHandler var0);

    static /* synthetic */ void access$3200(CameraDeviceHandler var0);

    static /* synthetic */ PhotoSavingRequest access$3300(CameraDeviceHandler var0);

    static /* synthetic */ Camera access$3400(CameraDeviceHandler var0);

    static /* synthetic */ Camera.CameraInfo access$3500(CameraDeviceHandler var0);

    static /* synthetic */ RecorderInterface access$3600(CameraDeviceHandler var0);

    static /* synthetic */ RequestContinuousPreviewFrameCallback access$3800(CameraDeviceHandler var0);

    static /* synthetic */ Camera.Parameters access$400(CameraDeviceHandler var0);

    static /* synthetic */ void access$4000(CameraDeviceHandler var0);

    static /* synthetic */ Camera.Parameters access$402(CameraDeviceHandler var0, Camera.Parameters var1);

    static /* synthetic */ void access$4100(CameraDeviceHandler var0);

    static /* synthetic */ Camera access$500(CameraDeviceHandler var0);

    static /* synthetic */ LoadSettingsThread access$600(CameraDeviceHandler var0);

    static /* synthetic */ FastCapture access$700(CameraDeviceHandler var0);

    static /* synthetic */ int access$800(FastCapture var0);

    static /* synthetic */ void access$900(CameraDeviceHandler var0, int var1, Camera.Parameters var2);

    private static final void assertNotNull(Rect var0);

    private void awaitFinishingRecording();

    private void changePreProcessStateTo(PreProcessState var1);

    private void clearCloseDeviceTask();

    private PhotoSavingRequest createPreCaptureSavingRequest();

    private void disableRecordingSoundIfNeeded();

    private void doSetParametersToDevice(Camera var1, Camera.Parameters var2);

    private void finishVideoNrSetting();

    private Camera getCameraInstance();

    private static int getCameraTypeFrom(FastCapture var0);

    private String getDependHdrIsValue(Hdr var1, Stabilizer var2);

    private FaceIdentify getFaceIdentify();

    private boolean isMicrophoneEnabled();

    private boolean isOpenDeviceTaskFinishedSuccessfully();

    private boolean isPictureSizeSupported(Rect var1, Camera.Parameters var2);

    private static boolean isPreProcessRequiredFrom(FastCapture var0);

    private boolean isSceneRecognitionSupported();

    private void joinCloseDeviceTask();

    private void loadSettings();

    private static void logPerformance(String var0);

    private boolean openCamera();

    private void overlayBurstCaptureParameters(int var1, Camera.Parameters var2);

    private void prepareMediaRecorder(VideoSavingRequest var1, RecorderInterface.RecorderListener var2, boolean var3);

    private void prepareVideoNrSetting();

    private void prepareZoom(Camera var1);

    private void reconnectCamera();

    private void releaseCamera();

    private void releaseCameraImmediately();

    private void releaseCameraImmediatelyNotSynchronized();

    private void resetShutterSound();

    private void selectDefaultCameraLightSettingsIfSharedPreferencesIsEmpty(Camera.Parameters var1);

    private void sendGoogleAnalyticsEvents(BaseActivity var1);

    private boolean setCameraLight(String var1);

    private void setCommonCaptureParameters(int var1, Camera.Parameters var2);

    private void setCurrentSettingsToParameters(int var1, Camera.Parameters var2);

    private void setDcModeParameters(Camera.Parameters var1);

    private void setFocusModeToParameters(int var1, Camera.Parameters var2);

    private void setFpsRange(int var1, Camera.Parameters var2);

    private void setIso(Camera.Parameters var1);

    private void setJpegEncodingQuality(int var1);

    private void setMeteringToParameters(int var1, Camera.Parameters var2);

    private void setPictureSize(int var1, Camera.Parameters var2);

    private void setPreviewPictureAndCamcordSizeToParameters(int var1, Camera.Parameters var2);

    private void setPreviewSize(int var1, Camera.Parameters var2);

    private void setRecordingHintToParameters(int var1, Camera.Parameters var2);

    private void setSceneToParameters(int var1, Camera.Parameters var2);

    private void setShutterSound(Camera.Parameters var1);

    private void setSoftSkin(int var1, Camera.Parameters var2);

    private void setStabilizerToParameters(int var1, Camera.Parameters var2);

    private void setStreamNotificationMute(boolean var1);

    private void setVideoHdrToParameters(int var1, Camera.Parameters var2);

    private void setVideoNr(boolean var1);

    private void setVideoSize(int var1, Camera.Parameters var2);

    private void setVideoStabilizerToParameters(int var1, Camera.Parameters var2);

    private void setWhiteBalanceToParameters(int var1, Camera.Parameters var2);

    private void startObjectTracking();

    private void stopFaceDetectionNotSynchronized();

    private void stopObjectTracking();

    private void stopObjectTrackingNotSynchronized();

    private void stopPreview();

    private void stopSceneRecognitionNotSynchronized();

    private void stopVideoMetadata();

    public void applyCameraLightSetting(int var1);

    public void applySavingRequest(SavingRequest var1, Camera.Parameters var2);

    public void autoFocus();

    public void cancelAutoFocus();

    public void captureWhileRecording(PhotoSavingRequest var1);

    public void changeBurstShotSettingTo(BurstShot var1);

    public boolean changeCameraModeTo(int var1, boolean var2);

    public boolean deselectObject();

    public void finalizeRecording();

    public BurstShot getBurstShotSetting();

    public Rect getCamcordRect();

    public int getCameraDeviceStatus();

    public int getCameraId();

    public FaceIdentification getFaceIdService();

    public Flash getFlashSetting();

    public Camera.Parameters getLatestCachedParameters();

    public int getMaxSuperResolutionZoom();

    public int getMaxZoom();

    public Rect getPictureRect();

    public PreProcessState getPreProcessState();

    public Rect getPreviewRect();

    public ShutterSound getShutterSound();

    public VideoHdr getVideoHdr();

    public VideoSize getVideoSize();

    public VideoStabilizer getVideoStabilizer();

    public void initialize();

    public boolean isCameraDeviceIsOpenedRightNow();

    public boolean isCameraDisabled();

    public boolean isCameraFront();

    public boolean isCloseDeviceTaskWorking();

    public boolean isImmediateReleaseRequested();

    public boolean isOpenDeviceThreadAlive();

    public boolean isPreCaptureAlreadyDone();

    public boolean isPreCaptureOnGoing();

    public boolean isPreScanAlreadyDone();

    public boolean isPreScanOnGoing();

    public boolean isPreScanSucceeded();

    public boolean isRecorderWorking();

    public boolean isRecording();

    public boolean isShutterSoundOff();

    public void onError();

    public void overlaySmartCoverCameraSetting();

    public void pauseRecording();

    public void preCapture();

    public void preScan();

    public void prepareAdditionalFeatures(int var1, ExtendedActivity var2);

    public void releaseCameraInstance();

    public void releaseVideo();

    public void requestCacheParameters();

    public void requestContinuousPreviewFrame(boolean var1);

    public void requestOnePreviewFrame();

    public void resetFocusMode();

    public void restoreSettingAfterRecording();

    public void resumePhotoLight();

    public void resumeRecording();

    public boolean selectObject(PointF var1);

    public boolean setAdditionalSettings(ParameterKey var1, ParameterValue var2);

    public void setErrorCallback(Camera.ErrorCallback var1);

    public void setFocusPosition(PointF var1);

    public void setMicrophone();

    void setModeLessBurstPreviewPictureAndCamcordSizeToParameters(int var1, Camera.Parameters var2);

    void setModeLessBurstStabilizerToParameters(int var1, Camera.Parameters var2);

    public void setPhotoHdrSettings(ParameterValue var1);

    public void setPhotoShutterSound(boolean var1);

    public void setSelectedFacePosition(int var1, int var2);

    public void setStabilizer(Camera.Parameters var1, int var2, String var3);

    public void setStateMachine(StateMachine var1);

    public void setTorch(boolean var1);

    public void setVideoRecordSound(boolean var1);

    public int startBurstCapture(CameraExtension.FilePathGenerator var1, CameraExtension.MediaProviderUpdator var2);

    public void startCameraOpen(Context var1, int var2, FastCapture var3, boolean var4);

    public void startFaceDetection();

    public void startFaceIdService(Activity var1);

    public void startLiveViewFinder(SurfaceHolder var1);

    public void startPreview();

    public void startRecording(VideoSavingRequest var1, RecorderInterface.RecorderListener var2);

    public void startSceneRecognition();

    public void startSmoothZoom(int var1);

    public int stopBurstCapture();

    public void stopFaceDetection();

    public void stopFaceIdService();

    public void stopLiveViewFinder();

    public void stopRecording(BaseActivity var1);

    public void stopSceneRecognition();

    public void stopSmoothZoom();

    public void suspendPhotoLight();

    public void takePicture(PhotoSavingRequest var1);

    public boolean trySetParametersToDevice(Camera.Parameters var1);

    public boolean waitForCameraInitialization();

    public boolean willPreviewBeRestarted();

    /*
     * Failed to analyse overrides
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class BurstStorageFullDetector
    implements CameraExtension.StorageFullDetector {
        final /* synthetic */ CameraDeviceHandler this$0;

        BurstStorageFullDetector(CameraDeviceHandler var1);

        public boolean isCurrentStorageFull();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class CloseDeviceTask
    implements Runnable {
        final /* synthetic */ CameraDeviceHandler this$0;

        private CloseDeviceTask(CameraDeviceHandler var1);

        /* synthetic */ CloseDeviceTask(CameraDeviceHandler var1,  var2);

        @Override
        public void run();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class FastCaptureOrientation
    extends OrientationEventListener {
        private int mOrientation;
        final /* synthetic */ CameraDeviceHandler this$0;

        FastCaptureOrientation(CameraDeviceHandler var1, Context var2);

        int getOrientation();

        @Override
        public void onOrientationChanged(int var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class LoadSettingsThread
    extends Thread {
        final /* synthetic */ CameraDeviceHandler this$0;

        private LoadSettingsThread(CameraDeviceHandler var1);

        /* synthetic */ LoadSettingsThread(CameraDeviceHandler var1, com.sonyericsson.android.camera.fastcapturing.CameraDeviceHandler$1 var2);

        @Override
        public void run();

    }

    /*
     * Failed to analyse overrides
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class OnAutoFocusCallback
    implements CameraExtension.AutoFocusCallback {
        final /* synthetic */ CameraDeviceHandler this$0;

        OnAutoFocusCallback(CameraDeviceHandler var1);

        public void onAutoFocus(CameraExtension.AutoFocusResult var1);
    }

    /*
     * Failed to analyse overrides
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class OnBurstShotCallback
    implements CameraExtension.BurstShotCallback {
        final /* synthetic */ CameraDeviceHandler this$0;

        OnBurstShotCallback(CameraDeviceHandler var1);

        public void onBurstFrameDropped(CameraExtension.BurstShotResult var1);

        public void onBurstGroupStoreCompleted(CameraExtension.BurstShotResult var1);

        public void onBurstPictureStoreCompleted(CameraExtension.BurstShotResult var1);

        public void onBurstShutterDone(CameraExtension.BurstShotResult var1);
    }

    /*
     * Failed to analyse overrides
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class OnFaceDetectionCallback
    implements CameraExtension.FaceDetectionCallback {
        final /* synthetic */ CameraDeviceHandler this$0;

        OnFaceDetectionCallback(CameraDeviceHandler var1);

        public void onFaceDetection(CameraExtension.FaceDetectionResult var1);
    }

    /*
     * Failed to analyse overrides
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class OnObjectTrackedCallback
    implements CameraExtension.ObjectTrackingCallback {
        final /* synthetic */ CameraDeviceHandler this$0;

        OnObjectTrackedCallback(CameraDeviceHandler var1);

        public void onObjectTracked(CameraExtension.ObjectTrackingResult var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class OnPictureTakenCallback
    implements Camera.PictureCallback {
        final /* synthetic */ CameraDeviceHandler this$0;

        OnPictureTakenCallback(CameraDeviceHandler var1);

        @Override
        public void onPictureTaken(byte[] var1, Camera var2);
    }

    /*
     * Failed to analyse overrides
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class OnPreAutoFocusCallback
    implements CameraExtension.AutoFocusCallback {
        final /* synthetic */ CameraDeviceHandler this$0;

        OnPreAutoFocusCallback(CameraDeviceHandler var1);

        public void onAutoFocus(CameraExtension.AutoFocusResult var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class OnPreCapturePictureTakenCallback
    implements Camera.PictureCallback {
        final /* synthetic */ CameraDeviceHandler this$0;

        OnPreCapturePictureTakenCallback(CameraDeviceHandler var1);

        @Override
        public void onPictureTaken(byte[] var1, Camera var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class OnPreCaptureShutterCallback
    implements Camera.ShutterCallback {
        final /* synthetic */ CameraDeviceHandler this$0;

        OnPreCaptureShutterCallback(CameraDeviceHandler var1);

        @Override
        public void onShutter();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class OnPreviewFrameGrabbedCallback
    implements PreviewFrameGrabber.OnPreviewFrameGrabbedListener {
        private final PhotoSavingRequest mPreviewFrameRequest;
        final /* synthetic */ CameraDeviceHandler this$0;

        public OnPreviewFrameGrabbedCallback(CameraDeviceHandler var1, PhotoSavingRequest var2);

        @Override
        public void onPreviewFrameGrabbed(PreviewFrameGrabber var1, byte[] var2);

        @Override
        public void onPreviewShutterDone();
    }

    /*
     * Failed to analyse overrides
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class OnSceneModeChangedCallback
    implements CameraExtension.SceneRecognitionCallback {
        final /* synthetic */ CameraDeviceHandler this$0;

        OnSceneModeChangedCallback(CameraDeviceHandler var1);

        public void onSceneModeChanged(CameraExtension.SceneRecognitionResult var1);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    class OnShutterCallback
    implements Camera.ShutterCallback {
        final /* synthetic */ CameraDeviceHandler this$0;

        OnShutterCallback(CameraDeviceHandler var1);

        @Override
        public void onShutter();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public class OnZoomChangedCallback
    implements Camera.OnZoomChangeListener {
        final /* synthetic */ CameraDeviceHandler this$0;

        public OnZoomChangedCallback(CameraDeviceHandler var1);

        @Override
        public void onZoomChange(int var1, boolean var2, Camera var3);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class OpenDeviceThread
    extends Thread {
        private static final String TAG = "OpenDeviceThread";
        private volatile boolean mIsSuccess;
        final /* synthetic */ CameraDeviceHandler this$0;

        private OpenDeviceThread(CameraDeviceHandler var1);

        /* synthetic */ OpenDeviceThread(CameraDeviceHandler var1,  var2);

        public boolean isSuccess();

        @Override
        public void run();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    public static final class PreProcessState
    extends Enum<PreProcessState> {
        private static final /* synthetic */ PreProcessState[] $VALUES;
        public static final /* enum */ PreProcessState NOT_STARTED;
        public static final /* enum */ PreProcessState PRE_CAPTURE_DONE;
        public static final /* enum */ PreProcessState PRE_CAPTURE_STARTED;
        public static final /* enum */ PreProcessState PRE_SCAN_DONE;
        public static final /* enum */ PreProcessState PRE_SCAN_STARTED;

        static;

        private PreProcessState();

        public static PreProcessState valueOf(String var0);

        public static PreProcessState[] values();
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class RequestContinuousPreviewFrameCallback
    implements Camera.PreviewCallback {
        final /* synthetic */ CameraDeviceHandler this$0;

        private RequestContinuousPreviewFrameCallback(CameraDeviceHandler var1);

        /* synthetic */ RequestContinuousPreviewFrameCallback(CameraDeviceHandler var1,  var2);

        @Override
        public void onPreviewFrame(byte[] var1, Camera var2);
    }

    /*
     * Exception performing whole class analysis.
     * Exception performing whole class analysis ignored.
     */
    private class RequestOnePreviewFrameCallback
    implements Camera.PreviewCallback {
        final /* synthetic */ CameraDeviceHandler this$0;

        private RequestOnePreviewFrameCallback(CameraDeviceHandler var1);

        /* synthetic */ RequestOnePreviewFrameCallback(CameraDeviceHandler var1,  var2);

        @Override
        public void onPreviewFrame(byte[] var1, Camera var2);
    }

}

