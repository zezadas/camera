.class Lcom/sonyericsson/android/camera/controller/StateTransitionController$PauseInModelessRecording;
.super Lcom/sonyericsson/android/camera/controller/StateTransitionController$PauseInManualRecording;
.source "StateTransitionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateTransitionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PauseInModelessRecording"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;)V
    .locals 1

    .prologue
    .line 2322
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$PauseInModelessRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$PauseInManualRecording;-><init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/controller/StateTransitionController;
    .param p2, "x1"    # Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;

    .prologue
    .line 2322
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$PauseInModelessRecording;-><init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;)V

    return-void
.end method


# virtual methods
.method public handleCapture(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 3
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 2325
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$PauseInModelessRecording;->mStopRecCalled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$PauseInModelessRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mVideoDevice:Lcom/sonyericsson/android/camera/controller/VideoDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/VideoDevice;->isRecording()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2348
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2328
    :cond_1
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;->$SwitchMap$com$sonyericsson$android$camera$controller$ControllerEventSource:[I

    iget-object v1, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mSource:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2344
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$PauseInModelessRecording;->mStopRecCalled:Z

    .line 2345
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$PauseInModelessRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->stopRec(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    goto :goto_0

    .line 2334
    :pswitch_1
    const-class v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$CapturingInModelessRecordingPausing;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->setState(Ljava/lang/Class;)V

    .line 2335
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$PauseInModelessRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mShooting:Lcom/sonyericsson/android/camera/controller/Shooting;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$PauseInModelessRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;->PHOTO_DURING_REC:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->createImageSavingRequest(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/Shooting;->takeScreenShot(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)V

    goto :goto_0

    .line 2328
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleSmileCapture(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 3
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 2362
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$PauseInModelessRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mAutoZoom:Lcom/sonyericsson/android/camera/controller/AutoZoom;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/AutoZoom;->isZooming()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2375
    :cond_0
    :goto_0
    return-void

    .line 2366
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$PauseInModelessRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-boolean v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mIsVideoSmileCapturing:Z

    if-nez v0, :cond_0

    .line 2369
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$PauseInModelessRecording;->mStopRecCalled:Z

    if-nez v0, :cond_0

    .line 2372
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$PauseInModelessRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mIsVideoSmileCapturing:Z

    .line 2373
    const-class v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$CapturingInModelessRecordingPausing;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->setState(Ljava/lang/Class;)V

    .line 2374
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$PauseInModelessRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mShooting:Lcom/sonyericsson/android/camera/controller/Shooting;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$PauseInModelessRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;->PHOTO_DURING_REC:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->createImageSavingRequest(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/Shooting;->takeScreenShot(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)V

    goto :goto_0
.end method

.method public handleVideoPauseResume(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 2352
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$PauseInModelessRecording;->mStopRecCalled:Z

    if-eqz v0, :cond_1

    .line 2358
    :cond_0
    :goto_0
    return-void

    .line 2355
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$PauseInModelessRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->resumeRec(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2356
    const-class v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingModeless;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->setState(Ljava/lang/Class;)V

    goto :goto_0
.end method
