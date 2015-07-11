.class final Lcom/sonyericsson/android/camera/device/CameraDevice$JpegCallback;
.super Ljava/lang/Object;
.source "CameraDevice.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "JpegCallback"
.end annotation


# instance fields
.field private final mClientJpegCallback:Landroid/hardware/Camera$PictureCallback;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDevice;Landroid/hardware/Camera$PictureCallback;)V
    .locals 0
    .param p2, "jpeg"    # Landroid/hardware/Camera$PictureCallback;

    .prologue
    .line 1856
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$JpegCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1857
    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$JpegCallback;->mClientJpegCallback:Landroid/hardware/Camera$PictureCallback;

    .line 1858
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDevice;Landroid/hardware/Camera$PictureCallback;Lcom/sonyericsson/android/camera/device/CameraDevice$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/device/CameraDevice;
    .param p2, "x1"    # Landroid/hardware/Camera$PictureCallback;
    .param p3, "x2"    # Lcom/sonyericsson/android/camera/device/CameraDevice$1;

    .prologue
    .line 1852
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraDevice$JpegCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraDevice;Landroid/hardware/Camera$PictureCallback;)V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v1, 0x0

    .line 1873
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->STOT_TO_ON_PICT_TAKEN:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V

    .line 1874
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->STOT_TO_SHOT:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V

    .line 1875
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->outResult()V

    .line 1876
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->STOT_TO_SHOT:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V

    .line 1880
    invoke-static {}, Lcom/sonymobile/cameracommon/testevent/TestEventSender;->onPictureTaken()V

    .line 1882
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$JpegCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;

    monitor-enter v1

    .line 1883
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$JpegCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;

    const/4 v2, 0x0

    # setter for: Lcom/sonyericsson/android/camera/device/CameraDevice;->mIsCapturing:Z
    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/device/CameraDevice;->access$1002(Lcom/sonyericsson/android/camera/device/CameraDevice;Z)Z

    .line 1884
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1886
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$JpegCallback;->mClientJpegCallback:Landroid/hardware/Camera$PictureCallback;

    invoke-interface {v0, p1, p2}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    .line 1890
    new-instance v1, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$JpegCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->access$1100(Lcom/sonyericsson/android/camera/device/CameraDevice;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$JpegCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraId:I
    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraDevice;->access$1200(Lcom/sonyericsson/android/camera/device/CameraDevice;)I

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;I)V

    new-instance v2, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus;

    invoke-static {}, Lcom/sonyericsson/android/camera/controller/Executor;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;->VIDEO_RECORDING:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    :goto_0
    invoke-direct {v2, v0}, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;)V

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    .line 1894
    sget-boolean v0, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->isUserdebugOrEngBuild:Z

    if-eqz v0, :cond_0

    .line 1895
    # getter for: Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraDevice;->access$700()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JpegCallback.onPictureTaken out"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 1897
    :cond_0
    return-void

    .line 1884
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1890
    :cond_1
    sget-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;->STILL_PREVIEW:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    goto :goto_0
.end method
