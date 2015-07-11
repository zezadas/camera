.class Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoCaptureWhileRecording;
.super Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateVideoCaptureWhileRecording"
.end annotation


# instance fields
.field private final mIsPaused:Z

.field private mIsReturnToVideoRecordingRequired:Z

.field final synthetic this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Z)V
    .locals 1
    .param p2, "isPaused"    # Z

    .prologue
    .line 3732
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    .line 3729
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoCaptureWhileRecording;->mIsReturnToVideoRecordingRequired:Z

    .line 3733
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_VIDEO_CAPTURE_WHILE_RECORDING:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoCaptureWhileRecording;->mCaptureState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    .line 3734
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoCaptureWhileRecording;->mIsPaused:Z

    .line 3735
    return-void
.end method


# virtual methods
.method public varargs handleOnOnePreviewFrameUpdated([Ljava/lang/Object;)V
    .locals 5
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 3817
    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    new-instance v4, Lcom/sonyericsson/android/camera/fastcapturing/ChapterThumbnail;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, [B

    check-cast v0, [B

    const/4 v1, 0x1

    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v2, 0x2

    aget-object v2, p1, v2

    check-cast v2, Landroid/graphics/Rect;

    invoke-direct {v4, v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/ChapterThumbnail;-><init>([BLjava/lang/Integer;Landroid/graphics/Rect;)V

    # setter for: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mChapterThumbnail:Lcom/sonyericsson/android/camera/fastcapturing/ChapterThumbnail;
    invoke-static {v3, v4}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$5002(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/ChapterThumbnail;)Lcom/sonyericsson/android/camera/fastcapturing/ChapterThumbnail;

    .line 3821
    return-void
.end method

.method public varargs handleOnRecordingError([Ljava/lang/Object;)V
    .locals 1
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 3778
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->doHandleRecordingError()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$5600(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    .line 3779
    return-void
.end method

.method public varargs handleOnShutterDone([Ljava/lang/Object;)V
    .locals 3
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 3803
    const/4 v1, 0x0

    aget-object v0, p1, v1

    check-cast v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    .line 3804
    .local v0, "savingRequest":Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    monitor-enter p0

    .line 3805
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$4200(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3807
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$4200(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->setClickThumbnailProgressListener(Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$OnClickThumbnailProgressListener;)V

    .line 3808
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$4200(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->createClearContentFrame()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->setRequestId(I)V

    .line 3812
    :goto_0
    monitor-exit p0

    .line 3813
    return-void

    .line 3810
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->setRequestId(I)V

    goto :goto_0

    .line 3812
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public varargs handleOnStoreRequested([Ljava/lang/Object;)V
    .locals 4
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 3765
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoCaptureWhileRecording;->mIsPaused:Z

    if-eqz v0, :cond_1

    .line 3766
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingPausing;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingPausing;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    .line 3770
    :goto_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoCaptureWhileRecording;->mIsReturnToVideoRecordingRequired:Z

    if-eqz v0, :cond_0

    .line 3771
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->doStopRecording()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$5100(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    .line 3773
    :cond_0
    return-void

    .line 3768
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecording;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-boolean v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoCaptureWhileRecording;->mIsReturnToVideoRecordingRequired:Z

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecording;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Z)V

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public varargs handleOnTakePictureDone([Ljava/lang/Object;)V
    .locals 9
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3745
    aget-object v0, p1, v7

    check-cast v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    .line 3748
    .local v0, "request":Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->requestStorePicture(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)V
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$4100(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)V

    .line 3752
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    sget-object v2, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_REQUEST_SET_EARLY_THUMBNAIL:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v4, v4, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->getImageData()[B

    move-result-object v5

    iget-object v6, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v6, v6, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->orientation:I

    invoke-static {v4, v5, v6}, Lcom/sonyericsson/cameracommon/contentsview/ThumbnailUtil;->createThumbnailViewFromJpeg(Landroid/app/Activity;[BI)Landroid/widget/RelativeLayout;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-interface {v1, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 3758
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    sget-object v2, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_REQUEST_EARLY_THUMBNAIL_INSERT_ANIMATION:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->getRequestId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-interface {v1, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 3761
    return-void
.end method

.method public varargs handleOnVideoRecordingDone([Ljava/lang/Object;)V
    .locals 4
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 3831
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    new-instance v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoStore;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoStore;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v1, v2, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    .line 3834
    const/4 v1, 0x0

    aget-object v0, p1, v1

    check-cast v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;

    .line 3837
    .local v0, "request":Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->requestStoreVideo(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;)V
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$5200(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;)V

    .line 3838
    return-void
.end method

.method public varargs handlePause([Ljava/lang/Object;)V
    .locals 3
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 3787
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->doStopRecording()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$5100(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    .line 3789
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->finalizeRecording()V

    .line 3791
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePause;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePause;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    .line 3792
    return-void
.end method

.method public varargs handleStorageError([Ljava/lang/Object;)V
    .locals 1
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 3825
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoCaptureWhileRecording;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->doStopRecording()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$5100(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    .line 3826
    return-void
.end method

.method public varargs handleSubCamcordButtonRelease([Ljava/lang/Object;)V
    .locals 1
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 3796
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoCaptureWhileRecording;->mIsReturnToVideoRecordingRequired:Z

    .line 3797
    return-void
.end method

.method public isRecording()Z
    .locals 1

    .prologue
    .line 3739
    const/4 v0, 0x1

    return v0
.end method
