.class public Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;
.super Landroid/widget/RelativeLayout;
.source "RotatableTextViewInLayout.java"


# static fields
.field private static final ROTATE_DEGREE:I = -0x5a


# instance fields
.field private mBackground:Landroid/widget/ImageView;

.field private mLayoutHeight:I

.field private mLayoutWidth:I

.field private mSensorOrientation:I

.field private mText:Landroid/widget/TextView;

.field private mTextViewHeightOnLandscape:I

.field private mTextViewHeightOnPortrait:I

.field private mTextViewWidthOnLandscape:I

.field private mTextViewWidthOnPortrait:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mText:Landroid/widget/TextView;

    .line 39
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mBackground:Landroid/widget/ImageView;

    .line 42
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mSensorOrientation:I

    .line 45
    iput v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mLayoutWidth:I

    .line 46
    iput v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mLayoutHeight:I

    .line 49
    iput v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mTextViewWidthOnLandscape:I

    .line 50
    iput v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mTextViewHeightOnLandscape:I

    .line 51
    iput v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mTextViewWidthOnPortrait:I

    .line 52
    iput v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mTextViewHeightOnPortrait:I

    .line 57
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 142
    iget v2, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mSensorOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v4

    .line 145
    .local v1, "width":F
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v2, v4

    .line 147
    .local v0, "height":F
    const/high16 v2, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v2, v1, v0}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 150
    .end local v0    # "height":F
    .end local v1    # "width":F
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 151
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 61
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 63
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->rotatable_text_view_text:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mText:Landroid/widget/TextView;

    .line 65
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mText:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 67
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->rotatable_text_view_background:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mBackground:Landroid/widget/ImageView;

    .line 69
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mBackground:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 70
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldW"    # I
    .param p4, "oldH"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mLayoutWidth:I

    .line 75
    iput p2, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mLayoutHeight:I

    .line 77
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->updateLayout()V

    .line 78
    return-void
.end method

.method public setBackgroundDrawableId(I)V
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 86
    return-void
.end method

.method public setSensorOrientation(I)V
    .locals 0
    .param p1, "orient"    # I

    .prologue
    .line 136
    iput p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mSensorOrientation:I

    .line 137
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->updateLayout()V

    .line 138
    return-void
.end method

.method public setTextResId(I)V
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 82
    return-void
.end method

.method public setTextSizeOnLandscape(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mTextViewWidthOnLandscape:I

    .line 90
    iput p2, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mTextViewHeightOnLandscape:I

    .line 91
    return-void
.end method

.method public setTextSizeOnPortrait(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 94
    iput p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mTextViewWidthOnPortrait:I

    .line 95
    iput p2, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mTextViewHeightOnPortrait:I

    .line 96
    return-void
.end method

.method public updateLayout()V
    .locals 3

    .prologue
    const/16 v1, 0xd

    const/4 v2, 0x0

    .line 99
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 101
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 105
    iget v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mSensorOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 107
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mTextViewWidthOnPortrait:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 110
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mLayoutHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 111
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mTextViewHeightOnPortrait:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 114
    iget v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mLayoutWidth:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mTextViewHeightOnPortrait:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0, v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->scrollTo(II)V

    .line 131
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->requestLayout()V

    .line 132
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->invalidate()V

    .line 133
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mTextViewWidthOnLandscape:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 122
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mLayoutWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 123
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mTextViewHeightOnLandscape:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 126
    iget v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mLayoutHeight:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->mTextViewHeightOnLandscape:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableTextViewInLayout;->scrollTo(II)V

    goto :goto_0
.end method
