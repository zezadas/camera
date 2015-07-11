.class public Lcom/sonyericsson/android/camera/view/SingleRectangle;
.super Lcom/sonyericsson/android/camera/view/FocusRectangleWithStateMachine;
.source "SingleRectangle.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/sonyericsson/android/camera/view/SingleRectangle;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/view/SingleRectangle;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "parentView"    # Landroid/view/ViewGroup;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/FocusRectangleWithStateMachine;-><init>(Landroid/view/ViewGroup;)V

    .line 43
    return-void
.end method


# virtual methods
.method protected deselect()V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method protected finish()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/SingleRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 80
    return-void
.end method

.method protected getNormalIcon()I
    .locals 1

    .prologue
    .line 92
    sget v0, Lcom/sonyericsson/cameracommon/focusview/CommonResources$SingleIndicator;->NORMAL:I

    return v0
.end method

.method protected getSuccessIcon()I
    .locals 1

    .prologue
    .line 96
    sget v0, Lcom/sonyericsson/cameracommon/focusview/CommonResources$SingleIndicator;->SUCCESS:I

    return v0
.end method

.method protected hide()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/SingleRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/SingleRectangle;->stopAnimation(Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;)V

    .line 119
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/SingleRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setVisibility(I)V

    .line 120
    return-void
.end method

.method protected init(Landroid/view/LayoutInflater;[Landroid/view/View;)V
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "preInflatedView"    # [Landroid/view/View;

    .prologue
    .line 54
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/SingleRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    if-nez v2, :cond_0

    .line 55
    if-eqz p2, :cond_1

    .line 57
    const/4 v2, 0x0

    aget-object v2, p2, v2

    check-cast v2, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    iput-object v2, p0, Lcom/sonyericsson/android/camera/view/SingleRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 65
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/SingleRectangle;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0017

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 67
    .local v0, "h":I
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/SingleRectangle;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 70
    .local v1, "w":I
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/SingleRectangle;->mParentView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/SingleRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 71
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/SingleRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->prepare(I)V

    .line 73
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/SingleRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {v2, v1, v0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setRectImageSize(II)V

    .line 75
    .end local v0    # "h":I
    .end local v1    # "w":I
    :cond_0
    return-void

    .line 60
    :cond_1
    const/high16 v2, 0x7f030000

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    iput-object v2, p0, Lcom/sonyericsson/android/camera/view/SingleRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    goto :goto_0
.end method

.method protected onAfFail(Lcom/sonyericsson/android/camera/device/AutoFocusListener$Result;)V
    .locals 1
    .param p1, "result"    # Lcom/sonyericsson/android/camera/device/AutoFocusListener$Result;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/SingleRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/SingleRectangle;->startFadeoutAnimation(Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;)V

    .line 153
    return-void
.end method

.method protected onAfSuccess(Lcom/sonyericsson/android/camera/device/AutoFocusListener$Result;)V
    .locals 2
    .param p1, "result"    # Lcom/sonyericsson/android/camera/device/AutoFocusListener$Result;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/SingleRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/SingleRectangle;->getSuccessIcon()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->changeRectangleResource(I)V

    .line 158
    return-void
.end method

.method protected onRecording(Lcom/sonyericsson/android/camera/device/AutoFocusListener$Result;)V
    .locals 0
    .param p1, "result"    # Lcom/sonyericsson/android/camera/device/AutoFocusListener$Result;

    .prologue
    .line 163
    return-void
.end method

.method protected resetColor()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/SingleRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/SingleRectangle;->getNormalIcon()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->changeRectangleResource(I)V

    .line 148
    return-void
.end method

.method protected select(Landroid/graphics/Rect;Z)V
    .locals 0
    .param p1, "position"    # Landroid/graphics/Rect;
    .param p2, "doAnimation"    # Z

    .prologue
    .line 125
    return-void
.end method

.method protected setPosition([Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "position"    # [Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    .line 88
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/SingleRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    aget-object v1, p1, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    aget-object v2, p1, v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setRectCenter(II)V

    .line 89
    return-void
.end method

.method protected setSurfaceSize(IIIZ)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "orientation"    # I
    .param p4, "alignParentLeft"    # Z

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/SingleRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {v0, p1, p2, p4}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setSize(IIZ)V

    .line 143
    return-void
.end method

.method protected show()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/SingleRectangle;->mState:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;

    sget-object v1, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;->INACTIVE:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;

    if-eq v0, v1, :cond_0

    .line 102
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/SingleRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setVisibility(I)V

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/SingleRectangle;->hide()V

    goto :goto_0
.end method

.method public showAsFrame()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/SingleRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setVisibility(I)V

    .line 114
    return-void
.end method
