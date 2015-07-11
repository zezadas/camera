.class public Lcom/sonyericsson/android/camera/device/CameraDevice;
.super Ljava/lang/Object;
.source "CameraDevice.java"

# interfaces
.implements Landroid/hardware/Camera$ErrorCallback;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/sonyericsson/cameraextension/CameraExtension$SceneRecognitionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/device/CameraDevice$1;,
        Lcom/sonyericsson/android/camera/device/CameraDevice$CloseDeviceTask;,
        Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask;,
        Lcom/sonyericsson/android/camera/device/CameraDevice$OpenCameraDeviceTask;,
        Lcom/sonyericsson/android/camera/device/CameraDevice$AutoFocusResultWrapper;,
        Lcom/sonyericsson/android/camera/device/CameraDevice$LedLightNotSupported;,
        Lcom/sonyericsson/android/camera/device/CameraDevice$LedLightSupported;,
        Lcom/sonyericsson/android/camera/device/CameraDevice$LedLight;,
        Lcom/sonyericsson/android/camera/device/CameraDevice$JpegCallback;,
        Lcom/sonyericsson/android/camera/device/CameraDevice$AutoFocusNoExtension;,
        Lcom/sonyericsson/android/camera/device/CameraDevice$AutoFocusExtension;,
        Lcom/sonyericsson/android/camera/device/CameraDevice$AutoFocus;
    }
.end annotation


# static fields
.field private static final CAMERA_IS_NOT_OPENED:I = -0x1

.field private static final CAMERA_OPEN_FAILED:I = -0x2

.field private static final TAG:Ljava/lang/String;

.field private static sCachedParameters:Landroid/hardware/Camera$Parameters;

.field private static volatile sCameraInfoArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/hardware/Camera$CameraInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAutoFocus:Lcom/sonyericsson/android/camera/device/CameraDevice$AutoFocus;

.field private mAutoFocusListener:Lcom/sonyericsson/android/camera/device/AutoFocusListener;

.field private mBurstShutterSound:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

.field private mCachedCapabilityList:Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

.field private mCamera:Landroid/hardware/Camera;

.field private final mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

.field private mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

.field private mCameraId:I

.field private mCloseDeviceExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mCloseDeviceFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private mCommitParameters:Z

.field private mDisplayOrientation:I

.field private mIsAlreadySetBurstShutterSound:Z

.field private mIsBurstShooting:Z

.field private volatile mIsCancelOpenCameraRequested:Z

.field private mIsCapturing:Z

.field private mIsFaceDetectionRunning:Z

.field private mIsObjectTrackingRunning:Z

.field private mIsPreviewing:Z

.field private mIsSceneRecognitionRunning:Z

.field private mIsVideo:Z

.field private mLedLight:Lcom/sonyericsson/android/camera/device/CameraDevice$LedLight;

.field public mNeedStartPreview:Z

.field private mOpenDeviceExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mOpenDeviceFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Landroid/hardware/Camera;",
            ">;"
        }
    .end annotation
.end field

.field private mOpenTaskTargetCameraId:I

.field private mPictureSize:Landroid/graphics/Rect;

.field private mPreviewFrameRetriever:Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;

.field private mPreviewSize:Landroid/graphics/Rect;

.field private mSceneRecognitionCallback:Lcom/sonyericsson/cameraextension/CameraExtension$SceneRecognitionCallback;

.field private mSetupDeviceFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mVideoDevice:Lcom/sonyericsson/android/camera/controller/VideoDevice;

.field private mVideoFps:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 111
    const-class v0, Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;

    .line 139
    const/4 v0, 0x0

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraDevice;->sCachedParameters:Landroid/hardware/Camera$Parameters;

    .line 189
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->isCameraSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraDevice;->sCameraInfoArray:Landroid/util/SparseArray;

    .line 191
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDevice;->sCameraInfoArray:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setCameraInfo(Landroid/util/SparseArray;I)V

    .line 194
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->isFrontCameraSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDevice;->sCameraInfoArray:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setCameraInfo(Landroid/util/SparseArray;I)V

    .line 198
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/sonyericsson/android/camera/CameraActivity;

    .prologue
    const/4 v1, 0x0

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mPictureSize:Landroid/graphics/Rect;

    .line 133
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mPreviewSize:Landroid/graphics/Rect;

    .line 135
    iput v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mVideoFps:I

    .line 137
    iput v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mDisplayOrientation:I

    .line 181
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mNeedStartPreview:Z

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mVideoDevice:Lcom/sonyericsson/android/camera/controller/VideoDevice;

    .line 521
    new-instance v0, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mPreviewFrameRetriever:Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;

    .line 2907
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mOpenTaskTargetCameraId:I

    .line 2908
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mIsCancelOpenCameraRequested:Z

    .line 234
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 236
    return-void
.end method

.method static synthetic access$1002(Lcom/sonyericsson/android/camera/device/CameraDevice;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/device/CameraDevice;
    .param p1, "x1"    # Z

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mIsCapturing:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/sonyericsson/android/camera/device/CameraDevice;)Lcom/sonyericsson/android/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/device/CameraDevice;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sonyericsson/android/camera/device/CameraDevice;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/device/CameraDevice;

    .prologue
    .line 107
    iget v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraId:I

    return v0
.end method

.method static synthetic access$1500(Lcom/sonyericsson/android/camera/device/CameraDevice;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/device/CameraDevice;
    .param p1, "x1"    # I

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->openCameraDeviceWithRetry(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/sonyericsson/android/camera/device/CameraDevice;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/device/CameraDevice;
    .param p1, "x1"    # I

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setOpenTaskTargetCameraId(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/sonyericsson/android/camera/device/CameraDevice;)Landroid/view/SurfaceHolder;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/device/CameraDevice;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sonyericsson/android/camera/device/CameraDevice;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/device/CameraDevice;

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->isFailedOpenCameraDeviceTask()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/sonyericsson/android/camera/device/CameraDevice;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/device/CameraDevice;
    .param p1, "x1"    # I

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->isRequestCameraOpened(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/sonyericsson/android/camera/device/CameraDevice;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/device/CameraDevice;

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mIsVideo:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/sonyericsson/android/camera/device/CameraDevice;)Lcom/sonyericsson/android/camera/controller/VideoDevice;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/device/CameraDevice;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mVideoDevice:Lcom/sonyericsson/android/camera/controller/VideoDevice;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sonyericsson/android/camera/device/CameraDevice;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/device/CameraDevice;
    .param p1, "x1"    # Z

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->close(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/sonyericsson/android/camera/device/CameraDevice;)Lcom/sonyericsson/cameraextension/CameraExtension;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/device/CameraDevice;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonyericsson/android/camera/device/CameraDevice;)Lcom/sonyericsson/android/camera/device/AutoFocusListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/device/CameraDevice;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mAutoFocusListener:Lcom/sonyericsson/android/camera/device/AutoFocusListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sonyericsson/android/camera/device/CameraDevice;)Landroid/hardware/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/device/CameraDevice;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method private clearCloseDeviceTask()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3493
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->isCloseDeviceTaskWorking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3494
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->joinCloseDeviceTask()V

    .line 3497
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCloseDeviceFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_1

    .line 3498
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCloseDeviceFuture:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 3499
    iput-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCloseDeviceFuture:Ljava/util/concurrent/Future;

    .line 3501
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCloseDeviceExecutorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_2

    .line 3502
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCloseDeviceExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 3503
    iput-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCloseDeviceExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 3506
    :cond_2
    return-void
.end method

.method private close(Z)V
    .locals 4
    .param p1, "isWaitResumeDeviceTask"    # Z

    .prologue
    .line 362
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->clearResumeDeviceTask()V

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 365
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mPreviewFrameRetriever:Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;->dettachCamera()V

    .line 370
    :cond_1
    new-instance v0, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    iget v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraId:I

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->putDefaultAll()Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    .line 373
    new-instance v0, Lcom/sonyericsson/cameracommon/status/GlobalCameraStatusPublisher;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/GlobalCameraStatusPublisher;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/status/GlobalCameraStatusPublisher;->putDefaultAll()Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    .line 377
    monitor-enter p0

    .line 378
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_2

    .line 380
    monitor-exit p0

    .line 426
    :goto_0
    return-void

    .line 383
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->finishPreviewing()V

    .line 384
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mPreviewFrameRetriever:Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;->dettachCamera()V

    .line 387
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->clearZoomChangeListener()V

    .line 388
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCamera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 390
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    if-eqz v0, :cond_4

    .line 397
    iget v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraId:I

    if-nez v0, :cond_3

    .line 399
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v2, v3}, Lcom/sonyericsson/cameraextension/CameraExtension;->waitForCurrentSavingTaskStackCleared(J)Z

    .line 401
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameraextension/CameraExtension;->setBurstShotCallback(Lcom/sonyericsson/cameraextension/CameraExtension$BurstShotCallback;)V

    .line 402
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameraextension/CameraExtension;->setBurstStorageFullDetector(Lcom/sonyericsson/cameraextension/CameraExtension$StorageFullDetector;)V

    .line 406
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameraextension/CameraExtension;->setFaceDetectionCallback(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionCallback;)V

    .line 409
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    invoke-virtual {v0}, Lcom/sonyericsson/cameraextension/CameraExtension;->release()V

    .line 411
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    .line 412
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mBurstShutterSound:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    .line 413
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mIsAlreadySetBurstShutterSound:Z

    .line 417
    :cond_4
    sget-boolean v0, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->isUserdebugOrEngBuild:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;

    const-string v1, "Camera.release in"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 419
    sget-boolean v0, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->isUserdebugOrEngBuild:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;

    const-string v1, "Camera.release out"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCamera:Landroid/hardware/Camera;

    .line 422
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setSurfaceHolder(Landroid/view/SurfaceHolder;)V

    .line 424
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mIsCapturing:Z

    .line 425
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private finishVideoNrSetting()V
    .locals 4

    .prologue
    .line 1191
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getInstance()Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getCameraExtensionVersion()Lcom/sonyericsson/cameracommon/device/CameraExtensionVersion;

    move-result-object v1

    const/4 v2, 0x1

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/cameracommon/device/CameraExtensionVersion;->isLaterThanOrEqualTo(II)Z

    move-result v0

    .line 1194
    .local v0, "isAvailableVersion":Z
    if-eqz v0, :cond_0

    .line 1195
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setVideoNr(Z)V

    .line 1197
    :cond_0
    return-void
.end method

.method public static getCameraInfo(I)Landroid/hardware/Camera$CameraInfo;
    .locals 1
    .param p0, "cameraId"    # I

    .prologue
    .line 1218
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDevice;->sCameraInfoArray:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 1219
    const/4 v0, 0x0

    .line 1221
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDevice;->sCameraInfoArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$CameraInfo;

    goto :goto_0
.end method

.method private declared-synchronized getOpenTaskTargetCameraId()I
    .locals 1

    .prologue
    .line 2915
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mOpenTaskTargetCameraId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private initParametersCache()V
    .locals 3

    .prologue
    .line 2646
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCamera:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    .line 2647
    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;

    const-string v2, "Camera is not initialized."

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2655
    :goto_0
    return-void

    .line 2650
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 2651
    .local v0, "params":Landroid/hardware/Camera$Parameters;
    if-nez v0, :cond_1

    .line 2652
    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;

    const-string v2, "initParametersCache: params is null."

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2654
    :cond_1
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setCachedParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0
.end method

