.class Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingManual;
.super Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractPreviewing;
.source "StateTransitionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateTransitionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecordingManual"
.end annotation


# instance fields
.field protected mStateCapturing:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/sonyericsson/android/camera/controller/State;",
            ">;"
        }
    .end annotation
.end field

.field protected mStopRecCalled:Z

.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;)V
    .locals 1

    .prologue
    .line 1941
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingManual;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractPreviewing;-><init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;)V

    .line 1945
    const-class v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$CapturingInManualRecording;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingManual;->mStateCapturing:Ljava/lang/Class;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/controller/StateTransitionController;
    .param p2, "x1"    # Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;

    .prologue
    .line 1941
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingManual;-><init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;)V

    return-void
.end method


# virtual methods
.method public emergencyExit(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 1
    .param p1, "cause"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 1957
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractPreviewing;->emergencyExit(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    .line 1958
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingManual;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->stopRecordingUrgently(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    .line 1959
    return-void
.end method

.method public entry()V
    .locals 1

    .prologue
    .line 1950
    invoke-super {p0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractPreviewing;->entry()V

    .line 1951
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingManual;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->hideThumbnailWhileRecording()V

    .line 1952
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingManual;->mStopRecCalled:Z

    .line 1953
    return-void
.end method

.method public handleAudioResourceError(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 7
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    const/4 v5, 0x0

    .line 2111
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingManual;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getMessagePopup()Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    move-result-object v0

    const v1, 0x7f090185

    const v2, 0x7f090092

    const/4 v3, 0x0

    const v4, 0x7f0900ad

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showOk(IIZILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 2118
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingManual;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->getViewFinderState()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->setState(Ljava/lang/Class;)V

    .line 2119
    return-void
.end method

.method public handleCapture(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 3
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 1968
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingManual;->mStopRecCalled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingManual;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mVideoDevice:Lcom/sonyericsson/android/camera/controller/VideoDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/VideoDevice;->isRecording()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1991
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1971
    :cond_1
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;->$SwitchMap$com$sonyericsson$android$camera$controller$ControllerEventSource:[I

    iget-object v1, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mSource:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1987
    :pswitch_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingManual;->mStopRecCalled:Z

    .line 1988
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingManual;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->stopRec(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    goto :goto_0

    .line 1973
    :pswitch_2
    const-class v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$CapturingInManualRecording;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->setState(Ljava/lang/Class;)V

    .line 1974
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingManual;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mShooting:Lcom/sonyericsson/android/camera/controller/Shooting;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingManual;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;->PHOTO_DURING_REC:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->createImageSavingRequest(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/Shooting;->takeScreenShot(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)V

    goto :goto_0

    .line 1971
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleControllerPause(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 2018
    iget-object v0, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mArg2:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 2019
    iget-object v0, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mArg2:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2021
    const-class v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$Pause;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->setState(Ljava/lang/Class;)V

    .line 2024
    :cond_0
    return-void
.end method

.method public handleKeyBack(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 1995
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingManual;->mStopRecCalled:Z

    .line 1996
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingManual;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->stopRec(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    .line 1997
    return-void
.end method

.method protected handleOpenReviewWindow(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 2123
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractPreviewing;->handleOpenReviewWindow(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    .line 2124
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingManual;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->getParams()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getVideoAutoReview()Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;

    if-ne v0, v1, :cond_0

    .line 2125
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingManual;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->getViewFinderState()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->setState(Ljava/lang/Class;)V

    .line 2127
    :cond_0
    return-void
.end method

.method public handleSmileCapture(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 3
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 2001
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingManual;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mAutoZoom:Lcom/sonyericsson/android/camera/controller/AutoZoom;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/AutoZoom;->isZooming()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2014
    :cond_0
    :goto_0
    return-void

    .line 2005
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingManual;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-boolean v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mIsVideoSmileCapturing:Z

    if-nez v0, :cond_0

    .line 2008
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingManual;->mStopRecCalled:Z

    if-nez v0, :cond_0

    .line 2011
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingManual;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mIsVideoSmileCapturing:Z

    .line 2012
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingManual;->mStateCapturing:Ljava/lang/Class;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->setState(Ljava/lang/Class;)V

    .line 2013
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingManual;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mShooting:Lcom/sonyericsson/android/camera/controller/Shooting;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingManual;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;->PHOTO_DURING_REC:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->createImageSavingRequest(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/Shooting;->takeScreenShot(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)V

    goto :goto_0
.end method

.method public handleStorageError(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 2103
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingManual;->emergencyExit(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    .line 2104
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingManual;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->restoreSettingAfterRecording()V

    .line 2105
    const-class v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$StorageWarning;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->setState(Ljava/lang/Class;)V

    .line 2106
    return-void
.end method

.method public handleStoreDone(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 2028
    if-eqz p1, :cond_0

    .line 2029
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingManual;->handleOpenReviewWindowOrNot(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    .line 2030
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingManual;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mArg2:Ljava/lang/Object;

    check-cast v0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateTransitionController;->notifyStoreDone(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)Z
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->access$3100(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)Z

    .line 2032
    :cond_0
    return-void
.end method

.method public handleVideoFinished(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 2056
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingManual;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->restoreSettingAfterRecording()V

    .line 2057
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingManual;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->finalizeRec(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    .line 2058
    return-void
.end method

.method public handleVideoInfo(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 2036
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingManual;->mStopRecCalled:Z

    .line 2037
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingManual;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->onVideoInfo(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    .line 2038
    return-void
.end method

.method public handleVideoPauseResume(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 2047
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingManual;->mStopRecCalled:Z

    if-eqz v0, :cond_0

    .line 2052
    :goto_0
    return-void

    .line 2050
    :cond_0
    const-class v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$PauseInManualRecording;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->setState(Ljava/lang/Class;)V

    .line 2051
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingManual;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->pauseRec(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    goto :goto_0
.end method

.method public handleVideoProgress(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 2042
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingManual;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mVideoDevice:Lcom/sonyericsson/android/camera/controller/VideoDevice;

    iget v1, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mArg1:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/VideoDevice;->update(I)V

    .line 2043
    return-void
.end method

.method public handleZoomFinish(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 2094
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractPreviewing;->handleZoomFinish(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    .line 2095
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingManual;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->showRecordingView()V

    .line 2096
    iget-object v0, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mSource:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->TOUCH:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    if-ne v0, v1, :cond_0

    .line 2097
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingManual;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mEventDispatcher:Lcom/sonyericsson/android/camera/controller/EventDispatcher;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->resetStatus()V

    .line 2099
    :cond_0
    return-void
.end method

.method public handleZoomPrepare(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 2062
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingManual;->mStopRecCalled:Z

    if-eqz v0, :cond_0

    .line 2066
    :goto_0
    return-void

    .line 2065
    :cond_0
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractPreviewing;->handleZoomPrepare(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    goto :goto_0
.end method

.method public handleZoomProgress(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 2078
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingManual;->mStopRecCalled:Z

    if-eqz v0, :cond_0

    .line 2082
    :goto_0
    return-void

    .line 2081
    :cond_0
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractPreviewing;->handleZoomProgress(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    goto :goto_0
.end method

.method public handleZoomStart(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 2070
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingManual;->mStopRecCalled:Z

    if-eqz v0, :cond_0

    .line 2074
    :goto_0
    return-void

    .line 2073
    :cond_0
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractPreviewing;->handleZoomStart(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    goto :goto_0
.end method

.method public handleZoomStop(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 2086
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingManual;->mStopRecCalled:Z

    if-eqz v0, :cond_0

    .line 2090
    :goto_0
    return-void

    .line 2089
    :cond_0
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractPreviewing;->handleZoomStop(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    goto :goto_0
.end method

.method public isBackKeyValid()Z
    .locals 1

    .prologue
    .line 2131
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingManual;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mAutoZoom:Lcom/sonyericsson/android/camera/controller/AutoZoom;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/AutoZoom;->isZooming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2132
    const/4 v0, 0x0

    .line 2134
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractPreviewing;->isBackKeyValid()Z

    move-result v0

    goto :goto_0
.end method

.method public isRecording()Z
    .locals 1

    .prologue
    .line 1963
    const/4 v0, 0x1

    return v0
.end method
