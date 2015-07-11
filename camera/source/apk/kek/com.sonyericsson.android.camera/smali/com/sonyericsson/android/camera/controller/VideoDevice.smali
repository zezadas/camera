.class public Lcom/sonyericsson/android/camera/controller/VideoDevice;
.super Ljava/lang/Object;
.source "VideoDevice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/controller/VideoDevice$2;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

.field private final mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

.field private mDuration:I

.field private mIsConstraint:Z

.field private mOutputPath:Ljava/lang/String;

.field private mPreviousRecordingTimeInSeconds:I

.field private mRecorder:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;

.field private final mRecorderListener:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$RecorderListener;

.field private mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;

.field private mUpdateRemainCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/sonyericsson/android/camera/controller/VideoDevice;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/controller/VideoDevice;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/android/camera/controller/CameraFunctions;)V
    .locals 1
    .param p1, "controller"    # Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lcom/sonyericsson/android/camera/controller/VideoDevice$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/controller/VideoDevice$1;-><init>(Lcom/sonyericsson/android/camera/controller/VideoDevice;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/VideoDevice;->mRecorderListener:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$RecorderListener;

    .line 48
    iget-object v0, p1, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/VideoDevice;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 49
    iget-object v0, p1, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/VideoDevice;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    .line 50
    return-void
.end method

