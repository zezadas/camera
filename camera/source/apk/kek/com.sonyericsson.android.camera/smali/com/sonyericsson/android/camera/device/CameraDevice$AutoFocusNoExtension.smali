.class Lcom/sonyericsson/android/camera/device/CameraDevice$AutoFocusNoExtension;
.super Lcom/sonyericsson/android/camera/device/CameraDevice$AutoFocus;
.source "CameraDevice.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoFocusNoExtension"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDevice;)V
    .locals 1

    .prologue
    .line 1737
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$AutoFocusNoExtension;->this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/device/CameraDevice$AutoFocus;-><init>(Lcom/sonyericsson/android/camera/device/CameraDevice;Lcom/sonyericsson/android/camera/device/CameraDevice$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDevice;Lcom/sonyericsson/android/camera/device/CameraDevice$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/device/CameraDevice;
    .param p2, "x1"    # Lcom/sonyericsson/android/camera/device/CameraDevice$1;

    .prologue
    .line 1737
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDevice$AutoFocusNoExtension;-><init>(Lcom/sonyericsson/android/camera/device/CameraDevice;)V

    return-void
.end method

.method private autoFocus()V
    .locals 2

    .prologue
    .line 1779
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sonyericsson/android/camera/device/CameraDevice$AutoFocusNoExtension$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/device/CameraDevice$AutoFocusNoExtension$1;-><init>(Lcom/sonyericsson/android/camera/device/CameraDevice$AutoFocusNoExtension;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1786
    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 2
    .param p1, "success"    # Z
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 1799
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$AutoFocusNoExtension;->this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDevice;->mAutoFocusListener:Lcom/sonyericsson/android/camera/device/AutoFocusListener;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->access$800(Lcom/sonyericsson/android/camera/device/CameraDevice;)Lcom/sonyericsson/android/camera/device/AutoFocusListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1800
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraDevice$AutoFocusResultWrapper;

    invoke-direct {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDevice$AutoFocusResultWrapper;-><init>(Z)V

    .line 1801
    .local v0, "result":Lcom/sonyericsson/android/camera/device/AutoFocusListener$Result;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$AutoFocusNoExtension;->this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDevice;->mAutoFocusListener:Lcom/sonyericsson/android/camera/device/AutoFocusListener;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->access$800(Lcom/sonyericsson/android/camera/device/CameraDevice;)Lcom/sonyericsson/android/camera/device/AutoFocusListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sonyericsson/android/camera/device/AutoFocusListener;->onAutoFocus(Lcom/sonyericsson/android/camera/device/AutoFocusListener$Result;)V

    .line 1803
    .end local v0    # "result":Lcom/sonyericsson/android/camera/device/AutoFocusListener$Result;
    :cond_0
    return-void
.end method

.method public startAutoFocus(Lcom/sonyericsson/android/camera/device/AutoFocusListener;ZZZ)V
    .locals 4
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
    .line 1743
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$AutoFocusNoExtension;->this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDevice;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraDevice;->access$900(Lcom/sonyericsson/android/camera/device/CameraDevice;)Landroid/hardware/Camera;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1744
    # getter for: Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraDevice;->access$700()Ljava/lang/String;

    move-result-object v2

    const-string v3, "startAutoFocus: mCamera is null."

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1774
    :goto_0
    return-void

    .line 1750
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$AutoFocusNoExtension;->this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setAutoFocusListener(Lcom/sonyericsson/android/camera/device/AutoFocusListener;)V

    .line 1753
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$AutoFocusNoExtension;->this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 1754
    .local v1, "params":Landroid/hardware/Camera$Parameters;
    if-nez v1, :cond_1

    .line 1755
    # getter for: Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraDevice;->access$700()Ljava/lang/String;

    move-result-object v2

    const-string v3, "startAutoFocus: params is null."

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1758
    :cond_1
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    .line 1759
    .local v0, "focusMode":Ljava/lang/String;
    const-string v2, "continuous-video"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1760
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice$AutoFocusNoExtension;->autoFocus()V

    goto :goto_0

    .line 1761
    :cond_2
    const-string v2, "edof"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1762
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice$AutoFocusNoExtension;->autoFocus()V

    goto :goto_0

    .line 1763
    :cond_3
    const-string v2, "fixed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1764
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice$AutoFocusNoExtension;->autoFocus()V

    goto :goto_0

    .line 1765
    :cond_4
    const-string v2, "infinity"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1766
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDevice$AutoFocusNoExtension;->autoFocus()V

    goto :goto_0

    .line 1769
    :cond_5
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$AutoFocusNoExtension;->this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDevice;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/device/CameraDevice;->access$900(Lcom/sonyericsson/android/camera/device/CameraDevice;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    goto :goto_0
.end method

.method public stopAutoFocus()V
    .locals 2

    .prologue
    .line 1790
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$AutoFocusNoExtension;->this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDevice;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->access$900(Lcom/sonyericsson/android/camera/device/CameraDevice;)Landroid/hardware/Camera;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1791
    # getter for: Lcom/sonyericsson/android/camera/device/CameraDevice;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraDevice;->access$700()Ljava/lang/String;

    move-result-object v0

    const-string v1, "stopAutoFocus: mCamera is null."

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1795
    :goto_0
    return-void

    .line 1794
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDevice$AutoFocusNoExtension;->this$0:Lcom/sonyericsson/android/camera/device/CameraDevice;

    # getter for: Lcom/sonyericsson/android/camera/device/CameraDevice;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->access$900(Lcom/sonyericsson/android/camera/device/CameraDevice;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V

    goto :goto_0
.end method
