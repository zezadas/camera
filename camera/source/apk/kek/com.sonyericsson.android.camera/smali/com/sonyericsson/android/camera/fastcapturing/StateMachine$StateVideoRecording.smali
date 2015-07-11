.class Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecording;
.super Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoBase;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateVideoRecording"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StateMachine.StateVideoRecording"


# instance fields
.field private mAlreadyRequestStop:Z

.field final synthetic this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V
    .locals 1

    .prologue
    .line 3482
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoBase;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    .line 3479
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecording;->mAlreadyRequestStop:Z

    .line 3483
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_VIDEO_RECORDING:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecording;->mCaptureState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    .line 3484
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendVideoChapterThumbnailToViewFinder()V

    .line 3485
    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Z)V
    .locals 1
    .param p2, "isStopRequested"    # Z

    .prologue
    .line 3487
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoBase;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    .line 3479
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecording;->mAlreadyRequestStop:Z

    .line 3488
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_VIDEO_RECORDING:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecording;->mCaptureState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    .line 3489
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendVideoChapterThumbnailToViewFinder()V

    .line 3490
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecording;->mAlreadyRequestStop:Z

    .line 3491
    return-void
.end method


# virtual methods
.method public varargs handleCamcordButtonRelease([Ljava/lang/Object;)V
    .locals 1
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 3596
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecording;->mAlreadyRequestStop:Z

    .line 3597
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->doPauseRecording()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$5500(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    .line 3598
    return-void
.end method

.method public varargs handleCaptureButtonRelease([Ljava/lang/Object;)V
    .locals 5
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 3602
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecording;->mAlreadyRequestStop:Z

    if-eqz v0, :cond_1

    .line 3619
    :cond_0
    :goto_0
    return-void

    .line 3607
    :cond_1
    aget-object v0, p1, v4

    sget-object v1, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->TOUCH_FACE:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    if-eq v0, v1, :cond_0

    .line 3610
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-eq v0, v1, :cond_0

    .line 3612
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoCaptureWhileRecording;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecording;->isPaused()Z

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoCaptureWhileRecording;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Z)V

    new-array v2, v4, [Ljava/lang/Object;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    .line 3615
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecording;->mAlreadyRequestStop:Z

    .line 3616
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->doCaptureWhileRecording()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$5400(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    goto :goto_0
.end method

.method public varargs handleChangeSelectedFace([Ljava/lang/Object;)V
    .locals 2
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 3654
    const/4 v1, 0x0

    aget-object v0, p1, v1

    check-cast v0, Landroid/graphics/Point;

    .line 3657
    .local v0, "point":Landroid/graphics/Point;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->doChangeSelectedFace(Landroid/graphics/Point;)V
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$2200(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Landroid/graphics/Point;)V

    .line 3658
    return-void
.end method

.method public varargs handleDeselectObjectPosition([Ljava/lang/Object;)V
    .locals 1
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 3685
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->doDeselectObject()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$2400(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    .line 3686
    return-void
.end method

.method public varargs handleKeyBack([Ljava/lang/Object;)V
    .locals 1
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 3588
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecording;->mAlreadyRequestStop:Z

    .line 3589
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->doStopRecording()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$5100(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    .line 3592
    return-void
.end method

.method public varargs handleKeyCaptureDown([Ljava/lang/Object;)V
    .locals 4
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 3569
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecording;->mAlreadyRequestStop:Z

    if-eqz v0, :cond_0

    .line 3584
    :goto_0
    return-void

    .line 3573
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->isInModeLessRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3575
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoCaptureWhileRecording;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecording;->isPaused()Z

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoCaptureWhileRecording;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Z)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    .line 3578
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->doCaptureWhileRecording()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$5400(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    goto :goto_0

    .line 3580
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->doStopRecording()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$5100(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    goto :goto_0
.end method

.method public varargs handleKeyZoomInDown([Ljava/lang/Object;)V
    .locals 5
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 3513
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecording;->mAlreadyRequestStop:Z

    if-eqz v1, :cond_1

    .line 3530
    :cond_0
    :goto_0
    return-void

    .line 3517
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getLatestCachedParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 3518
    .local v0, "params":Landroid/hardware/Camera$Parameters;
    if-eqz v0, :cond_0

    .line 3523
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->isSmoothZoomEnabled()Z
    invoke-static {v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$1600(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3524
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    new-instance v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoZoomingWhileRecording;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecording;->isPaused()Z

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoZoomingWhileRecording;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Z)V

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v1, v2, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    .line 3525
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->doZoomIn()V
    invoke-static {v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$1800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    goto :goto_0
.end method

.method public varargs handleKeyZoomOutDown([Ljava/lang/Object;)V
    .locals 5
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 3534
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecording;->mAlreadyRequestStop:Z

    if-eqz v1, :cond_1

    .line 3551
    :cond_0
    :goto_0
    return-void

    .line 3538
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getLatestCachedParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 3539
    .local v0, "params":Landroid/hardware/Camera$Parameters;
    if-eqz v0, :cond_0

    .line 3544
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->isSmoothZoomEnabled()Z
    invoke-static {v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$1600(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3545
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    new-instance v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoZoomingWhileRecording;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecording;->isPaused()Z

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoZoomingWhileRecording;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Z)V

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v1, v2, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    .line 3546
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->doZoomOut()V
    invoke-static {v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$1900(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    goto :goto_0
.end method

.method public varargs handleOnFaceDetected([Ljava/lang/Object;)V
    .locals 5
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 3646
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_ON_FACE_DETECTED:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aget-object v3, p1, v4

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 3649
    return-void
.end method

.method public varargs handleOnObjectTracked([Ljava/lang/Object;)V
    .locals 5
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 3667
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_ON_TRACKED_OBJECT_STATE_UPDATED:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aget-object v3, p1, v4

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 3670
    return-void
.end method

.method public varargs handleOnOnePreviewFrameUpdated([Ljava/lang/Object;)V
    .locals 1
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 3722
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoBase;->handleOnOnePreviewFrameUpdated([Ljava/lang/Object;)V

    .line 3723
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendVideoChapterThumbnailToViewFinder()V

    .line 3724
    return-void
.end method

.method public varargs handleOnRecordingError([Ljava/lang/Object;)V
    .locals 1
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 3705
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->doHandleRecordingError()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$5600(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    .line 3706
    return-void
.end method

.method public varargs handleOnSceneModeChanged([Ljava/lang/Object;)V
    .locals 5
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 3637
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_ON_DETECTED_SCENE_CHANGED:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aget-object v3, p1, v4

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 3640
    return-void
.end method

.method public varargs handleOnVideoRecordingDone([Ljava/lang/Object;)V
    .locals 4
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 3624
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    new-instance v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoStore;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoStore;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v1, v2, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    .line 3627
    const/4 v1, 0x0

    aget-object v0, p1, v1

    check-cast v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;

    .line 3630
    .local v0, "request":Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->requestStoreVideo(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;)V
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$5200(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;)V

    .line 3631
    return-void
.end method

.method public varargs handlePause([Ljava/lang/Object;)V
    .locals 3
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 3694
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecording;->mAlreadyRequestStop:Z

    .line 3695
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->doStopRecording()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$5100(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    .line 3697
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->finalizeRecording()V

    .line 3699
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePause;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePause;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    .line 3700
    return-void
.end method

.method public varargs handlePrepareTouchZoom([Ljava/lang/Object;)V
    .locals 4
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 3555
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecording;->mAlreadyRequestStop:Z

    if-eqz v0, :cond_1

    .line 3565
    :cond_0
    :goto_0
    return-void

    .line 3559
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->isSmoothZoomEnabled()Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$1600(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3560
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoZoomingInTouchWhileRecording;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecording;->isPaused()Z

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoZoomingInTouchWhileRecording;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Z)V

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public varargs handleRequestSetupHeadUpDisplay([Ljava/lang/Object;)V
    .locals 5
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 3505
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_REQUEST_SETUP_HEAD_UP_DISPLAY:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;->VIDEO_RECORDING:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 3508
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendVideoChapterThumbnailToViewFinder()V

    .line 3509
    return-void
.end method

.method public varargs handleSetSelectedObjectPosition([Ljava/lang/Object;)V
    .locals 2
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 3676
    const/4 v1, 0x1

    aget-object v0, p1, v1

    check-cast v0, Landroid/graphics/PointF;

    .line 3679
    .local v0, "pointF":Landroid/graphics/PointF;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->doSelectObject(Landroid/graphics/PointF;)V
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$2300(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Landroid/graphics/PointF;)V

    .line 3680
    return-void
.end method

.method public varargs handleStorageError([Ljava/lang/Object;)V
    .locals 1
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 3710
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecording;->mAlreadyRequestStop:Z

    .line 3711
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->doStopRecording()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$5100(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    .line 3712
    return-void
.end method

.method public varargs handleSubCamcordButtonRelease([Ljava/lang/Object;)V
    .locals 1
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 3716
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecording;->mAlreadyRequestStop:Z

    .line 3717
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecording;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->doStopRecording()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$5100(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    .line 3718
    return-void
.end method

.method protected isPaused()Z
    .locals 1

    .prologue
    .line 3494
    const/4 v0, 0x0

    return v0
.end method

.method public isRecording()Z
    .locals 1

    .prologue
    .line 3499
    const/4 v0, 0x1

    return v0
.end method
