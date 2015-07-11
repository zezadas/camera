.class public Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;
.super Ljava/lang/Object;
.source "CameraDeviceHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$1;,
        Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$CloseDeviceTask;,
        Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$BurstStorageFullDetector;,
        Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnBurstShotCallback;,
        Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$RequestContinuousPreviewFrameCallback;,
        Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$RequestOnePreviewFrameCallback;,
        Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnPreviewFrameGrabbedCallback;,
        Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnZoomChangedCallback;,
        Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnObjectTrackedCallback;,
        Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnFaceDetectionCallback;,
        Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnSceneModeChangedCallback;,
        Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnPictureTakenCallback;,
        Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnShutterCallback;,
        Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$FastCaptureOrientation;,
        Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnAutoFocusCallback;,
        Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnPreCapturePictureTakenCallback;,
        Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnPreCaptureShutterCallback;,
        Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnPreAutoFocusCallback;,
        Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$LoadSettingsThread;,
        Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OpenDeviceThread;,
        Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;
    }
.end annotation


# static fields
.field public static final STATUS_OPENED:I = 0x2

.field public static final STATUS_OPENING:I = 0x1

.field public static final STATUS_RELEASED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CameraDeviceHandler"


# instance fields
.field private mBurstShotSetting:Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;

.field private mCamcordRect:Landroid/graphics/Rect;

.field private mCamera:Landroid/hardware/Camera;

.field private mCameraDeviceId:I

.field private mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

.field private mCameraInfo:Landroid/hardware/Camera$CameraInfo;

.field private mCloseDeviceExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mCloseDeviceFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private mCommonSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

.field private mContext:Landroid/content/Context;

.field private mCurrentDeviceState:I

.field private mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

.field private mFaceIdService:Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification;

.field private mFaceIdentifySetting:Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;

.field private mFastCaptureOrientation:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$FastCaptureOrientation;

.field private mFastCaptureSetting:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

.field private mFlashSetting:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

.field private mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

.field private mIsCameraDisabled:Z

.field private mIsFaceDetectionAlreadyStarted:Z

.field private mIsImmediateReleaseRequested:Z

.field private mIsLaunchAndCaptureShutterSoundEnabled:Z

.field private mIsObjectTrackingAlreadyStarted:Z

.field private mIsPreScanSucceeded:Z

.field private mIsRecording:Ljava/lang/Boolean;

.field private mIsSceneRecognitionAlreadyStarted:Z

.field private mIsSecureOneShotPhoto:Z

.field private mIsSmartCoverCamera:Z

.field private mLastSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

.field private mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;

.field private mLatestBurstId:I

.field private mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

.field private mLoadSettingsThread:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$LoadSettingsThread;

.field private final mOnAutoFocusCallback:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnAutoFocusCallback;

.field private final mOnFaceDetectionCallback:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnFaceDetectionCallback;

.field private final mOnObjectTrackedCallback:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnObjectTrackedCallback;

.field private final mOnPictureTakenCallback:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnPictureTakenCallback;

.field private mOnPreAutoFocusCallback:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnPreAutoFocusCallback;

.field private final mOnSceneModeChangedCallback:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnSceneModeChangedCallback;

.field private final mOnShutterCallback:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnShutterCallback;

.field private mOnZoomChangedCallback:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnZoomChangedCallback;

.field private mOpenDeviceThread:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OpenDeviceThread;

.field private mPhotoCaptureFrameShapeSetting:Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;

.field private mPhotoFocusModeSetting:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

.field private mPhotoHdrSetting:Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

.field private mPhotoLightSetting:Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

.field private mPhotoResolutionSetting:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field private mPhotoStabilizerSetting:Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;

.field private mPictureRect:Landroid/graphics/Rect;

.field private mPreProcessState:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mPreviewFrameGrabber:Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;

.field private mPreviewRect:Landroid/graphics/Rect;

.field private final mRequestContinuousPreviewFrameCallback:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$RequestContinuousPreviewFrameCallback;

.field private final mRequestOnePreviewFrameCallback:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$RequestOnePreviewFrameCallback;

.field private mShutterSoundSetting:Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;

.field private mSoftSkinSetting:Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

.field private mSoundPlayer:Lcom/sonyericsson/cameracommon/sound/SoundPlayer;

.field private mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

.field private mUiThreadHandler:Landroid/os/Handler;

.field private mVideoFocusModeSetting:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

.field private mVideoHdrSetting:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

.field private mVideoMicrophoneSetting:Lcom/sonyericsson/android/camera/configuration/parameters/Microphone;

.field private mVideoRecorder:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;

.field private mVideoSceneSetting:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

.field private mVideoSizeSetting:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

.field private mVideoStabilizerSetting:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

.field private mVideoWhiteBalanceSetting:Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mOpenDeviceThread:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OpenDeviceThread;

    .line 155
    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLoadSettingsThread:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$LoadSettingsThread;

    .line 158
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mUiThreadHandler:Landroid/os/Handler;

    .line 161
    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;

    .line 162
    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    .line 163
    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    .line 164
    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    .line 169
    iput v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCurrentDeviceState:I

    .line 175
    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPreviewRect:Landroid/graphics/Rect;

    .line 176
    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPictureRect:Landroid/graphics/Rect;

    .line 177
    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCamcordRect:Landroid/graphics/Rect;

    .line 180
    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mContext:Landroid/content/Context;

    .line 186
    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPreferences:Landroid/content/SharedPreferences;

    .line 189
    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCommonSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    .line 192
    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    .line 193
    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mFastCaptureOrientation:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$FastCaptureOrientation;

    .line 197
    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mFastCaptureSetting:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    .line 198
    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mShutterSoundSetting:Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;

    .line 199
    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mFlashSetting:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    .line 200
    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPhotoLightSetting:Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    .line 202
    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPhotoResolutionSetting:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 203
    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPhotoCaptureFrameShapeSetting:Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;

    .line 204
    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPhotoFocusModeSetting:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    .line 205
    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPhotoStabilizerSetting:Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;

    .line 206
    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPhotoHdrSetting:Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    .line 207
    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mBurstShotSetting:Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;

    .line 208
    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mFaceIdentifySetting:Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;

    .line 209
    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mSoftSkinSetting:Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

    .line 211
    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mVideoSizeSetting:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 212
    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mVideoSceneSetting:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    .line 213
    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mVideoFocusModeSetting:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    .line 214
    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mVideoWhiteBalanceSetting:Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

    .line 215
    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mVideoHdrSetting:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    .line 216
    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mVideoStabilizerSetting:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    .line 217
    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mVideoMicrophoneSetting:Lcom/sonyericsson/android/camera/configuration/parameters/Microphone;

    .line 220
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mIsRecording:Ljava/lang/Boolean;

    .line 223
    iput v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraDeviceId:I

    .line 234
    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    .line 244
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;->NOT_STARTED:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPreProcessState:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;

    .line 251
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mIsPreScanSucceeded:Z

    .line 254
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mIsLaunchAndCaptureShutterSoundEnabled:Z

    .line 261
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mIsFaceDetectionAlreadyStarted:Z

    .line 262
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mIsSceneRecognitionAlreadyStarted:Z

    .line 263
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mIsObjectTrackingAlreadyStarted:Z

    .line 266
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mIsImmediateReleaseRequested:Z

    .line 269
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mIsCameraDisabled:Z

    .line 272
    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPreviewFrameGrabber:Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;

    .line 276
    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mFaceIdService:Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification;

    .line 279
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLatestBurstId:I

    .line 282
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mIsSmartCoverCamera:Z

    .line 285
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mIsSecureOneShotPhoto:Z

    .line 290
    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mSoundPlayer:Lcom/sonyericsson/cameracommon/sound/SoundPlayer;

    .line 3527
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$RequestOnePreviewFrameCallback;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$RequestOnePreviewFrameCallback;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mRequestOnePreviewFrameCallback:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$RequestOnePreviewFrameCallback;

    .line 3566
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$RequestContinuousPreviewFrameCallback;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$RequestContinuousPreviewFrameCallback;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mRequestContinuousPreviewFrameCallback:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$RequestContinuousPreviewFrameCallback;

    .line 295
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnAutoFocusCallback;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnAutoFocusCallback;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mOnAutoFocusCallback:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnAutoFocusCallback;

    .line 296
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnShutterCallback;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnShutterCallback;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mOnShutterCallback:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnShutterCallback;

    .line 297
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnPictureTakenCallback;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnPictureTakenCallback;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mOnPictureTakenCallback:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnPictureTakenCallback;

    .line 300
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnSceneModeChangedCallback;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnSceneModeChangedCallback;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mOnSceneModeChangedCallback:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnSceneModeChangedCallback;

    .line 301
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnFaceDetectionCallback;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnFaceDetectionCallback;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mOnFaceDetectionCallback:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnFaceDetectionCallback;

    .line 302
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnObjectTrackedCallback;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnObjectTrackedCallback;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mOnObjectTrackedCallback:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnObjectTrackedCallback;

    .line 303
    return-void
.end method