.method private declared-synchronized isCapturing()Z
    .locals 1

    .prologue
    .line 1938
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mIsCapturing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isCloseDeviceTaskWorking()Z
    .locals 1

    .prologue
    .line 3512
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCloseDeviceFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 3514
    const/4 v0, 0x1

    .line 3517
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFailedOpenCameraDeviceTask()Z
    .locals 2

    .prologue
    .line 3141
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getOpenTaskTargetCameraId()I

    move-result v0

    .line 3142
    .local v0, "openTaskTargetCameraId":I
    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 3145
    const/4 v1, 0x1

    .line 3149
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isFront()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 223
    iget v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraId:I

    if-ne v1, v0, :cond_0

    .line 225
    .local v0, "isFront":Z
    :goto_0
    return v0

    .line 223
    .end local v0    # "isFront":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRequestCameraOpened(I)Z
    .locals 3
    .param p1, "requestCameraId"    # I

    .prologue
    .line 3158
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getOpenTaskTargetCameraId()I

    move-result v1

    .line 3163
    .local v1, "openTaskTargetCameraId":I
    const/4 v0, 0x0

    .line 3165
    .local v0, "isRequestCameraOpened":Z
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 3168
    const/4 v0, 0x0

    .line 3187
    :goto_0
    return v0

    .line 3170
    :cond_0
    if-ne v1, p1, :cond_1

    .line 3173
    const/4 v0, 0x1

    goto :goto_0

    .line 3180
    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/device/CameraDevice;->close(Z)V

    .line 3183
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSceneRecognitionRequired(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Z
    .locals 1
    .param p0, "mode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .prologue
    .line 3382
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p0, v0, :cond_1

    .line 3383
    :cond_0
    const/4 v0, 0x1

    .line 3385
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupported(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "supported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 2143
    if-nez p1, :cond_1

    .line 2151
    :cond_0
    :goto_0
    return v0

    .line 2146
    :cond_1
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 2148
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private joinCloseDeviceTask()V
    .locals 3

    .prologue
    .line 3526
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCloseDeviceFuture:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_0

    .line 3529
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCloseDeviceFuture:Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3541
    :goto_0
    return-void

    .line 3531
    :catch_0
    move-exception v0

    .line 3532
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;

    const-string v2, "Camera closing has been interrupted."

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3533
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 3534
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;

    const-string v2, "Camera closing failed."

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3537
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :cond_0
    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;

    const-string v2, "joinCloseDeviceTask: Close camera device task is not submitted."

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private declared-synchronized openCameraDeviceWithRetry(I)Z
    .locals 7
    .param p1, "cameraId"    # I

    .prologue
    const/4 v6, 0x5

    .line 2868
    monitor-enter p0

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_0

    .line 2870
    :try_start_0
    iget-boolean v4, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mIsCancelOpenCameraRequested:Z

    if-eqz v4, :cond_1

    .line 2901
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->isAvailable()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    monitor-exit p0

    return v4

    .line 2876
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->open(I)V
    :try_end_1
    .catch Lcom/sonyericsson/android/camera/device/CameraDeviceException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2878
    :catch_0
    move-exception v0

    .line 2879
    .local v0, "e":Lcom/sonyericsson/android/camera/device/CameraDeviceException;
    :try_start_2
    sget-object v4, Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;

    const-string v5, "Open camera device failed."

    invoke-static {v4, v5, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2882
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-ge v3, v6, :cond_2

    .line 2885
    :try_start_3
    iget-boolean v4, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mIsCancelOpenCameraRequested:Z

    if-eqz v4, :cond_3

    .line 2868
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2890
    :cond_3
    const-wide/16 v4, 0x64

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2882
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2893
    :catch_1
    move-exception v2

    .line 2896
    .local v2, "ie":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 2868
    .end local v0    # "e":Lcom/sonyericsson/android/camera/device/CameraDeviceException;
    .end local v2    # "ie":Ljava/lang/InterruptedException;
    .end local v3    # "j":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private prepareVideoNrSetting()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1169
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getInstance()Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getCameraExtensionVersion()Lcom/sonyericsson/cameracommon/device/CameraExtensionVersion;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v3, v6}, Lcom/sonyericsson/cameracommon/device/CameraExtensionVersion;->isLaterThanOrEqualTo(II)Z

    move-result v0

    .line 1172
    .local v0, "isAvailableVersion":Z
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getInstance()Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getCameraId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->isVideoNrSupported(I)Z

    move-result v1

    .line 1177
    .local v1, "isVideoNrSupported":Z
    iget v5, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mVideoFps:I

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FULL_HD_60FPS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoFrameRate()I

    move-result v6

    if-eq v5, v6, :cond_1

    move v2, v3

    .line 1180
    .local v2, "isVideoSizeCapable":Z
    :goto_0
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 1181
    if-eqz v2, :cond_2

    .line 1182
    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setVideoNr(Z)V

    .line 1187
    :cond_0
    :goto_1
    return-void

    .end local v2    # "isVideoSizeCapable":Z
    :cond_1
    move v2, v4

    .line 1177
    goto :goto_0

    .line 1184
    .restart local v2    # "isVideoSizeCapable":Z
    :cond_2
    invoke-virtual {p0, v4}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setVideoNr(Z)V

    goto :goto_1
.end method

.method private setCachedParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 5
    .param p1, "cachedParameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 2749
    const/4 v0, -0x1

    .line 2750
    .local v0, "oldZoom":I
    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraDevice;->sCachedParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v2, :cond_0

    .line 2751
    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraDevice;->sCachedParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v0

    .line 2754
    :cond_0
    sput-object p1, Lcom/sonyericsson/android/camera/device/CameraDevice;->sCachedParameters:Landroid/hardware/Camera$Parameters;

    .line 2756
    if-eqz p1, :cond_3

    .line 2757
    if-ltz v0, :cond_2

    .line 2758
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v2

    if-ltz v2, :cond_1

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v2

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v3

    if-le v2, v3, :cond_2

    .line 2762
    :cond_1
    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraDevice;->sCachedParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v0}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 2766
    :cond_2
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 2767
    .local v1, "previewSize":Landroid/hardware/Camera$Size;
    if-nez v1, :cond_4

    .line 2770
    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraDevice;->sCachedParameters:Landroid/hardware/Camera$Parameters;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mPreviewSize:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mPreviewSize:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 2778
    .end local v1    # "previewSize":Landroid/hardware/Camera$Size;
    :cond_3
    :goto_0
    return-void

    .line 2771
    .restart local v1    # "previewSize":Landroid/hardware/Camera$Size;
    :cond_4
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    if-ltz v2, :cond_5

    iget v2, v1, Landroid/hardware/Camera$Size;->height:I

    if-gez v2, :cond_3

    .line 2775
    :cond_5
    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraDevice;->sCachedParameters:Landroid/hardware/Camera$Parameters;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mPreviewSize:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mPreviewSize:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    goto :goto_0
.end method

.method private static setCameraInfo(Landroid/util/SparseArray;I)V
    .locals 1
    .param p1, "cameraId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/hardware/Camera$CameraInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 484
    .local p0, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/hardware/Camera$CameraInfo;>;"
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 485
    .local v0, "info":Landroid/hardware/Camera$CameraInfo;
    invoke-static {p1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 486
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/utility/StaticConfigurationUtil;->setCameraInfo(Landroid/hardware/Camera$CameraInfo;)V

    .line 487
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 488
    return-void
.end method

.method private setDcModeParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 3375
    monitor-enter p0

    .line 3376
    :try_start_0
    sget-object v0, Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$DcCategory;->NORMAL:Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$DcCategory;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/device/CommonPlatformDependencyResolver$DcCategory;->writeTo(Landroid/hardware/Camera$Parameters;)V

    .line 3377
    monitor-exit p0

    .line 3379
    return-void

    .line 3377
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private declared-synchronized setOpenTaskTargetCameraId(I)V
    .locals 1
    .param p1, "cameraId"    # I

    .prologue
    .line 2921
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mOpenTaskTargetCameraId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2922
    monitor-exit p0

    return-void

    .line 2921
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setVideoSize(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "size"    # Landroid/graphics/Rect;

    .prologue
    .line 1607
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 1608
    .local v1, "params":Landroid/hardware/Camera$Parameters;
    if-nez v1, :cond_0

    .line 1609
    sget-object v3, Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;

    const-string v4, "setVideoSize: params is null."

    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    :goto_0
    return-void

    .line 1613
    :cond_0
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getStringKey(Lcom/sonyericsson/android/camera/configuration/ParameterKey;Z)Ljava/lang/String;

    move-result-object v0

    .line 1614
    .local v0, "key":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1615
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v1, v0, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public clearResumeDeviceTask()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3194
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mIsCancelOpenCameraRequested:Z

    .line 3196
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->isStartedOpenCameraDeviceTask()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3197
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->joinOpenCameraDeviceTask(Z)V

    .line 3200
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->isStartedSetupCameraDeviceTask()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3201
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->joinSetupCameraDeviceTask(Z)V

    .line 3205
    :cond_1
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mIsCancelOpenCameraRequested:Z

    .line 3207
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mOpenDeviceFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_2

    .line 3208
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mOpenDeviceFuture:Ljava/util/concurrent/Future;

    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 3209
    iput-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mOpenDeviceFuture:Ljava/util/concurrent/Future;

    .line 3211
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mSetupDeviceFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_3

    .line 3212
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mSetupDeviceFuture:Ljava/util/concurrent/Future;

    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 3213
    iput-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mSetupDeviceFuture:Ljava/util/concurrent/Future;

    .line 3215
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mOpenDeviceExecutorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_4

    .line 3216
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mOpenDeviceExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 3217
    iput-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mOpenDeviceExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 3220
    :cond_4
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setOpenTaskTargetCameraId(I)V

    .line 3223
    return-void
.end method

.method public clearZoomChangeListener()V
    .locals 2

    .prologue
    .line 1963
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 1968
    :goto_0
    return-void

    .line 1967
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCamera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    goto :goto_0
.end method

.method public close()V
    .locals 3

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->isRecorderWorking()Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->close(Z)V

    .line 351
    :goto_0
    return-void

    .line 348
    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCloseDeviceExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 349
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCloseDeviceExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraDevice$CloseDeviceTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/device/CameraDevice$CloseDeviceTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDevice;Lcom/sonyericsson/android/camera/device/CameraDevice$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCloseDeviceFuture:Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method public commit()V
    .locals 1

    .prologue
    .line 2609
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCommitParameters:Z

    if-eqz v0, :cond_0

    .line 2610
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->commitParameters()V

    .line 2612
    :cond_0
    return-void
.end method

.method public declared-synchronized commitParameters()V
    .locals 6

    .prologue
    .line 2682
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCamera:Landroid/hardware/Camera;

    if-nez v2, :cond_0

    .line 2683
    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;

    const-string v3, "Camera is not initialized."

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2744
    :goto_0
    monitor-exit p0

    return-void

    .line 2686
    :cond_0
    :try_start_1
    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraDevice;->sCachedParameters:Landroid/hardware/Camera$Parameters;

    if-nez v2, :cond_1

    .line 2687
    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;

    const-string v3, "Parameters are not cached."

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2682
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 2691
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->isCapturing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2694
    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;

    const-string v3, "Parameters can not apply while capturing."

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2700
    :cond_2
    :try_start_3
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const/high16 v3, 0x7f060000

    const v4, 0x7f060001

    sget-object v5, Lcom/sonyericsson/android/camera/device/CameraDevice;->sCachedParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v2, v3, v4, v5}, Lcom/sonymobile/cameracommon/cameraparametervalidator/CameraParameterValidator;->validate(Landroid/content/Context;IILandroid/hardware/Camera$Parameters;)V

    .line 2715
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCamera:Landroid/hardware/Camera;

    sget-object v3, Lcom/sonyericsson/android/camera/device/CameraDevice;->sCachedParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2718
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setCachedParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2730
    const/4 v2, 0x0

    :try_start_4
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCommitParameters:Z

    .line 2742
    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraDevice;->sCachedParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "key-sony-ext-shuttersound"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    .line 2743
    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraDevice;->sCachedParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "key-sony-ext-recordingsound"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 2719
    :catch_0
    move-exception v0

    .line 2721
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_5
    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setParameters fail. sCachedParameters="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/android/camera/device/CameraDevice;->sCachedParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2727
    :goto_1
    const/4 v2, 0x0

    :try_start_6
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setCachedParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2728
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2730
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_1
    move-exception v2

    const/4 v3, 0x0

    :try_start_7
    iput-boolean v3, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCommitParameters:Z

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2723
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 2724
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_8
    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setParameters fail. sCachedParameters.flatten() exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_1
.end method

.method public dumpParameters()V
    .locals 1

    .prologue
    .line 3390
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDevice;->sCachedParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    .line 3396
    :cond_0
    return-void
.end method

.method public finishBurstShot(Lcom/sonyericsson/android/camera/parameter/Parameters;)V
    .locals 2
    .param p1, "params"    # Lcom/sonyericsson/android/camera/parameter/Parameters;

    .prologue
    .line 1066
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getHdr()Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    move-result-object v0

    .line 1067
    .local v0, "hdr":Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;
    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getUpdatedResolution(Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;)Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setResolution(Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;)V

    .line 1069
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setBurstShot(Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;)V

    .line 1072
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setJpegEncodingQuality(I)V

    .line 1074
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->commit()V

    .line 1076
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->startPreview(Landroid/view/SurfaceHolder;)V

    .line 1077
    return-void
.end method

.method public finishPreviewing()V
    .locals 1

    .prologue
    .line 653
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->stopSceneRecognition()V

    .line 654
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->stopFaceDetection()V

    .line 655
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->stopObjectTracking(Z)V

    .line 656
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->stopBurstShot(I)I

    .line 657
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->isRecorderWorking()Z

    move-result v0

    if-nez v0, :cond_0

    .line 658
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->stopPreview()V

    .line 660
    :cond_0
    return-void
.end method

.method public finishRec(Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;)V
    .locals 2
    .param p1, "resolution"    # Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .prologue
    .line 1129
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mIsVideo:Z

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setVideoMode(Z)V

    .line 1131
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getPhotoPreviewSize(Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/CameraSize;->isAspectRatioDifferent(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1132
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setResolution(Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;)V

    .line 1134
    :cond_0
    const/16 v1, 0x3c

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCachedCapabilityList:Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->FPS_RANGE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceUtil;->computePreviewFpsRange(ILjava/util/List;)[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setFpsRange([I)V

    .line 1138
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->commit()V

    .line 1140
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->startPreview(Landroid/view/SurfaceHolder;)V

    .line 1141
    return-void
.end method

.method public getAutoFocus(Lcom/sonyericsson/android/camera/util/capability/CapabilityList;)Lcom/sonyericsson/android/camera/device/CameraDevice$AutoFocus;
    .locals 2
    .param p1, "list"    # Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

    .prologue
    const/4 v1, 0x0

    .line 321
    iget-object v0, p1, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->EXTENSION_VERSION:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 322
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraDevice$AutoFocusExtension;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/device/CameraDevice$AutoFocusExtension;-><init>(Lcom/sonyericsson/android/camera/device/CameraDevice;Lcom/sonyericsson/android/camera/device/CameraDevice$1;)V

    .line 324
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraDevice$AutoFocusNoExtension;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/device/CameraDevice$AutoFocusNoExtension;-><init>(Lcom/sonyericsson/android/camera/device/CameraDevice;Lcom/sonyericsson/android/camera/device/CameraDevice$1;)V

    goto :goto_0
.end method

.method public final getCamera()Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 1208
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method public getCameraId()I
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraId:I

    return v0
.end method

.method public getDisplayOrientation()I
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mDisplayOrientation:I

    return v0
.end method

.method public getImageStabilizer(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;
    .locals 3
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 2631
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->STABILIZER:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getStringKey(Lcom/sonyericsson/android/camera/configuration/ParameterKey;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2632
    .local v0, "stabilizer":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2633
    const-string v0, ""

    .line 2635
    .end local v0    # "stabilizer":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getLedLight(Lcom/sonyericsson/android/camera/util/capability/CapabilityList;)Lcom/sonyericsson/android/camera/device/CameraDevice$LedLight;
    .locals 3
    .param p1, "list"    # Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

    .prologue
    const/4 v2, 0x0

    .line 329
    iget-object v1, p1, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->FLASH:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 330
    .local v0, "supported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "torch"

    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "off"

    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 332
    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraDevice$LedLightSupported;

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/device/CameraDevice$LedLightSupported;-><init>(Lcom/sonyericsson/android/camera/device/CameraDevice;Lcom/sonyericsson/android/camera/device/CameraDevice$1;)V

    .line 334
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraDevice$LedLightNotSupported;

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/device/CameraDevice$LedLightNotSupported;-><init>(Lcom/sonyericsson/android/camera/device/CameraDevice;Lcom/sonyericsson/android/camera/device/CameraDevice$1;)V

    goto :goto_0
.end method

.method public final getMaxShutterSpeed()I
    .locals 4

    .prologue
    .line 1263
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1264
    .local v0, "params":Landroid/hardware/Camera$Parameters;
    if-nez v0, :cond_0

    .line 1265
    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;

    const-string v3, "getMaxShutterSpeed: params is null."

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    const/4 v2, -0x1

    .line 1269
    :goto_0
    return v2

    .line 1268
    :cond_0
    const-string v2, "sony-max-shutter-speed"

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1269
    .local v1, "speed":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0
.end method

.method public final getMaxSrZoom()I
    .locals 5

    .prologue
    .line 2055
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 2056
    .local v1, "params":Landroid/hardware/Camera$Parameters;
    if-nez v1, :cond_1

    .line 2057
    sget-object v3, Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;

    const-string v4, "getMaxSrZoom: params is null."

    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2058
    const/4 v0, 0x0

    .line 2068
    :cond_0
    :goto_0
    return v0

    .line 2061
    :cond_1
    const/4 v0, 0x0

    .line 2062
    .local v0, "max":I
    const-string v3, "sony-max-sr-zoom"

    invoke-virtual {v1, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2064
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 2065
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public final getMaxZoom()I
    .locals 4

    .prologue
    .line 2044
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 2045
    .local v1, "params":Landroid/hardware/Camera$Parameters;
    if-nez v1, :cond_0

    .line 2046
    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;

    const-string v3, "getMaxZoom: params is null."

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2047
    const/4 v0, 0x0

    .line 2051
    :goto_0
    return v0

    .line 2049
    :cond_0
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    .line 2051
    .local v0, "max":I
    goto :goto_0
.end method

.method public final getMinShutterSpeed()I
    .locals 4

    .prologue
    .line 1253
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1254
    .local v0, "params":Landroid/hardware/Camera$Parameters;
    if-nez v0, :cond_0

    .line 1255
    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;

    const-string v3, "getMinShutterSpeed: params is null."

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    const/4 v2, -0x1

    .line 1259
    :goto_0
    return v2

    .line 1258
    :cond_0
    const-string v2, "sony-min-shutter-speed"

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1259
    .local v1, "speed":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0
.end method

.method public getParameters()Landroid/hardware/Camera$Parameters;
    .locals 3

    .prologue
    .line 2662
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 2663
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;

    const-string v1, "Camera is not initialized."

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2664
    const/4 v0, 0x0

    .line 2674
    :goto_0
    return-object v0

    .line 2666
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDevice;->sCachedParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_1

    .line 2667
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;

    const-string v1, "sCachedParameters is null. re-get parameters."

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2668
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setCachedParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2670
    :cond_1
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDevice;->sCachedParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_2

    .line 2671
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "camera parameters is null. getNumberOfCameras() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getNumberOfCameras()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2674
    :cond_2
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDevice;->sCachedParameters:Landroid/hardware/Camera$Parameters;

    goto :goto_0
.end method

.method public getPhotoPreviewSize(Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;)Landroid/graphics/Rect;
    .locals 4
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .prologue
    .line 663
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 665
    .local v0, "aspectRatio":F
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v1, v0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getSurfaceRect(Landroid/content/Context;F)Landroid/graphics/Rect;

    move-result-object v3

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCachedCapabilityList:Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->PREVIEW_SIZE_FOR_VIDEO:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCachedCapabilityList:Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->PREVIEW_SIZE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v3, v1, v2}, Lcom/sonyericsson/android/camera/CameraSize;->getOptimalPreviewRect(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/util/List;)Landroid/graphics/Rect;

    move-result-object v1

    return-object v1
.end method

.method public getPictureRect()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 207
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mPictureSize:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public final getPreviewFormat()I
    .locals 3

    .prologue
    .line 1225
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1226
    .local v0, "params":Landroid/hardware/Camera$Parameters;
    if-nez v0, :cond_0

    .line 1227
    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;

    const-string v2, "Camera is not opened. parameters is null."

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    const/4 v1, -0x1

    .line 1230
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v1

    goto :goto_0
.end method

.method public getPreviewFrameRetriever()Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mPreviewFrameRetriever:Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;

    return-object v0
.end method

.method public getPreviewRect()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 213
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mPreviewSize:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public final getShutterSpeed()I
    .locals 4

    .prologue
    .line 1243
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1244
    .local v0, "params":Landroid/hardware/Camera$Parameters;
    if-nez v0, :cond_0

    .line 1245
    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;

    const-string v3, "getShutterSpeed: params is null."

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    const/4 v2, -0x1

    .line 1249
    :goto_0
    return v2

    .line 1248
    :cond_0
    const-string v2, "sony-shutter-speed"

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1249
    .local v1, "speed":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0
.end method

.method public getStringKey(Lcom/sonyericsson/android/camera/configuration/ParameterKey;Z)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    .param p2, "isVideo"    # Z

    .prologue
    .line 2615
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDevice$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterKey:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2627
    const-string v0, ""

    :goto_0
    return-object v0

    .line 2617
    :pswitch_0
    const-string v0, "sony-is"

    goto :goto_0

    .line 2619
    :pswitch_1
    if-eqz p2, :cond_0

    .line 2620
    const-string v0, "sony-vs"

    goto :goto_0

    .line 2622
    :cond_0
    const-string v0, "sony-is"

    goto :goto_0

    .line 2625
    :pswitch_2
    const-string v0, "video-size"

    goto :goto_0

    .line 2615
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final getSupportedPreviewFormats()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1234
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1235
    .local v0, "params":Landroid/hardware/Camera$Parameters;
    if-nez v0, :cond_0

    .line 1236
    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;

    const-string v2, "getSupportedPreviewFormats: params is null."

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1239
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFormats()Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 2829
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public getVideoPreviewSize(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Landroid/graphics/Rect;
    .locals 4
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .prologue
    .line 673
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v3

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCachedCapabilityList:Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->PREVIEW_SIZE_FOR_VIDEO:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCachedCapabilityList:Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->PREVIEW_SIZE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v3, v1, v2}, Lcom/sonyericsson/android/camera/CameraSize;->getVideoPreviewRect(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/util/List;)Landroid/graphics/Rect;

    move-result-object v0

    .line 677
    .local v0, "preview":Landroid/graphics/Rect;
    return-object v0
.end method

.method public final getZoom()I
    .locals 4

    .prologue
    .line 2030
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 2031
    .local v0, "params":Landroid/hardware/Camera$Parameters;
    if-nez v0, :cond_0

    .line 2032
    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;

    const-string v3, "getZoom: params is null."

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2033
    const/4 v1, 0x0

    .line 2037
    :goto_0
    return v1

    .line 2035
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v1

    .line 2037
    .local v1, "step":I
    goto :goto_0
.end method

.method public final isAvailable()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 464
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCamera:Landroid/hardware/Camera;

    if-nez v1, :cond_1

    .line 473
    :cond_0
    :goto_0
    return v0

    .line 468
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    if-eqz v1, :cond_0

    .line 473
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isObjectTrackingRunning()Z
    .locals 1

    .prologue
    .line 967
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mIsObjectTrackingRunning:Z

    return v0
.end method

.method public isOpenCameraDeviceTaskRunning()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2964
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mOpenDeviceFuture:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_0

    .line 2965
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mOpenDeviceFuture:Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2977
    :cond_0
    :goto_0
    return v0

    .line 2972
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final declared-synchronized isPreviewing()Z
    .locals 1

    .prologue
    .line 645
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mIsPreviewing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isRecorderWorking()Z
    .locals 1

    .prologue
    .line 3485
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mVideoDevice:Lcom/sonyericsson/android/camera/controller/VideoDevice;

    if-nez v0, :cond_0

    .line 3486
    const/4 v0, 0x0

    .line 3488
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mVideoDevice:Lcom/sonyericsson/android/camera/controller/VideoDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/VideoDevice;->isRecorderWorking()Z

    move-result v0

    goto :goto_0
.end method

.method public isSceneRecognitionRunning()Z
    .locals 1

    .prologue
    .line 963
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mIsSceneRecognitionRunning:Z

    return v0
.end method

.method public isSetupCameraDeviceTaskRunning()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3073
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mSetupDeviceFuture:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_0

    .line 3074
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mSetupDeviceFuture:Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3086
    :cond_0
    :goto_0
    return v0

    .line 3081
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isStartedOpenCameraDeviceTask()Z
    .locals 1

    .prologue
    .line 2949
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mOpenDeviceFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 2951
    const/4 v0, 0x1

    .line 2954
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStartedSetupCameraDeviceTask()Z
    .locals 1

    .prologue
    .line 3058
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mSetupDeviceFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 3060
    const/4 v0, 0x1

    .line 3063
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVideoHdrOn()Z
    .locals 6

    .prologue
    .line 2589
    const/4 v2, 0x0

    .line 2590
    .local v2, "videoHdrOn":Z
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 2591
    .local v0, "params":Landroid/hardware/Camera$Parameters;
    if-nez v0, :cond_0

    .line 2592
    sget-object v4, Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;

    const-string v5, "setVideoHdr: params is null."

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 2600
    .end local v2    # "videoHdrOn":Z
    .local v3, "videoHdrOn":I
    :goto_0
    return v3

    .line 2595
    .end local v3    # "videoHdrOn":I
    .restart local v2    # "videoHdrOn":Z
    :cond_0
    const-string v4, "sony-video-hdr"

    invoke-virtual {v0, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2596
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 2597
    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    :cond_1
    move v3, v2

    .line 2600
    .restart local v3    # "videoHdrOn":I
    goto :goto_0
.end method

.method public joinOpenCameraDeviceTask(Z)V
    .locals 8
    .param p1, "isWait"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2991
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mOpenDeviceFuture:Ljava/util/concurrent/Future;

    if-eqz v2, :cond_3

    .line 2992
    const/4 v1, 0x0

    .line 2995
    .local v1, "isTimeoutException":Z
    if-eqz p1, :cond_1

    .line 2997
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mOpenDeviceFuture:Ljava/util/concurrent/Future;

    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3014
    :goto_0
    if-nez v1, :cond_0

    .line 3015
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mOpenDeviceFuture:Ljava/util/concurrent/Future;

    invoke-interface {v2, v6}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 3016
    iput-object v7, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mOpenDeviceFuture:Ljava/util/concurrent/Future;

    .line 3026
    .end local v1    # "isTimeoutException":Z
    :cond_0
    :goto_1
    return-void

    .line 3001
    .restart local v1    # "isTimeoutException":Z
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mOpenDeviceFuture:Ljava/util/concurrent/Future;

    const-wide/16 v4, 0xfa0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v4, v5, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3005
    :catch_0
    move-exception v0

    .line 3006
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;

    const-string v3, "Open camera has been interrupted."

    invoke-static {v2, v3, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3014
    if-nez v1, :cond_0

    .line 3015
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mOpenDeviceFuture:Ljava/util/concurrent/Future;

    invoke-interface {v2, v6}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 3016
    iput-object v7, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mOpenDeviceFuture:Ljava/util/concurrent/Future;

    goto :goto_1

    .line 3007
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 3008
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    :try_start_3
    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;

    const-string v3, "Open camera failed."

    invoke-static {v2, v3, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3014
    if-nez v1, :cond_0

    .line 3015
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mOpenDeviceFuture:Ljava/util/concurrent/Future;

    invoke-interface {v2, v6}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 3016
    iput-object v7, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mOpenDeviceFuture:Ljava/util/concurrent/Future;

    goto :goto_1

    .line 3009
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_2
    move-exception v0

    .line 3010
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    :try_start_4
    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;

    const-string v3, "Open camera is time out."

    invoke-static {v2, v3, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3011
    const/4 v1, 0x1

    .line 3012
    const/4 v2, -0x2

    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setOpenTaskTargetCameraId(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3014
    if-nez v1, :cond_0

    .line 3015
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mOpenDeviceFuture:Ljava/util/concurrent/Future;

    invoke-interface {v2, v6}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 3016
    iput-object v7, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mOpenDeviceFuture:Ljava/util/concurrent/Future;

    goto :goto_1

    .line 3014
    .end local v0    # "e":Ljava/util/concurrent/TimeoutException;
    :catchall_0
    move-exception v2

    if-nez v1, :cond_2

    .line 3015
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mOpenDeviceFuture:Ljava/util/concurrent/Future;

    invoke-interface {v3, v6}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 3016
    iput-object v7, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mOpenDeviceFuture:Ljava/util/concurrent/Future;

    :cond_2
    throw v2

    .line 3020
    .end local v1    # "isTimeoutException":Z
    :cond_3
    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;

    const-string v3, "joinOpenCameraDeviceTask: open camera device task is not submitted."

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public joinSetupCameraDeviceTask(Z)V
    .locals 8
    .param p1, "isWait"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3099
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mSetupDeviceFuture:Ljava/util/concurrent/Future;

    if-eqz v2, :cond_3

    .line 3101
    const/4 v1, 0x0

    .line 3103
    .local v1, "isTimeoutException":Z
    if-eqz p1, :cond_1

    .line 3105
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mSetupDeviceFuture:Ljava/util/concurrent/Future;

    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3121
    :goto_0
    if-nez v1, :cond_0

    .line 3122
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mSetupDeviceFuture:Ljava/util/concurrent/Future;

    invoke-interface {v2, v7}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 3123
    iput-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mSetupDeviceFuture:Ljava/util/concurrent/Future;

    .line 3124
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mOpenDeviceExecutorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v2, :cond_0

    .line 3125
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mOpenDeviceExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 3126
    iput-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mOpenDeviceExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 3137
    .end local v1    # "isTimeoutException":Z
    :cond_0
    :goto_1
    return-void

    .line 3109
    .restart local v1    # "isTimeoutException":Z
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mSetupDeviceFuture:Ljava/util/concurrent/Future;

    const-wide/16 v4, 0xfa0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v4, v5, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3113
    :catch_0
    move-exception v0

    .line 3114
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;

    const-string v3, "SetupCameraDeviceTask has been interrupted."

    invoke-static {v2, v3, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3121
    if-nez v1, :cond_0

    .line 3122
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mSetupDeviceFuture:Ljava/util/concurrent/Future;

    invoke-interface {v2, v7}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 3123
    iput-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mSetupDeviceFuture:Ljava/util/concurrent/Future;

    .line 3124
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mOpenDeviceExecutorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v2, :cond_0

    .line 3125
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mOpenDeviceExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 3126
    iput-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mOpenDeviceExecutorService:Ljava/util/concurrent/ExecutorService;

    goto :goto_1

    .line 3115
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 3116
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    :try_start_3
    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;

    const-string v3, "SetupCameraDeviceTask failed."

    invoke-static {v2, v3, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3121
    if-nez v1, :cond_0

    .line 3122
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mSetupDeviceFuture:Ljava/util/concurrent/Future;

    invoke-interface {v2, v7}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 3123
    iput-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mSetupDeviceFuture:Ljava/util/concurrent/Future;

    .line 3124
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mOpenDeviceExecutorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v2, :cond_0

    .line 3125
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mOpenDeviceExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 3126
    iput-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mOpenDeviceExecutorService:Ljava/util/concurrent/ExecutorService;

    goto :goto_1

    .line 3117
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_2
    move-exception v0

    .line 3118
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    :try_start_4
    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;

    const-string v3, "SetupCameraDeviceTask is time out."

    invoke-static {v2, v3, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3119
    const/4 v1, 0x1

    .line 3121
    if-nez v1, :cond_0

    .line 3122
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mSetupDeviceFuture:Ljava/util/concurrent/Future;

    invoke-interface {v2, v7}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 3123
    iput-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mSetupDeviceFuture:Ljava/util/concurrent/Future;

    .line 3124
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mOpenDeviceExecutorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v2, :cond_0

    .line 3125
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mOpenDeviceExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 3126
    iput-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mOpenDeviceExecutorService:Ljava/util/concurrent/ExecutorService;

    goto :goto_1

    .line 3121
    .end local v0    # "e":Ljava/util/concurrent/TimeoutException;
    :catchall_0
    move-exception v2

    if-nez v1, :cond_2

    .line 3122
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mSetupDeviceFuture:Ljava/util/concurrent/Future;

    invoke-interface {v3, v7}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 3123
    iput-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mSetupDeviceFuture:Ljava/util/concurrent/Future;

    .line 3124
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mOpenDeviceExecutorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v3, :cond_2

    .line 3125
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mOpenDeviceExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 3126
    iput-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mOpenDeviceExecutorService:Ljava/util/concurrent/ExecutorService;

    :cond_2
    throw v2

    .line 3131
    .end local v1    # "isTimeoutException":Z
    :cond_3
    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;

    const-string v3, "joinSetupCameraDeviceTask: setup camera device task is not submitted."

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public lockCamera()V
    .locals 2

    .prologue
    .line 2114
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 2115
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;

    const-string v1, "lockCamera: mCamera is null."

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2120
    :goto_0
    return-void

    .line 2118
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->lock()V

    goto :goto_0
.end method

.method public needStartPreview()Z
    .locals 1

    .prologue
    .line 1586
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mNeedStartPreview:Z

    return v0
.end method

.method public onError(ILandroid/hardware/Camera;)V
    .locals 1
    .param p1, "error"    # I
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 510
    monitor-enter p0

    .line 511
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 513
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCamera:Landroid/hardware/Camera;

    .line 517
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 518
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_DEVICE_ERROR:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    invoke-static {v0, p1, p2}, Lcom/sonyericsson/android/camera/controller/Executor;->postEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;ILjava/lang/Object;)V

    .line 519
    return-void

    .line 517
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onSceneModeChanged(Lcom/sonyericsson/cameraextension/CameraExtension$SceneRecognitionResult;)V
    .locals 1
    .param p1, "result"    # Lcom/sonyericsson/cameraextension/CameraExtension$SceneRecognitionResult;

    .prologue
    .line 862
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mSceneRecognitionCallback:Lcom/sonyericsson/cameraextension/CameraExtension$SceneRecognitionCallback;

    if-eqz v0, :cond_0

    .line 863
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mSceneRecognitionCallback:Lcom/sonyericsson/cameraextension/CameraExtension$SceneRecognitionCallback;

    invoke-interface {v0, p1}, Lcom/sonyericsson/cameraextension/CameraExtension$SceneRecognitionCallback;->onSceneModeChanged(Lcom/sonyericsson/cameraextension/CameraExtension$SceneRecognitionResult;)V

    .line 865
    :cond_0
    return-void
.end method

.method public final declared-synchronized open(I)V
    .locals 6
    .param p1, "cameraId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/android/camera/device/CameraDeviceException;
        }
    .end annotation

    .prologue
    .line 253
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getCapability(I)Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCachedCapabilityList:Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

    .line 254
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setCachedParameters(Landroid/hardware/Camera$Parameters;)V

    .line 256
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCamera:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 259
    :try_start_1
    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCamera:Landroid/hardware/Camera;

    .line 260
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCamera:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    .line 261
    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraDeviceException;

    const-string v2, "Open camera failed. NULL returns."

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_2
    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraDeviceException;

    const-string v2, "Open camera failed."

    invoke-direct {v1, v2, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 253
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 263
    :cond_0
    :try_start_3
    iput p1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraId:I
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 273
    :cond_1
    :try_start_4
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-static {v1, p1}, Lcom/sonyericsson/cameraextension/CameraExtension;->open(Landroid/hardware/Camera;I)Lcom/sonyericsson/cameraextension/CameraExtension;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    .line 276
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 277
    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraDeviceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Open camera failed: mCamera: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mCameraExtension: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 282
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setCachedParameters(Landroid/hardware/Camera$Parameters;)V

    .line 286
    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDevice;->sCachedParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_3

    .line 287
    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDevice;->sCachedParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setDcModeParameters(Landroid/hardware/Camera$Parameters;)V

    .line 291
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, p0}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 297
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCachedCapabilityList:Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getAutoFocus(Lcom/sonyericsson/android/camera/util/capability/CapabilityList;)Lcom/sonyericsson/android/camera/device/CameraDevice$AutoFocus;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mAutoFocus:Lcom/sonyericsson/android/camera/device/CameraDevice$AutoFocus;

    .line 298
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCachedCapabilityList:Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getLedLight(Lcom/sonyericsson/android/camera/util/capability/CapabilityList;)Lcom/sonyericsson/android/camera/device/CameraDevice$LedLight;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mLedLight:Lcom/sonyericsson/android/camera/device/CameraDevice$LedLight;

    .line 301
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mIsFaceDetectionRunning:Z

    .line 302
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mIsSceneRecognitionRunning:Z

    .line 303
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mIsObjectTrackingRunning:Z

    .line 305
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 306
    const/4 v1, 0x0

    :try_start_5
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mIsCapturing:Z

    .line 307
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 309
    :try_start_6
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mPreviewFrameRetriever:Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;->attachCamera(Landroid/hardware/Camera;)V

    .line 312
    new-instance v1, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    iget v3, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraId:I

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;I)V

    new-instance v2, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus;

    sget-object v3, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;->POWER_ON:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    invoke-direct {v2, v3}, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;)V

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    .line 315
    new-instance v1, Lcom/sonyericsson/cameracommon/status/GlobalCameraStatusPublisher;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {v1, v2}, Lcom/sonyericsson/cameracommon/status/GlobalCameraStatusPublisher;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/sonyericsson/cameracommon/status/global/BuiltInCameraIds;

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    iget v5, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraId:I

    aput v5, v3, v4

    invoke-direct {v2, v3}, Lcom/sonyericsson/cameracommon/status/global/BuiltInCameraIds;-><init>([I)V

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/status/GlobalCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 318
    monitor-exit p0

    return-void

    .line 307
    :catchall_1
    move-exception v1

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method public prepareBurstShot(Lcom/sonyericsson/android/camera/parameter/Parameters;)V
    .locals 3
    .param p1, "params"    # Lcom/sonyericsson/android/camera/parameter/Parameters;

    .prologue
    .line 1047
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setBurstFrameRate()V

    .line 1049
    invoke-static {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;->getBurstResolution(Lcom/sonyericsson/android/camera/parameter/Parameters;)Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object v1

    .line 1050
    .local v1, "resolution":Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setResolution(Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;)V

    .line 1053
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getBurstShot()Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;

    move-result-object v0

    .line 1054
    .local v0, "burstShot":Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setBurstShot(Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;)V

    .line 1057
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setJpegEncodingQuality(I)V

    .line 1059
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->commit()V

    .line 1061
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/device/CameraDevice;->startPreview(Landroid/view/SurfaceHolder;)V

    .line 1062
    return-void
.end method

.method public prepareRec(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V
    .locals 2
    .param p1, "videoSize"    # Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .prologue
    .line 1113
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setVideoMode(Z)V

    .line 1115
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getVideoPreviewSize(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/CameraSize;->isAspectRatioDifferent(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1116
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setPreviewSizeAndFpsRangeForVideo(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V

    .line 1123
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->commit()V

    .line 1125
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->startPreview(Landroid/view/SurfaceHolder;)V

    .line 1126
    return-void

    .line 1118
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoFrameRate()I

    move-result v1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCachedCapabilityList:Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->FPS_RANGE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceUtil;->computePreviewFpsRange(ILjava/util/List;)[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setFpsRange([I)V

    goto :goto_0
.end method

.method public reconnectCamera()V
    .locals 3

    .prologue
    .line 2096
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCamera:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    .line 2097
    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;

    const-string v2, "reconnectCamera: mCamera is null."

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2108
    :goto_0
    return-void

    .line 2100
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setCachedParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2102
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->reconnect()V

    .line 2103
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->initParametersCache()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2105
    :catch_0
    move-exception v0

    .line 2106
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;

    const-string v2, "reconnect() failed."

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 459
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setSceneRecognitionCallback(Lcom/sonyericsson/cameraextension/CameraExtension$SceneRecognitionCallback;)V

    .line 460
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setAutoFocusListener(Lcom/sonyericsson/android/camera/device/AutoFocusListener;)V

    .line 461
    return-void
.end method

.method public resetFocusAreaAndRect(Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;)V
    .locals 3
    .param p1, "focusMode"    # Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    .prologue
    .line 1469
    if-eqz p1, :cond_1

    .line 1470
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1471
    .local v0, "params":Landroid/hardware/Camera$Parameters;
    if-nez v0, :cond_0

    .line 1472
    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;

    const-string v2, "resetFocusAreaAndRect: getParameters() fail. params is null"

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    .end local v0    # "params":Landroid/hardware/Camera$Parameters;
    :goto_0
    return-void

    .line 1475
    .restart local v0    # "params":Landroid/hardware/Camera$Parameters;
    :cond_0
    const-string v1, "sony-focus-area"

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->getFocusArea()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1478
    .end local v0    # "params":Landroid/hardware/Camera$Parameters;
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setFocusRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public resetZoom()V
    .locals 1

    .prologue
    .line 2001
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setZoom(I)V

    .line 2002
    return-void
.end method

.method public restoreSettingAfterRecording()V
    .locals 2

    .prologue
    .line 3468
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mVideoDevice:Lcom/sonyericsson/android/camera/controller/VideoDevice;

    .line 3469
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->reconnectCamera()V

    .line 3470
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->stopVideoMetadata()V

    .line 3472
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->getParameterManager()Lcom/sonyericsson/android/camera/parameter/ParameterManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->getParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v0

    .line 3474
    .local v0, "params":Lcom/sonyericsson/android/camera/parameter/Parameters;
    if-eqz v0, :cond_0

    .line 3475
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getShutterSound()Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setVideoRecordingSound(Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;)V

    .line 3481
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->commit()V

    .line 3482
    return-void

    .line 3478
    :cond_0
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;->SOUND1:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setVideoRecordingSound(Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;)V

    goto :goto_0
.end method

.method public resume(Lcom/sonyericsson/android/camera/parameter/Parameters;)V
    .locals 3
    .param p1, "params"    # Lcom/sonyericsson/android/camera/parameter/Parameters;

    .prologue
    .line 438
    iget-object v1, p1, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()I

    move-result v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getCapability(I)Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCachedCapabilityList:Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

    .line 443
    iget-object v1, p1, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShotVideo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 445
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getVideoPreviewSize(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Landroid/graphics/Rect;

    move-result-object v0

    .line 449
    .local v0, "preview":Landroid/graphics/Rect;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->updatePreviewSize(Landroid/graphics/Rect;)V

    .line 452
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->startSetupCameraDeviceTask(Lcom/sonyericsson/android/camera/parameter/Parameters;)V

    .line 453
    return-void

    .line 447
    .end local v0    # "preview":Landroid/graphics/Rect;
    :cond_1
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getResolution()Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getPhotoPreviewSize(Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;)Landroid/graphics/Rect;

    move-result-object v0

    .restart local v0    # "preview":Landroid/graphics/Rect;
    goto :goto_0
.end method

.method public setAutoFocusListener(Lcom/sonyericsson/android/camera/device/AutoFocusListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/android/camera/device/AutoFocusListener;

    .prologue
    .line 1808
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mAutoFocusListener:Lcom/sonyericsson/android/camera/device/AutoFocusListener;

    .line 1809
    return-void
.end method

.method public setBurstFrameRate()V
    .locals 5

    .prologue
    .line 1664
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0003

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1666
    .local v0, "burstFps":I
    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCachedCapabilityList:Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

    iget-object v3, v3, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->MAX_BURST_SHOT_FRAME_RATE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1667
    .local v1, "maxBurstFps":I
    if-ge v1, v0, :cond_0

    .line 1668
    move v0, v1

    .line 1670
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 1671
    .local v2, "params":Landroid/hardware/Camera$Parameters;
    if-nez v2, :cond_1

    .line 1672
    sget-object v3, Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;

    const-string v4, "setBurstFrameRate: params is null."

    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    :goto_0
    return-void

    .line 1675
    :cond_1
    const-string v3, "sony-burst-shot-frame-rate"

    invoke-virtual {v2, v3, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 1678
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCommitParameters:Z

    goto :goto_0
.end method

.method public setBurstShot(Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;)V
    .locals 3
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;

    .prologue
    .line 2288
    monitor-enter p0

    .line 2289
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 2290
    .local v0, "params":Landroid/hardware/Camera$Parameters;
    if-nez v0, :cond_0

    .line 2291
    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;

    const-string v2, "setBurstShot: params is null."

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2292
    monitor-exit p0

    .line 2299
    :goto_0
    return-void

    .line 2294
    :cond_0
    const-string v1, "sony-burst-shot"

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2297
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2298
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCommitParameters:Z

    goto :goto_0

    .line 2297
    .end local v0    # "params":Landroid/hardware/Camera$Parameters;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setBurstShutterSound(Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;)V
    .locals 2
    .param p1, "sound"    # Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    .prologue
    .line 1080
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    if-nez v1, :cond_1

    .line 1110
    :cond_0
    :goto_0
    return-void

    .line 1091
    :cond_1
    iget v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraId:I

    if-nez v1, :cond_0

    .line 1096
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mBurstShutterSound:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    if-ne v1, p1, :cond_2

    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mIsAlreadySetBurstShutterSound:Z

    if-nez v1, :cond_0

    .line 1102
    :cond_2
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mBurstShutterSound:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    .line 1103
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mIsAlreadySetBurstShutterSound:Z

    .line 1105
    sget-object v1, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;->SOUND_BURST_SHUTTER:Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    invoke-static {v1, p1}, Lcom/sonyericsson/android/camera/ShutterToneGenerator;->getSoundFilePath(Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;)Ljava/lang/String;

    move-result-object v0

    .line 1108
    .local v0, "path":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameraextension/CameraExtension;->setBurstShutterSoundFilePath(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .locals 3
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .prologue
    const/4 v2, 0x1

    .line 2215
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mIsVideo:Z

    .line 2216
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShotVideo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2218
    :cond_0
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mIsVideo:Z

    .line 2221
    :cond_1
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mIsVideo:Z

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setVideoMode(Z)V

    .line 2223
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mIsVideo:Z

    if-nez v0, :cond_2

    .line 2225
    const/16 v1, 0x3c

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCachedCapabilityList:Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->FPS_RANGE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceUtil;->computePreviewFpsRange(ILjava/util/List;)[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setFpsRange([I)V

    .line 2229
    :cond_2
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCommitParameters:Z

    .line 2230
    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 6
    .param p1, "cameraId"    # I

    .prologue
    .line 1334
    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCamera:Landroid/hardware/Camera;

    if-nez v4, :cond_0

    .line 1364
    :goto_0
    return-void

    .line 1339
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 1340
    .local v0, "activity":Lcom/sonyericsson/android/camera/CameraActivity;
    sget-object v4, Lcom/sonyericsson/android/camera/device/CameraDevice;->sCameraInfoArray:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$CameraInfo;

    .line 1342
    .local v2, "info":Landroid/hardware/Camera$CameraInfo;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/utility/ProductConfig;->getMountAngle(Landroid/content/Context;)I

    move-result v4

    rsub-int v1, v4, 0x168

    .line 1349
    .local v1, "degrees":I
    iget v4, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 1350
    iget v4, v2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v4, v1

    rem-int/lit16 v3, v4, 0x168

    .line 1351
    .local v3, "result":I
    rsub-int v4, v3, 0x168

    rem-int/lit16 v3, v4, 0x168

    .line 1358
    :goto_1
    :try_start_0
    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v4, v3}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 1359
    iput v3, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mDisplayOrientation:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1360
    :catch_0
    move-exception v4

    goto :goto_0

    .line 1353
    .end local v3    # "result":I
    :cond_1
    iget v4, v2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v4, v1

    add-int/lit16 v4, v4, 0x168

    rem-int/lit16 v3, v4, 0x168

    .restart local v3    # "result":I
    goto :goto_1
.end method

.method public setEv(Lcom/sonyericsson/android/camera/configuration/parameters/Ev;)V
    .locals 2
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    .prologue
    .line 2275
    monitor-enter p0

    .line 2276
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 2277
    .local v0, "params":Landroid/hardware/Camera$Parameters;
    if-nez v0, :cond_0

    .line 2278
    monitor-exit p0

    .line 2285
    :goto_0
    return-void

    .line 2280
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->getIntValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 2283
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2284
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCommitParameters:Z

    goto :goto_0

    .line 2283
    .end local v0    # "params":Landroid/hardware/Camera$Parameters;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setExifInfo(Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Long;)V
    .locals 6
    .param p1, "orientation"    # Ljava/lang/Integer;
    .param p2, "latitude"    # Ljava/lang/Double;
    .param p3, "longitude"    # Ljava/lang/Double;
    .param p4, "altitude"    # Ljava/lang/Double;
    .param p5, "timestamp"    # Ljava/lang/Long;

    .prologue
    .line 1372
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1373
    .local v0, "params":Landroid/hardware/Camera$Parameters;
    if-nez v0, :cond_0

    .line 1374
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCommitParameters:Z

    .line 1408
    :goto_0
    return-void

    .line 1378
    :cond_0
    const/4 v1, 0x0

    .line 1381
    .local v1, "shouldCommitParameters":Z
    if-eqz p1, :cond_1

    .line 1382
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 1383
    const/4 v1, 0x1

    .line 1387
    :cond_1
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->removeGpsData()V

    .line 1388
    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    .line 1389
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/hardware/Camera$Parameters;->setGpsLatitude(D)V

    .line 1390
    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/hardware/Camera$Parameters;->setGpsLongitude(D)V

    .line 1391
    or-int/lit8 v1, v1, 0x1

    .line 1395
    :cond_2
    if-eqz p4, :cond_3

    .line 1396
    invoke-virtual {p4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    .line 1397
    or-int/lit8 v1, v1, 0x1

    .line 1401
    :cond_3
    if-eqz p5, :cond_4

    .line 1402
    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1403
    .local v2, "utcTimeSeconds":J
    invoke-virtual {v0, v2, v3}, Landroid/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    .line 1404
    or-int/lit8 v1, v1, 0x1

    .line 1407
    .end local v2    # "utcTimeSeconds":J
    :cond_4
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCommitParameters:Z

    goto :goto_0
.end method

.method public final setFaceDetectionCallback(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionCallback;

    .prologue
    .line 543
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    if-nez v0, :cond_0

    .line 548
    :goto_0
    return-void

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameraextension/CameraExtension;->setFaceDetectionCallback(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionCallback;)V

    goto :goto_0
.end method

.method public final setFlashMode(Lcom/sonyericsson/android/camera/configuration/parameters/Flash;)V
    .locals 5
    .param p1, "flashMode"    # Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    .prologue
    .line 1417
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1418
    .local v0, "params":Landroid/hardware/Camera$Parameters;
    if-nez v0, :cond_0

    .line 1419
    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;

    const-string v2, "setFlashMode: params is null."

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    :goto_0
    return-void

    .line 1422
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 1425
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCommitParameters:Z

    .line 1429
    new-instance v2, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    iget v3, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraId:I

    invoke-direct {v2, v1, v3}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;I)V

    new-instance v3, Lcom/sonyericsson/cameracommon/status/eachcamera/PhotoLight;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "torch"

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/PhotoLight$Value;->ON:Lcom/sonyericsson/cameracommon/status/eachcamera/PhotoLight$Value;

    :goto_1
    invoke-direct {v3, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/PhotoLight;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/PhotoLight$Value;)V

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/PhotoLight$Value;->OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/PhotoLight$Value;

    goto :goto_1
.end method

.method public final setFocusMode(Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;)V
    .locals 3
    .param p1, "focusMode"    # Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    .prologue
    .line 1443
    monitor-enter p0

    .line 1445
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1446
    .local v0, "params":Landroid/hardware/Camera$Parameters;
    if-nez v0, :cond_0

    .line 1447
    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;

    const-string v2, "setFocusMode: params is null."

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    monitor-exit p0

    .line 1466
    :goto_0
    return-void

    .line 1450
    :cond_0
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mIsVideo:Z

    if-eqz v1, :cond_1

    .line 1451
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->getValueForVideo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 1456
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1459
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->isFront()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1465
    :goto_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCommitParameters:Z

    goto :goto_0

    .line 1453
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_1

    .line 1456
    .end local v0    # "params":Landroid/hardware/Camera$Parameters;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1463
    .restart local v0    # "params":Landroid/hardware/Camera$Parameters;
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->resetFocusAreaAndRect(Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;)V

    goto :goto_2
.end method

.method public setFocusRect(Landroid/graphics/Rect;)V
    .locals 9
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/16 v8, 0x64

    const/4 v7, 0x0

    const/16 v6, -0x64

    .line 1487
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 1488
    .local v2, "params":Landroid/hardware/Camera$Parameters;
    if-nez v2, :cond_1

    .line 1489
    sget-object v4, Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;

    const-string v5, "setFocusRect: params is null."

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    :cond_0
    :goto_0
    return-void

    .line 1492
    :cond_1
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v4

    const/4 v5, 0x1

    if-lt v4, v5, :cond_0

    .line 1497
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-nez v4, :cond_3

    .line 1498
    :cond_2
    const-string v4, "sony-focus-area"

    invoke-virtual {v2, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "user"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1501
    invoke-virtual {p1, v6, v6, v8, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 1509
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1510
    const/4 v3, 0x0

    .line 1517
    .local v3, "weight":I
    :goto_2
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFocusAreas()Ljava/util/List;

    move-result-object v1

    .line 1519
    .local v1, "focusAreas":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    if-nez v1, :cond_4

    .line 1520
    new-instance v0, Landroid/hardware/Camera$Area;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v0, v4, v3}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    .line 1521
    .local v0, "area":Landroid/hardware/Camera$Area;
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "focusAreas":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1522
    .restart local v1    # "focusAreas":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1525
    .end local v0    # "area":Landroid/hardware/Camera$Area;
    :cond_4
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Area;

    iput-object p1, v4, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    .line 1526
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Area;

    iput v3, v4, Landroid/hardware/Camera$Area;->weight:I

    .line 1527
    invoke-virtual {v2, v1}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    goto :goto_0

    .line 1503
    .end local v1    # "focusAreas":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    .end local v3    # "weight":I
    :cond_5
    new-instance p1, Landroid/graphics/Rect;

    .end local p1    # "rect":Landroid/graphics/Rect;
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .restart local p1    # "rect":Landroid/graphics/Rect;
    goto :goto_1

    .line 1512
    :cond_6
    const/16 v3, 0x3e8

    .line 1513
    .restart local v3    # "weight":I
    const-string v4, "sony-focus-area"

    const-string v5, "user"

    invoke-virtual {v2, v4, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public setFpsRange([I)V
    .locals 3
    .param p1, "fpsRange"    # [I

    .prologue
    .line 1637
    monitor-enter p0

    .line 1638
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1639
    .local v0, "params":Landroid/hardware/Camera$Parameters;
    if-nez v0, :cond_0

    .line 1640
    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;

    const-string v2, "setFpsRange: params is null."

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1641
    monitor-exit p0

    .line 1660
    :goto_0
    return-void

    .line 1643
    :cond_0
    array-length v1, p1

    if-lez v1, :cond_1

    .line 1644
    const/4 v1, 0x0

    aget v1, p1, v1

    const/4 v2, 0x1

    aget v2, p1, v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 1653
    const/4 v1, 0x1

    aget v1, p1, v1

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 1659
    :cond_1
    monitor-exit p0

    goto :goto_0

    .end local v0    # "params":Landroid/hardware/Camera$Parameters;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setHdr(Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;)V
    .locals 4
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    .prologue
    .line 2302
    monitor-enter p0

    .line 2303
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 2304
    .local v0, "params":Landroid/hardware/Camera$Parameters;
    if-nez v0, :cond_0

    .line 2305
    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;

    const-string v3, "setHdr: params is null."

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2306
    monitor-exit p0

    .line 2320
    :goto_0
    return-void

    .line 2308
    :cond_0
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;->HDR_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    if-ne p1, v2, :cond_1

    .line 2309
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getImageStabilizer(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v1

    .line 2310
    .local v1, "stabilizer":Ljava/lang/String;
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2313
    monitor-exit p0

    goto :goto_0

    .line 2318
    .end local v0    # "params":Landroid/hardware/Camera$Parameters;
    .end local v1    # "stabilizer":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2316
    .restart local v0    # "params":Landroid/hardware/Camera$Parameters;
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;->getParameterKey()Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mIsVideo:Z

    invoke-virtual {p0, v2, v3}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getStringKey(Lcom/sonyericsson/android/camera/configuration/ParameterKey;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2318
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2319
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCommitParameters:Z

    goto :goto_0
.end method

.method public setIso(Lcom/sonyericsson/android/camera/configuration/parameters/Iso;)V
    .locals 4
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    .prologue
    .line 2323
    monitor-enter p0

    .line 2324
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 2325
    .local v1, "params":Landroid/hardware/Camera$Parameters;
    if-nez v1, :cond_0

    .line 2326
    monitor-exit p0

    .line 2342
    :goto_0
    return-void

    .line 2329
    :cond_0
    const-string v2, "sony-ae-mode"

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2334
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->getIsoValue()I

    move-result v0

    .line 2335
    .local v0, "isoValue":I
    if-lez v0, :cond_1

    .line 2336
    const-string v2, "sony-iso"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2340
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2341
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCommitParameters:Z

    goto :goto_0

    .line 2340
    .end local v0    # "isoValue":I
    .end local v1    # "params":Landroid/hardware/Camera$Parameters;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public final setJpegEncodingQuality(I)V
    .locals 4
    .param p1, "quality"    # I

    .prologue
    .line 1533
    monitor-enter p0

    .line 1534
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1535
    .local v0, "params":Landroid/hardware/Camera$Parameters;
    if-nez v0, :cond_0

    .line 1536
    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;

    const-string v3, "setJpegEncodingQuality: params is null."

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    monitor-exit p0

    .line 1545
    :goto_0
    return-void

    .line 1540
    :cond_0
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingConstants$JpegQuality;->getPlatformQualityFromCameraProfile(I)I

    move-result v1

    .line 1543
    .local v1, "platformQuality":I
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 1544
    monitor-exit p0

    goto :goto_0

    .end local v0    # "params":Landroid/hardware/Camera$Parameters;
    .end local v1    # "platformQuality":I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setMetering(Lcom/sonyericsson/android/camera/configuration/parameters/Metering;)V
    .locals 3
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    .prologue
    .line 2345
    monitor-enter p0

    .line 2346
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 2347
    .local v0, "params":Landroid/hardware/Camera$Parameters;
    if-nez v0, :cond_0

    .line 2348
    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;

    const-string v2, "setMetering: params is null."

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2349
    monitor-exit p0

    .line 2355
    :goto_0
    return-void

    .line 2351
    :cond_0
    const-string v1, "sony-metering-mode"

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2353
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2354
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCommitParameters:Z

    goto :goto_0

    .line 2353
    .end local v0    # "params":Landroid/hardware/Camera$Parameters;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setPhotoShutterSound(Z)V
    .locals 4
    .param p1, "on"    # Z

    .prologue
    .line 2445
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCamera:Landroid/hardware/Camera;

    if-nez v1, :cond_1

    .line 2473
    :cond_0
    :goto_0
    return-void

    .line 2449
    :cond_1
    const/16 v1, 0x11

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v1, v2, :cond_0

    .line 2450
    monitor-enter p0

    .line 2451
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 2452
    .local v0, "params":Landroid/hardware/Camera$Parameters;
    if-nez v0, :cond_2

    .line 2453
    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;

    const-string v2, "getParameters() return null."

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2454
    monitor-exit p0

    goto :goto_0

    .line 2466
    .end local v0    # "params":Landroid/hardware/Camera$Parameters;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2456
    .restart local v0    # "params":Landroid/hardware/Camera$Parameters;
    :cond_2
    if-eqz p1, :cond_3

    .line 2457
    :try_start_1
    const-string v1, "key-sony-ext-shuttersound"

    const-string v2, "/system/media/audio/ui/camera_click.ogg"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2466
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2467
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCommitParameters:Z

    goto :goto_0

    .line 2460
    :cond_3
    :try_start_2
    const-string v1, "key-sony-ext-shuttersound"

    sget-object v2, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;->SOUND_OFF:Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera/ShutterToneGenerator;->getSoundFilePath(Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public setPictureSize(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "picture"    # Landroid/graphics/Rect;

    .prologue
    .line 1595
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1596
    .local v0, "params":Landroid/hardware/Camera$Parameters;
    if-nez v0, :cond_0

    .line 1597
    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;

    const-string v2, "setPictureSize: params is null."

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    :goto_0
    return-void

    .line 1600
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 1603
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mPictureSize:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method public declared-synchronized setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/SurfaceHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1285
    monitor-enter p0

    if-nez p1, :cond_1

    .line 1303
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1291
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setSurfaceHolder(Landroid/view/SurfaceHolder;)V

    .line 1293
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 1301
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1285
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setPreviewSize(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "preview"    # Landroid/graphics/Rect;

    .prologue
    .line 1557
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 1558
    .local v1, "params":Landroid/hardware/Camera$Parameters;
    if-nez v1, :cond_0

    .line 1559
    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;

    const-string v3, "setPreviewSize: params is null."

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    :goto_0
    return-void

    .line 1563
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mPreviewSize:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mPreviewSize:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 1566
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->stopPreview()V

    .line 1567
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mNeedStartPreview:Z

    .line 1572
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 1575
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->updatePreviewSize(Landroid/graphics/Rect;)V

    .line 1577
    new-instance v0, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$PreviewInfo;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v2

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    iget v3, v3, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v4

    iget v4, v4, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v0, v2, v3, v4}, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$PreviewInfo;-><init>(III)V

    .line 1582
    .local v0, "info":Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$PreviewInfo;
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mPreviewFrameRetriever:Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;->setPreviewInfo(Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$PreviewInfo;)V

    goto :goto_0

    .line 1569
    .end local v0    # "info":Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$PreviewInfo;
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mNeedStartPreview:Z

    goto :goto_1
.end method

.method public setPreviewSizeAndFpsRangeForVideo(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V
    .locals 3
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .prologue
    .line 2242
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getVideoPreviewSize(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Landroid/graphics/Rect;

    move-result-object v0

    .line 2243
    .local v0, "preview":Landroid/graphics/Rect;
    monitor-enter p0

    .line 2244
    :try_start_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setVideoSize(Landroid/graphics/Rect;)V

    .line 2245
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setPreviewSize(Landroid/graphics/Rect;)V

    .line 2247
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoFrameRate()I

    move-result v2

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCachedCapabilityList:Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->FPS_RANGE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v2, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceUtil;->computePreviewFpsRange(ILjava/util/List;)[I

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setFpsRange([I)V

    .line 2250
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2251
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCommitParameters:Z

    .line 2252
    return-void

    .line 2250
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setResolution(Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;)V
    .locals 2
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .prologue
    .line 2233
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getPhotoPreviewSize(Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;)Landroid/graphics/Rect;

    move-result-object v0

    .line 2234
    .local v0, "preview":Landroid/graphics/Rect;
    monitor-enter p0

    .line 2235
    :try_start_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setPictureSize(Landroid/graphics/Rect;)V

    .line 2236
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setPreviewSize(Landroid/graphics/Rect;)V

    .line 2237
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2238
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCommitParameters:Z

    .line 2239
    return-void

    .line 2237
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setScene(Lcom/sonyericsson/android/camera/configuration/parameters/Scene;)V
    .locals 6
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    .prologue
    const/4 v5, 0x1

    .line 2358
    monitor-enter p0

    .line 2359
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 2360
    .local v1, "params":Landroid/hardware/Camera$Parameters;
    if-nez v1, :cond_0

    .line 2361
    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;

    const-string v3, "setScene: params is null."

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2362
    monitor-exit p0

    .line 2381
    :goto_0
    return-void

    .line 2365
    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getInstance()Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getCameraExtensionVersion()Lcom/sonyericsson/cameracommon/device/CameraExtensionVersion;

    move-result-object v2

    const/4 v3, 0x1

    const/16 v4, 0x8

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/cameracommon/device/CameraExtensionVersion;->isLaterThanOrEqualTo(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2367
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getInstance()Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;

    move-result-object v2

    iget v3, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraId:I

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getMaxSoftSkinLevel(I)I

    move-result v0

    .line 2368
    .local v0, "maxLevel":I
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    if-ne v2, p1, :cond_2

    .line 2369
    const-string v2, "sony-soft-skin-level-for-picture"

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

    invoke-virtual {v3, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;->getLevel(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2371
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->PORTRAIT:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    .line 2377
    .end local v0    # "maxLevel":I
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 2379
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2380
    iput-boolean v5, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCommitParameters:Z

    goto :goto_0

    .line 2373
    .restart local v0    # "maxLevel":I
    :cond_2
    :try_start_1
    const-string v2, "sony-soft-skin-level-for-picture"

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

    invoke-virtual {v3, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;->getLevel(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2379
    .end local v0    # "maxLevel":I
    .end local v1    # "params":Landroid/hardware/Camera$Parameters;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public final setSceneRecognitionCallback(Lcom/sonyericsson/cameraextension/CameraExtension$SceneRecognitionCallback;)V
    .locals 0
    .param p1, "cb"    # Lcom/sonyericsson/cameraextension/CameraExtension$SceneRecognitionCallback;

    .prologue
    .line 533
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mSceneRecognitionCallback:Lcom/sonyericsson/cameraextension/CameraExtension$SceneRecognitionCallback;

    .line 534
    return-void
.end method

.method public final setSelectedFacePosition(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1311
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    if-nez v0, :cond_1

    .line 1312
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;

    const-string v1, "setSelectFacePos: mCameraExtension is null."

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    :cond_0
    :goto_0
    return-void

    .line 1317
    :cond_1
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mIsPreviewing:Z

    if-eqz v0, :cond_0

    .line 1322
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mIsFaceDetectionRunning:Z

    if-eqz v0, :cond_0

    .line 1327
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/cameraextension/CameraExtension;->setSelectFacePos(II)V

    goto :goto_0
.end method

.method public setShutterSound(Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;)V
    .locals 1
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    .prologue
    .line 2438
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;->getBooleanValue()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setPhotoShutterSound(Z)V

    .line 2439
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setVideoRecordingSound(Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;)V

    .line 2440
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setBurstShutterSound(Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;)V

    .line 2441
    return-void
.end method

.method public setSmileCapture(Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;)V
    .locals 3
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    .prologue
    .line 2497
    monitor-enter p0

    .line 2498
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 2499
    .local v0, "params":Landroid/hardware/Camera$Parameters;
    if-nez v0, :cond_0

    .line 2500
    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;

    const-string v2, "setSmileCapture: params is null."

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2501
    monitor-exit p0

    .line 2507
    :goto_0
    return-void

    .line 2503
    :cond_0
    const-string v1, "sony-smile-detect"

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2505
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2506
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCommitParameters:Z

    goto :goto_0

    .line 2505
    .end local v0    # "params":Landroid/hardware/Camera$Parameters;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setSoftSkin(Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;)V
    .locals 8
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

    .prologue
    const/4 v7, 0x1

    .line 2384
    iget-boolean v4, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mIsVideo:Z

    if-nez v4, :cond_0

    iget v4, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraId:I

    if-nez v4, :cond_1

    .line 2430
    :cond_0
    :goto_0
    return-void

    .line 2388
    :cond_1
    monitor-enter p0

    .line 2389
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 2390
    .local v2, "params":Landroid/hardware/Camera$Parameters;
    if-nez v2, :cond_2

    .line 2391
    sget-object v4, Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;

    const-string v5, "setSoftSkin: params is null."

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2392
    monitor-exit p0

    goto :goto_0

    .line 2428
    .end local v2    # "params":Landroid/hardware/Camera$Parameters;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 2395
    .restart local v2    # "params":Landroid/hardware/Camera$Parameters;
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getInstance()Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getCameraExtensionVersion()Lcom/sonyericsson/cameracommon/device/CameraExtensionVersion;

    move-result-object v4

    const/4 v5, 0x1

    const/16 v6, 0x8

    invoke-virtual {v4, v5, v6}, Lcom/sonyericsson/cameracommon/device/CameraExtensionVersion;->isLaterThanOrEqualTo(II)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2398
    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/CameraActivity;->getControllerManager()Lcom/sonyericsson/android/camera/ControllerManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/ControllerManager;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    .line 2400
    .local v0, "currentCapturingMode":Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;->isOn()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isSuperiorAuto()Z

    move-result v4

    if-nez v4, :cond_5

    .line 2401
    iget v4, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraId:I

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getCapability(I)Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

    move-result-object v1

    .line 2402
    .local v1, "list":Lcom/sonyericsson/android/camera/util/capability/CapabilityList;
    iget-object v4, v1, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->SCENE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 2404
    .local v3, "supportedValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->PORTRAIT:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getInstance()Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;

    move-result-object v4

    iget v5, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraId:I

    invoke-virtual {v4, v5}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getMaxSoftSkinLevel(I)I

    move-result v4

    if-lez v4, :cond_4

    .line 2407
    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->PORTRAIT:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 2416
    .end local v1    # "list":Lcom/sonyericsson/android/camera/util/capability/CapabilityList;
    .end local v3    # "supportedValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    :goto_1
    const-string v4, "sony-soft-skin-level-for-picture"

    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getInstance()Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;

    move-result-object v5

    iget v6, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraId:I

    invoke-virtual {v5, v6}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getMaxSoftSkinLevel(I)I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;->getLevel(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2428
    .end local v0    # "currentCapturingMode":Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2429
    iput-boolean v7, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCommitParameters:Z

    goto :goto_0

    .line 2409
    .restart local v0    # "currentCapturingMode":Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .restart local v1    # "list":Lcom/sonyericsson/android/camera/util/capability/CapabilityList;
    .restart local v3    # "supportedValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    :try_start_2
    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2410
    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    goto :goto_1

    .line 2414
    .end local v1    # "list":Lcom/sonyericsson/android/camera/util/capability/CapabilityList;
    .end local v3    # "supportedValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    goto :goto_1

    .line 2424
    .end local v0    # "currentCapturingMode":Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    :cond_6
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;->getScene()Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public setStabilizer(Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;)V
    .locals 7
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;

    .prologue
    const/4 v6, 0x1

    .line 2510
    monitor-enter p0

    .line 2511
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 2512
    .local v1, "params":Landroid/hardware/Camera$Parameters;
    if-nez v1, :cond_0

    .line 2513
    sget-object v4, Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;

    const-string v5, "setStabilizer: params is null."

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2514
    monitor-exit p0

    .line 2539
    :goto_0
    return-void

    .line 2518
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;->getParameterKey()Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getStringKey(Lcom/sonyericsson/android/camera/configuration/ParameterKey;Z)Ljava/lang/String;

    move-result-object v3

    .line 2519
    .local v3, "vs":Ljava/lang/String;
    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2523
    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;

    if-ne p1, v4, :cond_2

    .line 2524
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getImageStabilizer(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v2

    .line 2525
    .local v2, "stabilizer":Ljava/lang/String;
    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;->HDR_AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2529
    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 2537
    .end local v1    # "params":Landroid/hardware/Camera$Parameters;
    .end local v2    # "stabilizer":Ljava/lang/String;
    .end local v3    # "vs":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 2533
    .restart local v1    # "params":Landroid/hardware/Camera$Parameters;
    .restart local v3    # "vs":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;->getParameterKey()Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getStringKey(Lcom/sonyericsson/android/camera/configuration/ParameterKey;Z)Ljava/lang/String;

    move-result-object v0

    .line 2534
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2537
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2538
    iput-boolean v6, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCommitParameters:Z

    goto :goto_0
.end method

.method public setSteadyShot(Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;)V
    .locals 4
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    .prologue
    .line 2542
    monitor-enter p0

    .line 2543
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 2544
    .local v1, "params":Landroid/hardware/Camera$Parameters;
    if-nez v1, :cond_0

    .line 2545
    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;

    const-string v3, "setSteadyShot: params is null."

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2546
    monitor-exit p0

    .line 2556
    :goto_0
    return-void

    .line 2549
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->getParameterKey()Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getStringKey(Lcom/sonyericsson/android/camera/configuration/ParameterKey;Z)Ljava/lang/String;

    move-result-object v0

    .line 2550
    .local v0, "is":Ljava/lang/String;
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2552
    const-string v2, "sony-vs"

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2554
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2555
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCommitParameters:Z

    goto :goto_0

    .line 2554
    .end local v0    # "is":Ljava/lang/String;
    .end local v1    # "params":Landroid/hardware/Camera$Parameters;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public setSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "surface"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 2825
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 2826
    return-void
.end method

.method public setVideoDevice(Lcom/sonyericsson/android/camera/controller/VideoDevice;)V
    .locals 0
    .param p1, "videoDevice"    # Lcom/sonyericsson/android/camera/controller/VideoDevice;

    .prologue
    .line 3464
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mVideoDevice:Lcom/sonyericsson/android/camera/controller/VideoDevice;

    .line 3465
    return-void
.end method

.method public setVideoHdr(Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)V
    .locals 3
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    .prologue
    .line 2573
    monitor-enter p0

    .line 2574
    :try_start_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->getValue()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2575
    monitor-exit p0

    .line 2586
    :goto_0
    return-void

    .line 2577
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 2578
    .local v0, "params":Landroid/hardware/Camera$Parameters;
    if-nez v0, :cond_1

    .line 2579
    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;

    const-string v2, "setVideoHdr: params is null."

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2580
    monitor-exit p0

    goto :goto_0

    .line 2584
    .end local v0    # "params":Landroid/hardware/Camera$Parameters;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2582
    .restart local v0    # "params":Landroid/hardware/Camera$Parameters;
    :cond_1
    :try_start_1
    const-string v1, "sony-video-hdr"

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2584
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2585
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCommitParameters:Z

    goto :goto_0
.end method

.method public setVideoMode(Z)V
    .locals 3
    .param p1, "isVideo"    # Z

    .prologue
    .line 1619
    monitor-enter p0

    .line 1620
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1621
    .local v0, "params":Landroid/hardware/Camera$Parameters;
    if-nez v0, :cond_0

    .line 1622
    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;

    const-string v2, "setVideoMode: params is null."

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    monitor-exit p0

    .line 1633
    :goto_0
    return-void

    .line 1625
    :cond_0
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 1626
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1627
    if-eqz p1, :cond_1

    .line 1628
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->prepareVideoNrSetting()V

    goto :goto_0

    .line 1626
    .end local v0    # "params":Landroid/hardware/Camera$Parameters;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1630
    .restart local v0    # "params":Landroid/hardware/Camera$Parameters;
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->finishVideoNrSetting()V

    goto :goto_0
.end method

.method public setVideoNr(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 1150
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1151
    .local v0, "params":Landroid/hardware/Camera$Parameters;
    if-nez v0, :cond_0

    .line 1152
    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;

    const-string v2, "prepareVideoNr: params is null."

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    :goto_0
    return-void

    .line 1156
    :cond_0
    if-eqz p1, :cond_1

    .line 1157
    const-string v1, "sony-video-nr"

    const-string v2, "on"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1161
    :cond_1
    const-string v1, "sony-video-nr"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setVideoPictureSize(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "videoSize"    # Landroid/graphics/Rect;

    .prologue
    .line 706
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCachedCapabilityList:Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->VIDEO_SNAPSHOT:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 707
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCachedCapabilityList:Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->PICTURE_SIZE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera/CameraSize;->getOptimalVideoSnapshotSize(Landroid/graphics/Rect;Ljava/util/List;)Landroid/graphics/Rect;

    move-result-object v0

    .line 710
    .local v0, "videoSnapshotSize":Landroid/graphics/Rect;
    if-eqz v0, :cond_0

    .line 714
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setPictureSize(Landroid/graphics/Rect;)V

    .line 721
    .end local v0    # "videoSnapshotSize":Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method public setVideoRecordingSound(Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;)V
    .locals 4
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    .prologue
    .line 2476
    monitor-enter p0

    .line 2477
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 2478
    .local v0, "params":Landroid/hardware/Camera$Parameters;
    if-nez v0, :cond_0

    .line 2479
    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;

    const-string v3, "getParameters() return null."

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2480
    monitor-exit p0

    .line 2494
    :goto_0
    return-void

    .line 2483
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;->getBooleanValue()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2484
    const-string v1, "/system/media/audio/ui/VideoRecord.ogg"

    .line 2490
    .local v1, "path":Ljava/lang/String;
    :goto_1
    const-string v2, "key-sony-ext-recordingsound"

    invoke-virtual {v0, v2, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2492
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2493
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCommitParameters:Z

    goto :goto_0

    .line 2486
    .end local v1    # "path":Ljava/lang/String;
    :cond_1
    :try_start_1
    sget-object v2, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;->SOUND_OFF:Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    invoke-static {v2, p1}, Lcom/sonyericsson/android/camera/ShutterToneGenerator;->getSoundFilePath(Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "path":Ljava/lang/String;
    goto :goto_1

    .line 2492
    .end local v0    # "params":Landroid/hardware/Camera$Parameters;
    .end local v1    # "path":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public setVideoSize(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V
    .locals 5
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .prologue
    .line 2255
    if-nez p1, :cond_0

    .line 2272
    :goto_0
    return-void

    .line 2258
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 2259
    .local v1, "videoSize":Landroid/graphics/Rect;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2260
    .local v2, "videoSizeString":Ljava/lang/String;
    monitor-enter p0

    .line 2261
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 2262
    .local v0, "params":Landroid/hardware/Camera$Parameters;
    if-nez v0, :cond_1

    .line 2263
    monitor-exit p0

    goto :goto_0

    .line 2266
    .end local v0    # "params":Landroid/hardware/Camera$Parameters;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2265
    .restart local v0    # "params":Landroid/hardware/Camera$Parameters;
    :cond_1
    :try_start_1
    const-string v3, "video-size"

    invoke-virtual {v0, v3, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2266
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2267
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoFrameRate()I

    move-result v3

    iput v3, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mVideoFps:I

    .line 2268
    iget-boolean v3, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mIsVideo:Z

    if-eqz v3, :cond_2

    .line 2269
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->prepareVideoNrSetting()V

    .line 2271
    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCommitParameters:Z

    goto :goto_0
.end method

.method public setWhiteBalance(Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;)V
    .locals 3
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

    .prologue
    .line 2559
    monitor-enter p0

    .line 2560
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 2561
    .local v0, "params":Landroid/hardware/Camera$Parameters;
    if-nez v0, :cond_0

    .line 2562
    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;

    const-string v2, "setWhiteBalance: params is null."

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2563
    monitor-exit p0

    .line 2570
    :goto_0
    return-void

    .line 2565
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 2568
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2569
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCommitParameters:Z

    goto :goto_0

    .line 2568
    .end local v0    # "params":Landroid/hardware/Camera$Parameters;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final setZoom(I)V
    .locals 3
    .param p1, "step"    # I

    .prologue
    .line 2013
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 2014
    .local v0, "params":Landroid/hardware/Camera$Parameters;
    if-nez v0, :cond_0

    .line 2015
    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;

    const-string v2, "setZoom: params is null."

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2020
    :goto_0
    return-void

    .line 2018
    :cond_0
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    goto :goto_0
.end method

.method public startAutoFocus(Lcom/sonyericsson/android/camera/device/AutoFocusListener;ZZZ)Z
    .locals 4
    .param p1, "listener"    # Lcom/sonyericsson/android/camera/device/AutoFocusListener;
    .param p2, "aeLock"    # Z
    .param p3, "awbLock"    # Z
    .param p4, "focusLock"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1822
    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mIsPreviewing:Z

    if-nez v2, :cond_0

    .line 1836
    :goto_0
    return v1

    .line 1828
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mAutoFocus:Lcom/sonyericsson/android/camera/device/CameraDevice$AutoFocus;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera/device/CameraDevice$AutoFocus;->startAutoFocus(Lcom/sonyericsson/android/camera/device/AutoFocusListener;ZZZ)V

    .line 1829
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/Configurations;->isLogForOperatorsEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1830
    const-string v2, "AutoFocus started"

    invoke-static {v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->dForOperators(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1836
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 1832
    :catch_0
    move-exception v0

    .line 1833
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;

    const-string v3, "startAutoFocus failed."

    invoke-static {v2, v3, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startBurstShot(Lcom/sonyericsson/cameraextension/CameraExtension$BurstShotCallback;Lcom/sonyericsson/cameraextension/CameraExtension$StorageFullDetector;Lcom/sonyericsson/cameraextension/CameraExtension$FilePathGenerator;Lcom/sonyericsson/cameraextension/CameraExtension$MediaProviderUpdator;)I
    .locals 4
    .param p1, "callback"    # Lcom/sonyericsson/cameraextension/CameraExtension$BurstShotCallback;
    .param p2, "storageFullDetector"    # Lcom/sonyericsson/cameraextension/CameraExtension$StorageFullDetector;
    .param p3, "filePathGenerator"    # Lcom/sonyericsson/cameraextension/CameraExtension$FilePathGenerator;
    .param p4, "mediaProviderUpdator"    # Lcom/sonyericsson/cameraextension/CameraExtension$MediaProviderUpdator;

    .prologue
    const/4 v0, -0x1

    .line 989
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mIsPreviewing:Z

    if-nez v1, :cond_1

    .line 1014
    :cond_0
    :goto_0
    return v0

    .line 994
    :cond_1
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mIsBurstShooting:Z

    if-nez v1, :cond_0

    .line 1000
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/cameraextension/CameraExtension;->setBurstShotCallback(Lcom/sonyericsson/cameraextension/CameraExtension$BurstShotCallback;)V

    .line 1001
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    invoke-virtual {v1, p2}, Lcom/sonyericsson/cameraextension/CameraExtension;->setBurstStorageFullDetector(Lcom/sonyericsson/cameraextension/CameraExtension$StorageFullDetector;)V

    .line 1004
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    invoke-virtual {v1, p3, p4}, Lcom/sonyericsson/cameraextension/CameraExtension;->startBurstShot(Lcom/sonyericsson/cameraextension/CameraExtension$FilePathGenerator;Lcom/sonyericsson/cameraextension/CameraExtension$MediaProviderUpdator;)I

    move-result v0

    .line 1005
    .local v0, "id":I
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mIsBurstShooting:Z

    .line 1010
    new-instance v1, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    iget v3, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraId:I

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;I)V

    new-instance v2, Lcom/sonyericsson/cameracommon/status/eachcamera/BurstShooting;

    sget-object v3, Lcom/sonyericsson/cameracommon/status/eachcamera/BurstShooting$Value;->ON:Lcom/sonyericsson/cameracommon/status/eachcamera/BurstShooting$Value;

    invoke-direct {v2, v3}, Lcom/sonyericsson/cameracommon/status/eachcamera/BurstShooting;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/BurstShooting$Value;)V

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    goto :goto_0
.end method

.method public startFaceDetection()V
    .locals 4

    .prologue
    .line 734
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_1

    .line 735
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;

    const-string v1, "startFaceDetection: mCamera is null."

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    :cond_0
    :goto_0
    return-void

    .line 739
    :cond_1
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mIsPreviewing:Z

    if-eqz v0, :cond_0

    .line 744
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mIsFaceDetectionRunning:Z

    if-nez v0, :cond_0

    .line 749
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startFaceDetection()V

    .line 750
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mIsFaceDetectionRunning:Z

    .line 755
    new-instance v1, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    iget v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraId:I

    invoke-direct {v1, v0, v2}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;I)V

    new-instance v2, Lcom/sonyericsson/cameracommon/status/eachcamera/FaceIdentification;

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/CameraActivity;->getParameterManager()Lcom/sonyericsson/android/camera/parameter/ParameterManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->getParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getFaceIdentify()Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

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

    :cond_2
    sget-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/FaceIdentification$Value;->OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/FaceIdentification$Value;

    goto :goto_1
.end method

.method public startObjectTracking(Landroid/graphics/Rect;Lcom/sonyericsson/cameraextension/CameraExtension$ObjectTrackingCallback;)V
    .locals 4
    .param p1, "position"    # Landroid/graphics/Rect;
    .param p2, "cb"    # Lcom/sonyericsson/cameraextension/CameraExtension$ObjectTrackingCallback;

    .prologue
    const/4 v3, 0x1

    .line 878
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_1

    .line 879
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;

    const-string v1, "startObjectTracking: mCamera is null."

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    :cond_0
    :goto_0
    return-void

    .line 883
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCachedCapabilityList:Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->MAX_NUM_FOCUS_AREA:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, v3, :cond_0

    .line 887
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    if-eqz v0, :cond_0

    .line 893
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mIsPreviewing:Z

    if-eqz v0, :cond_0

    .line 898
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    const/16 v1, 0x4b

    const/16 v2, 0x64

    invoke-virtual {v0, p2, v1, v2}, Lcom/sonyericsson/cameraextension/CameraExtension;->setObjectTrackingCallback(Lcom/sonyericsson/cameraextension/CameraExtension$ObjectTrackingCallback;II)V

    .line 901
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    invoke-virtual {v0}, Lcom/sonyericsson/cameraextension/CameraExtension;->startObjectTracking()V

    .line 902
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameraextension/CameraExtension;->selectObject(II)V

    .line 903
    iput-boolean v3, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mIsObjectTrackingRunning:Z

    .line 908
    new-instance v0, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    iget v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraId:I

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;I)V

    new-instance v1, Lcom/sonyericsson/cameracommon/status/eachcamera/ObjectTracking;

    sget-object v2, Lcom/sonyericsson/cameracommon/status/eachcamera/ObjectTracking$Value;->ON:Lcom/sonyericsson/cameracommon/status/eachcamera/ObjectTracking$Value;

    invoke-direct {v1, v2}, Lcom/sonyericsson/cameracommon/status/eachcamera/ObjectTracking;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/ObjectTracking$Value;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    goto :goto_0
.end method

.method public startOpenCameraDeviceTask(I)V
    .locals 2
    .param p1, "cameraId"    # I

    .prologue
    .line 2932
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->clearCloseDeviceTask()V

    .line 2935
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setOpenTaskTargetCameraId(I)V

    .line 2936
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mOpenDeviceExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 2937
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mIsCancelOpenCameraRequested:Z

    .line 2938
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mOpenDeviceExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraDevice$OpenCameraDeviceTask;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDevice$OpenCameraDeviceTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDevice;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mOpenDeviceFuture:Ljava/util/concurrent/Future;

    .line 2942
    return-void
.end method

.method public startPreview()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/android/camera/device/CameraDeviceException;
        }
    .end annotation

    .prologue
    .line 560
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCamera:Landroid/hardware/Camera;

    if-nez v5, :cond_0

    .line 561
    sget-object v5, Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;

    const-string v6, "startPreview: mCamera is null."

    invoke-static {v5, v6}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :goto_0
    return-void

    .line 571
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    .line 572
    .local v3, "params":Landroid/hardware/Camera$Parameters;
    if-eqz v3, :cond_1

    .line 573
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus;

    iget-boolean v5, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mIsVideo:Z

    if-eqz v5, :cond_2

    sget-object v5, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;->VIDEO_PREVIEW:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    :goto_1
    invoke-direct {v0, v5}, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;)V

    .line 577
    .local v0, "deviceStatus":Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus;
    const-string v5, "sony-vs"

    invoke-virtual {v3, v5}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 578
    .local v4, "vsParam":Ljava/lang/String;
    const-string v5, "sony-video-nr"

    invoke-virtual {v3, v5}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 580
    .local v2, "nrParam":Ljava/lang/String;
    new-instance v5, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    iget v7, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraId:I

    invoke-direct {v5, v6, v7}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v5, v3}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->putFromParameter(Landroid/hardware/Camera$Parameters;)Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v5

    invoke-static {v4}, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoStabilizerStatus;->fromCameraParameter(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/status/eachcamera/VideoStabilizerStatus;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v5

    invoke-static {v2}, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoNoiseReduction;->fromCameraParameter(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/status/eachcamera/VideoNoiseReduction;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    .line 590
    .end local v0    # "deviceStatus":Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus;
    .end local v2    # "nrParam":Ljava/lang/String;
    .end local v4    # "vsParam":Ljava/lang/String;
    :cond_1
    monitor-enter p0

    .line 591
    :try_start_0
    iget-boolean v5, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mIsPreviewing:Z

    if-eqz v5, :cond_3

    .line 593
    monitor-exit p0

    goto :goto_0

    .line 607
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 573
    :cond_2
    sget-object v5, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;->STILL_PREVIEW:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    goto :goto_1

    .line 598
    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v5}, Landroid/hardware/Camera;->startPreview()V

    .line 600
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mIsPreviewing:Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 607
    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 603
    :catch_0
    move-exception v1

    .line 604
    .local v1, "e":Ljava/lang/RuntimeException;
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mIsPreviewing:Z

    .line 605
    new-instance v5, Lcom/sonyericsson/android/camera/device/CameraDeviceException;

    const-string v6, "Start preview failed."

    invoke-direct {v5, v6, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public startPreview(Landroid/view/SurfaceHolder;)V
    .locals 4
    .param p1, "surface"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 688
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 689
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->startPreview()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sonyericsson/android/camera/device/CameraDeviceException; {:try_start_0 .. :try_end_0} :catch_1

    .line 701
    :goto_0
    return-void

    .line 690
    :catch_0
    move-exception v0

    .line 691
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_DEVICE_ERROR:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    const/16 v2, -0x100

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-static {v1, v2, v3}, Lcom/sonyericsson/android/camera/controller/Executor;->postEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;ILjava/lang/Object;)V

    goto :goto_0

    .line 695
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 696
    .local v0, "e":Lcom/sonyericsson/android/camera/device/CameraDeviceException;
    sget-object v1, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_DEVICE_ERROR:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    const/16 v2, -0xff

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-static {v1, v2, v3}, Lcom/sonyericsson/android/camera/controller/Executor;->postEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public startSceneRecognition()V
    .locals 3

    .prologue
    .line 799
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    if-nez v0, :cond_1

    .line 829
    :cond_0
    :goto_0
    return-void

    .line 805
    :cond_1
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mIsPreviewing:Z

    if-eqz v0, :cond_0

    .line 810
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mIsSceneRecognitionRunning:Z

    if-nez v0, :cond_0

    .line 819
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->startFaceDetection()V

    .line 820
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mSceneRecognitionCallback:Lcom/sonyericsson/cameraextension/CameraExtension$SceneRecognitionCallback;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameraextension/CameraExtension;->startSceneRecognition(Lcom/sonyericsson/cameraextension/CameraExtension$SceneRecognitionCallback;)V

    .line 821
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mIsSceneRecognitionRunning:Z

    .line 826
    new-instance v0, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    iget v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraId:I

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;I)V

    new-instance v1, Lcom/sonyericsson/cameracommon/status/eachcamera/SceneRecognition;

    sget-object v2, Lcom/sonyericsson/cameracommon/status/eachcamera/SceneRecognition$Value;->ON:Lcom/sonyericsson/cameracommon/status/eachcamera/SceneRecognition$Value;

    invoke-direct {v1, v2}, Lcom/sonyericsson/cameracommon/status/eachcamera/SceneRecognition;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/SceneRecognition$Value;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    goto :goto_0
.end method

.method public startSetupCameraDeviceTask(Lcom/sonyericsson/android/camera/parameter/Parameters;)V
    .locals 2
    .param p1, "params"    # Lcom/sonyericsson/android/camera/parameter/Parameters;

    .prologue
    .line 3040
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->clearCloseDeviceTask()V

    .line 3043
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mOpenDeviceExecutorService:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_0

    .line 3044
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mOpenDeviceExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 3046
    :cond_0
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDevice;Lcom/sonyericsson/android/camera/parameter/Parameters;)V

    .line 3047
    .local v0, "task":Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mOpenDeviceExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mSetupDeviceFuture:Ljava/util/concurrent/Future;

    .line 3051
    return-void
.end method

.method public final startSmoothZoom(I)V
    .locals 2
    .param p1, "stepValue"    # I

    .prologue
    .line 1975
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_1

    .line 1976
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;

    const-string v1, "startSmoothZoom: mCamera is null."

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1983
    :cond_0
    :goto_0
    return-void

    .line 1980
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->isPreviewing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1981
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->startSmoothZoom(I)V

    goto :goto_0
.end method

.method public startSmoothZoom(ILandroid/hardware/Camera$OnZoomChangeListener;)V
    .locals 2
    .param p1, "stepValue"    # I
    .param p2, "listener"    # Landroid/hardware/Camera$OnZoomChangeListener;

    .prologue
    .line 1947
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_1

    .line 1948
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;

    const-string v1, "startSmoothZoom: mCamera is null."

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1956
    :cond_0
    :goto_0
    return-void

    .line 1952
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->isPreviewing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1953
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p2}, Landroid/hardware/Camera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 1954
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->startSmoothZoom(I)V

    goto :goto_0
.end method

.method public startVideoMetadata()V
    .locals 3

    .prologue
    .line 3441
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getInstance()Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraId:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->isVideoMetaDataSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3442
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    if-eqz v0, :cond_0

    .line 3443
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    invoke-virtual {v0}, Lcom/sonyericsson/cameraextension/CameraExtension;->startVideoMetadata()V

    .line 3444
    new-instance v0, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    iget v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraId:I

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;I)V

    new-instance v1, Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata;

    sget-object v2, Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata$Value;->ON:Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata$Value;

    invoke-direct {v1, v2}, Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata$Value;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    .line 3449
    :cond_0
    return-void
.end method

.method public final stopAutoFocus()V
    .locals 1

    .prologue
    .line 1844
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mAutoFocus:Lcom/sonyericsson/android/camera/device/CameraDevice$AutoFocus;

    if-eqz v0, :cond_0

    .line 1845
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mAutoFocus:Lcom/sonyericsson/android/camera/device/CameraDevice$AutoFocus;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDevice$AutoFocus;->stopAutoFocus()V

    .line 1847
    :cond_0
    return-void
.end method

.method public stopBurstShot(I)I
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 1027
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mIsBurstShooting:Z

    if-nez v0, :cond_0

    .line 1029
    const/4 p1, -0x1

    .line 1043
    .end local p1    # "id":I
    :goto_0
    return p1

    .line 1033
    .restart local p1    # "id":I
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mIsBurstShooting:Z

    .line 1034
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    invoke-virtual {v0}, Lcom/sonyericsson/cameraextension/CameraExtension;->stopBurstShot()V

    .line 1039
    new-instance v0, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    iget v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraId:I

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;I)V

    new-instance v1, Lcom/sonyericsson/cameracommon/status/eachcamera/BurstShooting;

    sget-object v2, Lcom/sonyericsson/cameracommon/status/eachcamera/BurstShooting$Value;->OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/BurstShooting$Value;

    invoke-direct {v1, v2}, Lcom/sonyericsson/cameracommon/status/eachcamera/BurstShooting;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/BurstShooting$Value;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    goto :goto_0
.end method

.method public stopFaceDetection()V
    .locals 3

    .prologue
    .line 770
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_1

    .line 771
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;

    const-string v1, "startFaceDetection: mCamera is null."

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    :cond_0
    :goto_0
    return-void

    .line 775
    :cond_1
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mIsFaceDetectionRunning:Z

    if-eqz v0, :cond_0

    .line 780
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mIsFaceDetectionRunning:Z

    .line 781
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopFaceDetection()V

    .line 786
    new-instance v0, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    iget v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraId:I

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;I)V

    new-instance v1, Lcom/sonyericsson/cameracommon/status/eachcamera/FaceIdentification;

    sget-object v2, Lcom/sonyericsson/cameracommon/status/eachcamera/FaceIdentification$Value;->OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/FaceIdentification$Value;

    invoke-direct {v1, v2}, Lcom/sonyericsson/cameracommon/status/eachcamera/FaceIdentification;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/FaceIdentification$Value;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/cameracommon/status/eachcamera/FaceDetection;

    sget-object v2, Lcom/sonyericsson/cameracommon/status/eachcamera/FaceDetection$Value;->OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/FaceDetection$Value;

    invoke-direct {v1, v2}, Lcom/sonyericsson/cameracommon/status/eachcamera/FaceDetection;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/FaceDetection$Value;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    goto :goto_0
.end method

.method public stopObjectTracking(Z)V
    .locals 5
    .param p1, "doStopCallback"    # Z

    .prologue
    const/4 v2, 0x0

    .line 922
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    if-nez v1, :cond_1

    .line 949
    :cond_0
    :goto_0
    return-void

    .line 928
    :cond_1
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mIsObjectTrackingRunning:Z

    if-eqz v1, :cond_0

    .line 933
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mIsObjectTrackingRunning:Z

    .line 935
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    invoke-virtual {v1}, Lcom/sonyericsson/cameraextension/CameraExtension;->deselectObject()V

    .line 936
    if-eqz p1, :cond_2

    .line 937
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/sonyericsson/cameraextension/CameraExtension;->setObjectTrackingCallback(Lcom/sonyericsson/cameraextension/CameraExtension$ObjectTrackingCallback;II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 946
    :cond_2
    :goto_1
    new-instance v1, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    iget v3, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraId:I

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;I)V

    new-instance v2, Lcom/sonyericsson/cameracommon/status/eachcamera/ObjectTracking;

    sget-object v3, Lcom/sonyericsson/cameracommon/status/eachcamera/ObjectTracking$Value;->OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/ObjectTracking$Value;

    invoke-direct {v2, v3}, Lcom/sonyericsson/cameracommon/status/eachcamera/ObjectTracking;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/ObjectTracking$Value;)V

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    goto :goto_0

    .line 940
    :catch_0
    move-exception v0

    .line 941
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;

    const-string v2, "ObjectTrackingDevice stop failed."

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public stopObjectTrackingCallback()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 957
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    if-eqz v0, :cond_0

    .line 958
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/sonyericsson/cameraextension/CameraExtension;->setObjectTrackingCallback(Lcom/sonyericsson/cameraextension/CameraExtension$ObjectTrackingCallback;II)V

    .line 960
    :cond_0
    return-void
.end method

.method public declared-synchronized stopPreview()V
    .locals 2

    .prologue
    .line 621
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_1

    .line 622
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;

    const-string v1, "stopPreview: mCamera is null."

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mIsPreviewing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 637
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 627
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mIsPreviewing:Z

    if-eqz v0, :cond_0

    .line 632
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mIsPreviewing:Z

    .line 633
    sget-boolean v0, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->isUserdebugOrEngBuild:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;

    const-string v1, "Camera.stopPreview in"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 635
    sget-boolean v0, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->isUserdebugOrEngBuild:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;

    const-string v1, "Camera.stopPreview out"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->p(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 621
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopSceneRecognition()V
    .locals 3

    .prologue
    .line 838
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    if-nez v0, :cond_1

    .line 858
    :cond_0
    :goto_0
    return-void

    .line 844
    :cond_1
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mIsSceneRecognitionRunning:Z

    if-eqz v0, :cond_0

    .line 849
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mIsSceneRecognitionRunning:Z

    .line 850
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    invoke-virtual {v0}, Lcom/sonyericsson/cameraextension/CameraExtension;->stopSceneRecognition()V

    .line 855
    new-instance v0, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    iget v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraId:I

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;I)V

    new-instance v1, Lcom/sonyericsson/cameracommon/status/eachcamera/SceneRecognition;

    sget-object v2, Lcom/sonyericsson/cameracommon/status/eachcamera/SceneRecognition$Value;->OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/SceneRecognition$Value;

    invoke-direct {v1, v2}, Lcom/sonyericsson/cameracommon/status/eachcamera/SceneRecognition;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/SceneRecognition$Value;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    goto :goto_0
.end method

.method public final stopSmoothZoom()V
    .locals 2

    .prologue
    .line 1990
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 1991
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;

    const-string v1, "stopSmoothZoom: mCamera is null."

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1995
    :goto_0
    return-void

    .line 1994
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopSmoothZoom()V

    goto :goto_0
.end method

.method public stopVideoMetadata()V
    .locals 3

    .prologue
    .line 3453
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getInstance()Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraId:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->isVideoMetaDataSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3454
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    if-eqz v0, :cond_0

    .line 3455
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;

    invoke-virtual {v0}, Lcom/sonyericsson/cameraextension/CameraExtension;->stopVideoMetadata()V

    .line 3456
    new-instance v0, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    iget v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraId:I

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;I)V

    new-instance v1, Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata;

    sget-object v2, Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata$Value;->OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata$Value;

    invoke-direct {v1, v2}, Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata$Value;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    .line 3461
    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .param p1, "surface"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 3426
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setSurfaceHolder(Landroid/view/SurfaceHolder;)V

    .line 3427
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraSurfaceHolder;

    invoke-direct {v0, p1, p3, p4}, Lcom/sonyericsson/android/camera/device/CameraSurfaceHolder;-><init>(Landroid/view/SurfaceHolder;II)V

    .line 3428
    .local v0, "cameraSurface":Lcom/sonyericsson/android/camera/device/CameraSurfaceHolder;
    sget-object v1, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_SURFACE_CHANGED:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/android/camera/controller/Executor;->sendEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;ILjava/lang/Object;)V

    .line 3429
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 3403
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_SURFACE_CREATED:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/controller/Executor;->sendEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;ILjava/lang/Object;)V

    .line 3404
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 3435
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setSurfaceHolder(Landroid/view/SurfaceHolder;)V

    .line 3436
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_SURFACE_DESTROYED:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->sendEmptyEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;)V

    .line 3437
    return-void
.end method

.method public declared-synchronized suspend(ZZ)V
    .locals 1
    .param p1, "stopFaceDetect"    # Z
    .param p2, "stopSceneRecognition"    # Z

    .prologue
    .line 2083
    monitor-enter p0

    if-eqz p2, :cond_0

    .line 2084
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->stopSceneRecognition()V

    .line 2087
    :cond_0
    if-eqz p1, :cond_1

    .line 2088
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->stopFaceDetection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2090
    :cond_1
    monitor-exit p0

    return-void

    .line 2083
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;)V
    .locals 5
    .param p1, "shutter"    # Landroid/hardware/Camera$ShutterCallback;
    .param p2, "jpeg"    # Landroid/hardware/Camera$PictureCallback;

    .prologue
    const/4 v4, 0x0

    .line 1907
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCamera:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    .line 1908
    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;

    const-string v2, "takePicture: mCamera is null."

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1935
    :goto_0
    return-void

    .line 1914
    :cond_0
    new-instance v2, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    iget v3, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraId:I

    invoke-direct {v2, v1, v3}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;I)V

    new-instance v3, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus;

    invoke-static {}, Lcom/sonyericsson/android/camera/controller/Executor;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;->PICTURE_TAKING_DURING_VIDEO_RECORDING:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    :goto_1
    invoke-direct {v3, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;)V

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    .line 1920
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraDevice$JpegCallback;

    invoke-direct {v0, p0, p2, v4}, Lcom/sonyericsson/android/camera/device/CameraDevice$JpegCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraDevice;Landroid/hardware/Camera$PictureCallback;Lcom/sonyericsson/android/camera/device/CameraDevice$1;)V

    .line 1922
    .local v0, "jpegCallback":Landroid/hardware/Camera$PictureCallback;
    monitor-enter p0

    .line 1923
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mIsCapturing:Z

    .line 1927
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/Executor;->isRecording()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1928
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mIsPreviewing:Z

    .line 1930
    :cond_1
    sget-object v1, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->STOT_TO_ON_PICT_TAKEN:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V

    .line 1932
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCamera:Landroid/hardware/Camera;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 1934
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1914
    .end local v0    # "jpegCallback":Landroid/hardware/Camera$PictureCallback;
    :cond_2
    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;->PICTURE_TAKING:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    goto :goto_1
.end method

.method public final turnOffLight()V
    .locals 1

    .prologue
    .line 2167
    monitor-enter p0

    .line 2168
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mLedLight:Lcom/sonyericsson/android/camera/device/CameraDevice$LedLight;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mLedLight:Lcom/sonyericsson/android/camera/device/CameraDevice$LedLight;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDevice$LedLight;->turnOff()V

    .line 2169
    :cond_0
    monitor-exit p0

    .line 2170
    return-void

    .line 2169
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final turnOnLight()V
    .locals 1

    .prologue
    .line 2161
    monitor-enter p0

    .line 2162
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mLedLight:Lcom/sonyericsson/android/camera/device/CameraDevice$LedLight;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mLedLight:Lcom/sonyericsson/android/camera/device/CameraDevice$LedLight;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDevice$LedLight;->turnOn()V

    .line 2163
    :cond_0
    monitor-exit p0

    .line 2164
    return-void

    .line 2163
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unlockCamera()V
    .locals 2

    .prologue
    .line 2126
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 2127
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;

    const-string v1, "unlockCamera: mCamera is null."

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2132
    :goto_0
    return-void

    .line 2130
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->unlock()V

    goto :goto_0
.end method

.method public updatePreviewSize(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "preview"    # Landroid/graphics/Rect;

    .prologue
    .line 682
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice;->mPreviewSize:Landroid/graphics/Rect;

    .line 683
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->setPreviewSize(II)V

    .line 684
    return-void
.end method
