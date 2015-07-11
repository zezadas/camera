.class Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$CameraErrorCallbackImpl;
.super Ljava/lang/Object;
.source "FastCapturingActivity.java"

# interfaces
.implements Landroid/hardware/Camera$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraErrorCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;)V
    .locals 0

    .prologue
    .line 1912
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$CameraErrorCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;
    .param p2, "x1"    # Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$1;

    .prologue
    .line 1912
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$CameraErrorCallbackImpl;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;)V

    return-void
.end method


# virtual methods
.method public onError(ILandroid/hardware/Camera;)V
    .locals 5
    .param p1, "code"    # I
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 1915
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$CameraErrorCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->access$500(Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;)Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1917
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$CameraErrorCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->access$500(Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;)Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->onError()V

    .line 1919
    :cond_0
    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->access$1500()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Camera error occurred. Error code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1920
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$CameraErrorCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getMessagePopup()Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    move-result-object v0

    .line 1921
    .local v0, "popup":Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
    if-eqz v0, :cond_1

    .line 1922
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$CameraErrorCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getMessagePopup()Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    move-result-object v1

    const v2, 0x7f090070

    const v3, 0x7f090092

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showErrorUncancelable(IIZ)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 1927
    :cond_1
    return-void
.end method
