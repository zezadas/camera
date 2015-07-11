.class Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AnimationEventHandler;
.super Ljava/lang/Object;
.source "SelfTimerCountDownNumberView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationEventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AnimationEventHandler;->this$0:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;
    .param p2, "x1"    # Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$1;

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AnimationEventHandler;-><init>(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 161
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AnimationEventHandler;->this$0:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 156
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AnimationEventHandler;->this$0:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    # operator-- for: Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mCurrentCount:I
    invoke-static {v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->access$410(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;)I

    .line 149
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AnimationEventHandler;->this$0:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    # invokes: Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setImage()V
    invoke-static {v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->access$500(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;)V

    .line 150
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AnimationEventHandler;->this$0:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setImageAlpha(I)V

    .line 151
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AnimationEventHandler;->this$0:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AnimationEventHandler;->this$0:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    # getter for: Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mValueAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->access$300(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    # setter for: Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mCurrentCount:I
    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->access$402(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;I)I

    .line 142
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AnimationEventHandler;->this$0:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    # invokes: Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setImage()V
    invoke-static {v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->access$500(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;)V

    .line 143
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AnimationEventHandler;->this$0:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setImageAlpha(I)V

    .line 144
    return-void
.end method
