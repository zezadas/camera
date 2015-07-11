.class Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingModelessPreparing;
.super Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractSearching;
.source "StateTransitionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateTransitionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecordingModelessPreparing"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;)V
    .locals 1

    .prologue
    .line 2138
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingModelessPreparing;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractSearching;-><init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/controller/StateTransitionController;
    .param p2, "x1"    # Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;

    .prologue
    .line 2138
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingModelessPreparing;-><init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;)V

    return-void
.end method


# virtual methods
.method public handleSurfaceChanged(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 3
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 2142
    iget-object v0, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mArg2:Ljava/lang/Object;

    check-cast v0, Lcom/sonyericsson/android/camera/device/CameraSurfaceHolder;

    .line 2143
    .local v0, "cameraSurfaceHolder":Lcom/sonyericsson/android/camera/device/CameraSurfaceHolder;
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraSurfaceHolder;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingModelessPreparing;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getSurfaceRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 2144
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingModelessPreparing;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->startPreview(Lcom/sonyericsson/android/camera/device/CameraSurfaceHolder;)V

    .line 2147
    const-class v1, Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingModeless;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/Executor;->setState(Ljava/lang/Class;)V

    .line 2148
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingModelessPreparing;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->startModelessRecording()V

    .line 2150
    :cond_0
    return-void
.end method

.method public handleSurfaceDestroyed(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 2155
    return-void
.end method
