.class Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask$1;
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
    .line 3277
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask$1;->this$1:Lcom/sonyericsson/android/camera/device/CameraDevice$SetupCameraDeviceTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 3280
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_CAMERA_SETUP_FINISHED:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->postEmptyEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;)V

    .line 3281
    return-void
.end method
