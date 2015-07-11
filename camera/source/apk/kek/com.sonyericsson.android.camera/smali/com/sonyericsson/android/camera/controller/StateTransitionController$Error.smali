.class Lcom/sonyericsson/android/camera/controller/StateTransitionController$Error;
.super Lcom/sonyericsson/android/camera/controller/StateTransitionController$ActiveState;
.source "StateTransitionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateTransitionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Error"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;)V
    .locals 1

    .prologue
    .line 539
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$Error;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ActiveState;-><init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/controller/StateTransitionController;
    .param p2, "x1"    # Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;

    .prologue
    .line 539
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$Error;-><init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;)V

    return-void
.end method


# virtual methods
.method public entry()V
    .locals 1

    .prologue
    .line 543
    invoke-super {p0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ActiveState;->entry()V

    .line 545
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$Error;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->prepareForFinish()V

    .line 548
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$Error;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShotPhoto()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$Error;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->finishDelayed()V

    .line 551
    :cond_0
    return-void
.end method

.method public handleDeviceError(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 556
    return-void
.end method

.method public handleReachHighTemperature(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 566
    const-class v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$IdleForFinish;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->setState(Ljava/lang/Class;)V

    .line 567
    return-void
.end method

.method public handleStorageError(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 561
    return-void
.end method

.method public handleSurfaceDestroyed(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 572
    return-void
.end method
