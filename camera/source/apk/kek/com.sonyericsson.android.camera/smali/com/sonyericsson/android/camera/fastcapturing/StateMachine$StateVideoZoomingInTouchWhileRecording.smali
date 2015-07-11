.class Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoZoomingInTouchWhileRecording;
.super Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoZoomingBase;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateVideoZoomingInTouchWhileRecording"
.end annotation


# instance fields
.field final mIsPaused:Z

.field mStartZoomStep:I

.field final synthetic this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Z)V
    .locals 1
    .param p2, "isPaused"    # Z

    .prologue
    .line 3878
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoZoomingInTouchWhileRecording;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoZoomingBase;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    .line 3879
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_VIDEO_ZOOMING_IN_TOUCH_WHILE_RECORDING:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoZoomingInTouchWhileRecording;->mCaptureState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    .line 3880
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoZoomingInTouchWhileRecording;->mIsPaused:Z

    .line 3881
    iget-object v0, p1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getLatestCachedParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoZoomingInTouchWhileRecording;->mStartZoomStep:I

    .line 3882
    iget-object v0, p1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getLatestCachedParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v0

    int-to-float v0, v0

    # setter for: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentZoomLength:F
    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$2502(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;F)F

    .line 3883
    return-void
.end method


# virtual methods
.method public varargs handleCancelTouchZoom([Ljava/lang/Object;)V
    .locals 3
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 3903
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoZoomingInTouchWhileRecording;->mIsPaused:Z

    if-eqz v0, :cond_0

    .line 3904
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoZoomingInTouchWhileRecording;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingPausing;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoZoomingInTouchWhileRecording;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingPausing;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    .line 3908
    :goto_0
    return-void

    .line 3906
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoZoomingInTouchWhileRecording;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecording;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoZoomingInTouchWhileRecording;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecording;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public varargs handleOnRecordingError([Ljava/lang/Object;)V
    .locals 1
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 3918
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoZoomingInTouchWhileRecording;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->doHandleRecordingError()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$5600(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    .line 3919
    return-void
.end method

.method public varargs handleScreenClear([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 3912
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoZoomingInTouchWhileRecording;->handleCaptureButtonCancel([Ljava/lang/Object;)V

    .line 3913
    return-void
.end method

.method public varargs handleStartTouchZoom([Ljava/lang/Object;)V
    .locals 3
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 3892
    const/4 v1, 0x0

    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 3893
    .local v0, "scaleLength":F
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoZoomingInTouchWhileRecording;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoZoomingInTouchWhileRecording;->mStartZoomStep:I

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->doZoom(IF)V
    invoke-static {v1, v2, v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$3900(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;IF)V

    .line 3894
    return-void
.end method

.method public varargs handleStopTouchZoom([Ljava/lang/Object;)V
    .locals 1
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 3898
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoZoomingInTouchWhileRecording;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->doStopZoom()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$3400(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    .line 3899
    return-void
.end method

.method public isRecording()Z
    .locals 1

    .prologue
    .line 3887
    const/4 v0, 0x1

    return v0
.end method