.method private disableRecordingSoundIfNeeded()V
    .locals 2

    .prologue
    .line 423
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/VideoDevice;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getParameterManager()Lcom/sonyericsson/android/camera/parameter/ParameterManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->getParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getVideoStabilizer()Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->isIntelligentActive(Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/VideoDevice;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDevice;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setVideoRecordingSound(Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;)V

    .line 426
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/VideoDevice;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->commit()V

    .line 428
    :cond_0
    return-void
.end method

.method public static isConstraint(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/CameraActivity;)Z
    .locals 2
    .param p0, "videoSize"    # Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    .param p1, "activity"    # Lcom/sonyericsson/android/camera/CameraActivity;

    .prologue
    const/4 v0, 0x0

    .line 387
    if-eqz p0, :cond_1

    .line 388
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->isConstraint()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->getConfigurations()Lcom/sonyericsson/android/camera/configuration/Configurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/Configurations;->hasLimitForSizeOrDuration()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 391
    :cond_1
    return v0
.end method

.method private selectOutputUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p1, "extraUri"    # Landroid/net/Uri;
    .param p2, "dcimFile"    # Ljava/lang/String;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/VideoDevice;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShotVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    if-eqz p1, :cond_0

    .line 127
    const-string v0, "/dev/null"

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/VideoDevice;->mOutputPath:Ljava/lang/String;

    .line 132
    .end local p1    # "extraUri":Landroid/net/Uri;
    :goto_0
    return-object p1

    .line 131
    .restart local p1    # "extraUri":Landroid/net/Uri;
    :cond_0
    iput-object p2, p0, Lcom/sonyericsson/android/camera/controller/VideoDevice;->mOutputPath:Ljava/lang/String;

    .line 132
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/VideoDevice;->mOutputPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0
.end method

.method private sendGoogleAnalyticsEvents()V
    .locals 5

    .prologue
    .line 330
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/VideoDevice;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/CameraActivity;->isAlreadyHighTemperature()Z

    move-result v0

    .line 331
    .local v0, "isThermalStop":Z
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/VideoDevice;->mRecorder:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;

    invoke-interface {v2}, Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;->getRecordingTimeMillis()J

    move-result-wide v2

    long-to-int v1, v2

    .line 333
    .local v1, "recTimeMillis":I
    invoke-static {}, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;->getInstance()Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;->sendEventSettings()V

    .line 334
    invoke-static {}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->getInstance()Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;

    move-result-object v2

    sget-object v3, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->RECORDING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->sendRecordingEvent(Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$UserOperation;ZIZ)V

    .line 336
    return-void
.end method

.method private setStreamNotificationMute(Z)V
    .locals 3
    .param p1, "mute"    # Z

    .prologue
    .line 222
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/VideoDevice;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 224
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 225
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 232
    :cond_0
    return-void
.end method


# virtual methods
.method public awaitFinishingRecording()V
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/VideoDevice;->mRecorder:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;

    if-nez v0, :cond_0

    .line 418
    :goto_0
    return-void

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/VideoDevice;->mRecorder:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;

    invoke-interface {v0}, Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;->isRecordingOrPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 414
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/VideoDevice;->disableRecordingSoundIfNeeded()V

    .line 417
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/VideoDevice;->mRecorder:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;

    invoke-interface {v0}, Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;->awaitFinish()Z

    goto :goto_0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 358
    iget v0, p0, Lcom/sonyericsson/android/camera/controller/VideoDevice;->mDuration:I

    return v0
.end method

.method public getOutputFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/VideoDevice;->mOutputPath:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordingTime()I
    .locals 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/VideoDevice;->mRecorder:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;

    if-nez v0, :cond_0

    .line 381
    const/4 v0, 0x0

    .line 383
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/VideoDevice;->mRecorder:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;

    invoke-interface {v0}, Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;->getRecordingTimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0
.end method

.method public getSavingRequest()Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/VideoDevice;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;

    return-object v0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/VideoDevice;->mRecorder:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;

    if-nez v0, :cond_0

    .line 299
    const/4 v0, 0x0

    .line 301
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/VideoDevice;->mRecorder:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;

    invoke-interface {v0}, Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;->isPaused()Z

    move-result v0

    goto :goto_0
.end method

.method public isRecordStopping()Z
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/VideoDevice;->mRecorder:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;

    if-nez v0, :cond_0

    .line 374
    const/4 v0, 0x0

    .line 376
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/VideoDevice;->mRecorder:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;

    invoke-interface {v0}, Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;->isStopping()Z

    move-result v0

    goto :goto_0
.end method

.method public isRecorderWorking()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 396
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/VideoDevice;->mRecorder:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;

    if-nez v1, :cond_0

    .line 397
    sget-object v1, Lcom/sonyericsson/android/camera/controller/VideoDevice;->TAG:Ljava/lang/String;

    const-string v2, "Video Recorder: null"

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :goto_0
    return v0

    .line 399
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/VideoDevice;->mRecorder:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;

    invoke-interface {v1}, Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;->isRecordingOrPaused()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/VideoDevice;->mRecorder:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;

    invoke-interface {v1}, Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;->isStopping()Z

    move-result v1

    if-nez v1, :cond_1

    .line 400
    sget-object v1, Lcom/sonyericsson/android/camera/controller/VideoDevice;->TAG:Ljava/lang/String;

    const-string v2, "Video Recorder: not working"

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 403
    :cond_1
    sget-object v0, Lcom/sonyericsson/android/camera/controller/VideoDevice;->TAG:Ljava/lang/String;

    const-string v1, "Video Recorder: working"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isRecording()Z
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/VideoDevice;->mRecorder:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;

    if-nez v0, :cond_0

    .line 367
    const/4 v0, 0x0

    .line 369
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/VideoDevice;->mRecorder:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;

    invoke-interface {v0}, Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;->isRecordingOrPaused()Z

    move-result v0

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 277
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/VideoDevice;->mRecorder:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;

    invoke-interface {v0}, Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;->pause()V
    :try_end_0
    .catch Lcom/sonymobile/cameracommon/media/recorder/RecorderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/controller/VideoDevice;->setStreamNotificationMute(Z)V

    .line 284
    return-void

    .line 278
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public release()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 340
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/VideoDevice;->isRecorderWorking()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 350
    :goto_0
    return v0

    .line 344
    :cond_0
    sget-object v1, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_VIDEO_PROGRESS:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/Executor;->cancelEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;)V

    .line 345
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/android/camera/controller/VideoDevice;->mRecorder:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;

    .line 348
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/controller/VideoDevice;->setStreamNotificationMute(Z)V

    .line 350
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/controller/VideoDevice;->setStreamNotificationMute(Z)V

    .line 291
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/VideoDevice;->mRecorder:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;

    invoke-interface {v0}, Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;->resume()V
    :try_end_0
    .catch Lcom/sonymobile/cameracommon/media/recorder/RecorderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :goto_0
    return-void

    .line 292
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setup(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;ZLcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;Ljava/lang/String;ILcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;)Z
    .locals 8
    .param p1, "videoSize"    # Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    .param p2, "videoStabilizer"    # Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;
    .param p3, "mic"    # Z
    .param p4, "request"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;
    .param p5, "outputFile"    # Ljava/lang/String;
    .param p6, "orientation"    # I
    .param p7, "shutterSound"    # Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/VideoDevice;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->isPreviewing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    const/4 v0, 0x0

    .line 197
    :goto_0
    return v0

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/VideoDevice;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getConfigurations()Lcom/sonyericsson/android/camera/configuration/Configurations;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/VideoDevice;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->getStorageController()Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->create(Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/cameracommon/mediasaving/StorageController;)Lcom/sonyericsson/android/camera/util/MaxVideoSize;

    move-result-object v6

    .line 149
    .local v6, "max":Lcom/sonyericsson/android/camera/util/MaxVideoSize;
    invoke-static {}, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;->newRecordParameters()Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters$Builder;

    move-result-object v0

    invoke-virtual {p4}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;->getExtraOutput()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, p5}, Lcom/sonyericsson/android/camera/controller/VideoDevice;->selectOutputUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters$Builder;->setUri(Landroid/net/Uri;)Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoProfile()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile;->getCamcorderProfile()Landroid/media/CamcorderProfile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters$Builder;->setProfile(Landroid/media/CamcorderProfile;)Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters$Builder;

    move-result-object v0

    iget-object v1, p4, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters$Builder;->setLocation(Landroid/location/Location;)Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters$Builder;

    move-result-object v0

    invoke-virtual {v0, p6}, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters$Builder;->setOrientationHint(I)Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters$Builder;->setMicrophoneEnabled(Z)Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters$Builder;

    move-result-object v0

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->getMaxDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters$Builder;->setMaxDuration(I)Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters$Builder;

    move-result-object v0

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->getMaxFileSize()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters$Builder;->setMaxFileSize(J)Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters$Builder;->build()Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;

    move-result-object v7

    .line 159
    .local v7, "parameters":Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/VideoDevice;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/controller/VideoDevice;->isConstraint(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/CameraActivity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/VideoDevice;->mIsConstraint:Z

    .line 163
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/VideoDevice;->mIsConstraint:Z

    if-eqz v0, :cond_1

    .line 164
    const/16 v4, 0x64

    .line 169
    .local v4, "progressInterval":I
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/VideoDevice;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/VideoDevice;->mRecorderListener:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$RecorderListener;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/VideoDevice;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/CameraActivity;->getShutterToneGenerator()Lcom/sonyericsson/android/camera/ShutterToneGenerator;

    move-result-object v2

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-static {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->isIntelligentActive(Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    if-eq p7, v5, :cond_2

    const/4 v5, 0x1

    :goto_2
    invoke-static/range {v0 .. v5}, Lcom/sonymobile/cameracommon/media/recorder/RecorderFactory;->create(Landroid/content/Context;Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$RecorderListener;Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$RecordingSoundPlayer;Landroid/os/Handler;IZ)Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/VideoDevice;->mRecorder:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/VideoDevice;->mRecorder:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/VideoDevice;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getCamera()Landroid/hardware/Camera;

    move-result-object v1

    invoke-interface {v0, v1, v7}, Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;->prepare(Landroid/hardware/Camera;Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 180
    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->getMaxDuration()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera/controller/VideoDevice;->mDuration:I

    .line 181
    iput-object p4, p0, Lcom/sonyericsson/android/camera/controller/VideoDevice;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;

    .line 185
    new-instance v0, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/VideoDevice;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/VideoDevice;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDevice;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getCameraId()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/VideoDevice;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->putFromParameter(Landroid/hardware/Camera$Parameters;)Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoResolution;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoResolution;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoRecordingFps;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoFrameRate()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoRecordingFps;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 166
    .end local v4    # "progressInterval":I
    :cond_1
    const/16 v4, 0x3e8

    .restart local v4    # "progressInterval":I
    goto :goto_1

    .line 169
    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    .line 193
    :catch_0
    move-exception v0

    .line 197
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public start()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 202
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/controller/VideoDevice;->setStreamNotificationMute(Z)V

    .line 204
    iput v2, p0, Lcom/sonyericsson/android/camera/controller/VideoDevice;->mPreviousRecordingTimeInSeconds:I

    .line 206
    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/VideoDevice;->mRecorder:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;

    invoke-interface {v3}, Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;->start()V

    .line 210
    new-instance v3, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/VideoDevice;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/controller/VideoDevice;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDevice;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getCameraId()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;I)V

    new-instance v4, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus;

    sget-object v5, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;->VIDEO_RECORDING:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    invoke-direct {v4, v5}, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;)V

    invoke-virtual {v3, v4}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V
    :try_end_0
    .catch Lcom/sonymobile/cameracommon/media/recorder/RecorderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :goto_0
    return v1

    .line 214
    :catch_0
    move-exception v0

    .local v0, "e":Lcom/sonymobile/cameracommon/media/recorder/RecorderException;
    move v1, v2

    .line 215
    goto :goto_0
.end method

.method public stop()V
    .locals 4

    .prologue
    .line 309
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/VideoDevice;->mRecorder:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;

    invoke-interface {v1}, Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;->isRecordingOrPaused()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 311
    :try_start_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/VideoDevice;->disableRecordingSoundIfNeeded()V

    .line 313
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/VideoDevice;->mRecorder:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;

    invoke-interface {v1}, Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;->stop()V
    :try_end_0
    .catch Lcom/sonymobile/cameracommon/media/recorder/RecorderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :cond_0
    :goto_0
    new-instance v1, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/VideoDevice;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/VideoDevice;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDevice;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getCameraId()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;I)V

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/VideoDevice;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDevice;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->putFromParameter(Landroid/hardware/Camera$Parameters;)Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    move-result-object v1

    new-instance v2, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus;

    sget-object v3, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;->VIDEO_PREVIEW:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    invoke-direct {v2, v3}, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;)V

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    .line 326
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/VideoDevice;->sendGoogleAnalyticsEvents()V

    .line 327
    return-void

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Lcom/sonymobile/cameracommon/media/recorder/RecorderException;
    sget-object v1, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_DEVICE_ERROR:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/Executor;->postEmptyEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;)V

    goto :goto_0
