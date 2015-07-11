.class Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController$ZoomCallbackTask;
.super Ljava/lang/Object;
.source "SmoothZoomController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomCallbackTask"
.end annotation


# instance fields
.field private final mCamera:Landroid/hardware/Camera;

.field private final mIsStopped:Z

.field private final mZoomValue:I

.field final synthetic this$0:Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;


# direct methods
.method public constructor <init>(Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;IZLandroid/hardware/Camera;)V
    .locals 0
    .param p2, "zoomValue"    # I
    .param p3, "isStopped"    # Z
    .param p4, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController$ZoomCallbackTask;->this$0:Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p2, p0, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController$ZoomCallbackTask;->mZoomValue:I

    .line 52
    iput-boolean p3, p0, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController$ZoomCallbackTask;->mIsStopped:Z

    .line 53
    iput-object p4, p0, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController$ZoomCallbackTask;->mCamera:Landroid/hardware/Camera;

    .line 54
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController$ZoomCallbackTask;->this$0:Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;

    # getter for: Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;->mOnZoomChangedCallback:Landroid/hardware/Camera$OnZoomChangeListener;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;->access$000(Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;)Landroid/hardware/Camera$OnZoomChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController$ZoomCallbackTask;->this$0:Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;

    # getter for: Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;->mOnZoomChangedCallback:Landroid/hardware/Camera$OnZoomChangeListener;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;->access$000(Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;)Landroid/hardware/Camera$OnZoomChangeListener;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController$ZoomCallbackTask;->mZoomValue:I

    iget-boolean v2, p0, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController$ZoomCallbackTask;->mIsStopped:Z

    iget-object v3, p0, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController$ZoomCallbackTask;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v0, v1, v2, v3}, Landroid/hardware/Camera$OnZoomChangeListener;->onZoomChange(IZLandroid/hardware/Camera;)V

    .line 61
    :cond_0
    return-void
.end method
