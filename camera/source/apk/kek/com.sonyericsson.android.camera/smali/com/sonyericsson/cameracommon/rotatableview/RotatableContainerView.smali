.class public Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;
.super Landroid/widget/FrameLayout;
.source "RotatableContainerView.java"


# instance fields
.field private mContainerView:Landroid/widget/FrameLayout;

.field private mCustomizableView:Landroid/widget/FrameLayout;

.field private mUiOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->mUiOrientation:I

    .line 33
    return-void
.end method

.method private isPortraitUi()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 116
    iget v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->mUiOrientation:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setLandscapeUi(IIZ)V
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "isReverse"    # Z

    .prologue
    .line 79
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 80
    .local v2, "size":I
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->mContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 81
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->mContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 82
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->requestLayout()V

    .line 84
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->mCustomizableView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    .line 85
    .local v1, "backgroundW":I
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->mCustomizableView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    .line 86
    .local v0, "backgroundH":I
    if-ne v1, p1, :cond_0

    if-eq v0, p2, :cond_1

    .line 87
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->mCustomizableView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput p1, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 88
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->mCustomizableView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput p2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 89
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->mCustomizableView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 92
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->mCustomizableView:Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setRotation(F)V

    .line 93
    return-void
.end method

.method private setPortraitUi(IIZ)V
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "isReverse"    # Z

    .prologue
    .line 96
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 97
    .local v2, "size":I
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->mContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 98
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->mContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 99
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->requestLayout()V

    .line 101
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->mCustomizableView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    .line 102
    .local v1, "backgroundW":I
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->mCustomizableView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    .line 103
    .local v0, "backgroundH":I
    if-ne v1, p2, :cond_0

    if-eq v0, p1, :cond_1

    .line 104
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->mCustomizableView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput p2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 105
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->mCustomizableView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput p1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 106
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->mCustomizableView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 108
    :cond_1
    if-eqz p3, :cond_2

    .line 109
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->mCustomizableView:Landroid/widget/FrameLayout;

    const/high16 v4, 0x42b40000    # 90.0f

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setRotation(F)V

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->mCustomizableView:Landroid/widget/FrameLayout;

    const/high16 v4, 0x43870000    # 270.0f

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setRotation(F)V

    goto :goto_0
.end method


# virtual methods
.method public getCustamizableView()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->mCustomizableView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 38
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->container:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->mContainerView:Landroid/widget/FrameLayout;

    .line 39
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->overlay:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->mCustomizableView:Landroid/widget/FrameLayout;

    .line 40
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v3, 0x0

    .line 50
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v2, p1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->getDefaultSize(II)I

    move-result v1

    .line 51
    .local v1, "estimatedWidth":I
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v2, p2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->getDefaultSize(II)I

    move-result v0

    .line 53
    .local v0, "estimatedHeight":I
    iget v2, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->mUiOrientation:I

    if-nez v2, :cond_0

    .line 54
    invoke-direct {p0, v1, v0, v3}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->setLandscapeUi(IIZ)V

    .line 64
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 65
    return-void

    .line 57
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->isPortraitUi()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 58
    invoke-direct {p0, v1, v0, v3}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->setPortraitUi(IIZ)V

    goto :goto_0

    .line 60
    :cond_1
    invoke-direct {p0, v1, v0, v3}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->setLandscapeUi(IIZ)V

    goto :goto_0
.end method

.method public setUiOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 72
    iget v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->mUiOrientation:I

    if-eq v0, p1, :cond_0

    .line 73
    iput p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->mUiOrientation:I

    .line 74
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableContainerView;->requestLayout()V

    .line 76
    :cond_0
    return-void
.end method
