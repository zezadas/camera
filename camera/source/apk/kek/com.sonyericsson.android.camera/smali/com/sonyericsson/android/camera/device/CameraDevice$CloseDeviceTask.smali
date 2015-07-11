.class Lcom/sonyericsson/android/camera/device/CameraDevice$CloseDeviceTask;
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
    name = "CloseDeviceTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDevice;)V
    .locals 0

    .prologue
    .line 3543
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$CloseDeviceTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDevice;Lcom/sonyericsson/android/camera/device/CameraDevice$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/device/CameraDevice;
    .param p2, "x1"    # Lcom/sonyericsson/android/camera/device/CameraDevice$1;

    .prologue
    .line 3543
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDevice$CloseDeviceTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDevice;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3547
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$CloseDeviceTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDevice;->mVideoDevice:Lcom/sonyericsson/android/camera/controller/VideoDevice;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->access$2100(Lcom/sonyericsson/android/camera/device/CameraDevice;)Lcom/sonyericsson/android/camera/controller/VideoDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3548
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$CloseDeviceTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDevice;->mVideoDevice:Lcom/sonyericsson/android/camera/controller/VideoDevice;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->access$2100(Lcom/sonyericsson/android/camera/device/CameraDevice;)Lcom/sonyericsson/android/camera/controller/VideoDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/VideoDevice;->awaitFinishingRecording()V

    .line 3551
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$CloseDeviceTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->restoreSettingAfterRecording()V

    .line 3553
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$CloseDeviceTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->access$1100(Lcom/sonyericsson/android/camera/device/CameraDevice;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getShutterToneGenerator()Lcom/sonyericsson/android/camera/ShutterToneGenerator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/ShutterToneGenerator;->releaseResources()V

    .line 3554
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$CloseDeviceTask;->this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;

    const/4 v1, 0x1

    # invokes: Lcom/sonyericsson/android/camera/device/CameraDevice;->close(Z)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->access$2200(Lcom/sonyericsson/android/camera/device/CameraDevice;Z)V

    .line 3556
    return-void
.end method
