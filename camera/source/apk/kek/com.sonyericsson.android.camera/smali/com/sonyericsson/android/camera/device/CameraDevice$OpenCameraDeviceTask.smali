.class Lcom/sonyericsson/android/camera/device/CameraDevice$OpenCameraDeviceTask;
.super Ljava/lang/Object;
.source "CameraDevice.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpenCameraDeviceTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Landroid/hardware/Camera;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCameraId:I

.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDevice;I)V
    .locals 0
    .param p2, "cameraId"    # I

    .prologue
    .line 2835
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$OpenCameraDeviceTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2836
    iput p2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$OpenCameraDeviceTask;->mCameraId:I

    .line 2837
    return-void
.end method


# virtual methods
.method public call()Landroid/hardware/Camera;
    .locals 3

    .prologue
    .line 2841
    sget-object v1, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->OPEN_CAMERA_DEVICE_TASK:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V

    .line 2846
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$OpenCameraDeviceTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;

    iget v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$OpenCameraDeviceTask;->mCameraId:I

    # invokes: Lcom/sonyericsson/android/camera/device/CameraDevice;->openCameraDeviceWithRetry(I)Z
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDevice;->access$1500(Lcom/sonyericsson/android/camera/device/CameraDevice;I)Z

    move-result v0

    .line 2850
    .local v0, "isSuccess":Z
    sget-object v1, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->OPEN_CAMERA_DEVICE_TASK:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V

    .line 2853
    if-eqz v0, :cond_0

    .line 2855
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$OpenCameraDeviceTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;

    iget v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$OpenCameraDeviceTask;->mCameraId:I

    # invokes: Lcom/sonyericsson/android/camera/device/CameraDevice;->setOpenTaskTargetCameraId(I)V
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDevice;->access$1600(Lcom/sonyericsson/android/camera/device/CameraDevice;I)V

    .line 2856
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$OpenCameraDeviceTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDevice;->mCamera:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->access$900(Lcom/sonyericsson/android/camera/device/CameraDevice;)Landroid/hardware/Camera;

    move-result-object v1

    .line 2860
    :goto_0
    return-object v1

    .line 2859
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$OpenCameraDeviceTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;

    const/4 v2, -0x2

    # invokes: Lcom/sonyericsson/android/camera/device/CameraDevice;->setOpenTaskTargetCameraId(I)V
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDevice;->access$1600(Lcom/sonyericsson/android/camera/device/CameraDevice;I)V

    .line 2860
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2832
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice$OpenCameraDeviceTask;->call()Landroid/hardware/Camera;

    move-result-object v0

    return-object v0
.end method
