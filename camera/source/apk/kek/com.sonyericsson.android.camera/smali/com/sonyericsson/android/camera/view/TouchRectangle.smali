.class public Lcom/sonyericsson/android/camera/view/TouchRectangle;
.super Lcom/sonyericsson/android/camera/view/SingleRectangle;
.source "TouchRectangle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/TouchRectangle$1;
    }
.end annotation


# instance fields
.field private final mFocusTouchDownAnimation:Landroid/view/animation/AnimationSet;

.field private final mFocusTouchUpAnimation:Landroid/view/animation/AnimationSet;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "parentView"    # Landroid/view/ViewGroup;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/SingleRectangle;-><init>(Landroid/view/ViewGroup;)V

    .line 42
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/TouchRectangle;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040006

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    check-cast v0, Landroid/view/animation/AnimationSet;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/TouchRectangle;->mFocusTouchDownAnimation:Landroid/view/animation/AnimationSet;

    .line 45
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/TouchRectangle;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040007

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    check-cast v0, Landroid/view/animation/AnimationSet;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/TouchRectangle;->mFocusTouchUpAnimation:Landroid/view/animation/AnimationSet;

    .line 47
    return-void
.end method


# virtual methods
.method protected deselect()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/TouchRectangle;->mState:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;

    sget-object v1, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;->INACTIVE:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;

    if-eq v0, v1, :cond_0

    .line 84
    sget-object v0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;->DEFAULT:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/TouchRectangle;->mState:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/TouchRectangle;->hide()V

    .line 87
    return-void
.end method

.method protected getNormalIcon()I
    .locals 1

    .prologue
    .line 66
    sget v0, Lcom/sonyericsson/cameracommon/focusview/CommonResources$TouchIndicator;->NORMAL:I

    return v0
.end method

.method protected getSuccessIcon()I
    .locals 1

    .prologue
    .line 71
    sget v0, Lcom/sonyericsson/cameracommon/focusview/CommonResources$TouchIndicator;->SUCCESS:I

    return v0
.end method

.method protected select(Landroid/graphics/Rect;Z)V
    .locals 3
    .param p1, "position"    # Landroid/graphics/Rect;
    .param p2, "doAnimation"    # Z

    .prologue
    .line 91
    if-nez p1, :cond_0

    .line 111
    :goto_0
    return-void

    .line 95
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/view/TouchRectangle$1;->$SwitchMap$com$sonyericsson$android$camera$view$FocusRectanglesManager$RectangleState:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/TouchRectangle;->mState:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 106
    :goto_1
    if-eqz p2, :cond_1

    .line 108
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/TouchRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    const v1, 0x7f0f0016

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/TouchRectangle;->mFocusTouchDownAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 110
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/TouchRectangle;->show()V

    goto :goto_0

    .line 101
    :pswitch_0
    sget-object v0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;->SELECTED:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/TouchRectangle;->mState:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;

    .line 102
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/TouchRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setRectCenter(II)V

    goto :goto_1

    .line 95
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected setPosition([Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "position"    # [Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    .line 115
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/TouchRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    aget-object v1, p1, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    aget-object v2, p1, v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setRectCenter(II)V

    .line 116
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/TouchRectangle;->show()V

    .line 117
    return-void
.end method

.method protected show()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/TouchRectangle;->mState:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;

    sget-object v1, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;->SELECTED:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;

    if-ne v0, v1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/TouchRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setVisibility(I)V

    .line 79
    :cond_0
    return-void
.end method

.method public startTouchUpAnimation(Landroid/graphics/Rect;Z)V
    .locals 2
    .param p1, "position"    # Landroid/graphics/Rect;
    .param p2, "doAnimation"    # Z

    .prologue
    .line 50
    if-nez p1, :cond_0

    .line 62
    :goto_0
    return-void

    .line 54
    :cond_0
    if-eqz p2, :cond_1

    .line 55
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/graphics/Rect;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/TouchRectangle;->setPosition([Landroid/graphics/Rect;)V

    .line 58
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/TouchRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    const v1, 0x7f0f0016

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/TouchRectangle;->mFocusTouchUpAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/TouchRectangle;->hide()V

    goto :goto_0
.end method
