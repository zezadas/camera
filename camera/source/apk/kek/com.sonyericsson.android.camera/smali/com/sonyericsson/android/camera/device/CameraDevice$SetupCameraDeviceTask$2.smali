.class Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask$2;
.super Ljava/lang/Object;
.source "CameraDevice.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask;)V
    .locals 0

    .prologue
    .line 3284
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask$2;->this$1:Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3287
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_DEVICE_ERROR:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    const/16 v1, 0x64

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask$2;->this$1:Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDevice;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraDevice;->access$900(Lcom/sonyericsson/android/camera/device/CameraDevice;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/Executor;->postEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;ILjava/lang/Object;)V

    .line 3289
    return-void
.end method
