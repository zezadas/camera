.class public Lcom/sonyericsson/android/camera/view/RotatableImageView;
.super Landroid/widget/ImageView;
.source "RotatableImageView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RotatableImageView"


# instance fields
.field private mFixRotation:I

.field private mHeight:I

.field private mPrepared:Z

.field private mSensorOrientation:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 37
    iput v0, p0, Lcom/sonyericsson/android/camera/view/RotatableImageView;->mSensorOrientation:I

    .line 39
    iput v0, p0, Lcom/sonyericsson/android/camera/view/RotatableImageView;->mFixRotation:I

    .line 41
    iput v0, p0, Lcom/sonyericsson/android/camera/view/RotatableImageView;->mWidth:I

    .line 42
    iput v0, p0, Lcom/sonyericsson/android/camera/view/RotatableImageView;->mHeight:I

    .line 44
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/RotatableImageView;->mPrepared:Z

    .line 48
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/RotatableImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    iput v0, p0, Lcom/sonyericsson/android/camera/view/RotatableImageView;->mSensorOrientation:I

    .line 39
    iput v0, p0, Lcom/sonyericsson/android/camera/view/RotatableImageView;->mFixRotation:I

    .line 41
    iput v0, p0, Lcom/sonyericsson/android/camera/view/RotatableImageView;->mWidth:I

    .line 42
    iput v0, p0, Lcom/sonyericsson/android/camera/view/RotatableImageView;->mHeight:I

    .line 44
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/RotatableImageView;->mPrepared:Z

    .line 53
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/RotatableImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    iput v0, p0, Lcom/sonyericsson/android/camera/view/RotatableImageView;->mSensorOrientation:I

    .line 39
    iput v0, p0, Lcom/sonyericsson/android/camera/view/RotatableImageView;->mFixRotation:I

    .line 41
    iput v0, p0, Lcom/sonyericsson/android/camera/view/RotatableImageView;->mWidth:I

    .line 42
    iput v0, p0, Lcom/sonyericsson/android/camera/view/RotatableImageView;->mHeight:I

    .line 44
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/RotatableImageView;->mPrepared:Z

    .line 58
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/RotatableImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 59
    return-void
.end method


