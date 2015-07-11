.class Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$RequestContinuousPreviewFrameCallback;
.super Ljava/lang/Object;
.source "CameraDeviceHandler.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestContinuousPreviewFrameCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)V
    .locals 0

    .prologue
    .line 3549
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$RequestContinuousPreviewFrameCallback;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;
    .param p2, "x1"    # Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$1;

    .prologue
    .line 3549
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$RequestContinuousPreviewFrameCallback;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 5
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 3554
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$RequestContinuousPreviewFrameCallback;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->access$2900(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3555
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$RequestContinuousPreviewFrameCallback;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->access$2900(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_ON_CONTINUOUS_PREVIEW_FRAME_UPDATED:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 3559
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$RequestContinuousPreviewFrameCallback;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getCameraInstance()Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->access$3200(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)Landroid/hardware/Camera;

    move-result-object v0

    .line 3560
    .local v0, "curCamera":Landroid/hardware/Camera;
    if-eqz v0, :cond_1

    .line 3561
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$RequestContinuousPreviewFrameCallback;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mRequestContinuousPreviewFrameCallback:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$RequestContinuousPreviewFrameCallback;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->access$3600(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$RequestContinuousPreviewFrameCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 3563
    :cond_1
    return-void
.end method
