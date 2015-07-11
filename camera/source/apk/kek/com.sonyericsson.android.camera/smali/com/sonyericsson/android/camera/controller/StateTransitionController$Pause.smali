.class Lcom/sonyericsson/android/camera/controller/StateTransitionController$Pause;
.super Lcom/sonyericsson/android/camera/controller/StateTransitionController$ActiveState;
.source "StateTransitionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateTransitionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Pause"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;)V
    .locals 1

    .prologue
    .line 2639
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$Pause;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ActiveState;-><init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/controller/StateTransitionController;
    .param p2, "x1"    # Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;

    .prologue
    .line 2639
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$Pause;-><init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;)V

    return-void
.end method


# virtual methods
.method public handleChangeCapturingMode(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 2648
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$Pause;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mArg2:Ljava/lang/Object;

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->changeCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 2649
    return-void
.end method

.method public handleControllerResume(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 2653
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$Pause;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->startPreview()V

    .line 2654
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$Pause;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->restartAutoOffTimer()V

    .line 2655
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$Pause;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->getViewFinderState()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->setState(Ljava/lang/Class;)V

    .line 2656
    return-void
.end method

.method public handleKeyBack(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 2675
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$Pause;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->closeCapturingModeSelector()V

    .line 2676
    return-void
.end method

.method public handleStorageError(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 2665
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_CONTROLLER_RESUME:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->sendEmptyEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;)V

    .line 2666
    return-void
.end method

.method public handleStorageMounted(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 2670
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$Pause;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->updateSettingDialog()V

    .line 2671
    return-void
.end method

.method public handleStorageShouldChange(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 2680
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$Pause;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->switchStorage()V

    .line 2681
    return-void
.end method

.method public handleStoreDone(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 2687
    if-eqz p1, :cond_0

    .line 2688
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$Pause;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mArg2:Ljava/lang/Object;

    check-cast v0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateTransitionController;->notifyStoreDone(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)Z
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->access$3100(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)Z

    .line 2690
    :cond_0
    return-void
.end method

.method public handleSurfaceChanged(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 2660
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$Pause;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mArg2:Ljava/lang/Object;

    check-cast v0, Lcom/sonyericsson/android/camera/device/CameraSurfaceHolder;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->startPreview(Lcom/sonyericsson/android/camera/device/CameraSurfaceHolder;)V

    .line 2661
    return-void
.end method

.method public isMenuAvailable()Z
    .locals 1

    .prologue
    .line 2643
    const/4 v0, 0x1

    return v0
.end method