# virtual methods
.method public clearFixedRotate(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 192
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/android/camera/view/RotatableImageView;->mFixRotation:I

    .line 193
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/RotatableImageView;->update()V

    .line 194
    return-void
.end method

.method public fixRotation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 187
    iput p1, p0, Lcom/sonyericsson/android/camera/view/RotatableImageView;->mFixRotation:I

    .line 188
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/RotatableImageView;->update()V

    .line 189
    return-void
.end method

.method protected isPrepared()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/RotatableImageView;->mPrepared:Z

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
    .line 87
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 88
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/RotatableImageView;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/RotatableImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/RotatableImageView;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/view/RotatableImageView;->setWidthHeight(II)V

    .line 90
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/RotatableImageView;->update()V

    .line 92
    :cond_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 168
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 169
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/RotatableImageView;->update()V

    .line 170
    return-void
.end method

.method public setImageResource(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 175
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 176
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/RotatableImageView;->update()V

    .line 177
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 182
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 183
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/RotatableImageView;->update()V

    .line 184
    return-void
.end method

.method public setSensorOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 100
    iput p1, p0, Lcom/sonyericsson/android/camera/view/RotatableImageView;->mSensorOrientation:I

    .line 101
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/RotatableImageView;->update()V

    .line 102
    return-void
.end method

.method public setWidthHeight(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/sonyericsson/android/camera/view/RotatableImageView;->mWidth:I

    .line 71
    iput p2, p0, Lcom/sonyericsson/android/camera/view/RotatableImageView;->mHeight:I

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/RotatableImageView;->mPrepared:Z

    .line 73
    return-void
.end method

.method public update()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/high16 v11, 0x40000000    # 2.0f

    .line 108
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/RotatableImageView;->isPrepared()Z

    move-result v9

    if-nez v9, :cond_0

    .line 163
    :goto_0
    return-void

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/RotatableImageView;->getWidth()I

    move-result v8

    .line 113
    .local v8, "width":I
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/RotatableImageView;->getHeight()I

    move-result v2

    .line 114
    .local v2, "height":I
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 115
    .local v4, "matrix":Landroid/graphics/Matrix;
    iget v5, p0, Lcom/sonyericsson/android/camera/view/RotatableImageView;->mSensorOrientation:I

    .line 116
    .local v5, "orientation":I
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/RotatableImageView;->getContext()Landroid/content/Context;

    move-result-object v9

    check-cast v9, Lcom/sonyericsson/android/camera/ExtendedActivity;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/ExtendedActivity;->getOrientation()I

    move-result v3

    .line 118
    .local v3, "layoutOrientation":I
    iget v9, p0, Lcom/sonyericsson/android/camera/view/RotatableImageView;->mFixRotation:I

    if-eqz v9, :cond_2

    .line 119
    iget v5, p0, Lcom/sonyericsson/android/camera/view/RotatableImageView;->mFixRotation:I

    .line 131
    :goto_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/RotatableImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 132
    iget v9, p0, Lcom/sonyericsson/android/camera/view/RotatableImageView;->mWidth:I

    int-to-float v9, v9

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/RotatableImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    int-to-float v10, v10

    div-float v7, v9, v10

    .line 133
    .local v7, "wScale":F
    iget v9, p0, Lcom/sonyericsson/android/camera/view/RotatableImageView;->mHeight:I

    int-to-float v9, v9

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/RotatableImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    int-to-float v10, v10

    div-float v1, v9, v10

    .line 134
    .local v1, "hScale":F
    invoke-virtual {v4, v7, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 138
    .end local v1    # "hScale":F
    .end local v7    # "wScale":F
    :cond_1
    if-ne v5, v12, :cond_4

    .line 139
    const/16 v0, -0x5a

    .line 142
    .local v0, "degrees":I
    int-to-float v9, v8

    neg-float v9, v9

    div-float/2addr v9, v11

    int-to-float v10, v2

    neg-float v10, v10

    div-float/2addr v10, v11

    invoke-virtual {v4, v9, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 143
    int-to-float v9, v0

    invoke-virtual {v4, v9}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 144
    int-to-float v9, v2

    div-float/2addr v9, v11

    int-to-float v10, v8

    div-float/2addr v10, v11

    invoke-virtual {v4, v9, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 146
    iget v8, p0, Lcom/sonyericsson/android/camera/view/RotatableImageView;->mHeight:I

    .line 147
    iget v2, p0, Lcom/sonyericsson/android/camera/view/RotatableImageView;->mWidth:I

    .line 154
    .end local v0    # "degrees":I
    :goto_2
    invoke-virtual {p0, v4}, Lcom/sonyericsson/android/camera/view/RotatableImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 157
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/RotatableImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 158
    .local v6, "params":Landroid/view/ViewGroup$LayoutParams;
    iput v2, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 159
    iput v8, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 160
    invoke-virtual {p0, v6}, Lcom/sonyericsson/android/camera/view/RotatableImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/RotatableImageView;->requestLayout()V

    goto :goto_0

    .line 121
    .end local v6    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    if-ne v5, v12, :cond_3

    if-eq v3, v12, :cond_3

    .line 124
    const/4 v5, 0x1

    goto :goto_1

    .line 126
    :cond_3
    const/4 v5, 0x2

    goto :goto_1

    .line 149
    :cond_4
    iget v8, p0, Lcom/sonyericsson/android/camera/view/RotatableImageView;->mWidth:I

    .line 150
    iget v2, p0, Lcom/sonyericsson/android/camera/view/RotatableImageView;->mHeight:I

    goto :goto_2
.end method
