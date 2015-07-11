.class Lcom/sonyericsson/android/camera/controller/StateTransitionController$AfSearching;
.super Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractSearching;
.source "StateTransitionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateTransitionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AfSearching"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;)V
    .locals 1

    .prologue
    .line 1436
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AfSearching;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractSearching;-><init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/controller/StateTransitionController;
    .param p2, "x1"    # Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;

    .prologue
    .line 1436
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AfSearching;-><init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;)V

    return-void
.end method


# virtual methods
.method public emergencyExit(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 1440
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractSearching;->emergencyExit(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    .line 1442
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AfSearching;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mShooting:Lcom/sonyericsson/android/camera/controller/Shooting;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/Shooting;->stopAutoFocus()V

    .line 1443
    return-void
.end method

.method public handleAfCancel(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 1448
    iget-object v0, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mSource:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->TOUCH:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AfSearching;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->isObjectTrackingRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1457
    :cond_0
    :goto_0
    return-void

    .line 1453
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AfSearching;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AfSearching;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->getViewFinderState()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->cancelAf(Ljava/lang/Class;)V

    .line 1454
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AfSearching;->mBurstCapture:Z

    if-eqz v0, :cond_0

    .line 1455
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_BURST_START:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->cancelEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;)V

    goto :goto_0
.end method

.method public handleAfDone(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 3
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 1461
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AfSearching;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v1, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mShooting:Lcom/sonyericsson/android/camera/controller/Shooting;

    iget v2, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mArg1:I

    iget-object v0, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mArg2:Ljava/lang/Object;

    check-cast v0, Lcom/sonyericsson/android/camera/device/AutoFocusListener$Result;

    invoke-virtual {v1, v2, v0}, Lcom/sonyericsson/android/camera/controller/Shooting;->onAutoFocus(ILcom/sonyericsson/android/camera/device/AutoFocusListener$Result;)V

    .line 1462
    const-class v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AfDone;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->setState(Ljava/lang/Class;)V

    .line 1463
    return-void
.end method

.method public handleBurstStart(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 5
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 1467
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AfSearching;->mBurstCapture:Z

    .line 1468
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_BURST_START:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    iget-object v1, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mSource:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-class v4, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AfDone;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sonyericsson/android/camera/controller/Executor;->postEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;ILjava/lang/Object;Ljava/lang/Class;)V

    .line 1474
    return-void
.end method

.method public handleBurstStop(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 1478
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AfSearching;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v1, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mSource:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->stopBurstAutoTransition(Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V

    .line 1479
    return-void
.end method

.method public handleCapture(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 1483
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AfSearching;->mBurstCapture:Z

    if-eqz v0, :cond_0

    .line 1484
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_BURST_START:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->cancelEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;)V

    .line 1487
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AfSearching;->mCapture:Z

    .line 1488
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AfSearching;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->captureAutoTransition()V

    .line 1489
    return-void
.end method

.method public handleFaceDetectChange(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 1510
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AfSearching;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->restoreFocusMode(Z)Z

    .line 1511
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AfSearching;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mFaceDetect:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AfSearching;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->getParams()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getFaceIdentify()Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;->getBooleanValue()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->enableFaceIdentification(Z)V

    .line 1512
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractSearching;->handleFaceDetectChange(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    .line 1513
    return-void
.end method

.method public handleObjectTrackingLost(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 1502
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AfSearching;->mCapture:Z

    if-nez v0, :cond_0

    .line 1503
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AfSearching;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AfSearching;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->getViewFinderState()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->cancelAf(Ljava/lang/Class;)V

    .line 1504
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AfSearching;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mObjectTracking:Lcom/sonyericsson/android/camera/controller/ObjectTracking;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/ObjectTracking;->stop(Z)V

    .line 1506
    :cond_0
    return-void
.end method

.method public handleZoomPrepare(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 1493
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AfSearching;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mShooting:Lcom/sonyericsson/android/camera/controller/Shooting;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/Shooting;->getAfTrigger()Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->TOUCH:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mSource:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->TOUCH:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    if-ne v0, v1, :cond_0

    .line 1495
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AfSearching;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AfSearching;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->getViewFinderState()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->cancelAf(Ljava/lang/Class;)V

    .line 1496
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/Executor;->sendEvent(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    .line 1498
    :cond_0
    return-void
.end method

.method public isBackKeyValid()Z
    .locals 1

    .prologue
    .line 1517
    const/4 v0, 0x0

    return v0
.end method
