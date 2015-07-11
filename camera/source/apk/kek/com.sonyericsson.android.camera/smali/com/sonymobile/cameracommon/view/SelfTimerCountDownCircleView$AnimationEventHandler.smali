.class Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView$AnimationEventHandler;
.super Ljava/lang/Object;
.source "SelfTimerCountDownCircleView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationEventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView$AnimationEventHandler;->this$0:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;
    .param p2, "x1"    # Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView$1;

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView$AnimationEventHandler;-><init>(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 151
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 146
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 141
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 136
    return-void
.end method
