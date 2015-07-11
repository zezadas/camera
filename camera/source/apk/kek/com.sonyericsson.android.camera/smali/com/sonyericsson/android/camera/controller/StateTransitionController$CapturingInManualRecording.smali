.class Lcom/sonyericsson/android/camera/controller/StateTransitionController$CapturingInManualRecording;
.super Lcom/sonyericsson/android/camera/controller/StateTransitionController$Capturing;
.source "StateTransitionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateTransitionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CapturingInManualRecording"
.end annotation


# instance fields
.field private mStopRecRequested:Z

.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;)V
    .locals 1

    .prologue
    .line 1762
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$CapturingInManualRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$Capturing;-><init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/controller/StateTransitionController;
    .param p2, "x1"    # Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;

    .prologue
    .line 1762
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$CapturingInManualRecording;-><init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;)V

    return-void
.end method


# virtual methods
.method public emergencyExit(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 1768
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$Capturing;->emergencyExit(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    .line 1770
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$CapturingInManualRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->stopRecordingUrgently(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    .line 1771
    return-void
.end method

.method public entry()V
    .locals 1

    .prologue
    .line 1775
    invoke-super {p0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$Capturing;->entry()V

    .line 1777
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$CapturingInManualRecording;->mStopRecRequested:Z

    .line 1778
    return-void
.end method

.method public exit()V
    .locals 1

    .prologue
    .line 1783
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$CapturingInManualRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mShooting:Lcom/sonyericsson/android/camera/controller/Shooting;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/Shooting;->clearCaptureRequest()V

    .line 1784
    return-void
.end method

.method public handleCapture(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 1793
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$CapturingInManualRecording;->mStopRecRequested:Z

    if-eqz v0, :cond_0

    .line 1811
    :goto_0
    return-void

    .line 1798
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;->$SwitchMap$com$sonyericsson$android$camera$controller$ControllerEventSource:[I

    iget-object v1, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mSource:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1800
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$CapturingInManualRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;->PHOTO_DURING_REC:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->addCaptureRequest(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;)V

    goto :goto_0

    .line 1798
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public handleCompressedData(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 1815
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$CapturingInManualRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mArg2:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    # invokes: Lcom/sonyericsson/android/camera/controller/StateTransitionController;->storeImage([B)Z
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->access$3300(Lcom/sonyericsson/android/camera/controller/StateTransitionController;[B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1816
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$CapturingInManualRecording;->mStopRecRequested:Z

    if-eqz v0, :cond_1

    .line 1817
    const-class v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingManual;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->setState(Ljava/lang/Class;)V

    .line 1818
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$CapturingInManualRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->onVideoInfo(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    .line 1826
    :cond_0
    :goto_0
    return-void

    .line 1819
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$CapturingInManualRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mShooting:Lcom/sonyericsson/android/camera/controller/Shooting;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$CapturingInManualRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->updateRemain()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/Shooting;->takeNextPicture(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1823
    const-class v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingManual;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->setState(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public handleControllerPause(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 1831
    return-void
.end method

.method public handleShutterDone(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 1836
    return-void
.end method

.method public handleStoreDone(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 1841
    return-void
.end method

.method public handleVideoFinished(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 1856
    return-void
.end method

.method public handleVideoInfo(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 1845
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$CapturingInManualRecording;->mStopRecRequested:Z

    .line 1846
    return-void
.end method

.method public handleVideoProgress(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 1850
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$CapturingInManualRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mVideoDevice:Lcom/sonyericsson/android/camera/controller/VideoDevice;

    iget v1, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mArg1:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/VideoDevice;->update(I)V

    .line 1851
    return-void
.end method

.method public isRecording()Z
    .locals 1

    .prologue
    .line 1788
    const/4 v0, 0x1

    return v0
.end method
