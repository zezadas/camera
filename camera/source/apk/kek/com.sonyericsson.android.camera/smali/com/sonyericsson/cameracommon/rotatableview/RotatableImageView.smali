.class public Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;
.super Landroid/widget/ImageView;
.source "RotatableImageView.java"


# instance fields
.field private mFixRotation:I

.field private mHeight:I

.field private mPrepared:Z

.field private mSensorOrientation:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mSensorOrientation:I

    .line 33
    iput v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mFixRotation:I

    .line 35
    iput v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mWidth:I

    .line 36
    iput v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mHeight:I

    .line 38
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mPrepared:Z

    .line 42
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mSensorOrientation:I

    .line 33
    iput v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mFixRotation:I

    .line 35
    iput v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mWidth:I

    .line 36
    iput v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mHeight:I

    .line 38
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mPrepared:Z

    .line 47
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mSensorOrientation:I

    .line 33
    iput v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mFixRotation:I

    .line 35
    iput v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mWidth:I

    .line 36
    iput v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mHeight:I

    .line 38
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mPrepared:Z

    .line 52
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 53
    return-void
.end method


# virtual methods
.method public clearFixedRotate(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 175
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mFixRotation:I

    .line 176
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->update()V

    .line 177
    return-void
.end method

.method public fixRotation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 170
    iput p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mFixRotation:I

    .line 171
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->update()V

    .line 172
    return-void
.end method

.method protected isPrepared()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mPrepared:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 79
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 80
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->setWidthHeight(II)V

    .line 82
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->update()V

    .line 84
    :cond_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 151
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 152
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->update()V

    .line 153
    return-void
.end method

.method public setImageResource(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 158
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 159
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->update()V

    .line 160
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 165
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 166
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->update()V

    .line 167
    return-void
.end method

.method public setSensorOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mSensorOrientation:I

    .line 93
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->update()V

    .line 94
    return-void
.end method

.method public setWidthHeight(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mWidth:I

    .line 63
    iput p2, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mHeight:I

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mPrepared:Z

    .line 65
    return-void
.end method

.method public update()V
    .locals 11

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    .line 100
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->isPrepared()Z

    move-result v8

    if-nez v8, :cond_0

    .line 146
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->getWidth()I

    move-result v7

    .line 105
    .local v7, "width":I
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->getHeight()I

    move-result v2

    .line 106
    .local v2, "height":I
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 107
    .local v3, "matrix":Landroid/graphics/Matrix;
    iget v4, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mSensorOrientation:I

    .line 109
    .local v4, "orientation":I
    iget v8, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mFixRotation:I

    if-eqz v8, :cond_1

    .line 110
    iget v4, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mFixRotation:I

    .line 114
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 115
    iget v8, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mWidth:I

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    int-to-float v9, v9

    div-float v6, v8, v9

    .line 116
    .local v6, "wScale":F
    iget v8, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mHeight:I

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    int-to-float v9, v9

    div-float v1, v8, v9

    .line 117
    .local v1, "hScale":F
    invoke-virtual {v3, v6, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 121
    .end local v1    # "hScale":F
    .end local v6    # "wScale":F
    :cond_2
    const/4 v8, 0x1

    if-ne v4, v8, :cond_3

    .line 122
    const/16 v0, -0x5a

    .line 125
    .local v0, "degrees":I
    int-to-float v8, v7

    neg-float v8, v8

    div-float/2addr v8, v10

    int-to-float v9, v2

    neg-float v9, v9

    div-float/2addr v9, v10

    invoke-virtual {v3, v8, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 126
    int-to-float v8, v0

    invoke-virtual {v3, v8}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 127
    int-to-float v8, v2

    div-float/2addr v8, v10

    int-to-float v9, v7

    div-float/2addr v9, v10

    invoke-virtual {v3, v8, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 129
    iget v7, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mHeight:I

    .line 130
    iget v2, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mWidth:I

    .line 137
    .end local v0    # "degrees":I
    :goto_1
    invoke-virtual {p0, v3}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 140
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 141
    .local v5, "params":Landroid/view/ViewGroup$LayoutParams;
    iput v2, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 142
    iput v7, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 143
    invoke-virtual {p0, v5}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->requestLayout()V

    goto :goto_0

    .line 132
    .end local v5    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    iget v7, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mWidth:I

    .line 133
    iget v2, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableImageView;->mHeight:I

    goto :goto_1
.end method
