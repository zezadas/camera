.class Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingStarting;
.super Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoBase;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateVideoRecordingStarting"
.end annotation


# instance fields
.field private mIsImmediatelyRecordingPauseRequired:Z

.field private mIsImmediatelyRecordingStopRequired:Z

.field private mShouldRequestChapterThumbnail:Z

.field final synthetic this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Z)V
    .locals 4
    .param p2, "quickLaunch"    # Z

    .prologue
    const/4 v0, 0x0

    .line 3300
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingStarting;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoBase;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    .line 3294
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingStarting;->mIsImmediatelyRecordingStopRequired:Z

    .line 3295
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingStarting;->mIsImmediatelyRecordingPauseRequired:Z

    .line 3301
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_VIDEO_RECORDING_STARTING:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingStarting;->mCaptureState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    .line 3302
    const/4 v0, 0x1

    # setter for: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mIsInModeLessRecording:Z
    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$5302(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Z)Z

    .line 3303
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/ClassDefinitionChecker;->isMediaRecorderPauseAndResumeSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingStarting;->mShouldRequestChapterThumbnail:Z

    .line 3305
    iget-object v0, p1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    if-eqz v0, :cond_0

    .line 3307
    iget-object v0, p1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->disableAutoOffTimer()V

    .line 3310
    :cond_0
    const/4 v0, 0x0

    # setter for: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mChapterThumbnail:Lcom/sonyericsson/android/camera/fastcapturing/ChapterThumbnail;
    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$5002(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/ChapterThumbnail;)Lcom/sonyericsson/android/camera/fastcapturing/ChapterThumbnail;

    .line 3311
    if-nez p2, :cond_1

    .line 3312
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingStarting;->mShouldRequestChapterThumbnail:Z

    if-eqz v0, :cond_1

    .line 3313
    iget-object v0, p1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->requestOnePreviewFrame()V

    .line 3318
    :cond_1
    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$700(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingStarting$1;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingStarting$1;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingStarting;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    const-wide/16 v2, 0x640

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3324
    return-void
.end method

.method private isPaused()Z
    .locals 1

    .prologue
    .line 3327
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public varargs handleCamcordButtonRelease([Ljava/lang/Object;)V
    .locals 1
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 3364
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingStarting;->mIsImmediatelyRecordingPauseRequired:Z

    .line 3365
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingStarting;->mIsImmediatelyRecordingStopRequired:Z

    .line 3366
    return-void
.end method

.method public varargs handleCaptureButtonRelease([Ljava/lang/Object;)V
    .locals 4
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 3458
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingStarting;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-eq v0, v1, :cond_0

    .line 3459
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingStarting;->mIsImmediatelyRecordingStopRequired:Z

    if-nez v0, :cond_0

    .line 3461
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingStarting;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoCaptureWhileRecording;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingStarting;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingStarting;->isPaused()Z

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoCaptureWhileRecording;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Z)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    .line 3464
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingStarting;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->doCaptureWhileRecording()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$5400(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    .line 3467
    :cond_0
    return-void
.end method

.method public varargs handleKeyBack([Ljava/lang/Object;)V
    .locals 1
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 3346
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingStarting;->mIsImmediatelyRecordingStopRequired:Z

    .line 3347
    return-void
.end method

.method public varargs handleKeyCaptureDown([Ljava/lang/Object;)V
    .locals 4
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 3351
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingStarting;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->isInModeLessRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3353
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingStarting;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoCaptureWhileRecording;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingStarting;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingStarting;->isPaused()Z

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoCaptureWhileRecording;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Z)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    .line 3356
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingStarting;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->doCaptureWhileRecording()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$5400(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    .line 3360
    :goto_0
    return-void

    .line 3358
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingStarting;->mIsImmediatelyRecordingStopRequired:Z

    goto :goto_0
.end method

.method public varargs handleOnFaceDetected([Ljava/lang/Object;)V
    .locals 5
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 3420
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingStarting;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_ON_FACE_DETECTED:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aget-object v3, p1, v4

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 3423
    return-void
.end method

.method public varargs handleOnObjectTracked([Ljava/lang/Object;)V
    .locals 5
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 3432
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingStarting;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_ON_TRACKED_OBJECT_STATE_UPDATED:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aget-object v3, p1, v4

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 3435
    return-void
.end method

.method public varargs handleOnOnePreviewFrameUpdated([Ljava/lang/Object;)V
    .locals 1
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 3471
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoBase;->handleOnOnePreviewFrameUpdated([Ljava/lang/Object;)V

    .line 3472
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingStarting;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendVideoChapterThumbnailToViewFinder()V

    .line 3473
    return-void
.end method

.method public varargs handleOnRecordingError([Ljava/lang/Object;)V
    .locals 1
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 3453
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingStarting;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->doHandleRecordingError()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$5600(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    .line 3454
    return-void
.end method

.method public varargs handleOnRecordingStartWaitDone([Ljava/lang/Object;)V
    .locals 4
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 3376
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingStarting;->mIsImmediatelyRecordingStopRequired:Z

    if-eqz v0, :cond_0

    .line 3377
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingStarting;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecording;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingStarting;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecording;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Z)V

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    .line 3379
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingStarting;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->doStopRecording()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$5100(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    .line 3393
    :goto_0
    return-void

    .line 3385
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingStarting;->mIsImmediatelyRecordingPauseRequired:Z

    if-eqz v0, :cond_1

    .line 3387
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingStarting;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->doPauseRecording()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$5500(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    .line 3388
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingStarting;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingPausing;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingStarting;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingPausing;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_0

    .line 3392
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingStarting;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecording;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingStarting;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecording;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public varargs handleOnSceneModeChanged([Ljava/lang/Object;)V
    .locals 5
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 3411
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingStarting;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_ON_DETECTED_SCENE_CHANGED:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aget-object v3, p1, v4

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 3414
    return-void
.end method

.method public varargs handleOnVideoRecordingDone([Ljava/lang/Object;)V
    .locals 4
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 3398
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingStarting;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    new-instance v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoStore;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingStarting;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoStore;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v1, v2, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    .line 3401
    const/4 v1, 0x0

    aget-object v0, p1, v1

    check-cast v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;

    .line 3404
    .local v0, "request":Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingStarting;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->requestStoreVideo(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;)V
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$5200(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;)V

    .line 3405
    return-void
.end method

.method public varargs handlePause([Ljava/lang/Object;)V
    .locals 3
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 3443
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingStarting;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->doStopRecording()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$5100(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    .line 3445
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingStarting;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->finalizeRecording()V

    .line 3447
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingStarting;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePause;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingStarting;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePause;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    .line 3448
    return-void
.end method

.method public varargs handleRequestSetupHeadUpDisplay([Ljava/lang/Object;)V
    .locals 5
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 3338
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingStarting;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_REQUEST_SETUP_HEAD_UP_DISPLAY:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;->VIDEO_RECORDING:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 3341
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingStarting;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendVideoChapterThumbnailToViewFinder()V

    .line 3342
    return-void
.end method

.method public varargs handleSubCamcordButtonRelease([Ljava/lang/Object;)V
    .locals 1
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 3370
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingStarting;->mIsImmediatelyRecordingStopRequired:Z

    .line 3371
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingStarting;->mIsImmediatelyRecordingPauseRequired:Z

    .line 3372
    return-void
.end method

.method public isRecording()Z
    .locals 1

    .prologue
    .line 3332
    const/4 v0, 0x1

    return v0
.end method
