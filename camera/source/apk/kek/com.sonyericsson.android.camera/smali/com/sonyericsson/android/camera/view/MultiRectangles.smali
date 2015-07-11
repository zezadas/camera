.class public Lcom/sonyericsson/android/camera/view/MultiRectangles;
.super Lcom/sonyericsson/android/camera/view/FocusRectangleWithStateMachine;
.source "MultiRectangles.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mRectangles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/sonyericsson/android/camera/view/MultiRectangles;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/view/MultiRectangles;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "parentView"    # Landroid/view/ViewGroup;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/FocusRectangleWithStateMachine;-><init>(Landroid/view/ViewGroup;)V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/MultiRectangles;->mRectangles:Ljava/util/List;

    .line 48
    return-void
.end method


# virtual methods
.method protected deselect()V
    .locals 0

    .prologue
    .line 177
    return-void
.end method

.method protected finish()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/MultiRectangles;->mRectangles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 58
    return-void
.end method

.method protected hide()V
    .locals 3

    .prologue
    .line 123
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/MultiRectangles;->mRectangles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 124
    .local v1, "rectangle":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setVisibility(I)V

    goto :goto_0

    .line 126
    .end local v1    # "rectangle":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    :cond_0
    return-void
.end method

.method public init(Landroid/view/LayoutInflater;I)V
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "rectCount"    # I

    .prologue
    .line 145
    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/MultiRectangles;->mRectangles:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int v0, p2, v5

    .line 146
    .local v0, "createNumber":I
    if-lez v0, :cond_0

    .line 149
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 150
    const/high16 v5, 0x7f030000

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 153
    .local v3, "rectangle":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/MultiRectangles;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0019

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 155
    .local v1, "h":I
    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/MultiRectangles;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0018

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 158
    .local v4, "w":I
    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/MultiRectangles;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 159
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->prepare(I)V

    .line 161
    invoke-virtual {v3, v4, v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setRectImageSize(II)V

    .line 164
    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/MultiRectangles;->mRectangles:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 167
    .end local v1    # "h":I
    .end local v2    # "i":I
    .end local v3    # "rectangle":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    .end local v4    # "w":I
    :cond_0
    return-void
.end method

.method protected init(Landroid/view/LayoutInflater;[Landroid/view/View;)V
    .locals 0
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "preInflatedView"    # [Landroid/view/View;

    .prologue
    .line 53
    return-void
.end method

.method protected onAfFail(Lcom/sonyericsson/android/camera/device/AutoFocusListener$Result;)V
    .locals 3
    .param p1, "result"    # Lcom/sonyericsson/android/camera/device/AutoFocusListener$Result;

    .prologue
    .line 69
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/MultiRectangles;->mRectangles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 70
    .local v1, "rectangle":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/MultiRectangles;->startFadeoutAnimation(Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;)V

    goto :goto_0

    .line 72
    .end local v1    # "rectangle":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    :cond_0
    return-void
.end method

.method protected onAfSuccess(Lcom/sonyericsson/android/camera/device/AutoFocusListener$Result;)V
    .locals 4
    .param p1, "result"    # Lcom/sonyericsson/android/camera/device/AutoFocusListener$Result;

    .prologue
    .line 81
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/MultiRectangles;->mRectangles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 82
    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Lcom/sonyericsson/android/camera/device/AutoFocusListener$Result;->isFocused(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 83
    .local v1, "sccess":Z
    :goto_1
    if-eqz v1, :cond_1

    .line 84
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/MultiRectangles;->mRectangles:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    sget v3, Lcom/sonyericsson/cameracommon/focusview/CommonResources$SingleIndicator;->SUCCESS:I

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->changeRectangleResource(I)V

    .line 81
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    .end local v1    # "sccess":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 87
    .restart local v1    # "sccess":Z
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/MultiRectangles;->mRectangles:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    sget v3, Lcom/sonyericsson/cameracommon/focusview/CommonResources$SingleIndicator;->NORMAL:I

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->changeRectangleResource(I)V

    goto :goto_2

    .line 92
    .end local v1    # "sccess":Z
    :cond_2
    return-void
.end method

.method protected onRecording(Lcom/sonyericsson/android/camera/device/AutoFocusListener$Result;)V
    .locals 0
    .param p1, "result"    # Lcom/sonyericsson/android/camera/device/AutoFocusListener$Result;

    .prologue
    .line 77
    return-void
.end method

.method protected resetColor()V
    .locals 3

    .prologue
    .line 62
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/MultiRectangles;->mRectangles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 63
    .local v1, "rectangle":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    sget v2, Lcom/sonyericsson/cameracommon/focusview/CommonResources$SingleIndicator;->NORMAL:I

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->changeRectangleResource(I)V

    goto :goto_0

    .line 65
    .end local v1    # "rectangle":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    :cond_0
    return-void
.end method

.method protected select(Landroid/graphics/Rect;Z)V
    .locals 0
    .param p1, "position"    # Landroid/graphics/Rect;
    .param p2, "doAnimation"    # Z

    .prologue
    .line 172
    return-void
.end method

.method protected setPosition([Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "position"    # [Landroid/graphics/Rect;

    .prologue
    .line 99
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 106
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/MultiRectangles;->mRectangles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/MultiRectangles;->mRectangles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    aget-object v2, p1, v0

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    aget-object v3, p1, v0

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setRectCenter(II)V

    .line 99
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    :cond_1
    return-void
.end method

.method protected setSurfaceSize(IIIZ)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "orientation"    # I
    .param p4, "alignParentLeft"    # Z

    .prologue
    .line 138
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/MultiRectangles;->mRectangles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 139
    .local v1, "rectangle":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    invoke-virtual {v1, p1, p2, p4}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setSize(IIZ)V

    goto :goto_0

    .line 141
    .end local v1    # "rectangle":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    :cond_0
    return-void
.end method

.method protected show()V
    .locals 4

    .prologue
    .line 114
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/MultiRectangles;->mState:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;

    sget-object v3, Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;->INACTIVE:Lcom/sonyericsson/android/camera/view/FocusRectanglesManager$RectangleState;

    if-eq v2, v3, :cond_0

    .line 115
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/MultiRectangles;->mRectangles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 116
    .local v1, "rectangle":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setVisibility(I)V

    goto :goto_0

    .line 119
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "rectangle":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    :cond_0
    return-void
.end method
