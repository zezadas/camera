.class Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingModelessFinishing;
.super Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractSearching;
.source "StateTransitionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateTransitionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecordingModelessFinishing"
.end annotation


# instance fields
.field protected mIsRecordingFinished:Z

.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;)V
    .locals 1

    .prologue
    .line 2158
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingModelessFinishing;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractSearching;-><init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/controller/StateTransitionController;
    .param p2, "x1"    # Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;

    .prologue
    .line 2158
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingModelessFinishing;-><init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;)V

    return-void
.end method


# virtual methods
.method public entry()V
    .locals 1

    .prologue
    .line 2165
    invoke-super {p0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractSearching;->entry()V

    .line 2166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingModelessFinishing;->mIsRecordingFinished:Z

    .line 2167
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 2171
    invoke-super {p0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractSearching;->exit()V

    .line 2178
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingModelessFinishing;->mIsRecordingFinished:Z

    if-nez v0, :cond_0

    .line 2179
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingModelessFinishing;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->finishRecording(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    .line 2181
    :cond_0
    return-void
.end method

.method public handleSurfaceChanged(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 3
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 2185
    iget-object v0, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mArg2:Ljava/lang/Object;

    check-cast v0, Lcom/sonyericsson/android/camera/device/CameraSurfaceHolder;

    .line 2186
    .local v0, "cameraSurfaceHolder":Lcom/sonyericsson/android/camera/device/CameraSurfaceHolder;
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraSurfaceHolder;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingModelessFinishing;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getSurfaceRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 2188
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingModelessFinishing;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->finishRecording(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    .line 2189
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingModelessFinishing;->mIsRecordingFinished:Z

    .line 2190
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingModelessFinishing;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->getViewFinderState()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/Executor;->setState(Ljava/lang/Class;)V

    .line 2192
    :cond_0
    return-void
.end method

.method public handleSurfaceDestroyed(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 2197
    return-void
.end method
