.class Lcom/sonyericsson/android/camera/controller/StateTransitionController$ActiveState;
.super Lcom/sonyericsson/android/camera/controller/State;
.source "StateTransitionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateTransitionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActiveState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;)V
    .locals 0

    .prologue
    .line 484
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ActiveState;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/controller/StateTransitionController;
    .param p2, "x1"    # Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;

    .prologue
    .line 484
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ActiveState;-><init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;)V

    return-void
.end method


# virtual methods
.method public emergencyExit(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 0
    .param p1, "cause"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 494
    return-void
.end method

.method public entry()V
    .locals 2

    .prologue
    .line 488
    invoke-super {p0}, Lcom/sonyericsson/android/camera/controller/State;->entry()V

    .line 489
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ActiveState;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ActiveState;->isMenuAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setCanSwitchStorage(Z)V

    .line 490
    return-void
.end method

.method public handleAbort(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 498
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ActiveState;->emergencyExit(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    .line 499
    const-class v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$IdleForFinish;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->setState(Ljava/lang/Class;)V

    .line 500
    const-class v0, Lcom/sonyericsson/android/camera/controller/Inactive;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->setState(Ljava/lang/Class;)V

    .line 501
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ActiveState;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->showDefaultView()V

    .line 502
    return-void
.end method

.method public handleDeviceError(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 506
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ActiveState;->emergencyExit(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    .line 507
    const-class v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$Error;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->setState(Ljava/lang/Class;)V

    .line 508
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ActiveState;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->isHighTemperature()Z

    move-result v0

    if-nez v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ActiveState;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget v1, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mArg1:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->showErrorMessage(I)V

    .line 511
    :cond_0
    return-void
.end method

.method public handleReachHighTemperature(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 521
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ActiveState;->emergencyExit(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    .line 522
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ActiveState;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->close()V

    .line 523
    const-class v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$IdleForFinish;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->setState(Ljava/lang/Class;)V

    .line 524
    return-void
.end method

.method public handleStorageError(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 515
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ActiveState;->emergencyExit(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    .line 516
    const-class v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$StorageWarning;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->setState(Ljava/lang/Class;)V

    .line 517
    return-void
.end method

.method public handleSurfaceCreated(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 528
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ActiveState;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->hideBlankScreen()V

    .line 529
    return-void
.end method

.method public handleSurfaceDestroyed(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 533
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ActiveState;->emergencyExit(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    .line 535
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ActiveState;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->finishPreviewing()V

    .line 536
    return-void
.end method