.method static synthetic access$1000(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;
    .param p1, "x1"    # Landroid/hardware/Camera;
    .param p2, "x2"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 140
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->doSetParametersToDevice(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mIsImmediateReleaseRequested:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 140
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mIsImmediateReleaseRequested:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->releaseCameraImmediatelyNotSynchronized()V

    return-void
.end method

.method static synthetic access$1400(Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    .prologue
    .line 140
    invoke-static {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->isPreProcessRequiredFrom(Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;
    .param p1, "x1"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->selectDefaultCameraLightSettingsIfSharedPreferencesIsEmpty(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method static synthetic access$1602(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;
    .param p1, "x1"    # I

    .prologue
    .line 140
    iput p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCurrentDeviceState:I

    return p1
.end method

.method static synthetic access$1700(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mVideoSizeSetting:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCamcordRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    .prologue
    .line 140
    iget v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraDeviceId:I

    return v0
.end method

.method static synthetic access$2000(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->loadSettings()V

    return-void
.end method

.method static synthetic access$2100(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCommonSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;)Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;
    .param p1, "x1"    # Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mUiThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$FastCaptureOrientation;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mFastCaptureOrientation:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$FastCaptureOrientation;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$FastCaptureOrientation;)Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$FastCaptureOrientation;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;
    .param p1, "x1"    # Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$FastCaptureOrientation;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mFastCaptureOrientation:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$FastCaptureOrientation;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mIsSmartCoverCamera:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnPreAutoFocusCallback;)Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnPreAutoFocusCallback;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;
    .param p1, "x1"    # Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnPreAutoFocusCallback;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mOnPreAutoFocusCallback:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnPreAutoFocusCallback;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;
    .param p1, "x1"    # Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->changePreProcessStateTo(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mIsPreScanSucceeded:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 140
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mIsPreScanSucceeded:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->openCamera()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->resetShutterSound()V

    return-void
.end method

.method static synthetic access$3100(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLastSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)Landroid/hardware/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getCameraInstance()Landroid/hardware/Camera;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3300(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)Landroid/hardware/Camera$CameraInfo;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mVideoRecorder:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$RequestContinuousPreviewFrameCallback;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mRequestContinuousPreviewFrameCallback:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$RequestContinuousPreviewFrameCallback;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->awaitFinishingRecording()V

    return-void
.end method

.method static synthetic access$3900(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->releaseCamera()V

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;
    .param p1, "x1"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)Landroid/hardware/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$LoadSettingsThread;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLoadSettingsThread:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$LoadSettingsThread;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mFastCaptureSetting:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    .prologue
    .line 140
    invoke-static {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getCameraTypeFrom(Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;ILandroid/hardware/Camera$Parameters;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 140
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->setCurrentSettingsToParameters(ILandroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method private awaitFinishingRecording()V
    .locals 1

    .prologue
    .line 4124
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mVideoRecorder:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;

    if-nez v0, :cond_0

    .line 4133
    :goto_0
    return-void

    .line 4128
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mVideoRecorder:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;

    invoke-interface {v0}, Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;->isRecordingOrPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4129
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->disableRecordingSoundIfNeeded()V

    .line 4132
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mVideoRecorder:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;

    invoke-interface {v0}, Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;->awaitFinish()Z

    goto :goto_0
.end method

.method private changePreProcessStateTo(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;)V
    .locals 0
    .param p1, "next"    # Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPreProcessState:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;

    .line 250
    return-void
.end method

.method private clearCloseDeviceTask()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4061
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->isCloseDeviceTaskWorking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4062
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->joinCloseDeviceTask()V

    .line 4065
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCloseDeviceFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_1

    .line 4066
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCloseDeviceFuture:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 4067
    iput-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCloseDeviceFuture:Ljava/util/concurrent/Future;

    .line 4069
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCloseDeviceExecutorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_2

    .line 4070
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCloseDeviceExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 4071
    iput-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCloseDeviceExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 4074
    :cond_2
    return-void
.end method

.method private createPreCaptureSavingRequest()Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    .locals 18

    .prologue
    .line 2722
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2724
    .local v4, "takenTimeMillis":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mFastCaptureOrientation:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$FastCaptureOrientation;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$FastCaptureOrientation;->getOrientation()I

    move-result v6

    .line 2726
    .local v6, "orientation":I
    const/4 v7, 0x0

    .line 2727
    .local v7, "location":Landroid/location/Location;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    if-eqz v3, :cond_0

    .line 2728
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v7

    .line 2731
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 2734
    .local v2, "capRect":Landroid/graphics/Rect;
    new-instance v17, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    new-instance v3, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v9

    const-string v10, "image/jpeg"

    const-string v11, ".JPG"

    sget-object v12, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;->PHOTO:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;

    const/4 v13, 0x0

    const-string v14, ""

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v3 .. v16}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;-><init>(JILandroid/location/Location;IILjava/lang/String;Ljava/lang/String;Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;Ljava/lang/String;Ljava/lang/String;ZZ)V

    new-instance v8, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    invoke-direct {v8}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;-><init>()V

    move-object/from16 v0, v17

    invoke-direct {v0, v3, v8}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;)V

    return-object v17
.end method

.method private disableRecordingSoundIfNeeded()V
    .locals 1

    .prologue
    .line 3375
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mVideoStabilizerSetting:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->isIntelligentActive(Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3376
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->setVideoRecordSound(Z)V

    .line 3377
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getLatestCachedParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->trySetParametersToDevice(Landroid/hardware/Camera$Parameters;)Z

    .line 3379
    :cond_0
    return-void
.end method

.method private doSetParametersToDevice(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 2548
    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2560
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "key-sony-ext-shuttersound"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    .line 2561
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "key-sony-ext-recordingsound"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    .line 2562
    return-void
.end method

.method private finishVideoNrSetting()V
    .locals 4

    .prologue
    .line 3383
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getInstance()Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getCameraExtensionVersion()Lcom/sonyericsson/cameracommon/device/CameraExtensionVersion;

    move-result-object v1

    const/4 v2, 0x1

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/cameracommon/device/CameraExtensionVersion;->isLaterThanOrEqualTo(II)Z

    move-result v0

    .line 3386
    .local v0, "isAvailableVersion":Z
    if-eqz v0, :cond_0

    .line 3387
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->setVideoNr(Z)V

    .line 3389
    :cond_0
    return-void
.end method

.method private declared-synchronized getCameraInstance()Landroid/hardware/Camera;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 387
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mIsImmediateReleaseRequested:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 400
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    .line 392
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->isOpenDeviceTaskFinishedSuccessfully()Z

    move-result v0

    .line 394
    .local v0, "isSuccess":Z
    if-eqz v0, :cond_0

    .line 400
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 387
    .end local v0    # "isSuccess":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private static getCameraTypeFrom(Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;)I
    .locals 3
    .param p0, "fastCap"    # Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    .prologue
    .line 1012
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$1;->$SwitchMap$com$sonyericsson$cameracommon$commonsetting$values$FastCapture:[I

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1025
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCameraTypeFrom():[FastCapture="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1018
    :pswitch_0
    const/4 v0, 0x1

    .line 1021
    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 1012
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getDependHdrIsValue(Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;)Ljava/lang/String;
    .locals 3
    .param p1, "hdrSetting"    # Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;
    .param p2, "stabilizerSetting"    # Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;

    .prologue
    .line 1500
    const/4 v0, 0x0

    .line 1501
    .local v0, "settingValue":Ljava/lang/String;
    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$Hdr:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1521
    :goto_0
    return-object v0

    .line 1503
    :pswitch_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1504
    goto :goto_0

    .line 1507
    :pswitch_1
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1508
    goto :goto_0

    .line 1511
    :pswitch_2
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;

    if-ne p2, v1, :cond_0

    .line 1512
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1514
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1516
    goto :goto_0

    .line 1501
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getFaceIdentify()Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;
    .locals 1

    .prologue
    .line 2439
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mFaceIdentifySetting:Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;

    return-object v0
.end method

.method private isMicrophoneEnabled()Z
    .locals 2

    .prologue
    .line 2349
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mVideoMicrophoneSetting:Lcom/sonyericsson/android/camera/configuration/parameters/Microphone;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Microphone;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Microphone;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/Microphone;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2350
    const/4 v0, 0x1

    .line 2354
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOpenDeviceTaskFinishedSuccessfully()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2358
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mOpenDeviceThread:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OpenDeviceThread;

    if-nez v2, :cond_1

    .line 2383
    :cond_0
    :goto_0
    return v1

    .line 2365
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mOpenDeviceThread:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OpenDeviceThread;

    const-wide/16 v4, 0xfa0

    invoke-virtual {v2, v4, v5}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OpenDeviceThread;->join(J)V

    .line 2367
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mOpenDeviceThread:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OpenDeviceThread;

    if-eqz v2, :cond_0

    .line 2370
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mOpenDeviceThread:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OpenDeviceThread;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OpenDeviceThread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2371
    const-string v2, "CameraDeviceHandler"

    const-string v3, "mOpenDeviceThread.join() timeout."

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2375
    :catch_0
    move-exception v0

    .line 2376
    .local v0, "e":Ljava/util/concurrent/CancellationException;
    const-string v2, "CameraDeviceHandler"

    const-string v3, "isOpenDeviceTaskFinishedSuccessfully():[task is canceled]"

    invoke-static {v2, v3, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2378
    .end local v0    # "e":Ljava/util/concurrent/CancellationException;
    :catch_1
    move-exception v0

    .line 2379
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "CameraDeviceHandler"

    const-string v3, "isOpenDeviceTaskFinishedSuccessfully():[task is Interrupted]"

    invoke-static {v2, v3, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2383
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mOpenDeviceThread:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OpenDeviceThread;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OpenDeviceThread;->isSuccess()Z

    move-result v1

    goto :goto_0
.end method

.method private isPictureSizeSupported(Landroid/graphics/Rect;Landroid/hardware/Camera$Parameters;)Z
    .locals 5
    .param p1, "pictureSize"    # Landroid/graphics/Rect;
    .param p2, "targetParams"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v2, 0x0

    .line 1252
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1263
    :cond_0
    :goto_0
    return v2

    .line 1256
    :cond_1
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    .line 1257
    .local v1, "size":Landroid/hardware/Camera$Size;
    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget v3, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 1259
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static isPreProcessRequiredFrom(Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;)Z
    .locals 3
    .param p0, "fastCap"    # Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    .prologue
    .line 1029
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$1;->$SwitchMap$com$sonyericsson$cameracommon$commonsetting$values$FastCapture:[I

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1042
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPreAfRequiredFrom():[FastCapture="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1035
    :pswitch_0
    const/4 v0, 0x0

    .line 1038
    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1029
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isSceneRecognitionSupported()Z
    .locals 1

    .prologue
    .line 3997
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/PlatformDependencyResolver;->isSceneRecognitionSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    return v0
.end method

.method private joinCloseDeviceTask()V
    .locals 3

    .prologue
    .line 4094
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCloseDeviceFuture:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_0

    .line 4097
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCloseDeviceFuture:Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4109
    :goto_0
    return-void

    .line 4099
    :catch_0
    move-exception v0

    .line 4100
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "CameraDeviceHandler"

    const-string v2, "Camera closing has been interrupted."

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 4101
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 4102
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    const-string v1, "CameraDeviceHandler"

    const-string v2, "Camera closing failed."

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 4105
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :cond_0
    const-string v1, "CameraDeviceHandler"

    const-string v2, "joinCloseDeviceTask: Close camera device task is not submitted."

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private loadSettings()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 846
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 847
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mContext:Landroid/content/Context;

    monitor-enter v1

    .line 848
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mContext:Landroid/content/Context;

    const-string v2, "com.sonyericsson.android.camera.shared_preferences"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPreferences:Landroid/content/SharedPreferences;

    .line 851
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 856
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 857
    new-instance v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;-><init>(Landroid/content/ContentResolver;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCommonSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    .line 858
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCommonSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->load()V

    .line 864
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mFastCaptureSetting:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    if-nez v0, :cond_2

    .line 865
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCommonSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->FAST_CAPTURE:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->get(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mFastCaptureSetting:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    .line 867
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCommonSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->SHUTTER_SOUND:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->get(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mShutterSoundSetting:Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;

    .line 870
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPreferences:Landroid/content/SharedPreferences;

    iget v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraDeviceId:I

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->FLASH:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    invoke-static {v0, v4, v1, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraUtils;->loadParameter(Landroid/content/SharedPreferences;IILcom/sonyericsson/android/camera/configuration/ParameterKey;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mFlashSetting:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    .line 878
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPreferences:Landroid/content/SharedPreferences;

    iget v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraDeviceId:I

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->BURST_SHOT:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-static {v0, v4, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraUtils;->isSettingValueAvailableInSharedPreferences(Landroid/content/SharedPreferences;IILcom/sonyericsson/android/camera/configuration/ParameterKey;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1009
    :goto_0
    return-void

    .line 851
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 894
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPreferences:Landroid/content/SharedPreferences;

    iget v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraDeviceId:I

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->PHOTO_LIGHT:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    invoke-static {v0, v4, v1, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraUtils;->loadParameter(Landroid/content/SharedPreferences;IILcom/sonyericsson/android/camera/configuration/ParameterKey;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPhotoLightSetting:Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    .line 902
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPreferences:Landroid/content/SharedPreferences;

    iget v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraDeviceId:I

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->VGA:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    invoke-static {v0, v4, v1, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraUtils;->loadParameter(Landroid/content/SharedPreferences;IILcom/sonyericsson/android/camera/configuration/ParameterKey;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPhotoResolutionSetting:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 908
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPreferences:Landroid/content/SharedPreferences;

    iget v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraDeviceId:I

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->CAPTURE_FRAME_SHAPE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;->WIDE:Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;

    invoke-static {v0, v4, v1, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraUtils;->loadParameter(Landroid/content/SharedPreferences;IILcom/sonyericsson/android/camera/configuration/ParameterKey;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPhotoCaptureFrameShapeSetting:Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;

    .line 914
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPreferences:Landroid/content/SharedPreferences;

    iget v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraDeviceId:I

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->FOCUS_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->SINGLE:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    invoke-static {v0, v4, v1, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraUtils;->loadParameter(Landroid/content/SharedPreferences;IILcom/sonyericsson/android/camera/configuration/ParameterKey;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPhotoFocusModeSetting:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    .line 920
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPreferences:Landroid/content/SharedPreferences;

    iget v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraDeviceId:I

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->STABILIZER:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;

    invoke-static {v0, v1, v4, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraUtils;->loadParameter(Landroid/content/SharedPreferences;IILcom/sonyericsson/android/camera/configuration/ParameterKey;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPhotoStabilizerSetting:Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;

    .line 926
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPreferences:Landroid/content/SharedPreferences;

    iget v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraDeviceId:I

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->HDR:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;->HDR_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    invoke-static {v0, v1, v4, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraUtils;->loadParameter(Landroid/content/SharedPreferences;IILcom/sonyericsson/android/camera/configuration/ParameterKey;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPhotoHdrSetting:Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    .line 932
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPreferences:Landroid/content/SharedPreferences;

    iget v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraDeviceId:I

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->FACE_IDENTIFY:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;

    invoke-static {v0, v4, v1, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraUtils;->loadParameter(Landroid/content/SharedPreferences;IILcom/sonyericsson/android/camera/configuration/ParameterKey;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mFaceIdentifySetting:Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;

    .line 938
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPreferences:Landroid/content/SharedPreferences;

    iget v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraDeviceId:I

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

    invoke-static {v0, v4, v1, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraUtils;->loadParameter(Landroid/content/SharedPreferences;IILcom/sonyericsson/android/camera/configuration/ParameterKey;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mSoftSkinSetting:Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

    .line 945
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mIsSecureOneShotPhoto:Z

    if-eqz v0, :cond_5

    .line 946
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mBurstShotSetting:Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;

    .line 956
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mFaceIdentifySetting:Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;

    if-ne v0, v1, :cond_4

    .line 957
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_4

    .line 958
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationUtil;->exist(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 959
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mFaceIdentifySetting:Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;

    .line 965
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPreferences:Landroid/content/SharedPreferences;

    iget v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraDeviceId:I

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->VGA:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-static {v0, v5, v1, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraUtils;->loadParameter(Landroid/content/SharedPreferences;IILcom/sonyericsson/android/camera/configuration/ParameterKey;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mVideoSizeSetting:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 971
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPreferences:Landroid/content/SharedPreferences;

    iget v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraDeviceId:I

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->SCENE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    invoke-static {v0, v5, v1, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraUtils;->loadParameter(Landroid/content/SharedPreferences;IILcom/sonyericsson/android/camera/configuration/ParameterKey;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mVideoSceneSetting:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    .line 977
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPreferences:Landroid/content/SharedPreferences;

    iget v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraDeviceId:I

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->FOCUS_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->FACE_DETECTION:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    invoke-static {v0, v5, v1, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraUtils;->loadParameter(Landroid/content/SharedPreferences;IILcom/sonyericsson/android/camera/configuration/ParameterKey;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mVideoFocusModeSetting:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    .line 983
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPreferences:Landroid/content/SharedPreferences;

    iget v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraDeviceId:I

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->WHITE_BALANCE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

    invoke-static {v0, v5, v1, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraUtils;->loadParameter(Landroid/content/SharedPreferences;IILcom/sonyericsson/android/camera/configuration/ParameterKey;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mVideoWhiteBalanceSetting:Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

    .line 989
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPreferences:Landroid/content/SharedPreferences;

    iget v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraDeviceId:I

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    invoke-static {v0, v5, v1, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraUtils;->loadParameter(Landroid/content/SharedPreferences;IILcom/sonyericsson/android/camera/configuration/ParameterKey;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mVideoStabilizerSetting:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    .line 995
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPreferences:Landroid/content/SharedPreferences;

    iget v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraDeviceId:I

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->MICROPHONE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/Microphone;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Microphone;

    invoke-static {v0, v5, v1, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraUtils;->loadParameter(Landroid/content/SharedPreferences;IILcom/sonyericsson/android/camera/configuration/ParameterKey;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/Microphone;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mVideoMicrophoneSetting:Lcom/sonyericsson/android/camera/configuration/parameters/Microphone;

    .line 1001
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPreferences:Landroid/content/SharedPreferences;

    iget v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraDeviceId:I

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    invoke-static {v0, v5, v1, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraUtils;->loadParameter(Landroid/content/SharedPreferences;IILcom/sonyericsson/android/camera/configuration/ParameterKey;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mVideoHdrSetting:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    goto/16 :goto_0

    .line 948
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPreferences:Landroid/content/SharedPreferences;

    iget v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraDeviceId:I

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->BURST_SHOT:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;->BEST_EFFORT:Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;

    invoke-static {v0, v4, v1, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraUtils;->loadParameter(Landroid/content/SharedPreferences;IILcom/sonyericsson/android/camera/configuration/ParameterKey;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mBurstShotSetting:Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;

    goto/16 :goto_1
.end method

.method private static logPerformance(Ljava/lang/String;)V
    .locals 4
    .param p0, "event"    # Ljava/lang/String;

    .prologue
    .line 145
    const-string v0, "TraceLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PERFORMANCE] [TIME = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "CameraDeviceHandler"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-void
.end method

.method private openCamera()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 780
    :try_start_0
    iget v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraDeviceId:I

    invoke-static {v4}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 789
    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;

    if-nez v4, :cond_0

    .line 792
    iput v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCurrentDeviceState:I

    .line 841
    :goto_0
    return v2

    .line 782
    :catch_0
    move-exception v0

    .line 785
    .local v0, "e":Ljava/lang/Exception;
    iput-object v7, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;

    .line 786
    iput v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCurrentDeviceState:I

    goto :goto_0

    .line 796
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    invoke-virtual {v4, v5}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 797
    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 798
    .local v1, "params":Landroid/hardware/Camera$Parameters;
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getInstance()Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraDeviceId:I

    invoke-virtual {v4, v5, v6, v1}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->setCameraParameters(Landroid/content/Context;ILandroid/hardware/Camera$Parameters;)V

    .line 803
    :try_start_1
    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;

    iget v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraDeviceId:I

    invoke-static {v4, v5}, Lcom/sonyericsson/cameraextension/CameraExtension;->open(Landroid/hardware/Camera;I)Lcom/sonyericsson/cameraextension/CameraExtension;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 818
    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    if-nez v4, :cond_3

    .line 821
    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;

    if-eqz v3, :cond_1

    .line 823
    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->release()V

    .line 824
    iput-object v7, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;

    .line 826
    :cond_1
    iput v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCurrentDeviceState:I

    goto :goto_0

    .line 805
    :catch_1
    move-exception v0

    .line 806
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v3, "CameraDeviceHandler"

    const-string v4, "run():[CameraExtension use failed]"

    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;

    if-eqz v3, :cond_2

    .line 812
    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->release()V

    .line 813
    iput-object v7, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;

    .line 815
    :cond_2
    iput v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCurrentDeviceState:I

    goto :goto_0

    .line 831
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_3
    new-instance v4, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;

    invoke-direct {v4}, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;-><init>()V

    iput-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mSoundPlayer:Lcom/sonyericsson/cameracommon/sound/SoundPlayer;

    .line 834
    new-instance v4, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraDeviceId:I

    invoke-direct {v4, v5, v6}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;I)V

    new-instance v5, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus;

    sget-object v6, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;->POWER_ON:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    invoke-direct {v5, v6}, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;)V

    invoke-virtual {v4, v5}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    .line 837
    new-instance v4, Lcom/sonyericsson/cameracommon/status/GlobalCameraStatusPublisher;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/sonyericsson/cameracommon/status/GlobalCameraStatusPublisher;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/sonyericsson/cameracommon/status/global/BuiltInCameraIds;

    new-array v6, v3, [I

    iget v7, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraDeviceId:I

    aput v7, v6, v2

    invoke-direct {v5, v6}, Lcom/sonyericsson/cameracommon/status/global/BuiltInCameraIds;-><init>([I)V

    invoke-virtual {v4, v5}, Lcom/sonyericsson/cameracommon/status/GlobalCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    move v2, v3

    .line 841
    goto/16 :goto_0
.end method

.method private overlayBurstCaptureParameters(ILandroid/hardware/Camera$Parameters;)V
    .locals 3
    .param p1, "cameraType"    # I
    .param p2, "targetParams"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 1113
    invoke-static {p2}, Lcom/sonyericsson/android/camera/fastcapturing/PlatformDependencyResolver;->isBurstCaptureSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1115
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "setBurstCaptureParameters():[Burst not supported]"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1132
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mShutterSoundSetting:Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;->ON:Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraDeviceId:I

    if-nez v1, :cond_1

    .line 1133
    sget-object v1, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;->SOUND_BURST_SHUTTER:Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;->SOUND1:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/ShutterToneGenerator;->getSoundFilePath(Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;)Ljava/lang/String;

    move-result-object v0

    .line 1136
    .local v0, "burstShutter":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameraextension/CameraExtension;->setBurstShutterSoundFilePath(Ljava/lang/String;)V

    .line 1138
    .end local v0    # "burstShutter":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private prepareMediaRecorder(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$RecorderListener;Z)V
    .locals 9
    .param p1, "request"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;
    .param p2, "listener"    # Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$RecorderListener;
    .param p3, "isShutterSoundOn"    # Z

    .prologue
    .line 3162
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getCameraInstance()Landroid/hardware/Camera;

    move-result-object v6

    .line 3163
    .local v6, "camera":Landroid/hardware/Camera;
    if-nez v6, :cond_1

    .line 3202
    :cond_0
    return-void

    .line 3168
    :cond_1
    invoke-virtual {v6}, Landroid/hardware/Camera;->unlock()V

    .line 3170
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mSoundPlayer:Lcom/sonyericsson/cameracommon/sound/SoundPlayer;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mUiThreadHandler:Landroid/os/Handler;

    const/16 v4, 0x3e8

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mVideoStabilizerSetting:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->isIntelligentActive(Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p3, :cond_2

    const/4 v5, 0x1

    :goto_0
    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/cameracommon/media/recorder/RecorderFactory;->create(Landroid/content/Context;Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$RecorderListener;Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$RecordingSoundPlayer;Landroid/os/Handler;IZ)Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mVideoRecorder:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;

    .line 3179
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mVideoSizeSetting:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoProfile()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile;->getCamcorderProfile()Landroid/media/CamcorderProfile;

    move-result-object v8

    .line 3180
    .local v8, "profile":Landroid/media/CamcorderProfile;
    if-nez v8, :cond_3

    .line 3181
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "CamcorderProfile is null."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3170
    .end local v8    # "profile":Landroid/media/CamcorderProfile;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 3184
    .restart local v8    # "profile":Landroid/media/CamcorderProfile;
    :cond_3
    invoke-static {}, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;->newRecordParameters()Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters$Builder;

    move-result-object v0

    iget-object v1, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters$Builder;->setLocation(Landroid/location/Location;)Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters$Builder;

    move-result-object v0

    iget-object v1, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;->video:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;

    iget-wide v2, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;->maxDurationMills:J

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters$Builder;->setMaxDuration(I)Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters$Builder;

    move-result-object v0

    iget-object v1, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;->video:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;

    iget-wide v2, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;->maxFileSizeBytes:J

    invoke-virtual {v0, v2, v3}, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters$Builder;->setMaxFileSize(J)Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->isMicrophoneEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters$Builder;->setMicrophoneEnabled(Z)Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters$Builder;

    move-result-object v0

    iget-object v1, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->orientation:I

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters$Builder;->setOrientationHint(I)Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters$Builder;->setProfile(Landroid/media/CamcorderProfile;)Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters$Builder;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters$Builder;->setUri(Landroid/net/Uri;)Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters$Builder;->build()Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;

    move-result-object v7

    .line 3194
    .local v7, "parameters":Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mVideoRecorder:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v0, v1, v7}, Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;->prepare(Landroid/hardware/Camera;Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3197
    const-string v0, "CameraDeviceHandler"

    const-string v1, "prepareMediaRecorder() : failed"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3198
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->awaitFinishingRecording()V

    .line 3199
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "prepareMediaRecorder():[Failed to prepare MediaRecorder.]"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private prepareVideoNrSetting()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 3293
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getInstance()Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getCameraExtensionVersion()Lcom/sonyericsson/cameracommon/device/CameraExtensionVersion;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v3, v5}, Lcom/sonyericsson/cameracommon/device/CameraExtensionVersion;->isLaterThanOrEqualTo(II)Z

    move-result v0

    .line 3296
    .local v0, "isAvailableVersion":Z
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getInstance()Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;

    move-result-object v4

    iget v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraDeviceId:I

    invoke-virtual {v4, v5}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->isVideoNrSupported(I)Z

    move-result v1

    .line 3299
    .local v1, "isVideoNrSupported":Z
    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mVideoSizeSetting:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FULL_HD_60FPS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-eq v4, v5, :cond_1

    move v2, v3

    .line 3301
    .local v2, "isVideoSizeCapable":Z
    :goto_0
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 3302
    invoke-direct {p0, v3}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->setVideoNr(Z)V

    .line 3304
    :cond_0
    return-void

    .line 3299
    .end local v2    # "isVideoSizeCapable":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private prepareZoom(Landroid/hardware/Camera;)V
    .locals 1
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 1977
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnZoomChangedCallback;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnZoomChangedCallback;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mOnZoomChangedCallback:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnZoomChangedCallback;

    .line 1980
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mOnZoomChangedCallback:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnZoomChangedCallback;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 1981
    return-void
.end method

.method private reconnectCamera()V
    .locals 4

    .prologue
    .line 4015
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getCameraInstance()Landroid/hardware/Camera;

    move-result-object v0

    .line 4016
    .local v0, "camera":Landroid/hardware/Camera;
    if-nez v0, :cond_0

    .line 4026
    :goto_0
    return-void

    .line 4022
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->reconnect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4023
    :catch_0
    move-exception v1

    .line 4024
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "reconnectCamera():[Failed to reconnect Camera.]"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private declared-synchronized releaseCamera()V
    .locals 1

    .prologue
    .line 428
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCurrentDeviceState:I

    packed-switch v0, :pswitch_data_0

    .line 447
    :pswitch_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->isOpenDeviceTaskFinishedSuccessfully()Z

    .line 450
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->releaseCameraImmediately()V

    .line 453
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mIsImmediateReleaseRequested:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    :goto_0
    :pswitch_1
    monitor-exit p0

    return-void

    .line 436
    :pswitch_2
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mIsImmediateReleaseRequested:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 428
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized releaseCameraImmediately()V
    .locals 1

    .prologue
    .line 458
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->releaseCameraImmediatelyNotSynchronized()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 459
    monitor-exit p0

    return-void

    .line 458
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private releaseCameraImmediatelyNotSynchronized()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 463
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->stopSceneRecognitionNotSynchronized()V

    .line 464
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->stopFaceDetectionNotSynchronized()V

    .line 465
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->deselectObject()Z

    .line 470
    new-instance v1, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraDeviceId:I

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->putDefaultAll()Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    .line 473
    new-instance v1, Lcom/sonyericsson/cameracommon/status/GlobalCameraStatusPublisher;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sonyericsson/cameracommon/status/GlobalCameraStatusPublisher;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/status/GlobalCameraStatusPublisher;->putDefaultAll()Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    .line 478
    iput-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPreviewRect:Landroid/graphics/Rect;

    .line 479
    iput-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPictureRect:Landroid/graphics/Rect;

    .line 480
    iput-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCamcordRect:Landroid/graphics/Rect;

    .line 484
    iput-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mFastCaptureSetting:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    .line 485
    iput-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mShutterSoundSetting:Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;

    .line 486
    iput-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mFlashSetting:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    .line 488
    iput-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPhotoResolutionSetting:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 489
    iput-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPhotoCaptureFrameShapeSetting:Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;

    .line 490
    iput-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPhotoFocusModeSetting:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    .line 491
    iput-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPhotoStabilizerSetting:Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;

    .line 492
    iput-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPhotoHdrSetting:Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    .line 493
    iput-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mBurstShotSetting:Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;

    .line 494
    iput-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mFaceIdentifySetting:Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;

    .line 496
    iput-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mVideoSizeSetting:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 497
    iput-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mVideoSceneSetting:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    .line 498
    iput-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mVideoFocusModeSetting:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    .line 499
    iput-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mVideoWhiteBalanceSetting:Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

    .line 500
    iput-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mVideoStabilizerSetting:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    .line 501
    iput-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mVideoMicrophoneSetting:Lcom/sonyericsson/android/camera/configuration/parameters/Microphone;

    .line 502
    iput-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mVideoHdrSetting:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    .line 505
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    if-eqz v1, :cond_0

    .line 506
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->releaseResource()V

    .line 507
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->release()V

    .line 508
    iput-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    .line 510
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mFastCaptureOrientation:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$FastCaptureOrientation;

    if-eqz v1, :cond_1

    .line 511
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mFastCaptureOrientation:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$FastCaptureOrientation;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$FastCaptureOrientation;->disable()V

    .line 512
    iput-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mFastCaptureOrientation:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$FastCaptureOrientation;

    .line 515
    :cond_1
    iput-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mOpenDeviceThread:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OpenDeviceThread;

    .line 516
    iput-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLoadSettingsThread:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$LoadSettingsThread;

    .line 517
    iput-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mContext:Landroid/content/Context;

    .line 526
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraDeviceId:I

    if-nez v1, :cond_2

    .line 528
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/cameraextension/CameraExtension;->waitForCurrentSavingTaskStackCleared(J)Z

    .line 530
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    invoke-virtual {v1, v4}, Lcom/sonyericsson/cameraextension/CameraExtension;->setBurstShotCallback(Lcom/sonyericsson/cameraextension/CameraExtension$BurstShotCallback;)V

    .line 531
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    invoke-virtual {v1, v4}, Lcom/sonyericsson/cameraextension/CameraExtension;->setBurstStorageFullDetector(Lcom/sonyericsson/cameraextension/CameraExtension$StorageFullDetector;)V

    .line 535
    :cond_2
    iput-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    .line 536
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_3

    .line 538
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v4}, Landroid/hardware/Camera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 539
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v4}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 540
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 544
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;

    .line 545
    .local v0, "camera":Landroid/hardware/Camera;
    iput-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;

    .line 547
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 550
    .end local v0    # "camera":Landroid/hardware/Camera;
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    if-eqz v1, :cond_4

    .line 551
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    invoke-virtual {v1}, Lcom/sonyericsson/cameraextension/CameraExtension;->release()V

    .line 552
    iput-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    .line 555
    :cond_4
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mSoundPlayer:Lcom/sonyericsson/cameracommon/sound/SoundPlayer;

    if-eqz v1, :cond_5

    .line 556
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mSoundPlayer:Lcom/sonyericsson/cameracommon/sound/SoundPlayer;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->release()V

    .line 559
    :cond_5
    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;->NOT_STARTED:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->changePreProcessStateTo(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;)V

    .line 560
    iput-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    .line 561
    iput-boolean v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mIsPreScanSucceeded:Z

    .line 562
    iput-boolean v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mIsLaunchAndCaptureShutterSoundEnabled:Z

    .line 564
    iput v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCurrentDeviceState:I

    .line 565
    return-void
.end method

.method private resetShutterSound()V
    .locals 3

    .prologue
    .line 1635
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mIsLaunchAndCaptureShutterSoundEnabled:Z

    if-eqz v0, :cond_0

    .line 1638
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "key-sony-ext-shuttersound"

    const-string v2, "/system/media/audio/ui/camera_click.ogg"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1642
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->trySetParametersToDevice(Landroid/hardware/Camera$Parameters;)Z

    .line 1645
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mIsLaunchAndCaptureShutterSoundEnabled:Z

    .line 1647
    :cond_0
    return-void
.end method

.method private selectDefaultCameraLightSettingsIfSharedPreferencesIsEmpty(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 1756
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mFlashSetting:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    if-nez v0, :cond_0

    .line 1758
    invoke-static {p1}, Lcom/sonyericsson/android/camera/fastcapturing/PlatformDependencyResolver;->isFlashLightSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1759
    invoke-static {p1}, Lcom/sonyericsson/android/camera/fastcapturing/PlatformDependencyResolver;->getDefaultFlash(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->getFlashFromParameterString(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mFlashSetting:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    .line 1764
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPhotoLightSetting:Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    if-nez v0, :cond_1

    .line 1766
    invoke-static {p1}, Lcom/sonyericsson/android/camera/fastcapturing/PlatformDependencyResolver;->isPhotoLightSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1767
    invoke-static {p1}, Lcom/sonyericsson/android/camera/fastcapturing/PlatformDependencyResolver;->getDefaultPhotolight(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->getPhotoLightFromParameterString(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPhotoLightSetting:Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    .line 1771
    :cond_1
    return-void
.end method

.method private sendGoogleAnalyticsEvents(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)V
    .locals 5
    .param p1, "activity"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .prologue
    .line 3323
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->isAlreadyHighTemperature()Z

    move-result v0

    .line 3324
    .local v0, "isThermalStop":Z
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mVideoRecorder:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;

    invoke-interface {v2}, Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;->getRecordingTimeMillis()J

    move-result-wide v2

    long-to-int v1, v2

    .line 3326
    .local v1, "recTimeMillis":I
    invoke-static {}, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;->getInstance()Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;->sendEventSettings()V

    .line 3327
    invoke-static {}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->getInstance()Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;

    move-result-object v2

    sget-object v3, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->RECORDING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->sendRecordingEvent(Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$UserOperation;ZIZ)V

    .line 3329
    return-void
.end method

.method private setCameraLight(Ljava/lang/String;)Z
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2112
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getLatestCachedParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 2114
    .local v0, "params":Landroid/hardware/Camera$Parameters;
    if-nez v0, :cond_0

    .line 2118
    const/4 v1, 0x0

    .line 2134
    :goto_0
    return v1

    .line 2122
    :cond_0
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 2126
    new-instance v2, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraDeviceId:I

    invoke-direct {v2, v1, v3}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;I)V

    new-instance v3, Lcom/sonyericsson/cameracommon/status/eachcamera/PhotoLight;

    const-string v1, "torch"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/PhotoLight$Value;->ON:Lcom/sonyericsson/cameracommon/status/eachcamera/PhotoLight$Value;

    :goto_1
    invoke-direct {v3, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/PhotoLight;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/PhotoLight$Value;)V

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    .line 2134
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->trySetParametersToDevice(Landroid/hardware/Camera$Parameters;)Z

    move-result v1

    goto :goto_0

    .line 2126
    :cond_1
    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/PhotoLight$Value;->OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/PhotoLight$Value;

    goto :goto_1
.end method

.method private setCommonCaptureParameters(ILandroid/hardware/Camera$Parameters;)V
    .locals 1
    .param p1, "cameraType"    # I
    .param p2, "targetParams"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 1143
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->setSceneToParameters(ILandroid/hardware/Camera$Parameters;)V

    .line 1146
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->setFocusModeToParameters(ILandroid/hardware/Camera$Parameters;)V

    .line 1149
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->setWhiteBalanceToParameters(ILandroid/hardware/Camera$Parameters;)V

    .line 1152
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->setMeteringToParameters(ILandroid/hardware/Camera$Parameters;)V

    .line 1155
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->setMicrophone()V

    .line 1158
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->setVideoHdrToParameters(ILandroid/hardware/Camera$Parameters;)V

    .line 1161
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->setIso(Landroid/hardware/Camera$Parameters;)V

    .line 1164
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->setFpsRange(ILandroid/hardware/Camera$Parameters;)V

    .line 1167
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->setRecordingHintToParameters(ILandroid/hardware/Camera$Parameters;)V

    .line 1170
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->setJpegEncodingQuality(I)V

    .line 1173
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->setShutterSound(Landroid/hardware/Camera$Parameters;)V

    .line 1176
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->setDcModeParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1177
    return-void
.end method

.method private setCurrentSettingsToParameters(ILandroid/hardware/Camera$Parameters;)V
    .locals 3
    .param p1, "cameraType"    # I
    .param p2, "targetParams"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 1049
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->setPreviewPictureAndCamcordSizeToParameters(ILandroid/hardware/Camera$Parameters;)V

    .line 1052
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPhotoHdrSetting:Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    if-nez v0, :cond_0

    .line 1053
    iget v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraDeviceId:I

    packed-switch v0, :pswitch_data_0

    .line 1067
    const-string v0, "CameraDeviceHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraDeviceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is not supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;->getDefault(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPhotoHdrSetting:Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    .line 1072
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPhotoStabilizerSetting:Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;

    if-nez v0, :cond_1

    .line 1073
    iget v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraDeviceId:I

    packed-switch v0, :pswitch_data_1

    .line 1090
    const-string v0, "CameraDeviceHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraDeviceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is not supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;->getDefault(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPhotoStabilizerSetting:Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;

    .line 1096
    :cond_1
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->setStabilizerToParameters(ILandroid/hardware/Camera$Parameters;)V

    .line 1099
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mBurstShotSetting:Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;

    if-nez v0, :cond_2

    .line 1100
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;->getDefault()Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mBurstShotSetting:Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;

    .line 1102
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mBurstShotSetting:Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;->HIGH:Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;

    if-ne v0, v1, :cond_3

    .line 1104
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->overlayBurstCaptureParameters(ILandroid/hardware/Camera$Parameters;)V

    .line 1108
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->setCommonCaptureParameters(ILandroid/hardware/Camera$Parameters;)V

    .line 1109
    return-void

    .line 1055
    :pswitch_0
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;->getDefault(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPhotoHdrSetting:Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    goto :goto_0

    .line 1059
    :pswitch_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->isSceneRecognitionSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1060
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;->getDefault(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPhotoHdrSetting:Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    goto :goto_0

    .line 1062
    :cond_4
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;->getDefault(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPhotoHdrSetting:Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    goto :goto_0

    .line 1075
    :pswitch_2
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;->getDefault(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPhotoStabilizerSetting:Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;

    goto :goto_1

    .line 1080
    :pswitch_3
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->isSceneRecognitionSupported()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1081
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;->getDefault(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPhotoStabilizerSetting:Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;

    goto :goto_1

    .line 1084
    :cond_5
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;->getDefault(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPhotoStabilizerSetting:Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;

    goto :goto_1

    .line 1053
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1073
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setDcModeParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 1181
    sget-object v0, Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$DcCategory;->NORMAL:Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$DcCategory;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$DcCategory;->writeTo(Landroid/hardware/Camera$Parameters;)V

    .line 1183
    return-void
.end method

.method private setFocusModeToParameters(ILandroid/hardware/Camera$Parameters;)V
    .locals 2
    .param p1, "cameraType"    # I
    .param p2, "targetParams"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 1403
    packed-switch p1, :pswitch_data_0

    .line 1430
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setFocusModeToParameters():[UnExpected State]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1405
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPhotoFocusModeSetting:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    if-eqz v0, :cond_0

    .line 1407
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPhotoFocusModeSetting:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 1433
    :goto_0
    return-void

    .line 1410
    :cond_0
    invoke-static {p2}, Lcom/sonyericsson/android/camera/fastcapturing/PlatformDependencyResolver;->getDefaultFocusModeForFastCapturePhoto(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_0

    .line 1417
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mVideoFocusModeSetting:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    if-eqz v0, :cond_1

    .line 1419
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mVideoFocusModeSetting:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->getValueForVideo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_0

    .line 1422
    :cond_1
    invoke-static {p2}, Lcom/sonyericsson/android/camera/fastcapturing/PlatformDependencyResolver;->getDefaultFocusModeForFastCaptureVideo(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_0

    .line 1403
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setFpsRange(ILandroid/hardware/Camera$Parameters;)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v5, 0x1

    .line 1705
    if-nez p2, :cond_1

    .line 1746
    :cond_0
    :goto_0
    return-void

    .line 1708
    :cond_1
    const/4 v2, -0x1

    .line 1711
    .local v2, "targetFps":I
    packed-switch p1, :pswitch_data_0

    .line 1723
    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v1

    .line 1724
    .local v1, "supportedPreviewFpsRange":Ljava/util/List;, "Ljava/util/List<[I>;"
    if-eqz v1, :cond_0

    .line 1725
    invoke-static {v2, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceUtil;->computePreviewFpsRange(ILjava/util/List;)[I

    move-result-object v0

    .line 1729
    .local v0, "fpsRange":[I
    array-length v3, v0

    if-lez v3, :cond_0

    .line 1730
    const/4 v3, 0x0

    aget v3, v0, v3

    aget v4, v0, v5

    invoke-virtual {p2, v3, v4}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 1739
    aget v3, v0, v5

    div-int/lit16 v3, v3, 0x3e8

    invoke-virtual {p2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    goto :goto_0

    .line 1713
    .end local v0    # "fpsRange":[I
    .end local v1    # "supportedPreviewFpsRange":Ljava/util/List;, "Ljava/util/List<[I>;"
    :pswitch_0
    const/16 v2, 0x3c

    .line 1714
    goto :goto_1

    .line 1717
    :pswitch_1
    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mVideoSizeSetting:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-eqz v3, :cond_2

    .line 1718
    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mVideoSizeSetting:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoFrameRate()I

    move-result v2

    goto :goto_1

    .line 1711
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setIso(Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 1694
    const-string v0, "sony-ae-mode"

    .line 1695
    .local v0, "key":Ljava/lang/String;
    const-string v1, "auto"

    .line 1696
    .local v1, "value":Ljava/lang/String;
    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera/fastcapturing/PlatformDependencyResolver;->isIsoSupported(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1697
    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1701
    :cond_0
    return-void
.end method

.method private setJpegEncodingQuality(I)V
    .locals 2
    .param p1, "cameraProfileQuality"    # I

    .prologue
    .line 1749
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {p1}, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingConstants$JpegQuality;->getPlatformQualityFromCameraProfile(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 1752
    return-void
.end method

.method private setMeteringToParameters(ILandroid/hardware/Camera$Parameters;)V
    .locals 2
    .param p1, "cameraType"    # I
    .param p2, "targetParams"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 1466
    invoke-static {p2}, Lcom/sonyericsson/android/camera/fastcapturing/PlatformDependencyResolver;->getDefaultMeteringForFastCapture(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v0

    .line 1468
    .local v0, "metering":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1469
    const-string v1, "sony-metering-mode"

    invoke-virtual {p2, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1471
    :cond_0
    return-void
.end method

.method private setPictureSize(ILandroid/hardware/Camera$Parameters;)V
    .locals 3
    .param p1, "cameraType"    # I
    .param p2, "targetParams"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 1211
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPhotoResolutionSetting:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPhotoResolutionSetting:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->isPictureSizeSupported(Landroid/graphics/Rect;Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1214
    :cond_0
    iget v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraDeviceId:I

    packed-switch v0, :pswitch_data_0

    .line 1245
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPhotoResolutionSetting:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    if-eqz v0, :cond_2

    .line 1246
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPhotoResolutionSetting:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPictureRect:Landroid/graphics/Rect;

    .line 1247
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPictureRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPictureRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 1249
    :cond_2
    return-void

    .line 1217
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPhotoCaptureFrameShapeSetting:Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;

    if-nez v0, :cond_3

    .line 1218
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;->getDefaultValue(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPhotoCaptureFrameShapeSetting:Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;

    .line 1221
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPhotoCaptureFrameShapeSetting:Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;

    iget v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraDeviceId:I

    invoke-static {v0, v1, p2, v2}, Lcom/sonyericsson/android/camera/fastcapturing/PlatformDependencyResolver;->getDefaultResolutionFrom(Landroid/content/Context;Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;Landroid/hardware/Camera$Parameters;I)Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPhotoResolutionSetting:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    goto :goto_0

    .line 1228
    :pswitch_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->isSceneRecognitionSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1229
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;->getDefaultValue(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPhotoCaptureFrameShapeSetting:Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;

    .line 1231
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPhotoCaptureFrameShapeSetting:Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;

    iget v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraDeviceId:I

    invoke-static {v0, v1, p2, v2}, Lcom/sonyericsson/android/camera/fastcapturing/PlatformDependencyResolver;->getDefaultResolutionFrom(Landroid/content/Context;Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;Landroid/hardware/Camera$Parameters;I)Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPhotoResolutionSetting:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    goto :goto_0

    .line 1238
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mContext:Landroid/content/Context;

    invoke-static {p2, v0}, Lcom/sonyericsson/android/camera/fastcapturing/PlatformDependencyResolver;->getDefaultResolution(Landroid/hardware/Camera$Parameters;Landroid/content/Context;)Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPhotoResolutionSetting:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    goto :goto_0

    .line 1214
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setPreviewPictureAndCamcordSizeToParameters(ILandroid/hardware/Camera$Parameters;)V
    .locals 0
    .param p1, "cameraType"    # I
    .param p2, "targetParams"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 1188
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->setPictureSize(ILandroid/hardware/Camera$Parameters;)V

    .line 1190
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->setVideoSize(ILandroid/hardware/Camera$Parameters;)V

    .line 1192
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->setPreviewSize(ILandroid/hardware/Camera$Parameters;)V

    .line 1193
    return-void
.end method

.method private setPreviewSize(ILandroid/hardware/Camera$Parameters;)V
    .locals 2
    .param p1, "cameraType"    # I
    .param p2, "targetParams"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 1296
    packed-switch p1, :pswitch_data_0

    .line 1311
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setPreviewSize():[UnExpected FastCapture]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1298
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPictureRect:Landroid/graphics/Rect;

    invoke-static {v0, p2, p1, v1}, Lcom/sonyericsson/android/camera/fastcapturing/PlatformDependencyResolver;->getOptimalPreviewSize(Landroid/content/Context;Landroid/hardware/Camera$Parameters;ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPreviewRect:Landroid/graphics/Rect;

    .line 1315
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 1316
    return-void

    .line 1304
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCamcordRect:Landroid/graphics/Rect;

    invoke-static {v0, p2, p1, v1}, Lcom/sonyericsson/android/camera/fastcapturing/PlatformDependencyResolver;->getOptimalPreviewSize(Landroid/content/Context;Landroid/hardware/Camera$Parameters;ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPreviewRect:Landroid/graphics/Rect;

    goto :goto_0

    .line 1296
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setRecordingHintToParameters(ILandroid/hardware/Camera$Parameters;)V
    .locals 2
    .param p1, "cameraType"    # I
    .param p2, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 2138
    packed-switch p1, :pswitch_data_0

    .line 2151
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setVideoModeToParameters():[UnExpected State]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2140
    :pswitch_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->finishVideoNrSetting()V

    .line 2141
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 2154
    :goto_0
    return-void

    .line 2145
    :pswitch_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->prepareVideoNrSetting()V

    .line 2146
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    goto :goto_0

    .line 2138
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setSceneToParameters(ILandroid/hardware/Camera$Parameters;)V
    .locals 3
    .param p1, "cameraType"    # I
    .param p2, "targetParams"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 1320
    iget v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraDeviceId:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1321
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->setSoftSkin(ILandroid/hardware/Camera$Parameters;)V

    .line 1350
    :cond_0
    :goto_0
    return-void

    .line 1325
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 1347
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "setSceneToParameters():[UnExpected State]"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1327
    :pswitch_0
    invoke-static {p2}, Lcom/sonyericsson/android/camera/fastcapturing/PlatformDependencyResolver;->getDefaultSceneModeForFastCapture(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v0

    .line 1329
    .local v0, "scene":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1330
    invoke-virtual {p2, v0}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    goto :goto_0

    .line 1337
    .end local v0    # "scene":Ljava/lang/String;
    :pswitch_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mVideoSceneSetting:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    if-eqz v1, :cond_0

    .line 1339
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mVideoSceneSetting:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    goto :goto_0

    .line 1325
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setShutterSound(Landroid/hardware/Camera$Parameters;)V
    .locals 5
    .param p1, "targetParams"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1604
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->isShutterSoundOff()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->setPhotoShutterSound(Z)V

    .line 1605
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->isShutterSoundOff()Z

    move-result v0

    if-nez v0, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->setVideoRecordSound(Z)V

    .line 1608
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mShutterSoundSetting:Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;->ON:Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mFastCaptureSetting:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    if-ne v0, v2, :cond_1

    .line 1615
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "key-sony-ext-shuttersound"

    sget-object v3, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;->SOUND_FAST_CAPTURE_SHUTTER_DONE:Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;->SOUND1:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    invoke-static {v3, v4}, Lcom/sonyericsson/android/camera/ShutterToneGenerator;->getSoundFilePath(Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1623
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mIsLaunchAndCaptureShutterSoundEnabled:Z

    .line 1625
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 1604
    goto :goto_0
.end method

.method private setSoftSkin(ILandroid/hardware/Camera$Parameters;)V
    .locals 5
    .param p1, "cameraType"    # I
    .param p2, "targetParams"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 1353
    packed-switch p1, :pswitch_data_0

    .line 1397
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "setSoftSkin():[UnExpected State]"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1355
    :pswitch_0
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v0

    .line 1356
    .local v0, "allScenes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_1

    .line 1399
    .end local v0    # "allScenes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 1360
    .restart local v0    # "allScenes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    invoke-static {p2}, Lcom/sonyericsson/android/camera/fastcapturing/PlatformDependencyResolver;->isSoftSkinSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "portrait"

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1362
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

    .line 1363
    .local v2, "softSkin":Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;
    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mSoftSkinSetting:Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

    if-eqz v3, :cond_2

    .line 1364
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mSoftSkinSetting:Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

    .line 1366
    :cond_2
    const-string v3, "auto"

    invoke-virtual {p2, v3}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 1367
    const-string v3, "sony-soft-skin-level-for-picture"

    invoke-static {p2}, Lcom/sonyericsson/android/camera/fastcapturing/PlatformDependencyResolver;->getSoftSkinMaxLevel(Landroid/hardware/Camera$Parameters;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;->getLevel(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1371
    .end local v2    # "softSkin":Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;
    :cond_3
    const/4 v1, 0x0

    .line 1372
    .local v1, "scene":Ljava/lang/String;
    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mSoftSkinSetting:Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

    if-eqz v3, :cond_5

    .line 1373
    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mSoftSkinSetting:Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;->getScene()Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 1379
    :cond_4
    :goto_1
    if-eqz v1, :cond_0

    .line 1380
    invoke-virtual {p2, v1}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    goto :goto_0

    .line 1375
    :cond_5
    const-string v3, "soft-skin"

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1376
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;->getScene()Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1386
    .end local v0    # "allScenes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "scene":Ljava/lang/String;
    :pswitch_1
    invoke-static {p2}, Lcom/sonyericsson/android/camera/fastcapturing/PlatformDependencyResolver;->getDefaultSceneModeForFastCapture(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v1

    .line 1388
    .restart local v1    # "scene":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1389
    invoke-virtual {p2, v1}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    goto :goto_0

    .line 1353
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setStabilizerToParameters(ILandroid/hardware/Camera$Parameters;)V
    .locals 3
    .param p1, "cameraType"    # I
    .param p2, "targetParams"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 1474
    const/4 v0, 0x0

    .line 1475
    .local v0, "sonyIsValue":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1494
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "setStabilizerToParameters():[UnExpected State]"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1477
    :pswitch_0
    invoke-static {p2}, Lcom/sonyericsson/android/camera/fastcapturing/PlatformDependencyResolver;->isHdrSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1478
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPhotoHdrSetting:Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPhotoStabilizerSetting:Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getDependHdrIsValue(Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;)Ljava/lang/String;

    move-result-object v0

    .line 1483
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 1484
    invoke-virtual {p0, p2, p1, v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->setStabilizer(Landroid/hardware/Camera$Parameters;ILjava/lang/String;)V

    .line 1497
    :cond_1
    :goto_1
    return-void

    .line 1480
    :cond_2
    invoke-static {p2}, Lcom/sonyericsson/android/camera/fastcapturing/PlatformDependencyResolver;->isImageStabilizerSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1481
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPhotoStabilizerSetting:Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1489
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->setVideoStabilizerToParameters(ILandroid/hardware/Camera$Parameters;)V

    goto :goto_1

    .line 1475
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setStreamNotificationMute(Z)V
    .locals 3
    .param p1, "mute"    # Z

    .prologue
    .line 3753
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 3754
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 3756
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 3757
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 3765
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :cond_0
    return-void
.end method

.method private setVideoHdrToParameters(ILandroid/hardware/Camera$Parameters;)V
    .locals 2
    .param p1, "cameraType"    # I
    .param p2, "targetParams"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 1651
    packed-switch p1, :pswitch_data_0

    .line 1683
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setStabilizerToParameters():[UnExpected State]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1654
    :pswitch_0
    const-string v0, "sony-video-hdr"

    const-string v1, "off"

    invoke-virtual {p2, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1686
    :goto_0
    return-void

    .line 1660
    :pswitch_1
    invoke-static {p2}, Lcom/sonyericsson/android/camera/fastcapturing/PlatformDependencyResolver;->isVideoHdrSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1661
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mVideoHdrSetting:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-eqz v0, :cond_0

    .line 1663
    const-string v0, "sony-video-hdr"

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mVideoHdrSetting:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1668
    :cond_0
    const-string v0, "sony-video-hdr"

    const-string v1, "on"

    invoke-virtual {p2, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1675
    :cond_1
    const-string v0, "sony-video-hdr"

    const-string v1, "off"

    invoke-virtual {p2, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1651
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setVideoNr(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 3426
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 3439
    :goto_0
    return-void

    .line 3430
    :cond_0
    if-eqz p1, :cond_1

    .line 3431
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "sony-video-nr"

    const-string v2, "on"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3435
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "sony-video-nr"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setVideoSize(ILandroid/hardware/Camera$Parameters;)V
    .locals 4
    .param p1, "cameraType"    # I
    .param p2, "targetParams"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v3, 0x0

    .line 1267
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mVideoSizeSetting:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-nez v0, :cond_2

    .line 1270
    invoke-static {p2}, Lcom/sonyericsson/android/camera/fastcapturing/PlatformDependencyResolver;->getDefaultVideoSize(Landroid/hardware/Camera$Parameters;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mVideoSizeSetting:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 1273
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mVideoSizeSetting:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-eqz v0, :cond_1

    .line 1274
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mVideoSizeSetting:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCamcordRect:Landroid/graphics/Rect;

    .line 1287
    :goto_0
    const-string v0, "video-size"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCamcordRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCamcordRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1289
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1291
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCamcordRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCamcordRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 1293
    :cond_0
    return-void

    .line 1277
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    iget v1, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCamcordRect:Landroid/graphics/Rect;

    goto :goto_0

    .line 1283
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mVideoSizeSetting:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCamcordRect:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method private setVideoStabilizerToParameters(ILandroid/hardware/Camera$Parameters;)V
    .locals 3
    .param p1, "cameraType"    # I
    .param p2, "targetParams"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 1543
    invoke-static {p2}, Lcom/sonyericsson/android/camera/fastcapturing/PlatformDependencyResolver;->isVideoStabilizerSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1558
    :goto_0
    return-void

    .line 1548
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mVideoStabilizerSetting:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    if-eqz v1, :cond_1

    .line 1550
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mVideoStabilizerSetting:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2, p1, v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->setStabilizer(Landroid/hardware/Camera$Parameters;ILjava/lang/String;)V

    goto :goto_0

    .line 1553
    :cond_1
    iget v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraDeviceId:I

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mVideoSizeSetting:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->getRecommendedVideoStabilizerValue(ILcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    move-result-object v0

    .line 1555
    .local v0, "vsDefault":Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2, p1, v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->setStabilizer(Landroid/hardware/Camera$Parameters;ILjava/lang/String;)V

    .line 1556
    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mVideoStabilizerSetting:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    goto :goto_0
.end method

.method private setWhiteBalanceToParameters(ILandroid/hardware/Camera$Parameters;)V
    .locals 3
    .param p1, "cameraType"    # I
    .param p2, "targetParams"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 1437
    packed-switch p1, :pswitch_data_0

    .line 1459
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "setWhiteBalanceToParameters():[UnExpected State]"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1439
    :pswitch_0
    invoke-static {p2}, Lcom/sonyericsson/android/camera/fastcapturing/PlatformDependencyResolver;->getDefaultWhiteBalanceForFastCapturePhoto(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v0

    .line 1441
    .local v0, "whiteBalance":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1442
    invoke-virtual {p2, v0}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 1462
    .end local v0    # "whiteBalance":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1449
    :pswitch_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mVideoWhiteBalanceSetting:Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

    if-eqz v1, :cond_0

    .line 1451
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mVideoWhiteBalanceSetting:Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    goto :goto_0

    .line 1437
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private declared-synchronized startObjectTracking()V
    .locals 4

    .prologue
    .line 2282
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    .line 2283
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/PlatformDependencyResolver;->isObjectTrackingSuppoted(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2284
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mIsObjectTrackingAlreadyStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 2304
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 2289
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mOnObjectTrackedCallback:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnObjectTrackedCallback;

    const/16 v2, 0x4b

    const/16 v3, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/cameraextension/CameraExtension;->setObjectTrackingCallback(Lcom/sonyericsson/cameraextension/CameraExtension$ObjectTrackingCallback;II)V

    .line 2293
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    invoke-virtual {v0}, Lcom/sonyericsson/cameraextension/CameraExtension;->startObjectTracking()V

    .line 2295
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mIsObjectTrackingAlreadyStarted:Z

    .line 2299
    new-instance v0, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraDeviceId:I

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;I)V

    new-instance v1, Lcom/sonyericsson/cameracommon/status/eachcamera/ObjectTracking;

    sget-object v2, Lcom/sonyericsson/cameracommon/status/eachcamera/ObjectTracking$Value;->ON:Lcom/sonyericsson/cameracommon/status/eachcamera/ObjectTracking$Value;

    invoke-direct {v1, v2}, Lcom/sonyericsson/cameracommon/status/eachcamera/ObjectTracking;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/ObjectTracking$Value;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2282
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private stopFaceDetectionNotSynchronized()V
    .locals 4

    .prologue
    .line 2204
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mIsFaceDetectionAlreadyStarted:Z

    if-nez v1, :cond_1

    .line 2233
    :cond_0
    :goto_0
    return-void

    .line 2208
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_0

    .line 2212
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/fastcapturing/PlatformDependencyResolver;->isFaceDetectionSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2213
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    if-eqz v1, :cond_0

    .line 2216
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameraextension/CameraExtension;->setFaceDetectionCallback(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionCallback;)V

    .line 2218
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopFaceDetection()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2222
    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mIsFaceDetectionAlreadyStarted:Z

    .line 2227
    new-instance v1, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraDeviceId:I

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;I)V

    new-instance v2, Lcom/sonyericsson/cameracommon/status/eachcamera/FaceIdentification;

    sget-object v3, Lcom/sonyericsson/cameracommon/status/eachcamera/FaceIdentification$Value;->OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/FaceIdentification$Value;

    invoke-direct {v2, v3}, Lcom/sonyericsson/cameracommon/status/eachcamera/FaceIdentification;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/FaceIdentification$Value;)V

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v1

    new-instance v2, Lcom/sonyericsson/cameracommon/status/eachcamera/FaceDetection;

    sget-object v3, Lcom/sonyericsson/cameracommon/status/eachcamera/FaceDetection$Value;->OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/FaceDetection$Value;

    invoke-direct {v2, v3}, Lcom/sonyericsson/cameracommon/status/eachcamera/FaceDetection;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/FaceDetection$Value;)V

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    goto :goto_0

    .line 2219
    :catch_0
    move-exception v0

    .line 2220
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "CameraDeviceHandler"

    const-string v2, ".stopFaceDetection():[stopFaceDetection failed]"

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private declared-synchronized stopObjectTracking()V
    .locals 1

    .prologue
    .line 2307
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->stopObjectTrackingNotSynchronized()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2308
    monitor-exit p0

    return-void

    .line 2307
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private stopObjectTrackingNotSynchronized()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2311
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    .line 2312
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/PlatformDependencyResolver;->isObjectTrackingSuppoted(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2313
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mIsObjectTrackingAlreadyStarted:Z

    if-nez v0, :cond_1

    .line 2331
    :cond_0
    :goto_0
    return-void

    .line 2318
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/sonyericsson/cameraextension/CameraExtension;->setObjectTrackingCallback(Lcom/sonyericsson/cameraextension/CameraExtension$ObjectTrackingCallback;II)V

    .line 2319
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    invoke-virtual {v0}, Lcom/sonyericsson/cameraextension/CameraExtension;->stopObjectTracking()V

    .line 2321
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mIsObjectTrackingAlreadyStarted:Z

    .line 2326
    new-instance v0, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraDeviceId:I

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;I)V

    new-instance v1, Lcom/sonyericsson/cameracommon/status/eachcamera/ObjectTracking;

    sget-object v2, Lcom/sonyericsson/cameracommon/status/eachcamera/ObjectTracking$Value;->OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/ObjectTracking$Value;

    invoke-direct {v1, v2}, Lcom/sonyericsson/cameracommon/status/eachcamera/ObjectTracking;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/ObjectTracking$Value;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    goto :goto_0
.end method

.method private stopPreview()V
    .locals 1

    .prologue
    .line 4136
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->isRecorderWorking()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4137
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_1

    .line 4142
    :cond_0
    :goto_0
    return-void

    .line 4140
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    goto :goto_0
.end method

.method private stopSceneRecognitionNotSynchronized()V
    .locals 3

    .prologue
    .line 2260
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mIsSceneRecognitionAlreadyStarted:Z

    if-nez v0, :cond_1

    .line 2279
    :cond_0
    :goto_0
    return-void

    .line 2265
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    .line 2266
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/PlatformDependencyResolver;->isSceneRecognitionSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2267
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    invoke-virtual {v0}, Lcom/sonyericsson/cameraextension/CameraExtension;->stopSceneRecognition()V

    .line 2269
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mIsSceneRecognitionAlreadyStarted:Z

    .line 2274
    new-instance v0, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraDeviceId:I

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;I)V

    new-instance v1, Lcom/sonyericsson/cameracommon/status/eachcamera/SceneRecognition;

    sget-object v2, Lcom/sonyericsson/cameracommon/status/eachcamera/SceneRecognition$Value;->OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/SceneRecognition$Value;

    invoke-direct {v1, v2}, Lcom/sonyericsson/cameracommon/status/eachcamera/SceneRecognition;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/SceneRecognition$Value;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    goto :goto_0
.end method

.method private stopVideoMetadata()V
    .locals 3

    .prologue
    .line 4029
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getInstance()Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraDeviceId:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->isVideoMetaDataSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4030
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    if-eqz v0, :cond_0

    .line 4032
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    invoke-virtual {v0}, Lcom/sonyericsson/cameraextension/CameraExtension;->stopVideoMetadata()V

    .line 4033
    new-instance v0, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraDeviceId:I

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;I)V

    new-instance v1, Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata;

    sget-object v2, Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata$Value;->OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata$Value;

    invoke-direct {v1, v2}, Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata$Value;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    .line 4038
    :cond_0
    return-void
.end method


# virtual methods
.method public applyCameraLightSetting(I)V
    .locals 2
    .param p1, "cameraType"    # I

    .prologue
    .line 2029
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getLatestCachedParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 2031
    .local v0, "params":Landroid/hardware/Camera$Parameters;
    if-nez v0, :cond_1

    .line 2052
    :cond_0
    :goto_0
    return-void

    .line 2039
    :cond_1
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/PlatformDependencyResolver;->isFlashLightSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2041
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mFlashSetting:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->setCameraLight(Ljava/lang/String;)Z

    .line 2051
    :goto_1
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->trySetParametersToDevice(Landroid/hardware/Camera$Parameters;)Z

    goto :goto_0

    .line 2042
    :cond_2
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/PlatformDependencyResolver;->isPhotoLightSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2044
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPhotoLightSetting:Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->setCameraLight(Ljava/lang/String;)Z

    goto :goto_1
.end method

.method public applySavingRequest(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;Landroid/hardware/Camera$Parameters;)V
    .locals 12
    .param p1, "savingRequest"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;
    .param p2, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const-wide/16 v8, 0x0

    .line 2753
    if-eqz p2, :cond_3

    .line 2755
    iget-object v1, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->orientation:I

    invoke-virtual {p2, v1}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 2758
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->removeGpsData()V

    .line 2761
    iget-object v1, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    if-eqz v1, :cond_2

    .line 2762
    iget-object v1, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    .line 2763
    .local v2, "lat":D
    iget-object v1, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    .line 2764
    .local v4, "lon":D
    cmpl-double v1, v2, v8

    if-nez v1, :cond_0

    cmpl-double v1, v4, v8

    if-eqz v1, :cond_4

    :cond_0
    const/4 v0, 0x1

    .line 2767
    .local v0, "hasLatLon":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 2770
    invoke-virtual {p2, v2, v3}, Landroid/hardware/Camera$Parameters;->setGpsLatitude(D)V

    .line 2771
    invoke-virtual {p2, v4, v5}, Landroid/hardware/Camera$Parameters;->setGpsLongitude(D)V

    .line 2774
    iget-object v1, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->hasAltitude()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2776
    iget-object v1, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v8

    invoke-virtual {p2, v8, v9}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    .line 2788
    :cond_1
    iget-object v1, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v1, v8, v10

    if-eqz v1, :cond_2

    .line 2791
    iget-object v1, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long v6, v8, v10

    .line 2793
    .local v6, "utcTimeSeconds":J
    invoke-virtual {p2, v6, v7}, Landroid/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    .line 2799
    .end local v0    # "hasLatLon":Z
    .end local v2    # "lat":D
    .end local v4    # "lon":D
    .end local v6    # "utcTimeSeconds":J
    :cond_2
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->trySetParametersToDevice(Landroid/hardware/Camera$Parameters;)Z

    .line 2801
    :cond_3
    return-void

    .line 2764
    .restart local v2    # "lat":D
    .restart local v4    # "lon":D
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public autoFocus()V
    .locals 5

    .prologue
    .line 2624
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mOnPreAutoFocusCallback:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnPreAutoFocusCallback;

    if-eqz v0, :cond_1

    .line 2653
    :cond_0
    :goto_0
    return-void

    .line 2631
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    if-eqz v0, :cond_0

    .line 2649
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mOnAutoFocusCallback:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnAutoFocusCallback;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonyericsson/cameraextension/CameraExtension;->startAutoFocus(Lcom/sonyericsson/cameraextension/CameraExtension$AutoFocusCallback;ZZZ)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2650
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public cancelAutoFocus()V
    .locals 1

    .prologue
    .line 2668
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mOnPreAutoFocusCallback:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnPreAutoFocusCallback;

    if-eqz v0, :cond_1

    .line 2686
    :cond_0
    :goto_0
    return-void

    .line 2676
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    if-eqz v0, :cond_0

    .line 2684
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    invoke-virtual {v0}, Lcom/sonyericsson/cameraextension/CameraExtension;->stopAutoFocus()V

    goto :goto_0
.end method

.method public captureWhileRecording(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)V
    .locals 3
    .param p1, "savingRequest"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    .prologue
    .line 3445
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getCameraInstance()Landroid/hardware/Camera;

    move-result-object v0

    .line 3447
    .local v0, "camera":Landroid/hardware/Camera;
    if-nez v0, :cond_0

    .line 3470
    :goto_0
    return-void

    .line 3454
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->isVideoSnapshotSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3458
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->takePicture(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)V

    goto :goto_0

    .line 3463
    :cond_1
    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;

    invoke-direct {v1, p1}, Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPreviewFrameGrabber:Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;

    .line 3464
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPreviewFrameGrabber:Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;

    new-instance v2, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnPreviewFrameGrabbedCallback;

    invoke-direct {v2, p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnPreviewFrameGrabbedCallback;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)V

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;->setOnPreviewFrameGrabbedListener(Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber$OnPreviewFrameGrabbedListener;)V

    .line 3466
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPreviewFrameGrabber:Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;->requestFrame(Landroid/hardware/Camera;)V

    goto :goto_0
.end method

.method public changeBurstShotSettingTo(Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;)V
    .locals 0
    .param p1, "burst"    # Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;

    .prologue
    .line 3794
    return-void
.end method

.method public changeCameraModeTo(IZ)Z
    .locals 8
    .param p1, "cameraType"    # I
    .param p2, "isModelessRecording"    # Z

    .prologue
    .line 3586
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getCameraInstance()Landroid/hardware/Camera;

    move-result-object v0

    .line 3587
    .local v0, "camera":Landroid/hardware/Camera;
    if-nez v0, :cond_0

    .line 3590
    const/4 v1, 0x0

    .line 3685
    :goto_0
    return v1

    .line 3594
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->requestCacheParameters()V

    .line 3595
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getLatestCachedParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 3598
    .local v2, "params":Landroid/hardware/Camera$Parameters;
    packed-switch p1, :pswitch_data_0

    .line 3636
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "changeCameraModeTo():[preview] [UnExpected camera TYPE]"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3601
    :pswitch_0
    iget-object v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPictureRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object v6, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPictureRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 3603
    iget-object v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPictureRect:Landroid/graphics/Rect;

    invoke-static {v5, v2, p1, v6}, Lcom/sonyericsson/android/camera/fastcapturing/PlatformDependencyResolver;->getOptimalPreviewSize(Landroid/content/Context;Landroid/hardware/Camera$Parameters;ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v5

    iput-object v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPreviewRect:Landroid/graphics/Rect;

    .line 3639
    :goto_1
    iget-object v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object v6, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 3643
    if-eqz p2, :cond_6

    .line 3647
    invoke-static {v2}, Lcom/sonyericsson/android/camera/fastcapturing/PlatformDependencyResolver;->isVideoStabilizerSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3648
    const/4 v5, 0x2

    iget-object v6, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mVideoStabilizerSetting:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v2, v5, v6}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->setStabilizer(Landroid/hardware/Camera$Parameters;ILjava/lang/String;)V

    .line 3665
    :cond_1
    :goto_2
    invoke-direct {p0, p1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->setRecordingHintToParameters(ILandroid/hardware/Camera$Parameters;)V

    .line 3668
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->willPreviewBeRestarted()Z

    move-result v1

    .line 3670
    .local v1, "isPreviewRestarted":Z
    if-eqz v1, :cond_2

    .line 3671
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->stopPreview()V

    .line 3674
    :cond_2
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->trySetParametersToDevice(Landroid/hardware/Camera$Parameters;)Z

    .line 3675
    if-eqz v1, :cond_3

    .line 3676
    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 3681
    :cond_3
    new-instance v5, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mContext:Landroid/content/Context;

    iget v7, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraDeviceId:I

    invoke-direct {v5, v6, v7}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->putFromParameter(Landroid/hardware/Camera$Parameters;)Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->publish()V

    goto :goto_0

    .line 3610
    .end local v1    # "isPreviewRestarted":Z
    :pswitch_1
    const/4 v4, 0x0

    .line 3611
    .local v4, "videoSnapshotSize":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v3

    .line 3612
    .local v3, "supportedPictureSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-eqz v3, :cond_4

    .line 3613
    iget-object v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCamcordRect:Landroid/graphics/Rect;

    invoke-static {v5, v3}, Lcom/sonyericsson/android/camera/CameraSize;->getOptimalVideoSnapshotSizeFromCamerSizeList(Landroid/graphics/Rect;Ljava/util/List;)Landroid/graphics/Rect;

    move-result-object v4

    .line 3616
    :cond_4
    if-eqz v4, :cond_5

    .line 3617
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 3629
    :cond_5
    iget-object v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCamcordRect:Landroid/graphics/Rect;

    invoke-static {v5, v2, p1, v6}, Lcom/sonyericsson/android/camera/fastcapturing/PlatformDependencyResolver;->getOptimalPreviewSize(Landroid/content/Context;Landroid/hardware/Camera$Parameters;ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v5

    iput-object v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPreviewRect:Landroid/graphics/Rect;

    goto :goto_1

    .line 3657
    .end local v3    # "supportedPictureSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v4    # "videoSnapshotSize":Landroid/graphics/Rect;
    :cond_6
    invoke-direct {p0, p1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->setSceneToParameters(ILandroid/hardware/Camera$Parameters;)V

    .line 3658
    invoke-direct {p0, p1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->setFocusModeToParameters(ILandroid/hardware/Camera$Parameters;)V

    .line 3659
    invoke-direct {p0, p1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->setWhiteBalanceToParameters(ILandroid/hardware/Camera$Parameters;)V

    .line 3660
    invoke-direct {p0, p1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->setMeteringToParameters(ILandroid/hardware/Camera$Parameters;)V

    .line 3661
    invoke-direct {p0, p1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->setStabilizerToParameters(ILandroid/hardware/Camera$Parameters;)V

    goto :goto_2

    .line 3598
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public deselectObject()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 3723
    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mIsObjectTrackingAlreadyStarted:Z

    if-nez v2, :cond_1

    .line 3749
    :cond_0
    :goto_0
    return v1

    .line 3731
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getCameraInstance()Landroid/hardware/Camera;

    move-result-object v0

    .line 3733
    .local v0, "camera":Landroid/hardware/Camera;
    if-eqz v0, :cond_0

    .line 3738
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/fastcapturing/PlatformDependencyResolver;->isObjectTrackingSuppoted(Landroid/hardware/Camera$Parameters;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3744
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    invoke-virtual {v1}, Lcom/sonyericsson/cameraextension/CameraExtension;->deselectObject()V

    .line 3747
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->stopObjectTracking()V

    .line 3749
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public finalizeRecording()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 3332
    monitor-enter p0

    .line 3333
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mVideoRecorder:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 3335
    :try_start_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->disableRecordingSoundIfNeeded()V

    .line 3337
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mVideoRecorder:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;

    invoke-interface {v1}, Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;->stop()V
    :try_end_1
    .catch Lcom/sonymobile/cameracommon/media/recorder/RecorderException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3342
    :try_start_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mVideoRecorder:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;

    invoke-interface {v3}, Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;->getRecordingTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;->setDuration(J)V

    .line 3344
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mIsRecording:Ljava/lang/Boolean;

    .line 3347
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    if-eqz v1, :cond_1

    .line 3348
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->onVideoRecordingDone(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;)V

    .line 3350
    :cond_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3353
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->isShutterSoundOff()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->setPhotoShutterSound(Z)V

    .line 3355
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->trySetParametersToDevice(Landroid/hardware/Camera$Parameters;)Z

    .line 3358
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->setStreamNotificationMute(Z)V

    .line 3361
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mContext:Landroid/content/Context;

    if-nez v1, :cond_3

    .line 3370
    :goto_1
    return-void

    .line 3338
    :catch_0
    move-exception v0

    .line 3339
    .local v0, "e":Lcom/sonymobile/cameracommon/media/recorder/RecorderException;
    :try_start_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "stopRecording():[Failed to stop MediaRecorder.]"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3350
    .end local v0    # "e":Lcom/sonymobile/cameracommon/media/recorder/RecorderException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :cond_2
    move v1, v2

    .line 3353
    goto :goto_0

    .line 3366
    :cond_3
    new-instance v1, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraDeviceId:I

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;I)V

    new-instance v2, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus;

    sget-object v3, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;->STILL_PREVIEW:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    invoke-direct {v2, v3}, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;)V

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    goto :goto_1
.end method

.method public getBurstShotSetting()Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;
    .locals 1

    .prologue
    .line 3785
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mBurstShotSetting:Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;

    return-object v0
.end method

.method public getCamcordRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 2423
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCamcordRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getCameraDeviceStatus()I
    .locals 1

    .prologue
    .line 380
    iget v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCurrentDeviceState:I

    return v0
.end method

.method public getCameraId()I
    .locals 1

    .prologue
    .line 2404
    iget v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraDeviceId:I

    return v0
.end method

.method public getFaceIdService()Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification;
    .locals 1

    .prologue
    .line 3869
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mFaceIdService:Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification;

    return-object v0
.end method

.method public getFlashSetting()Lcom/sonyericsson/android/camera/configuration/parameters/Flash;
    .locals 1

    .prologue
    .line 1774
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mFlashSetting:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    return-object v0
.end method

.method public getLatestCachedParameters()Landroid/hardware/Camera$Parameters;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2454
    iget v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCurrentDeviceState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 2478
    :cond_0
    :goto_0
    return-object v1

    .line 2460
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    if-nez v2, :cond_2

    .line 2462
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getCameraInstance()Landroid/hardware/Camera;

    move-result-object v0

    .line 2464
    .local v0, "camera":Landroid/hardware/Camera;
    if-eqz v0, :cond_0

    .line 2471
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    .line 2472
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    if-nez v2, :cond_2

    .line 2473
    const-string v2, "CameraDeviceHandler"

    const-string v3, "getLatestCachedParameters: mLatestCachedParameters is null"

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2478
    .end local v0    # "camera":Landroid/hardware/Camera;
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    goto :goto_0
.end method

.method public getMaxSuperResolutionZoom()I
    .locals 3

    .prologue
    .line 3032
    const/4 v0, 0x0

    .line 3034
    .local v0, "max":I
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getLatestCachedParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 3035
    .local v2, "params":Landroid/hardware/Camera$Parameters;
    if-nez v2, :cond_0

    move v1, v0

    .line 3041
    .end local v0    # "max":I
    .local v1, "max":I
    :goto_0
    return v1

    .line 3040
    .end local v1    # "max":I
    .restart local v0    # "max":I
    :cond_0
    invoke-static {v2}, Lcom/sonyericsson/android/camera/fastcapturing/PlatformDependencyResolver;->getMaxSuperResolutionZoom(Landroid/hardware/Camera$Parameters;)I

    move-result v0

    move v1, v0

    .line 3041
    .end local v0    # "max":I
    .restart local v1    # "max":I
    goto :goto_0
.end method

.method public getMaxZoom()I
    .locals 3

    .prologue
    .line 3016
    const/4 v0, 0x0

    .line 3018
    .local v0, "max":I
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getLatestCachedParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 3019
    .local v2, "params":Landroid/hardware/Camera$Parameters;
    if-nez v2, :cond_0

    move v1, v0

    .line 3027
    .end local v0    # "max":I
    .local v1, "max":I
    :goto_0
    return v1

    .line 3025
    .end local v1    # "max":I
    .restart local v0    # "max":I
    :cond_0
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    move v1, v0

    .line 3027
    .end local v0    # "max":I
    .restart local v1    # "max":I
    goto :goto_0
.end method

.method public getPictureRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 2419
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPictureRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getPreProcessState()Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;
    .locals 1

    .prologue
    .line 1933
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPreProcessState:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;

    return-object v0
.end method

.method public getPreviewRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 2415
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPreviewRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getShutterSound()Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;
    .locals 1

    .prologue
    .line 3789
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mShutterSoundSetting:Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;

    return-object v0
.end method

.method public getVideoHdr()Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;
    .locals 1

    .prologue
    .line 2427
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mVideoHdrSetting:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    return-object v0
.end method

.method public getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    .locals 1

    .prologue
    .line 2431
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mVideoSizeSetting:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    return-object v0
.end method

.method public getVideoStabilizer()Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;
    .locals 1

    .prologue
    .line 2435
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mVideoStabilizerSetting:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    return-object v0
.end method

.method public initialize()V
    .locals 1

    .prologue
    .line 773
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mIsImmediateReleaseRequested:Z

    .line 774
    return-void
.end method

.method public isCameraDeviceIsOpenedRightNow()Z
    .locals 2

    .prologue
    .line 2392
    iget v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCurrentDeviceState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2393
    const/4 v0, 0x1

    .line 2396
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCameraDisabled()Z
    .locals 1

    .prologue
    .line 769
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mIsCameraDisabled:Z

    return v0
.end method

.method public isCameraFront()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2408
    iget v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraDeviceId:I

    if-ne v1, v0, :cond_0

    .line 2411
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCloseDeviceTaskWorking()Z
    .locals 1

    .prologue
    .line 4080
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCloseDeviceFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 4082
    const/4 v0, 0x1

    .line 4085
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isImmediateReleaseRequested()Z
    .locals 1

    .prologue
    .line 2387
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mIsImmediateReleaseRequested:Z

    return v0
.end method

.method public isOpenDeviceThreadAlive()Z
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mOpenDeviceThread:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OpenDeviceThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mOpenDeviceThread:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OpenDeviceThread;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OpenDeviceThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    const/4 v0, 0x1

    .line 376
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPreCaptureAlreadyDone()Z
    .locals 2

    .prologue
    .line 1929
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPreProcessState:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;->PRE_CAPTURE_DONE:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPreCaptureOnGoing()Z
    .locals 2

    .prologue
    .line 1925
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPreProcessState:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;->PRE_CAPTURE_STARTED:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPreScanAlreadyDone()Z
    .locals 2

    .prologue
    .line 1915
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPreProcessState:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;->PRE_SCAN_DONE:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPreProcessState:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;->PRE_CAPTURE_STARTED:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPreProcessState:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;->PRE_CAPTURE_DONE:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPreScanOnGoing()Z
    .locals 2

    .prologue
    .line 1911
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPreProcessState:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;->PRE_SCAN_STARTED:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPreScanSucceeded()Z
    .locals 1

    .prologue
    .line 1921
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mIsPreScanSucceeded:Z

    return v0
.end method

.method public isRecorderWorking()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 4048
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mVideoRecorder:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;

    if-nez v1, :cond_0

    .line 4049
    const-string v1, "CameraDeviceHandler"

    const-string v2, "Video Recorder: null"

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4056
    :goto_0
    return v0

    .line 4051
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mVideoRecorder:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;

    invoke-interface {v1}, Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;->isRecordingOrPaused()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mVideoRecorder:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;

    invoke-interface {v1}, Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;->isStopping()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4052
    const-string v1, "CameraDeviceHandler"

    const-string v2, "Video Recorder: not working"

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4055
    :cond_1
    const-string v0, "CameraDeviceHandler"

    const-string v1, "Video Recorder: working"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4056
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isRecording()Z
    .locals 1

    .prologue
    .line 3993
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mIsRecording:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isShutterSoundOff()Z
    .locals 2

    .prologue
    .line 2334
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mShutterSoundSetting:Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;

    if-eqz v0, :cond_0

    .line 2335
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$1;->$SwitchMap$com$sonyericsson$cameracommon$commonsetting$values$ShutterSound:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mShutterSoundSetting:Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2345
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2337
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 2335
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onError()V
    .locals 1

    .prologue
    .line 415
    monitor-enter p0

    .line 416
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 417
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;

    .line 419
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mSoundPlayer:Lcom/sonyericsson/cameracommon/sound/SoundPlayer;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mSoundPlayer:Lcom/sonyericsson/cameracommon/sound/SoundPlayer;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->release()V

    .line 422
    :cond_0
    monitor-exit p0

    .line 423
    return-void

    .line 422
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public overlaySmartCoverCameraSetting()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 3960
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mFlashSetting:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    .line 3963
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->EIGHT_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPhotoResolutionSetting:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 3965
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPreferences:Landroid/content/SharedPreferences;

    iget v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraDeviceId:I

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->FOCUS_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->SINGLE:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    invoke-static {v0, v4, v1, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraUtils;->loadParameter(Landroid/content/SharedPreferences;IILcom/sonyericsson/android/camera/configuration/ParameterKey;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPhotoFocusModeSetting:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    .line 3971
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPreferences:Landroid/content/SharedPreferences;

    iget v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraDeviceId:I

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->STABILIZER:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;

    invoke-static {v0, v1, v4, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingCameraUtils;->loadParameter(Landroid/content/SharedPreferences;IILcom/sonyericsson/android/camera/configuration/ParameterKey;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPhotoStabilizerSetting:Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;

    .line 3977
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mBurstShotSetting:Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;

    .line 3978
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mFaceIdentifySetting:Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;

    .line 3979
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mSoftSkinSetting:Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

    .line 3980
    return-void
.end method

.method public pauseRecording()V
    .locals 3

    .prologue
    .line 3393
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mVideoRecorder:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;

    if-eqz v1, :cond_0

    .line 3394
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mVideoRecorder:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;

    invoke-interface {v1}, Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;->pause()V
    :try_end_0
    .catch Lcom/sonymobile/cameracommon/media/recorder/RecorderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3401
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->setStreamNotificationMute(Z)V

    .line 3402
    return-void

    .line 3396
    :catch_0
    move-exception v0

    .line 3397
    .local v0, "e":Lcom/sonymobile/cameracommon/media/recorder/RecorderException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "pauseRecording():[Failed to pause MediaRecorder.]"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public preCapture()V
    .locals 4

    .prologue
    .line 1830
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getCameraInstance()Landroid/hardware/Camera;

    move-result-object v0

    .line 1832
    .local v0, "camera":Landroid/hardware/Camera;
    if-nez v0, :cond_0

    .line 1854
    :goto_0
    return-void

    .line 1838
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->createPreCaptureSavingRequest()Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLastSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    .line 1839
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLastSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->applySavingRequest(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;Landroid/hardware/Camera$Parameters;)V

    .line 1841
    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;->PRE_CAPTURE_STARTED:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->changePreProcessStateTo(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;)V

    .line 1846
    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnPreCaptureShutterCallback;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnPreCaptureShutterCallback;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)V

    const/4 v2, 0x0

    new-instance v3, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnPreCapturePictureTakenCallback;

    invoke-direct {v3, p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnPreCapturePictureTakenCallback;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 1851
    invoke-static {}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->getInstance()Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->SHOOTING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    invoke-virtual {v1, v2}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->setUserOperation(Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$UserOperation;)V

    goto :goto_0
.end method

.method public preScan()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1784
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    if-eqz v0, :cond_0

    .line 1785
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnPreAutoFocusCallback;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnPreAutoFocusCallback;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mOnPreAutoFocusCallback:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnPreAutoFocusCallback;

    .line 1786
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mOnPreAutoFocusCallback:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnPreAutoFocusCallback;

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/sonyericsson/cameraextension/CameraExtension;->startAutoFocus(Lcom/sonyericsson/cameraextension/CameraExtension$AutoFocusCallback;ZZZ)V

    .line 1788
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;->PRE_SCAN_STARTED:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->changePreProcessStateTo(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;)V

    .line 1790
    :cond_0
    return-void
.end method

.method public prepareAdditionalFeatures(ILcom/sonyericsson/android/camera/ExtendedActivity;)V
    .locals 3
    .param p1, "cameraType"    # I
    .param p2, "activity"    # Lcom/sonyericsson/android/camera/ExtendedActivity;

    .prologue
    .line 1938
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getCameraInstance()Landroid/hardware/Camera;

    move-result-object v0

    .line 1939
    .local v0, "camera":Landroid/hardware/Camera;
    if-nez v0, :cond_0

    .line 1972
    :goto_0
    return-void

    .line 1947
    :cond_0
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->prepareZoom(Landroid/hardware/Camera;)V

    .line 1952
    packed-switch p1, :pswitch_data_0

    .line 1967
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "prepareAdditionalSettings():[UnExpected State]"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1954
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->startFaceDetection()V

    .line 1955
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->startFaceIdService(Landroid/app/Activity;)V

    .line 1956
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->startSceneRecognition()V

    goto :goto_0

    .line 1960
    :pswitch_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->startFaceDetection()V

    .line 1961
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->startFaceIdService(Landroid/app/Activity;)V

    .line 1962
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->startSceneRecognition()V

    goto :goto_0

    .line 1952
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public releaseCameraInstance()V
    .locals 3

    .prologue
    .line 404
    const-string v0, "CameraDeviceHandler"

    const-string v1, "releaseCameraInstance():[IN]"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->isRecorderWorking()Z

    move-result v0

    if-nez v0, :cond_0

    .line 406
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->releaseCamera()V

    .line 412
    :goto_0
    return-void

    .line 409
    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCloseDeviceExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 410
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCloseDeviceExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$CloseDeviceTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$CloseDeviceTask;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCloseDeviceFuture:Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method public declared-synchronized releaseVideo()V
    .locals 1

    .prologue
    .line 3419
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->awaitFinishingRecording()V

    .line 3422
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->setStreamNotificationMute(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3423
    monitor-exit p0

    return-void

    .line 3419
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public requestCacheParameters()V
    .locals 3

    .prologue
    .line 2483
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getCameraInstance()Landroid/hardware/Camera;

    move-result-object v0

    .line 2485
    .local v0, "camera":Landroid/hardware/Camera;
    if-nez v0, :cond_1

    .line 2496
    :cond_0
    :goto_0
    return-void

    .line 2492
    :cond_1
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    .line 2493
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    if-nez v1, :cond_0

    .line 2494
    const-string v1, "CameraDeviceHandler"

    const-string v2, "requestCacheParameters: mLatestCachedParameters is null."

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public requestContinuousPreviewFrame(Z)V
    .locals 2
    .param p1, "isStart"    # Z

    .prologue
    .line 3532
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getCameraInstance()Landroid/hardware/Camera;

    move-result-object v0

    .line 3534
    .local v0, "camera":Landroid/hardware/Camera;
    if-nez v0, :cond_0

    .line 3547
    :goto_0
    return-void

    .line 3542
    :cond_0
    if-eqz p1, :cond_1

    .line 3543
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mRequestContinuousPreviewFrameCallback:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$RequestContinuousPreviewFrameCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    goto :goto_0

    .line 3545
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    goto :goto_0
.end method

.method public requestOnePreviewFrame()V
    .locals 2

    .prologue
    .line 3499
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getCameraInstance()Landroid/hardware/Camera;

    move-result-object v0

    .line 3501
    .local v0, "camera":Landroid/hardware/Camera;
    if-nez v0, :cond_0

    .line 3508
    :goto_0
    return-void

    .line 3507
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mRequestOnePreviewFrameCallback:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$RequestOnePreviewFrameCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    goto :goto_0
.end method

.method public resetFocusMode()V
    .locals 7

    .prologue
    .line 3111
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getCameraInstance()Landroid/hardware/Camera;

    move-result-object v0

    .line 3113
    .local v0, "camera":Landroid/hardware/Camera;
    if-nez v0, :cond_1

    .line 3156
    :cond_0
    :goto_0
    return-void

    .line 3119
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getLatestCachedParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 3121
    .local v2, "params":Landroid/hardware/Camera$Parameters;
    if-eqz v2, :cond_0

    .line 3127
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v4

    const/4 v5, 0x1

    if-lt v4, v5, :cond_0

    .line 3133
    invoke-static {v2}, Lcom/sonyericsson/android/camera/fastcapturing/PlatformDependencyResolver;->getDefaultFocusModeForFastCapturePhoto(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 3137
    const-string v4, "sony-focus-area"

    const-string v5, "center"

    invoke-virtual {v2, v4, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3141
    const/4 v3, 0x0

    .line 3144
    .local v3, "weight":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3145
    .local v1, "focusAreaList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    new-instance v4, Landroid/hardware/Camera$Area;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3146
    invoke-virtual {v2, v1}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 3149
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->trySetParametersToDevice(Landroid/hardware/Camera$Parameters;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0
.end method

.method public restoreSettingAfterRecording()V
    .locals 1

    .prologue
    .line 4041
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->reconnectCamera()V

    .line 4042
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->stopVideoMetadata()V

    .line 4043
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->isShutterSoundOff()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->setVideoRecordSound(Z)V

    .line 4044
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getLatestCachedParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->trySetParametersToDevice(Landroid/hardware/Camera$Parameters;)Z

    .line 4045
    return-void

    .line 4043
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resumePhotoLight()V
    .locals 2

    .prologue
    .line 2087
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getLatestCachedParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 2089
    .local v0, "params":Landroid/hardware/Camera$Parameters;
    if-nez v0, :cond_1

    .line 2108
    :cond_0
    :goto_0
    return-void

    .line 2095
    :cond_1
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/PlatformDependencyResolver;->isFlashLightSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2097
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mFlashSetting:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->setCameraLight(Ljava/lang/String;)Z

    goto :goto_0

    .line 2102
    :cond_2
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/PlatformDependencyResolver;->isPhotoLightSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2104
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPhotoLightSetting:Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->setCameraLight(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public resumeRecording()V
    .locals 3

    .prologue
    .line 3406
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->setStreamNotificationMute(Z)V

    .line 3409
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mVideoRecorder:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;

    if-eqz v1, :cond_0

    .line 3410
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mVideoRecorder:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;

    invoke-interface {v1}, Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;->resume()V
    :try_end_0
    .catch Lcom/sonymobile/cameracommon/media/recorder/RecorderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3415
    :cond_0
    return-void

    .line 3412
    :catch_0
    move-exception v0

    .line 3413
    .local v0, "e":Lcom/sonymobile/cameracommon/media/recorder/RecorderException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "resumeRecording():[Failed to resume MediaRecorder.]"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public selectObject(Landroid/graphics/PointF;)Z
    .locals 5
    .param p1, "positionRatio"    # Landroid/graphics/PointF;

    .prologue
    const/4 v3, 0x0

    .line 3690
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getCameraInstance()Landroid/hardware/Camera;

    move-result-object v0

    .line 3692
    .local v0, "camera":Landroid/hardware/Camera;
    if-nez v0, :cond_1

    .line 3719
    :cond_0
    :goto_0
    return v3

    .line 3697
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v4}, Lcom/sonyericsson/android/camera/fastcapturing/PlatformDependencyResolver;->isObjectTrackingSuppoted(Landroid/hardware/Camera$Parameters;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3703
    iget-boolean v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mIsObjectTrackingAlreadyStarted:Z

    if-eqz v3, :cond_2

    .line 3704
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->stopObjectTracking()V

    .line 3706
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->startObjectTracking()V

    .line 3709
    iget v3, p1, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 3710
    .local v1, "objectX":I
    iget v3, p1, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v2, v3

    .line 3717
    .local v2, "objectY":I
    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    invoke-virtual {v3, v1, v2}, Lcom/sonyericsson/cameraextension/CameraExtension;->selectObject(II)V

    .line 3719
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public setAdditionalSettings(Lcom/sonyericsson/android/camera/configuration/ParameterKey;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Z
    .locals 5
    .param p1, "key"    # Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    .param p2, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    .prologue
    const/4 v2, 0x1

    .line 1984
    sget-object v3, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterKey:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 2013
    .end local p2    # "value":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    :goto_0
    return v2

    .line 1987
    .restart local p2    # "value":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    :pswitch_0
    check-cast p2, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    .end local p2    # "value":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    iput-object p2, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPhotoHdrSetting:Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    .line 1988
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getLatestCachedParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1989
    .local v0, "paramsHdr":Landroid/hardware/Camera$Parameters;
    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPhotoHdrSetting:Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->setStabilizer(Landroid/hardware/Camera$Parameters;ILjava/lang/String;)V

    .line 1991
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->trySetParametersToDevice(Landroid/hardware/Camera$Parameters;)Z

    move-result v2

    goto :goto_0

    .line 1995
    .end local v0    # "paramsHdr":Landroid/hardware/Camera$Parameters;
    .restart local p2    # "value":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    :pswitch_1
    check-cast p2, Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;

    .end local p2    # "value":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    iput-object p2, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPhotoStabilizerSetting:Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;

    .line 1996
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getLatestCachedParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 1997
    .local v1, "paramsIs":Landroid/hardware/Camera$Parameters;
    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPhotoStabilizerSetting:Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->setStabilizer(Landroid/hardware/Camera$Parameters;ILjava/lang/String;)V

    .line 2000
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->trySetParametersToDevice(Landroid/hardware/Camera$Parameters;)Z

    move-result v2

    goto :goto_0

    .line 2004
    .end local v1    # "paramsIs":Landroid/hardware/Camera$Parameters;
    .restart local p2    # "value":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    :pswitch_2
    check-cast p2, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    .end local p2    # "value":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    iput-object p2, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mFlashSetting:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    .line 2005
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mFlashSetting:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->setCameraLight(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 2009
    .restart local p2    # "value":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    :pswitch_3
    check-cast p2, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    .end local p2    # "value":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    iput-object p2, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPhotoLightSetting:Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    .line 2010
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPhotoLightSetting:Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->setCameraLight(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 1984
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V
    .locals 0
    .param p1, "cb"    # Landroid/hardware/Camera$ErrorCallback;

    .prologue
    .line 4145
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    .line 4146
    return-void
.end method

.method public setFocusPosition(Landroid/graphics/PointF;)V
    .locals 16
    .param p1, "positionRatio"    # Landroid/graphics/PointF;

    .prologue
    .line 3046
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getCameraInstance()Landroid/hardware/Camera;

    move-result-object v1

    .line 3048
    .local v1, "camera":Landroid/hardware/Camera;
    if-nez v1, :cond_1

    .line 3107
    :cond_0
    :goto_0
    return-void

    .line 3054
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getLatestCachedParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    .line 3055
    .local v5, "params":Landroid/hardware/Camera$Parameters;
    if-eqz v5, :cond_0

    .line 3062
    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v11

    const/4 v12, 0x1

    if-lt v11, v12, :cond_0

    .line 3068
    move-object/from16 v0, p1

    iget v11, v0, Landroid/graphics/PointF;->x:F

    const/high16 v12, 0x44fa0000    # 2000.0f

    mul-float/2addr v11, v12

    const/high16 v12, 0x447a0000    # 1000.0f

    sub-float/2addr v11, v12

    float-to-int v9, v11

    .line 3069
    .local v9, "x":I
    move-object/from16 v0, p1

    iget v11, v0, Landroid/graphics/PointF;->y:F

    const/high16 v12, 0x44fa0000    # 2000.0f

    mul-float/2addr v11, v12

    const/high16 v12, 0x447a0000    # 1000.0f

    sub-float/2addr v11, v12

    float-to-int v10, v11

    .line 3072
    .local v10, "y":I
    const/16 v7, 0x3e8

    .line 3076
    .local v7, "weight":I
    const/16 v8, 0x64

    .line 3077
    .local v8, "width":I
    const/16 v4, 0x64

    .line 3080
    .local v4, "height":I
    new-instance v2, Landroid/hardware/Camera$Area;

    new-instance v11, Landroid/graphics/Rect;

    add-int/lit8 v12, v9, -0x32

    add-int/lit8 v13, v10, -0x32

    add-int/lit8 v14, v9, 0x32

    add-int/lit8 v15, v10, 0x32

    invoke-direct {v11, v12, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v12, 0x3e8

    invoke-direct {v2, v11, v12}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    .line 3085
    .local v2, "focusArea":Landroid/hardware/Camera$Area;
    new-instance v6, Landroid/graphics/Rect;

    const/16 v11, -0x3e8

    const/16 v12, -0x3e8

    const/16 v13, 0x3e8

    const/16 v14, 0x3e8

    invoke-direct {v6, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 3086
    .local v6, "rangeArea":Landroid/graphics/Rect;
    iget-object v11, v2, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-virtual {v6, v11}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 3091
    const-string v11, "sony-focus-area"

    const-string v12, "user"

    invoke-virtual {v5, v11, v12}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3095
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3096
    .local v3, "focusAreaList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3097
    invoke-virtual {v5, v3}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 3100
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->trySetParametersToDevice(Landroid/hardware/Camera$Parameters;)Z

    move-result v11

    if-eqz v11, :cond_0

    goto :goto_0
.end method

.method public setMicrophone()V
    .locals 1

    .prologue
    .line 2157
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mVideoMicrophoneSetting:Lcom/sonyericsson/android/camera/configuration/parameters/Microphone;

    if-nez v0, :cond_0

    .line 2158
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Microphone;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Microphone;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mVideoMicrophoneSetting:Lcom/sonyericsson/android/camera/configuration/parameters/Microphone;

    .line 2160
    :cond_0
    return-void
.end method

.method setModeLessBurstPreviewPictureAndCamcordSizeToParameters(ILandroid/hardware/Camera$Parameters;)V
    .locals 3
    .param p1, "cameraType"    # I
    .param p2, "targetParams"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 1198
    invoke-static {p2}, Lcom/sonyericsson/android/camera/fastcapturing/PlatformDependencyResolver;->getBurstPictureSizeAccordingTo(Landroid/hardware/Camera$Parameters;)Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object v0

    .line 1200
    .local v0, "burstResolution":Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPictureRect:Landroid/graphics/Rect;

    .line 1201
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPictureRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPictureRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 1204
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->setVideoSize(ILandroid/hardware/Camera$Parameters;)V

    .line 1207
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->setPreviewSize(ILandroid/hardware/Camera$Parameters;)V

    .line 1208
    return-void
.end method

.method setModeLessBurstStabilizerToParameters(ILandroid/hardware/Camera$Parameters;)V
    .locals 2
    .param p1, "cameraType"    # I
    .param p2, "targetParams"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 1526
    packed-switch p1, :pswitch_data_0

    .line 1537
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setBurstCaptureStabilizerToParameters():[UnExpected State]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1528
    :pswitch_0
    const-string v0, "off"

    invoke-virtual {p0, p2, p1, v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->setStabilizer(Landroid/hardware/Camera$Parameters;ILjava/lang/String;)V

    .line 1540
    :goto_0
    return-void

    .line 1532
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->setVideoStabilizerToParameters(ILandroid/hardware/Camera$Parameters;)V

    goto :goto_0

    .line 1526
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setPhotoHdrSettings(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V
    .locals 2
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    .prologue
    .line 2017
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getLatestCachedParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 2018
    .local v0, "latestCachedParameters":Landroid/hardware/Camera$Parameters;
    if-nez v0, :cond_1

    .line 2025
    .end local p1    # "value":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    :cond_0
    :goto_0
    return-void

    .line 2022
    .restart local p1    # "value":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    :cond_1
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/PlatformDependencyResolver;->isHdrSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2023
    check-cast p1, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    .end local p1    # "value":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPhotoHdrSetting:Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    goto :goto_0
.end method

.method public setPhotoShutterSound(Z)V
    .locals 4
    .param p1, "isSoundOn"    # Z

    .prologue
    .line 1562
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_1

    .line 1582
    :cond_0
    :goto_0
    return-void

    .line 1566
    :cond_1
    const/16 v0, 0x11

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v1, :cond_0

    .line 1567
    if-eqz p1, :cond_2

    .line 1568
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "key-sony-ext-shuttersound"

    const-string v2, "/system/media/audio/ui/camera_click.ogg"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1571
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "key-sony-ext-shuttersound"

    sget-object v2, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;->SOUND_OFF:Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera/ShutterToneGenerator;->getSoundFilePath(Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized setSelectedFacePosition(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 2932
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2940
    :goto_0
    monitor-exit p0

    return-void

    .line 2939
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/cameraextension/CameraExtension;->setSelectFacePos(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2932
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setStabilizer(Landroid/hardware/Camera$Parameters;ILjava/lang/String;)V
    .locals 2
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "type"    # I
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 3768
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 3770
    const-string v0, "sony-is"

    const-string v1, "off"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3771
    const-string v0, "sony-vs"

    invoke-virtual {p1, v0, p3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3782
    :goto_0
    return-void

    .line 3774
    :cond_0
    const-string v0, "sony-is"

    invoke-virtual {p1, v0, p3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3775
    const-string v0, "sony-vs"

    const-string v1, "off"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setStateMachine(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V
    .locals 0
    .param p1, "stateMachine"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    .prologue
    .line 2450
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    .line 2451
    return-void
.end method

.method public setTorch(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 4001
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getLatestCachedParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 4002
    .local v0, "params":Landroid/hardware/Camera$Parameters;
    if-nez v0, :cond_0

    .line 4003
    const-string v1, "CameraDeviceHandler"

    const-string v2, "setTorch: params is null."

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4011
    :goto_0
    return-void

    .line 4006
    :cond_0
    if-eqz p1, :cond_1

    const-string v1, "torch"

    :goto_1
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 4008
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->trySetParametersToDevice(Landroid/hardware/Camera$Parameters;)Z

    goto :goto_0

    .line 4006
    :cond_1
    const-string v1, "off"

    goto :goto_1
.end method

.method public setVideoRecordSound(Z)V
    .locals 4
    .param p1, "isSoundOn"    # Z

    .prologue
    .line 1586
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 1601
    :goto_0
    return-void

    .line 1590
    :cond_0
    if-eqz p1, :cond_1

    .line 1591
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "key-sony-ext-recordingsound"

    const-string v2, "/system/media/audio/ui/VideoRecord.ogg"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1595
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "key-sony-ext-recordingsound"

    sget-object v2, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;->SOUND_OFF:Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera/ShutterToneGenerator;->getSoundFilePath(Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startBurstCapture(Lcom/sonyericsson/cameraextension/CameraExtension$FilePathGenerator;Lcom/sonyericsson/cameraextension/CameraExtension$MediaProviderUpdator;)I
    .locals 4
    .param p1, "filePathGenerator"    # Lcom/sonyericsson/cameraextension/CameraExtension$FilePathGenerator;
    .param p2, "mediaProviderUpdator"    # Lcom/sonyericsson/cameraextension/CameraExtension$MediaProviderUpdator;

    .prologue
    .line 3806
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "sony-burst-shot"

    const-string v3, "on"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3810
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/PlatformDependencyResolver;->getBurstFrameRate(Landroid/hardware/Camera$Parameters;Landroid/content/Context;)I

    move-result v0

    .line 3814
    .local v0, "burstFps":I
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "sony-burst-shot-frame-rate"

    invoke-virtual {v1, v2, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 3819
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->setJpegEncodingQuality(I)V

    .line 3821
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->trySetParametersToDevice(Landroid/hardware/Camera$Parameters;)Z

    .line 3823
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    new-instance v2, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnBurstShotCallback;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnBurstShotCallback;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)V

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameraextension/CameraExtension;->setBurstShotCallback(Lcom/sonyericsson/cameraextension/CameraExtension$BurstShotCallback;)V

    .line 3824
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    new-instance v2, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$BurstStorageFullDetector;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$BurstStorageFullDetector;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)V

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameraextension/CameraExtension;->setBurstStorageFullDetector(Lcom/sonyericsson/cameraextension/CameraExtension$StorageFullDetector;)V

    .line 3827
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    invoke-virtual {v1, p1, p2}, Lcom/sonyericsson/cameraextension/CameraExtension;->startBurstShot(Lcom/sonyericsson/cameraextension/CameraExtension$FilePathGenerator;Lcom/sonyericsson/cameraextension/CameraExtension$MediaProviderUpdator;)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLatestBurstId:I

    .line 3831
    new-instance v1, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraDeviceId:I

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;I)V

    new-instance v2, Lcom/sonyericsson/cameracommon/status/eachcamera/BurstShooting;

    sget-object v3, Lcom/sonyericsson/cameracommon/status/eachcamera/BurstShooting$Value;->ON:Lcom/sonyericsson/cameracommon/status/eachcamera/BurstShooting$Value;

    invoke-direct {v2, v3}, Lcom/sonyericsson/cameracommon/status/eachcamera/BurstShooting;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/BurstShooting$Value;)V

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    .line 3835
    iget v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLatestBurstId:I

    return v1
.end method

.method public declared-synchronized startCameraOpen(Landroid/content/Context;ILcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cameraId"    # I
    .param p3, "fastCap"    # Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;
    .param p4, "isOneShotPhoto"    # Z

    .prologue
    .line 310
    monitor-enter p0

    :try_start_0
    instance-of v1, p1, Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;

    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mIsSmartCoverCamera:Z

    .line 311
    iput-boolean p4, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mIsSecureOneShotPhoto:Z

    .line 314
    const-string v1, "device_policy"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 316
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 317
    const-string v1, "CameraDeviceHandler"

    const-string v2, "[CameraNotAvailable] startCameraOpen: dpm.getCameraDisabled(null)"

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->errorLogForNonUserVariant(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mIsCameraDisabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 322
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mIsCameraDisabled:Z

    .line 324
    iget v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCurrentDeviceState:I

    packed-switch v1, :pswitch_data_0

    .line 339
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mContext:Landroid/content/Context;

    .line 340
    iput p2, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraDeviceId:I

    .line 341
    iput-object p3, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mFastCaptureSetting:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    .line 344
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->clearCloseDeviceTask()V

    .line 349
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    .line 350
    iget v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraDeviceId:I

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    invoke-static {v1, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 351
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    invoke-static {v1}, Lcom/sonyericsson/cameracommon/utility/StaticConfigurationUtil;->setCameraInfo(Landroid/hardware/Camera$CameraInfo;)V

    .line 354
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mOpenDeviceThread:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OpenDeviceThread;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mOpenDeviceThread:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OpenDeviceThread;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OpenDeviceThread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_3

    .line 355
    :cond_2
    const/4 v1, 0x1

    iput v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCurrentDeviceState:I

    .line 356
    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OpenDeviceThread;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OpenDeviceThread;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$1;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mOpenDeviceThread:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OpenDeviceThread;

    .line 357
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mOpenDeviceThread:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OpenDeviceThread;

    const-class v2, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OpenDeviceThread;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OpenDeviceThread;->setName(Ljava/lang/String;)V

    .line 358
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mOpenDeviceThread:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OpenDeviceThread;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OpenDeviceThread;->setPriority(I)V

    .line 359
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mOpenDeviceThread:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OpenDeviceThread;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OpenDeviceThread;->start()V

    .line 362
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLoadSettingsThread:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$LoadSettingsThread;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLoadSettingsThread:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$LoadSettingsThread;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$LoadSettingsThread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 363
    :cond_4
    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$LoadSettingsThread;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$LoadSettingsThread;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$1;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLoadSettingsThread:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$LoadSettingsThread;

    .line 364
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLoadSettingsThread:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$LoadSettingsThread;

    const-class v2, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$LoadSettingsThread;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$LoadSettingsThread;->setName(Ljava/lang/String;)V

    .line 365
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLoadSettingsThread:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$LoadSettingsThread;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$LoadSettingsThread;->setPriority(I)V

    .line 366
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLoadSettingsThread:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$LoadSettingsThread;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$LoadSettingsThread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 310
    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 330
    .restart local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :pswitch_0
    const/4 v1, 0x0

    :try_start_2
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mIsImmediateReleaseRequested:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 324
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized startFaceDetection()V
    .locals 4

    .prologue
    .line 2163
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mIsFaceDetectionAlreadyStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 2197
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 2167
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    .line 2172
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/PlatformDependencyResolver;->isFaceDetectionSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2173
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    if-eqz v0, :cond_0

    .line 2176
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mOnFaceDetectionCallback:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnFaceDetectionCallback;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameraextension/CameraExtension;->setFaceDetectionCallback(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionCallback;)V

    .line 2177
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startFaceDetection()V

    .line 2179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mIsFaceDetectionAlreadyStarted:Z

    .line 2183
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mFaceIdentifySetting:Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;

    if-nez v0, :cond_2

    .line 2184
    new-instance v0, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraDeviceId:I

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;I)V

    new-instance v1, Lcom/sonyericsson/cameracommon/status/eachcamera/FaceDetection;

    sget-object v2, Lcom/sonyericsson/cameracommon/status/eachcamera/FaceDetection$Value;->ON:Lcom/sonyericsson/cameracommon/status/eachcamera/FaceDetection$Value;

    invoke-direct {v1, v2}, Lcom/sonyericsson/cameracommon/status/eachcamera/FaceDetection;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/FaceDetection$Value;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2163
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2188
    :cond_2
    :try_start_2
    new-instance v1, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraDeviceId:I

    invoke-direct {v1, v0, v2}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;I)V

    new-instance v2, Lcom/sonyericsson/cameracommon/status/eachcamera/FaceIdentification;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mFaceIdentifySetting:Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/FaceIdentification$Value;->ON:Lcom/sonyericsson/cameracommon/status/eachcamera/FaceIdentification$Value;

    :goto_1
    invoke-direct {v2, v0}, Lcom/sonyericsson/cameracommon/status/eachcamera/FaceIdentification;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/FaceIdentification$Value;)V

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/cameracommon/status/eachcamera/FaceDetection;

    sget-object v2, Lcom/sonyericsson/cameracommon/status/eachcamera/FaceDetection$Value;->ON:Lcom/sonyericsson/cameracommon/status/eachcamera/FaceDetection$Value;

    invoke-direct {v1, v2}, Lcom/sonyericsson/cameracommon/status/eachcamera/FaceDetection;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/FaceDetection$Value;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/FaceIdentification$Value;->OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/FaceIdentification$Value;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public startFaceIdService(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 3873
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getFaceIdentify()Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;

    move-result-object v0

    .line 3874
    .local v0, "faceIdentify":Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;

    if-ne v0, v1, :cond_0

    .line 3875
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mFaceIdService:Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification;

    if-nez v1, :cond_0

    .line 3876
    invoke-static {p1}, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationFactory;->createNewInstance(Landroid/content/Context;)Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mFaceIdService:Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification;

    .line 3879
    :cond_0
    return-void
.end method

.method public startLiveViewFinder(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "surface"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 2566
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getCameraInstance()Landroid/hardware/Camera;

    move-result-object v0

    .line 2568
    .local v0, "camera":Landroid/hardware/Camera;
    if-nez v0, :cond_0

    .line 2588
    :goto_0
    return-void

    .line 2572
    :cond_0
    if-nez p1, :cond_1

    .line 2573
    const-string v1, "CameraDeviceHandler"

    const-string v2, "Camera.setPreviewDisplay() failed. Because surfaceHolder is null."

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2581
    :cond_1
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2583
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public startPreview()V
    .locals 4

    .prologue
    .line 2592
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getCameraInstance()Landroid/hardware/Camera;

    move-result-object v0

    .line 2593
    .local v0, "curCamera":Landroid/hardware/Camera;
    if-eqz v0, :cond_0

    .line 2596
    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2610
    :cond_0
    :goto_0
    return-void

    .line 2597
    :catch_0
    move-exception v1

    .line 2600
    .local v1, "exception":Ljava/lang/RuntimeException;
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    if-eqz v2, :cond_0

    .line 2601
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    sget-object v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$ErrorCode;->ERROR_ON_START_PREVIEW:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$ErrorCode;

    invoke-virtual {v2, v3, v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->onDeviceError(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$ErrorCode;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public startRecording(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$RecorderListener;)V
    .locals 9
    .param p1, "request"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;
    .param p2, "listener"    # Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$RecorderListener;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3206
    invoke-virtual {p0, v5}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->setPhotoShutterSound(Z)V

    .line 3209
    const/4 v6, 0x2

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getLatestCachedParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->setFpsRange(ILandroid/hardware/Camera$Parameters;)V

    .line 3211
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getLatestCachedParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->trySetParametersToDevice(Landroid/hardware/Camera$Parameters;)Z

    .line 3212
    iput-boolean v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mIsLaunchAndCaptureShutterSoundEnabled:Z

    .line 3215
    invoke-direct {p0, v4}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->setStreamNotificationMute(Z)V

    .line 3217
    monitor-enter p0

    .line 3219
    :try_start_0
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;

    .line 3222
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->isShutterSoundOff()Z

    move-result v6

    if-nez v6, :cond_2

    move v6, v4

    :goto_0
    invoke-direct {p0, p1, p2, v6}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->prepareMediaRecorder(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$RecorderListener;Z)V

    .line 3225
    iget-object v6, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mVideoRecorder:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;

    if-eqz v6, :cond_1

    .line 3226
    iget-object v6, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getInstance()Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;

    move-result-object v6

    iget v7, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraDeviceId:I

    invoke-virtual {v6, v7}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->isVideoMetaDataSupported(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3229
    iget-object v6, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    invoke-virtual {v6}, Lcom/sonyericsson/cameraextension/CameraExtension;->startVideoMetadata()V

    .line 3230
    new-instance v6, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    iget-object v7, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraDeviceId:I

    invoke-direct {v6, v7, v8}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;I)V

    new-instance v7, Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata;

    sget-object v8, Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata$Value;->ON:Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata$Value;

    invoke-direct {v7, v8}, Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata$Value;)V

    invoke-virtual {v6, v7}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3236
    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mVideoRecorder:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;

    invoke-interface {v6}, Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;->start()V

    .line 3237
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mIsRecording:Ljava/lang/Boolean;
    :try_end_1
    .catch Lcom/sonymobile/cameracommon/media/recorder/RecorderException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3277
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getCameraInstance()Landroid/hardware/Camera;

    move-result-object v1

    .line 3278
    .local v1, "camera":Landroid/hardware/Camera;
    if-eqz v1, :cond_6

    .line 3279
    new-instance v4, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraDeviceId:I

    invoke-direct {v4, v5, v6}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->putFromParameter(Landroid/hardware/Camera$Parameters;)Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    move-result-object v4

    new-instance v5, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus;

    sget-object v6, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;->VIDEO_RECORDING:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    invoke-direct {v5, v6}, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;)V

    invoke-virtual {v4, v5}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    .line 3288
    :goto_1
    monitor-exit p0

    .line 3289
    return-void

    .end local v1    # "camera":Landroid/hardware/Camera;
    :cond_2
    move v6, v5

    .line 3222
    goto :goto_0

    .line 3239
    :catch_0
    move-exception v2

    .line 3240
    .local v2, "e":Lcom/sonymobile/cameracommon/media/recorder/RecorderException;
    const-string v6, "CameraDeviceHandler"

    const-string v7, "mMediaRecorder.start() fail."

    invoke-static {v6, v7}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3243
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getCameraInstance()Landroid/hardware/Camera;

    move-result-object v1

    .line 3244
    .restart local v1    # "camera":Landroid/hardware/Camera;
    if-eqz v1, :cond_3

    .line 3245
    const-string v6, "CameraDeviceHandler"

    const-string v7, "Camera.lock() after mMediaRecorder.start() fail."

    invoke-static {v6, v7}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3246
    invoke-virtual {v1}, Landroid/hardware/Camera;->lock()V

    .line 3250
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->releaseVideo()V

    .line 3253
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->isShutterSoundOff()Z

    move-result v6

    if-nez v6, :cond_5

    :goto_2
    invoke-virtual {p0, v4}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->setPhotoShutterSound(Z)V

    .line 3256
    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;->getFilePath()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    if-eqz v4, :cond_4

    .line 3258
    :try_start_3
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3259
    .local v3, "videoFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3260
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_4

    .line 3261
    const-string v4, "CameraDeviceHandler"

    const-string v5, "videoFile.delete(): [Unable to delete empty video file.]"

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3271
    .end local v3    # "videoFile":Ljava/io/File;
    :cond_4
    :goto_3
    :try_start_4
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 3288
    .end local v1    # "camera":Landroid/hardware/Camera;
    .end local v2    # "e":Lcom/sonymobile/cameracommon/media/recorder/RecorderException;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .restart local v1    # "camera":Landroid/hardware/Camera;
    .restart local v2    # "e":Lcom/sonymobile/cameracommon/media/recorder/RecorderException;
    :cond_5
    move v4, v5

    .line 3253
    goto :goto_2

    .line 3265
    :catch_1
    move-exception v0

    .line 3266
    .local v0, "c":Ljava/lang/Exception;
    :try_start_5
    const-string v4, "CameraDeviceHandler"

    const-string v5, "startRecording: [Unable to delete empty media file.]"

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 3284
    .end local v0    # "c":Ljava/lang/Exception;
    .end local v2    # "e":Lcom/sonymobile/cameracommon/media/recorder/RecorderException;
    :cond_6
    new-instance v4, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraDeviceId:I

    invoke-direct {v4, v5, v6}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;I)V

    new-instance v5, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus;

    sget-object v6, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;->VIDEO_RECORDING:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    invoke-direct {v5, v6}, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;)V

    invoke-virtual {v4, v5}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized startSceneRecognition()V
    .locals 3

    .prologue
    .line 2236
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mIsSceneRecognitionAlreadyStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 2253
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 2241
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    .line 2242
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/PlatformDependencyResolver;->isSceneRecognitionSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2243
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mOnSceneModeChangedCallback:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnSceneModeChangedCallback;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameraextension/CameraExtension;->startSceneRecognition(Lcom/sonyericsson/cameraextension/CameraExtension$SceneRecognitionCallback;)V

    .line 2245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mIsSceneRecognitionAlreadyStarted:Z

    .line 2249
    new-instance v0, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraDeviceId:I

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;I)V

    new-instance v1, Lcom/sonyericsson/cameracommon/status/eachcamera/SceneRecognition;

    sget-object v2, Lcom/sonyericsson/cameracommon/status/eachcamera/SceneRecognition$Value;->ON:Lcom/sonyericsson/cameracommon/status/eachcamera/SceneRecognition$Value;

    invoke-direct {v1, v2}, Lcom/sonyericsson/cameracommon/status/eachcamera/SceneRecognition;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/SceneRecognition$Value;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2236
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startSmoothZoom(I)V
    .locals 2
    .param p1, "zoomStep"    # I

    .prologue
    .line 2975
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mOnZoomChangedCallback:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnZoomChangedCallback;

    if-nez v1, :cond_1

    .line 2990
    :cond_0
    :goto_0
    return-void

    .line 2981
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getCameraInstance()Landroid/hardware/Camera;

    move-result-object v0

    .line 2983
    .local v0, "camera":Landroid/hardware/Camera;
    if-eqz v0, :cond_0

    .line 2989
    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->startSmoothZoom(I)V

    goto :goto_0
.end method

.method public stopBurstCapture()I
    .locals 3

    .prologue
    .line 3844
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    if-nez v0, :cond_0

    .line 3846
    const/4 v0, -0x1

    .line 3865
    :goto_0
    return v0

    .line 3848
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    invoke-virtual {v0}, Lcom/sonyericsson/cameraextension/CameraExtension;->stopBurstShot()V

    .line 3851
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "sony-burst-shot"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3855
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->setJpegEncodingQuality(I)V

    .line 3857
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->trySetParametersToDevice(Landroid/hardware/Camera$Parameters;)Z

    .line 3861
    new-instance v0, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraDeviceId:I

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;I)V

    new-instance v1, Lcom/sonyericsson/cameracommon/status/eachcamera/BurstShooting;

    sget-object v2, Lcom/sonyericsson/cameracommon/status/eachcamera/BurstShooting$Value;->OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/BurstShooting$Value;

    invoke-direct {v1, v2}, Lcom/sonyericsson/cameracommon/status/eachcamera/BurstShooting;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/BurstShooting$Value;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    .line 3865
    iget v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLatestBurstId:I

    goto :goto_0
.end method

.method public declared-synchronized stopFaceDetection()V
    .locals 1

    .prologue
    .line 2200
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->stopFaceDetectionNotSynchronized()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2201
    monitor-exit p0

    return-void

    .line 2200
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopFaceIdService()V
    .locals 1

    .prologue
    .line 3882
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mFaceIdService:Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification;

    if-eqz v0, :cond_0

    .line 3883
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mFaceIdService:Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification;

    invoke-interface {v0}, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification;->release()V

    .line 3884
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mFaceIdService:Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification;

    .line 3886
    :cond_0
    return-void
.end method

.method public stopLiveViewFinder()V
    .locals 0

    .prologue
    .line 2614
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->stopFaceDetection()V

    .line 2615
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->stopSceneRecognition()V

    .line 2617
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->stopPreview()V

    .line 2621
    return-void
.end method

.method public stopRecording(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)V
    .locals 3
    .param p1, "activity"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .prologue
    .line 3307
    monitor-enter p0

    .line 3308
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mVideoRecorder:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 3310
    :try_start_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->disableRecordingSoundIfNeeded()V

    .line 3312
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mVideoRecorder:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;

    invoke-interface {v1}, Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;->stop()V

    .line 3314
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->sendGoogleAnalyticsEvents(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)V
    :try_end_1
    .catch Lcom/sonymobile/cameracommon/media/recorder/RecorderException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3319
    :cond_0
    :try_start_2
    monitor-exit p0

    .line 3320
    return-void

    .line 3315
    :catch_0
    move-exception v0

    .line 3316
    .local v0, "e":Lcom/sonymobile/cameracommon/media/recorder/RecorderException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "stopRecording():[Failed to stop MediaRecorder.]"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3319
    .end local v0    # "e":Lcom/sonymobile/cameracommon/media/recorder/RecorderException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public declared-synchronized stopSceneRecognition()V
    .locals 1

    .prologue
    .line 2256
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->stopSceneRecognitionNotSynchronized()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2257
    monitor-exit p0

    return-void

    .line 2256
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopSmoothZoom()V
    .locals 2

    .prologue
    .line 2993
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mOnZoomChangedCallback:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnZoomChangedCallback;

    if-nez v1, :cond_1

    .line 3012
    :cond_0
    :goto_0
    return-void

    .line 2999
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getCameraInstance()Landroid/hardware/Camera;

    move-result-object v0

    .line 3001
    .local v0, "camera":Landroid/hardware/Camera;
    if-eqz v0, :cond_0

    .line 3007
    invoke-virtual {v0}, Landroid/hardware/Camera;->stopSmoothZoom()V

    .line 3011
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->requestCacheParameters()V

    goto :goto_0
.end method

.method public suspendPhotoLight()V
    .locals 3

    .prologue
    .line 2056
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getLatestCachedParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 2058
    .local v0, "params":Landroid/hardware/Camera$Parameters;
    if-nez v0, :cond_1

    .line 2083
    :cond_0
    :goto_0
    return-void

    .line 2064
    :cond_1
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/PlatformDependencyResolver;->isFlashLightSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2066
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mFlashSetting:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->LED_ON:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    if-ne v1, v2, :cond_0

    .line 2068
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->LED_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->setCameraLight(Ljava/lang/String;)Z

    goto :goto_0

    .line 2074
    :cond_2
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/PlatformDependencyResolver;->isPhotoLightSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2076
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPhotoLightSetting:Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    if-ne v1, v2, :cond_0

    .line 2078
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->setCameraLight(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public takePicture(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)V
    .locals 5
    .param p1, "savingRequest"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    .prologue
    .line 2805
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getCameraInstance()Landroid/hardware/Camera;

    move-result-object v0

    .line 2807
    .local v0, "camera":Landroid/hardware/Camera;
    if-nez v0, :cond_0

    .line 2835
    :goto_0
    return-void

    .line 2813
    :cond_0
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mIsLaunchAndCaptureShutterSoundEnabled:Z

    if-eqz v1, :cond_1

    .line 2816
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->resetShutterSound()V

    .line 2820
    :cond_1
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLastSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    .line 2824
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mOnShutterCallback:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnShutterCallback;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mOnPictureTakenCallback:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnPictureTakenCallback;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 2829
    new-instance v2, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraDeviceId:I

    invoke-direct {v2, v1, v3}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;I)V

    new-instance v3, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus;

    iget-object v1, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->savedFileType:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;

    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;->PHOTO_DURING_REC:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;

    if-ne v1, v4, :cond_2

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;->PICTURE_TAKING_DURING_VIDEO_RECORDING:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    :goto_1
    invoke-direct {v3, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;)V

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;->PICTURE_TAKING:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    goto :goto_1
.end method

.method public trySetParametersToDevice(Landroid/hardware/Camera$Parameters;)Z
    .locals 6
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v2, 0x0

    .line 2500
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getCameraInstance()Landroid/hardware/Camera;

    move-result-object v0

    .line 2502
    .local v0, "camera":Landroid/hardware/Camera;
    if-nez v0, :cond_0

    .line 2535
    :goto_0
    return v2

    .line 2510
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mContext:Landroid/content/Context;

    const/high16 v4, 0x7f060000

    const v5, 0x7f060001

    invoke-static {v3, v4, v5, p1}, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator;->validate(Landroid/content/Context;IILandroid/hardware/Camera$Parameters;)V

    .line 2515
    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0, v0, v3}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->doSetParametersToDevice(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;)V

    .line 2518
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2535
    const/4 v2, 0x1

    goto :goto_0

    .line 2519
    :catch_0
    move-exception v1

    .line 2524
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v3, "CameraDeviceHandler"

    const-string v4, ".trySetParametersToDevice():[RuntimeException:Failed to setParameters()]"

    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2526
    const-string v3, "CameraDeviceHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ".trySetParametersToDevice():[mIsRecording = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mIsRecording:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2530
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;

    goto :goto_0
.end method

.method public waitForCameraInitialization()Z
    .locals 1

    .prologue
    .line 2400
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getCameraInstance()Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public willPreviewBeRestarted()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 3571
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getLatestCachedParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 3573
    .local v0, "params":Landroid/hardware/Camera$Parameters;
    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mPictureRect:Landroid/graphics/Rect;

    invoke-static {v4, v0, v3, v5}, Lcom/sonyericsson/android/camera/fastcapturing/PlatformDependencyResolver;->getOptimalPreviewSize(Landroid/content/Context;Landroid/hardware/Camera$Parameters;ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 3576
    .local v1, "photoPreview":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mContext:Landroid/content/Context;

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCamcordRect:Landroid/graphics/Rect;

    invoke-static {v4, v0, v5, v6}, Lcom/sonyericsson/android/camera/fastcapturing/PlatformDependencyResolver;->getOptimalPreviewSize(Landroid/content/Context;Landroid/hardware/Camera$Parameters;ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    .line 3580
    .local v2, "videoPreview":Landroid/graphics/Rect;
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
