.class Lcom/sonyericsson/android/camera/device/CameraDevice$AutoFocusExtension;
.super Lcom/sonyericsson/android/camera/device/CameraDevice$AutoFocus;
.source "CameraDevice.java"

# interfaces
.implements Lcom/sonyericsson/cameraextension/CameraExtension$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoFocusExtension"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDevice;)V
    .locals 1

    .prologue
    .line 1692
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$AutoFocusExtension;->this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/device/CameraDevice$AutoFocus;-><init>(Lcom/sonyericsson/android/camera/device/CameraDevice;Lcom/sonyericsson/android/camera/device/CameraDevice$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDevice;Lcom/sonyericsson/android/camera/device/CameraDevice$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/device/CameraDevice;
    .param p2, "x1"    # Lcom/sonyericsson/android/camera/device/CameraDevice$1;

    .prologue
    .line 1692
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDevice$AutoFocusExtension;-><init>(Lcom/sonyericsson/android/camera/device/CameraDevice;)V

    return-void
.end method


# virtual methods
.method public onAutoFocus(Lcom/sonyericsson/cameraextension/CameraExtension$AutoFocusResult;)V
    .locals 2
    .param p1, "autoFocusResult"    # Lcom/sonyericsson/cameraextension/CameraExtension$AutoFocusResult;

    .prologue
    .line 1730
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$AutoFocusExtension;->this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDevice;->mAutoFocusListener:Lcom/sonyericsson/android/camera/device/AutoFocusListener;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->access$800(Lcom/sonyericsson/android/camera/device/CameraDevice;)Lcom/sonyericsson/android/camera/device/AutoFocusListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1731
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraDevice$AutoFocusResultWrapper;

    invoke-direct {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDevice$AutoFocusResultWrapper;-><init>(Lcom/sonyericsson/cameraextension/CameraExtension$AutoFocusResult;)V

    .line 1732
    .local v0, "result":Lcom/sonyericsson/android/camera/device/AutoFocusListener$Result;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$AutoFocusExtension;->this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDevice;->mAutoFocusListener:Lcom/sonyericsson/android/camera/device/AutoFocusListener;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->access$800(Lcom/sonyericsson/android/camera/device/CameraDevice;)Lcom/sonyericsson/android/camera/device/AutoFocusListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sonyericsson/android/camera/device/AutoFocusListener;->onAutoFocus(Lcom/sonyericsson/android/camera/device/AutoFocusListener$Result;)V

    .line 1734
    .end local v0    # "result":Lcom/sonyericsson/android/camera/device/AutoFocusListener$Result;
    :cond_0
    return-void
.end method

.method public startAutoFocus(Lcom/sonyericsson/android/camera/device/AutoFocusListener;ZZZ)V
    .locals 2
    .param p1, "listener"    # Lcom/sonyericsson/android/camera/device/AutoFocusListener;
    .param p2, "aeLock"    # Z
    .param p3, "awbLock"    # Z
    .param p4, "focusLock"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1699
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$AutoFocusExtension;->this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->access$600(Lcom/sonyericsson/android/camera/device/CameraDevice;)Lcom/sonyericsson/cameraextension/CameraExtension;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1700
    # getter for: Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraDevice;->access$700()Ljava/lang/String;

    move-result-object v0

    const-string v1, "startAutoFocus: mCameraExtension is null."

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    :goto_0
    return-void

    .line 1707
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$AutoFocusExtension;->this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setAutoFocusListener(Lcom/sonyericsson/android/camera/device/AutoFocusListener;)V

    .line 1708
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$AutoFocusExtension;->this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->access$600(Lcom/sonyericsson/android/camera/device/CameraDevice;)Lcom/sonyericsson/cameraextension/CameraExtension;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameraextension/CameraExtension;->setFaceDetectionCallback(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionCallback;)V

    .line 1709
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$AutoFocusExtension;->this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->access$600(Lcom/sonyericsson/android/camera/device/CameraDevice;)Lcom/sonyericsson/cameraextension/CameraExtension;

    move-result-object v0

    invoke-virtual {v0, p0, p2, p3, p4}, Lcom/sonyericsson/cameraextension/CameraExtension;->startAutoFocus(Lcom/sonyericsson/cameraextension/CameraExtension$AutoFocusCallback;ZZZ)V

    goto :goto_0
.end method

.method public stopAutoFocus()V
    .locals 2

    .prologue
    .line 1720
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$AutoFocusExtension;->this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->access$600(Lcom/sonyericsson/android/camera/device/CameraDevice;)Lcom/sonyericsson/cameraextension/CameraExtension;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1721
    # getter for: Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraDevice;->access$700()Ljava/lang/String;

    move-result-object v0

    const-string v1, "stopAutoFocus: mCameraExtension is null."

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1726
    :goto_0
    return-void

    .line 1724
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$AutoFocusExtension;->this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->access$600(Lcom/sonyericsson/android/camera/device/CameraDevice;)Lcom/sonyericsson/cameraextension/CameraExtension;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameraextension/CameraExtension;->setFaceDetectionCallback(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionCallback;)V

    .line 1725
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$AutoFocusExtension;->this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDevice;->mCameraExtension:Lcom/sonyericsson/cameraextension/CameraExtension;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->access$600(Lcom/sonyericsson/android/camera/device/CameraDevice;)Lcom/sonyericsson/cameraextension/CameraExtension;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameraextension/CameraExtension;->stopAutoFocus()V

    goto :goto_0
.end method
