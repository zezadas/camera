.class public Lcom/sonyericsson/android/camera/view/ObjectTrackingRectangle;
.super Lcom/sonyericsson/android/camera/view/SingleRectangle;
.source "ObjectTrackingRectangle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/ObjectTrackingRectangle$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/sonyericsson/android/camera/view/ObjectTrackingRectangle;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/view/ObjectTrackingRectangle;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "parentView"    # Landroid/view/ViewGroup;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/SingleRectangle;-><init>(Landroid/view/ViewGroup;)V

    .line 43
    return-void
.end method

.method private startObjectTrackingAnimation()V
    .locals 5

    .prologue
    .line 145
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 148
    .local v0, "animationSet":Landroid/view/animation/AnimationSet;
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/ObjectTrackingRectangle;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f040006

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    check-cast v1, Landroid/view/animation/AnimationSet;

    .line 152
    .local v1, "touchDownAnimation":Landroid/view/animation/AnimationSet;
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/ObjectTrackingRectangle;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f040007

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    check-cast v2, Landroid/view/animation/AnimationSet;

    .line 156
    .local v2, "touchUpAnimation":Landroid/view/animation/AnimationSet;
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 157
    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 160
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/ObjectTrackingRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    const v4, 0x7f0f0016

    invoke-virtual {v3, v4}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 161
    return-void
.end method


# virtual methods
.method protected deselect()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ObjectTrackingRectangle;->mState:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;

    sget-object v1, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;->INACTIVE:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;

    if-eq v0, v1, :cond_0

    .line 106
    sget-object v0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;->DEFAULT:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/ObjectTrackingRectangle;->mState:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ObjectTrackingRectangle;->hide()V

    .line 109
    return-void
.end method

.method protected init(Landroid/view/LayoutInflater;[Landroid/view/View;)V
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "preInflatedView"    # [Landroid/view/View;

    .prologue
    .line 52
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/ObjectTrackingRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    if-nez v2, :cond_0

    .line 53
    if-eqz p2, :cond_1

    .line 55
    const/4 v2, 0x0

    aget-object v2, p2, v2

    check-cast v2, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    iput-object v2, p0, Lcom/sonyericsson/android/camera/view/ObjectTrackingRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 62
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/ObjectTrackingRectangle;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c001d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 64
    .local v0, "h":I
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/ObjectTrackingRectangle;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c001c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 67
    .local v1, "w":I
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/ObjectTrackingRectangle;->mParentView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/ObjectTrackingRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 68
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/ObjectTrackingRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->prepare(I)V

    .line 70
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/ObjectTrackingRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {v2, v1, v0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setRectImageSize(II)V

    .line 72
    .end local v0    # "h":I
    .end local v1    # "w":I
    :cond_0
    return-void

    .line 58
    :cond_1
    const/high16 v2, 0x7f030000

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    iput-object v2, p0, Lcom/sonyericsson/android/camera/view/ObjectTrackingRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    goto :goto_0
.end method

.method protected onAfFail(Lcom/sonyericsson/android/camera/device/AutoFocusListener$Result;)V
    .locals 1
    .param p1, "result"    # Lcom/sonyericsson/android/camera/device/AutoFocusListener$Result;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ObjectTrackingRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/ObjectTrackingRectangle;->startFadeoutAnimation(Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;)V

    .line 119
    return-void
.end method

.method protected onAfSuccess(Lcom/sonyericsson/android/camera/device/AutoFocusListener$Result;)V
    .locals 2
    .param p1, "result"    # Lcom/sonyericsson/android/camera/device/AutoFocusListener$Result;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ObjectTrackingRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    sget v1, Lcom/sonyericsson/cameracommon/focusview/CommonResources$ObjectIndicator;->SUCCESS:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->changeRectangleResource(I)V

    .line 124
    return-void
.end method

.method protected onRecording(Lcom/sonyericsson/android/camera/device/AutoFocusListener$Result;)V
    .locals 2
    .param p1, "result"    # Lcom/sonyericsson/android/camera/device/AutoFocusListener$Result;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ObjectTrackingRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    sget v1, Lcom/sonyericsson/cameracommon/focusview/CommonResources$ObjectIndicator;->SUCCESS:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->changeRectangleResource(I)V

    .line 129
    return-void
.end method

.method protected resetColor()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ObjectTrackingRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    sget v1, Lcom/sonyericsson/cameracommon/focusview/CommonResources$ObjectIndicator;->TRACKING:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->changeRectangleResource(I)V

    .line 114
    return-void
.end method

.method protected select(Landroid/graphics/Rect;Z)V
    .locals 3
    .param p1, "position"    # Landroid/graphics/Rect;
    .param p2, "doAnimation"    # Z

    .prologue
    .line 83
    if-nez p1, :cond_0

    .line 101
    :goto_0
    return-void

    .line 87
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/view/ObjectTrackingRectangle$1;->$SwitchMap$com$sonyericsson$android$camera$view$FocusRectanglesManager$RectangleState:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ObjectTrackingRectangle;->mState:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 96
    :goto_1
    if-eqz p2, :cond_1

    .line 97
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/ObjectTrackingRectangle;->startObjectTrackingAnimation()V

    goto :goto_0

    .line 91
    :pswitch_0
    sget-object v0, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;->SELECTED:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/ObjectTrackingRectangle;->mState:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;

    .line 92
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ObjectTrackingRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setRectCenter(II)V

    goto :goto_1

    .line 99
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ObjectTrackingRectangle;->show()V

    goto :goto_0

    .line 87
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected setPosition([Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "position"    # [Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    .line 139
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ObjectTrackingRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    aget-object v1, p1, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    aget-object v2, p1, v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setRectCenter(II)V

    .line 140
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ObjectTrackingRectangle;->show()V

    .line 141
    return-void
.end method

.method protected show()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ObjectTrackingRectangle;->mState:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;

    sget-object v1, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;->SELECTED:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;

    if-ne v0, v1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ObjectTrackingRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setVisibility(I)V

    .line 79
    :cond_0
    return-void
.end method
