.class Lcom/sonyericsson/android/camera/controller/StateTransitionController$StorageWarning;
.super Lcom/sonyericsson/android/camera/controller/StateTransitionController$ActiveState;
.source "StateTransitionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateTransitionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StorageWarning"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;)V
    .locals 1

    .prologue
    .line 2581
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$StorageWarning;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ActiveState;-><init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/controller/StateTransitionController;
    .param p2, "x1"    # Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;

    .prologue
    .line 2581
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$StorageWarning;-><init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;)V

    return-void
.end method


# virtual methods
.method public entry()V
    .locals 2

    .prologue
    .line 2589
    invoke-super {p0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ActiveState;->entry()V

    .line 2591
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$StorageWarning;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mEventDispatcher:Lcom/sonyericsson/android/camera/controller/EventDispatcher;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->resetStatus()V

    .line 2593
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$StorageWarning;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mObjectTracking:Lcom/sonyericsson/android/camera/controller/ObjectTracking;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/ObjectTracking;->stop(Z)V

    .line 2594
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$StorageWarning;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mTouchFocus:Lcom/sonyericsson/android/camera/controller/TouchFocus;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/TouchFocus;->clear()V

    .line 2596
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$StorageWarning;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mSceneRecognition:Lcom/sonyericsson/android/camera/controller/SceneRecognition;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/SceneRecognition;->stop()V

    .line 2598
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$StorageWarning;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->showStorageWarningView()V

    .line 2601
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$StorageWarning;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mFaceDetect:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->enableFaceIdentification(Z)V

    .line 2602
    return-void
.end method

.method public handleCapture(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 2609
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$StorageWarning;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->onCaptureDone()V

    .line 2610
    return-void
.end method

.method public handleChangeCapturingMode(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 2614
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$StorageWarning;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mArg2:Ljava/lang/Object;

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->changeCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 2615
    return-void
.end method

.method public handleControllerPause(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 2619
    const-class v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$Pause;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->setState(Ljava/lang/Class;)V

    .line 2620
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$StorageWarning;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->suspendViewFinder()V

    .line 2621
    return-void
.end method

.method public handleStorageError(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 2626
    return-void
.end method

.method public handleStorageMounted(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 2630
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$StorageWarning;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->getViewFinderState()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->setState(Ljava/lang/Class;)V

    .line 2631
    return-void
.end method

.method public handleStorageShouldChange(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 2635
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$StorageWarning;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->switchStorage()V

    .line 2636
    return-void
.end method

.method public isMenuAvailable()Z
    .locals 1

    .prologue
    .line 2584
    const/4 v0, 0x1

    return v0
.end method
