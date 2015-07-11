.class Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView$ValueAnimationUpdater;
.super Ljava/lang/Object;
.source "SelfTimerCountDownCircleView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ValueAnimationUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView$ValueAnimationUpdater;->this$0:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;
    .param p2, "x1"    # Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView$1;

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView$ValueAnimationUpdater;-><init>(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;)V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "arg0"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView$ValueAnimationUpdater;->this$0:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->invalidate()V

    .line 129
    return-void
.end method
