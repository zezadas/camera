.class public Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;
.super Landroid/widget/FrameLayout;
.source "SelfTimerCountDownView.java"


# instance fields
.field private mSelfTimerCountDownCircleView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;

.field private mSelfTimerCountDownNumberView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrib"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method


# virtual methods
.method public cancelSelfTimerCountDownAnimation()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mSelfTimerCountDownCircleView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mSelfTimerCountDownCircleView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->cancelSelfTimerAnimation()V

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mSelfTimerCountDownNumberView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mSelfTimerCountDownNumberView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->cancelSelfTimerAnimation()V

    .line 62
    :cond_1
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 42
    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 33
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->selftimer_countdown_circle:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mSelfTimerCountDownCircleView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;

    .line 35
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->selftimer_countdown_text:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mSelfTimerCountDownNumberView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    .line 37
    return-void
.end method

.method public setSelfTimer(Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;)V
    .locals 1
    .param p1, "selftimer"    # Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mSelfTimerCountDownCircleView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mSelfTimerCountDownCircleView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;

    invoke-virtual {v0, p1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->setSelfTimer(Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;)V

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mSelfTimerCountDownNumberView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mSelfTimerCountDownNumberView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    invoke-virtual {v0, p1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setSelfTimer(Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;)V

    .line 72
    :cond_1
    return-void
.end method

.method public setSensorOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 75
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result v0

    .line 76
    .local v0, "degree":F
    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->setRotation(F)V

    .line 77
    return-void
.end method

.method public startSelfTimerCountDownAnimation()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mSelfTimerCountDownNumberView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mSelfTimerCountDownNumberView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->startAnimation()V

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mSelfTimerCountDownCircleView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownView;->mSelfTimerCountDownCircleView:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->startAnimation()V

    .line 52
    :cond_1
    return-void
.end method