.end method

.method public update(I)V
    .locals 3
    .param p1, "recordingTime"    # I

    .prologue
    .line 236
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/VideoDevice;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->disableAutoOffTimer()V

    .line 238
    div-int/lit16 v0, p1, 0x3e8

    .line 239
    .local v0, "recordingTimeInSeconds":I
    iget v1, p0, Lcom/sonyericsson/android/camera/controller/VideoDevice;->mPreviousRecordingTimeInSeconds:I

    if-le v0, v1, :cond_0

    .line 241
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/VideoDevice;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    mul-int/lit16 v2, v0, 0x3e8

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/CameraWindow;->updateRecordingTime(I)V

    .line 242
    iput v0, p0, Lcom/sonyericsson/android/camera/controller/VideoDevice;->mPreviousRecordingTimeInSeconds:I

    .line 245
    :cond_0
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/controller/VideoDevice;->mIsConstraint:Z

    if-eqz v1, :cond_1

    .line 247
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/VideoDevice;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->updateProgressbar(I)V

    .line 250
    :cond_1
    iget v1, p0, Lcom/sonyericsson/android/camera/controller/VideoDevice;->mUpdateRemainCount:I

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/controller/VideoDevice;->updateRemain(I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/android/camera/controller/VideoDevice;->mUpdateRemainCount:I

    .line 251
    return-void
.end method

.method public updateRemain(I)I
    .locals 4
    .param p1, "count"    # I

    .prologue
    const/4 v2, 0x0

    .line 262
    if-nez p1, :cond_0

    .line 263
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/VideoDevice;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/CameraActivity;->getSavingTaskManager()Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->getExpectedTotalSavedPicturesSize()J

    move-result-wide v0

    .line 265
    .local v0, "reservedSize":J
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/VideoDevice;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/CameraActivity;->getStorageManager()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->updateRemain(JZ)J

    .line 268
    .end local v0    # "reservedSize":J
    :cond_0
    const/16 v3, 0xa

    if-lt p1, v3, :cond_1

    .line 271
    :goto_0
    return v2

    :cond_1
    add-int/lit8 v2, p1, 0x1

    goto :goto_0
.end method
