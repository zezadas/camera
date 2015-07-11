.class Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask;
.super Ljava/lang/Object;
.source "CameraDevice.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetupCameraDeviceTask"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mParams:Lcom/sonyericsson/android/camera/parameter/Parameters;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDevice;Lcom/sonyericsson/android/camera/parameter/Parameters;)V
    .locals 1
    .param p2, "params"    # Lcom/sonyericsson/android/camera/parameter/Parameters;

    .prologue
    .line 3240
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3237
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask;->mHandler:Landroid/os/Handler;

    .line 3241
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask;->mParams:Lcom/sonyericsson/android/camera/parameter/Parameters;

    .line 3242
    return-void
.end method

.method private applyAllParameters()V
    .locals 3

    .prologue
    .line 3331
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraId:I
    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraDevice;->access$1200(Lcom/sonyericsson/android/camera/device/CameraDevice;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setDisplayOrientation(I)V

    .line 3332
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setJpegEncodingQuality(I)V

    .line 3334
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask;->mParams:Lcom/sonyericsson/android/camera/parameter/Parameters;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 3335
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask;->mParams:Lcom/sonyericsson/android/camera/parameter/Parameters;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getEv()Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setEv(Lcom/sonyericsson/android/camera/configuration/parameters/Ev;)V

    .line 3337
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask;->mParams:Lcom/sonyericsson/android/camera/parameter/Parameters;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getFocusMode()Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setFocusMode(Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;)V

    .line 3341
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask;->mParams:Lcom/sonyericsson/android/camera/parameter/Parameters;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setVideoSize(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V

    .line 3343
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDevice;->mIsVideo:Z
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->access$2000(Lcom/sonyericsson/android/camera/device/CameraDevice;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3344
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask;->mParams:Lcom/sonyericsson/android/camera/parameter/Parameters;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setPreviewSizeAndFpsRangeForVideo(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V

    .line 3345
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask;->mParams:Lcom/sonyericsson/android/camera/parameter/Parameters;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getScene()Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setScene(Lcom/sonyericsson/android/camera/configuration/parameters/Scene;)V

    .line 3346
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setSmileCapture(Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;)V

    .line 3347
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask;->mParams:Lcom/sonyericsson/android/camera/parameter/Parameters;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getVideoStabilizer()Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setSteadyShot(Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;)V

    .line 3363
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask;->mParams:Lcom/sonyericsson/android/camera/parameter/Parameters;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getMetering()Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setMetering(Lcom/sonyericsson/android/camera/configuration/parameters/Metering;)V

    .line 3364
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask;->mParams:Lcom/sonyericsson/android/camera/parameter/Parameters;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getShutterSound()Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setShutterSound(Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;)V

    .line 3366
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask;->mParams:Lcom/sonyericsson/android/camera/parameter/Parameters;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getVideoHdr()Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setVideoHdr(Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)V

    .line 3367
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask;->mParams:Lcom/sonyericsson/android/camera/parameter/Parameters;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getWhiteBalance()Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setWhiteBalance(Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;)V

    .line 3369
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->commit()V

    .line 3370
    return-void

    .line 3349
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask;->mParams:Lcom/sonyericsson/android/camera/parameter/Parameters;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getHdr()Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    move-result-object v0

    .line 3350
    .local v0, "hdr":Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setHdr(Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;)V

    .line 3351
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask;->mParams:Lcom/sonyericsson/android/camera/parameter/Parameters;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getUpdatedResolution(Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;)Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setResolution(Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;)V

    .line 3352
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask;->mParams:Lcom/sonyericsson/android/camera/parameter/Parameters;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getIso()Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setIso(Lcom/sonyericsson/android/camera/configuration/parameters/Iso;)V

    .line 3353
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraId:I
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->access$1200(Lcom/sonyericsson/android/camera/device/CameraDevice;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 3354
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask;->mParams:Lcom/sonyericsson/android/camera/parameter/Parameters;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getSoftSkin()Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setSoftSkin(Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;)V

    .line 3358
    :goto_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask;->mParams:Lcom/sonyericsson/android/camera/parameter/Parameters;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getSmileCapture()Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setSmileCapture(Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;)V

    .line 3359
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask;->mParams:Lcom/sonyericsson/android/camera/parameter/Parameters;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getStabilizer()Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setStabilizer(Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;)V

    goto :goto_0

    .line 3356
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask;->mParams:Lcom/sonyericsson/android/camera/parameter/Parameters;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getScene()Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setScene(Lcom/sonyericsson/android/camera/configuration/parameters/Scene;)V

    goto :goto_1
.end method

.method private isCameraAvailable()Z
    .locals 3

    .prologue
    .line 3303
    const/4 v0, 0x0

    .line 3305
    .local v0, "isCameraAvailable":Z
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;

    # invokes: Lcom/sonyericsson/android/camera/device/CameraDevice;->isFailedOpenCameraDeviceTask()Z
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->access$1800(Lcom/sonyericsson/android/camera/device/CameraDevice;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3306
    # getter for: Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraDevice;->access$700()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[CameraNotAvailable] Camera open was failed."

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->errorLogForNonUserVariant(Ljava/lang/String;Ljava/lang/String;)I

    .line 3311
    const/4 v0, 0x0

    .line 3313
    invoke-static {}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->getInstance()Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->setCameraNotAvailableFailedToOpen()V

    .line 3326
    :goto_0
    return v0

    .line 3314
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask;->mParams:Lcom/sonyericsson/android/camera/parameter/Parameters;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()I

    move-result v2

    # invokes: Lcom/sonyericsson/android/camera/device/CameraDevice;->isRequestCameraOpened(I)Z
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDevice;->access$1900(Lcom/sonyericsson/android/camera/device/CameraDevice;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3317
    const/4 v0, 0x1

    goto :goto_0

    .line 3318
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask;->mParams:Lcom/sonyericsson/android/camera/parameter/Parameters;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()I

    move-result v2

    # invokes: Lcom/sonyericsson/android/camera/device/CameraDevice;->openCameraDeviceWithRetry(I)Z
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDevice;->access$1500(Lcom/sonyericsson/android/camera/device/CameraDevice;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3320
    const/4 v0, 0x1

    goto :goto_0

    .line 3322
    :cond_2
    # getter for: Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraDevice;->access$700()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SetupCameraDeviceTask: Camera is not available."

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3323
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3246
    sget-object v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->SETUP_CAMERA_DEVICE_TASK:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V

    .line 3251
    const/4 v1, 0x0

    .line 3253
    .local v1, "success":Z
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask;->isCameraAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3255
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask;->applyAllParameters()V

    .line 3259
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDevice;->mSurfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraDevice;->access$1700(Lcom/sonyericsson/android/camera/device/CameraDevice;)Landroid/view/SurfaceHolder;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 3262
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraDevice;->startPreview()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sonyericsson/android/camera/device/CameraDeviceException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3264
    const/4 v1, 0x1

    .line 3276
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 3277
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask$1;

    invoke-direct {v3, p0}, Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask$1;-><init>(Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3295
    :goto_1
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/Configurations;->isLogForOperatorsEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3296
    const-string v2, "Camera is launched completely"

    invoke-static {v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->dForOperators(Ljava/lang/String;)I

    .line 3298
    :cond_1
    sget-object v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->SETUP_CAMERA_DEVICE_TASK:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V

    .line 3300
    return-void

    .line 3265
    :catch_0
    move-exception v0

    .line 3266
    .local v0, "e":Ljava/io/IOException;
    # getter for: Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraDevice;->access$700()Ljava/lang/String;

    move-result-object v2

    const-string v3, "setPreviewDisplay failed."

    invoke-static {v2, v3, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3267
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 3268
    .local v0, "e":Lcom/sonyericsson/android/camera/device/CameraDeviceException;
    # getter for: Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraDevice;->access$700()Ljava/lang/String;

    move-result-object v2

    const-string v3, "startPreview failed."

    invoke-static {v2, v3, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3284
    .end local v0    # "e":Lcom/sonyericsson/android/camera/device/CameraDeviceException;
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask$2;

    invoke-direct {v3, p0}, Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask$2;-><init>(Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method
