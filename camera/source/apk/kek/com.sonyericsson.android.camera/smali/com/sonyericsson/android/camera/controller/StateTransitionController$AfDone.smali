.class Lcom/sonyericsson/android/camera/controller/StateTransitionController$AfDone;
.super Lcom/sonyericsson/android/camera/controller/StateTransitionController$ActiveState;
.source "StateTransitionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateTransitionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AfDone"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;)V
    .locals 1

    .prologue
    .line 1582
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AfDone;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ActiveState;-><init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/controller/StateTransitionController;
    .param p2, "x1"    # Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;

    .prologue
    .line 1582
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AfDone;-><init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;)V

    return-void
.end method


# virtual methods
.method public emergencyExit(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 1586
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ActiveState;->emergencyExit(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    .line 1588
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AfDone;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mShooting:Lcom/sonyericsson/android/camera/controller/Shooting;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/Shooting;->stopAutoFocus()V

    .line 1589
    return-void
.end method

.method public handleAfCancel(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 1594
    iget-object v0, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mSource:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->TOUCH:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AfDone;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->isObjectTrackingRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1599
    :goto_0
    return-void

    .line 1598
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AfDone;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AfDone;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->getViewFinderState()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->cancelAf(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public handleBurstStart(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 1609
    const-class v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstShooting;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->setState(Ljava/lang/Class;)V

    .line 1610
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AfDone;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mBurstShooting:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    iget-object v1, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mSource:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->start(Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1611
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AfDone;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AfDone;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->getViewFinderState()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->cancelAf(Ljava/lang/Class;)V

    .line 1613
    :cond_0
    return-void
.end method

.method public handleBurstStop(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 1617
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AfDone;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v1, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mSource:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->stopBurstAutoTransition(Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V

    .line 1618
    return-void
.end method

.method public handleCapture(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 3
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 1622
    const-class v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$Capturing;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->setState(Ljava/lang/Class;)V

    .line 1623
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AfDone;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AfDone;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;->PHOTO:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->createImageSavingRequest(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    move-result-object v1

    # setter for: Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mLastSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->access$2902(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    .line 1626
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AfDone;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v1, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mShooting:Lcom/sonyericsson/android/camera/controller/Shooting;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AfDone;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mLastSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->access$2900(Lcom/sonyericsson/android/camera/controller/StateTransitionController;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/controller/Shooting;->takePicture(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)V

    .line 1627
    return-void
.end method

.method public handleObjectTrackingLost(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 1603
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AfDone;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AfDone;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->getViewFinderState()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->cancelAf(Ljava/lang/Class;)V

    .line 1604
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AfDone;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mObjectTracking:Lcom/sonyericsson/android/camera/controller/ObjectTracking;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/ObjectTracking;->stop(Z)V

    .line 1605
    return-void
.end method

.method public isBackKeyValid()Z
    .locals 1

    .prologue
    .line 1631
    const/4 v0, 0x0

    return v0
.end method
