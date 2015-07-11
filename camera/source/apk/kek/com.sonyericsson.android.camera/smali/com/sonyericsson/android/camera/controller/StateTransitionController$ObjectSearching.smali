.class Lcom/sonyericsson/android/camera/controller/StateTransitionController$ObjectSearching;
.super Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractSearching;
.source "StateTransitionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateTransitionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ObjectSearching"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;)V
    .locals 1

    .prologue
    .line 1549
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ObjectSearching;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractSearching;-><init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/controller/StateTransitionController;
    .param p2, "x1"    # Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;

    .prologue
    .line 1549
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ObjectSearching;-><init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;)V

    return-void
.end method


# virtual methods
.method public emergencyExit(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 1553
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractSearching;->emergencyExit(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    .line 1555
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ObjectSearching;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mObjectTracking:Lcom/sonyericsson/android/camera/controller/ObjectTracking;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/ObjectTracking;->stop(Z)V

    .line 1556
    return-void
.end method

.method public handleCapture(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 1578
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ObjectSearching;->mCapture:Z

    .line 1579
    return-void
.end method

.method public handleObjectTracking(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 3
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 1560
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ObjectSearching;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v1, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mObjectTracking:Lcom/sonyericsson/android/camera/controller/ObjectTracking;

    iget-object v0, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mArg2:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/controller/ObjectTracking;->onObjectTracked(Landroid/graphics/Rect;)V

    .line 1563
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ObjectSearching;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCurrentSelfTimer:Lcom/sonyericsson/android/camera/controller/Selftimer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/Selftimer;->stop(Z)V

    .line 1564
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ObjectSearching;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v1, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mSource:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ObjectSearching;->mCapture:Z

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->startAf(Lcom/sonyericsson/android/camera/controller/ControllerEventSource;Z)V

    .line 1565
    return-void
.end method

.method public handleObjectTrackingLost(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 1569
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ObjectSearching;->mCapture:Z

    if-nez v0, :cond_0

    .line 1570
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ObjectSearching;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCurrentSelfTimer:Lcom/sonyericsson/android/camera/controller/Selftimer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/Selftimer;->stop(Z)V

    .line 1571
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ObjectSearching;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mObjectTracking:Lcom/sonyericsson/android/camera/controller/ObjectTracking;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/ObjectTracking;->stop(Z)V

    .line 1572
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ObjectSearching;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->getViewFinderState()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->setState(Ljava/lang/Class;)V

    .line 1574
    :cond_0
    return-void
.end method
