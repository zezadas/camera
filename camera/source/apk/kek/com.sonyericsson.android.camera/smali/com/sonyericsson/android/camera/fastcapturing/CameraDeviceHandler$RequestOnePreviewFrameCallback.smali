.class Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$RequestOnePreviewFrameCallback;
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
    name = "RequestOnePreviewFrameCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)V
    .locals 0

    .prologue
    .line 3510
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$RequestOnePreviewFrameCallback;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;
    .param p2, "x1"    # Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$1;

    .prologue
    .line 3510
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$RequestOnePreviewFrameCallback;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 6
    .param p1, "yuvData"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 3514
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$RequestOnePreviewFrameCallback;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->access$2900(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$RequestOnePreviewFrameCallback;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->access$400(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3515
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 3516
    .local v0, "info":Landroid/hardware/Camera$CameraInfo;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$RequestOnePreviewFrameCallback;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCameraDeviceId:I
    invoke-static {v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->access$1900(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)I

    move-result v1

    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 3518
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$RequestOnePreviewFrameCallback;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->access$2900(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_ON_ONE_PREVIEW_FRAME_UPDATED:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$RequestOnePreviewFrameCallback;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mLatestCachedParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v5}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->access$400(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$RequestOnePreviewFrameCallback;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 3524
    .end local v0    # "info":Landroid/hardware/Camera$CameraInfo;
    :cond_0
    return-void
.end method
