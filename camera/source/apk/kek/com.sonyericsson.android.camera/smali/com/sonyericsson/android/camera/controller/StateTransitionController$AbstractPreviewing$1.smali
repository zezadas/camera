.class Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractPreviewing$1;
.super Ljava/lang/Object;
.source "StateTransitionController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractPreviewing;->handleOpenReviewWindowOrNot(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractPreviewing;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractPreviewing;)V
    .locals 0

    .prologue
    .line 868
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractPreviewing$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractPreviewing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 872
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractPreviewing$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractPreviewing;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractPreviewing;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mVideoDevice:Lcom/sonyericsson/android/camera/controller/VideoDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/VideoDevice;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 873
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractPreviewing$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractPreviewing;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractPreviewing;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->hideThumbnail()V

    .line 875
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractPreviewing$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractPreviewing;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractPreviewing;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mIsVideoSmileCapturing:Z

    .line 876
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 881
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 886
    return-void
.end method
