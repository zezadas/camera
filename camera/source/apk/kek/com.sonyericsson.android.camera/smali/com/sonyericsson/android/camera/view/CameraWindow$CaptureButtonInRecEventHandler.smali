.class Lcom/sonyericsson/android/camera/view/CameraWindow$CaptureButtonInRecEventHandler;
.super Lcom/sonyericsson/android/camera/view/onscreenbutton/CaptureButtonEventHandler;
.source "CameraWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/CameraWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaptureButtonInRecEventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/CameraWindow;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/view/CameraWindow;ILcom/sonyericsson/android/camera/view/settings/SettingController;Lcom/sonyericsson/android/camera/ControllerManager;)V
    .locals 0
    .param p2, "type"    # I
    .param p3, "view"    # Lcom/sonyericsson/android/camera/view/settings/SettingController;
    .param p4, "controller"    # Lcom/sonyericsson/android/camera/ControllerManager;

    .prologue
    .line 510
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/CameraWindow$CaptureButtonInRecEventHandler;->this$0:Lcom/sonyericsson/android/camera/view/CameraWindow;

    .line 511
    invoke-direct {p0, p2, p3, p4}, Lcom/sonyericsson/android/camera/view/onscreenbutton/CaptureButtonEventHandler;-><init>(ILcom/sonyericsson/android/camera/view/settings/SettingController;Lcom/sonyericsson/android/camera/ControllerManager;)V

    .line 512
    return-void
.end method


# virtual methods
.method public onUp(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "sender"    # Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 516
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindow$CaptureButtonInRecEventHandler;->this$0:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getCameraActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/onscreenbutton/CaptureButtonEventHandler;->onUp(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;Landroid/view/MotionEvent;)V

    .line 519
    :cond_0
    return-void
.end method
