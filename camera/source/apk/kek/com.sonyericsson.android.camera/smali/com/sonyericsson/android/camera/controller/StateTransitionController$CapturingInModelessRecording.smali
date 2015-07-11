.class Lcom/sonyericsson/android/camera/controller/StateTransitionController$CapturingInModelessRecording;
.super Lcom/sonyericsson/android/camera/controller/StateTransitionController$CapturingInManualRecording;
.source "StateTransitionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateTransitionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CapturingInModelessRecording"
.end annotation


# instance fields
.field private mStopRecRequested:Z

.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;)V
    .locals 1

    .prologue
    .line 1859
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$CapturingInModelessRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$CapturingInManualRecording;-><init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/controller/StateTransitionController;
    .param p2, "x1"    # Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;

    .prologue
    .line 1859
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$CapturingInModelessRecording;-><init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;)V

    return-void
.end method


# virtual methods
.method public handleCapture(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 1865
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$CapturingInModelessRecording;->mStopRecRequested:Z

    if-eqz v0, :cond_0

    .line 1885
    :goto_0
    return-void

    .line 1870
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;->$SwitchMap$com$sonyericsson$android$camera$controller$ControllerEventSource:[I

    iget-object v1, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mSource:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1872
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$CapturingInModelessRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;->PHOTO_DURING_REC:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->addCaptureRequest(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;)V

    goto :goto_0

    .line 1879
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$CapturingInModelessRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;->PHOTO_DURING_REC:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->addCaptureRequest(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;)V

    goto :goto_0

    .line 1870
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public handleCompressedData(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 1889
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$CapturingInModelessRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mArg2:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    # invokes: Lcom/sonyericsson/android/camera/controller/StateTransitionController;->storeImage([B)Z
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->access$3300(Lcom/sonyericsson/android/camera/controller/StateTransitionController;[B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1890
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$CapturingInModelessRecording;->mStopRecRequested:Z

    if-eqz v0, :cond_1

    .line 1891
    const-class v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingModeless;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->setState(Ljava/lang/Class;)V

    .line 1892
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$CapturingInModelessRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->onVideoInfo(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    .line 1900
    :cond_0
    :goto_0
    return-void

    .line 1893
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$CapturingInModelessRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mShooting:Lcom/sonyericsson/android/camera/controller/Shooting;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$CapturingInModelessRecording;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->updateRemain()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/Shooting;->takeNextPicture(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1897
    const-class v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingModeless;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->setState(Ljava/lang/Class;)V

    goto :goto_0
.end method
