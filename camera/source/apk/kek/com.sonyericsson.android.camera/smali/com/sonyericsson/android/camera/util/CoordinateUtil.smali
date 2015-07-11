.class public final Lcom/sonyericsson/android/camera/util/CoordinateUtil;
.super Ljava/lang/Object;
.source "CoordinateUtil.java"


# static fields
.field private static final ROUNDING:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "CoordinateUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertAbsolutePosition2Relative(II)I
    .locals 2
    .param p0, "position"    # I
    .param p1, "length"    # I

    .prologue
    .line 222
    mul-int/lit8 v1, p0, 0x64

    div-int v0, v1, p1

    .line 226
    .local v0, "relative":I
    return v0
.end method

.method public static convertDev2View(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/graphics/Rect;
    .locals 3
    .param p0, "srcArea"    # Landroid/graphics/Rect;
    .param p1, "windowArea"    # Landroid/graphics/Rect;
    .param p2, "orient"    # I

    .prologue
    .line 130
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 131
    .local v0, "dstRect":Landroid/graphics/Rect;
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 132
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 133
    iget v1, p0, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 134
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 135
    iget v1, p0, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 137
    :cond_0
    return-object v0
.end method

.method public static convertDip2Px(Landroid/content/Context;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dip"    # I

    .prologue
    .line 244
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 245
    .local v0, "density":F
    int-to-float v2, p1

    mul-float/2addr v2, v0

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v1, v2

    .line 246
    .local v1, "px":I
    return v1
.end method

.method public static convertDip2Px(Landroid/content/Context;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dip"    # Landroid/graphics/Point;

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    .line 259
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 260
    .local v0, "density":F
    new-instance v1, Landroid/graphics/Point;

    iget v2, p1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    add-float/2addr v2, v4

    float-to-int v2, v2

    iget v3, p1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 262
    .local v1, "px":Landroid/graphics/Point;
    return-object v1
.end method

.method public static convertDip2Px(Landroid/content/Context;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dip"    # Landroid/graphics/Rect;

    .prologue
    const/high16 v6, 0x3f000000    # 0.5f

    .line 275
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 276
    .local v0, "density":F
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    add-float/2addr v2, v6

    float-to-int v2, v2

    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v6

    float-to-int v3, v3

    iget v4, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v4, v6

    float-to-int v4, v4

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    mul-float/2addr v5, v0

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 280
    .local v1, "px":Landroid/graphics/Rect;
    return-object v1
.end method

.method public static convertPositionToAligned(IILandroid/graphics/Rect;Landroid/graphics/Rect;II)Landroid/graphics/Rect;
    .locals 11
    .param p0, "rawX"    # I
    .param p1, "rawY"    # I
    .param p2, "surface"    # Landroid/graphics/Rect;
    .param p3, "touchArea"    # Landroid/graphics/Rect;
    .param p4, "focusWidth"    # I
    .param p5, "focusHeight"    # I

    .prologue
    .line 347
    if-nez p2, :cond_0

    .line 349
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 396
    :goto_0
    return-object v7

    .line 352
    :cond_0
    if-nez p3, :cond_1

    .line 354
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    goto :goto_0

    .line 358
    :cond_1
    invoke-virtual {p2, p0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 359
    iget v3, p2, Landroid/graphics/Rect;->left:I

    .line 360
    .local v3, "offsetX":I
    iget v4, p2, Landroid/graphics/Rect;->top:I

    .line 363
    .local v4, "offsetY":I
    sub-int v7, p0, v3

    div-int/lit8 v8, p4, 0x2

    sub-int v2, v7, v8

    .line 364
    .local v2, "left":I
    sub-int v7, p1, v4

    div-int/lit8 v8, p5, 0x2

    sub-int v6, v7, v8

    .line 366
    .local v6, "top":I
    new-instance v5, Landroid/graphics/Rect;

    iget v7, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v3

    iget v8, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v4

    iget v9, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v3

    sub-int/2addr v9, p4

    iget v10, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v4

    sub-int v10, v10, p5

    invoke-direct {v5, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 372
    .local v5, "positionBound":Landroid/graphics/Rect;
    iget v7, v5, Landroid/graphics/Rect;->left:I

    iget v8, v5, Landroid/graphics/Rect;->right:I

    invoke-static {v8, v2}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 374
    .local v0, "alignedLeft":I
    iget v7, v5, Landroid/graphics/Rect;->top:I

    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    invoke-static {v8, v6}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 389
    .local v1, "alignedTop":I
    new-instance v7, Landroid/graphics/Rect;

    add-int v8, v0, p4

    add-int v9, v1, p5

    invoke-direct {v7, v0, v1, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 396
    .end local v0    # "alignedLeft":I
    .end local v1    # "alignedTop":I
    .end local v2    # "left":I
    .end local v3    # "offsetX":I
    .end local v4    # "offsetY":I
    .end local v5    # "positionBound":Landroid/graphics/Rect;
    .end local v6    # "top":I
    :cond_2
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    goto :goto_0
.end method

.method public static convertPositionToSurface([Landroid/graphics/RectF;III)[Landroid/graphics/Rect;
    .locals 11
    .param p0, "deviceRects"    # [Landroid/graphics/RectF;
    .param p1, "surfaceWidth"    # I
    .param p2, "surfaceHeight"    # I
    .param p3, "orientation"    # I

    .prologue
    .line 158
    array-length v6, p0

    new-array v0, v6, [Landroid/graphics/Rect;

    .line 160
    .local v0, "convertedRects":[Landroid/graphics/Rect;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, p0

    if-ge v5, v6, :cond_0

    .line 161
    aget-object v6, p0, v5

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    int-to-float v7, p1

    mul-float/2addr v6, v7

    float-to-int v3, v6

    .line 162
    .local v3, "deviceX":I
    aget-object v6, p0, v5

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    int-to-float v7, p2

    mul-float/2addr v6, v7

    float-to-int v4, v6

    .line 163
    .local v4, "deviceY":I
    aget-object v6, p0, v5

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    int-to-float v7, p1

    mul-float/2addr v6, v7

    float-to-int v2, v6

    .line 164
    .local v2, "deviceWidth":I
    aget-object v6, p0, v5

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    int-to-float v7, p2

    mul-float/2addr v6, v7

    float-to-int v1, v6

    .line 167
    .local v1, "deviceHeight":I
    new-instance v6, Landroid/graphics/Rect;

    div-int/lit8 v7, v2, 0x2

    sub-int v7, v3, v7

    div-int/lit8 v8, v1, 0x2

    sub-int v8, v4, v8

    div-int/lit8 v9, v2, 0x2

    add-int/2addr v9, v3

    div-int/lit8 v10, v1, 0x2

    add-int/2addr v10, v4

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v6, v0, v5

    .line 160
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 179
    .end local v1    # "deviceHeight":I
    .end local v2    # "deviceWidth":I
    .end local v3    # "deviceX":I
    .end local v4    # "deviceY":I
    :cond_0
    return-object v0
.end method

.method public static convertPx2Dip(Landroid/content/Context;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "px"    # I

    .prologue
    .line 293
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 294
    .local v0, "density":F
    int-to-float v2, p1

    div-float/2addr v2, v0

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v1, v2

    .line 295
    .local v1, "dip":I
    return v1
.end method

.method public static convertPx2Dip(Landroid/content/Context;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "px"    # Landroid/graphics/Point;

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    .line 308
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 309
    .local v0, "density":F
    new-instance v1, Landroid/graphics/Point;

    iget v2, p1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    div-float/2addr v2, v0

    add-float/2addr v2, v4

    float-to-int v2, v2

    iget v3, p1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    div-float/2addr v3, v0

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 311
    .local v1, "dip":Landroid/graphics/Point;
    return-object v1
.end method

.method public static convertPx2Dip(Landroid/content/Context;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "px"    # Landroid/graphics/Rect;

    .prologue
    const/high16 v6, 0x3f000000    # 0.5f

    .line 324
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 325
    .local v0, "density":F
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    div-float/2addr v2, v0

    add-float/2addr v2, v6

    float-to-int v2, v2

    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    div-float/2addr v3, v0

    add-float/2addr v3, v6

    float-to-int v3, v3

    iget v4, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    div-float/2addr v4, v0

    add-float/2addr v4, v6

    float-to-int v4, v4

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    div-float/2addr v5, v0

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 328
    .local v1, "dip":Landroid/graphics/Rect;
    return-object v1
.end method

.method public static convertView2Dev(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/graphics/Rect;
    .locals 3
    .param p0, "srcArea"    # Landroid/graphics/Rect;
    .param p1, "windowArea"    # Landroid/graphics/Rect;
    .param p2, "orient"    # I

    .prologue
    .line 205
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 206
    .local v0, "dstRect":Landroid/graphics/Rect;
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 207
    iget v1, p0, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 208
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 209
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 210
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 212
    :cond_0
    return-object v0
.end method

.method public static scale(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 9
    .param p0, "original"    # Landroid/graphics/Rect;
    .param p1, "base"    # Landroid/graphics/Rect;
    .param p2, "disp"    # Landroid/graphics/Rect;

    .prologue
    .line 45
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 46
    .local v4, "origHeight":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 47
    .local v5, "origWidth":I
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 48
    .local v6, "showHeight":I
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 58
    .local v7, "showWidth":I
    iget v8, p0, Landroid/graphics/Rect;->top:I

    mul-int/2addr v8, v6

    div-int v3, v8, v4

    .line 59
    .local v3, "dispTop":I
    iget v8, p0, Landroid/graphics/Rect;->left:I

    mul-int/2addr v8, v7

    div-int v1, v8, v5

    .line 60
    .local v1, "dispLeft":I
    iget v8, p0, Landroid/graphics/Rect;->bottom:I

    mul-int/2addr v8, v6

    div-int v0, v8, v4

    .line 61
    .local v0, "dispBottom":I
    iget v8, p0, Landroid/graphics/Rect;->right:I

    mul-int/2addr v8, v7

    div-int v2, v8, v5

    .line 69
    .local v2, "dispRight":I
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v1, v3, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v8
.end method

.method public static scale2Dev(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 23
    .param p0, "src"    # Landroid/graphics/Rect;
    .param p1, "picture"    # Landroid/graphics/Rect;
    .param p2, "disp"    # Landroid/graphics/Rect;

    .prologue
    .line 73
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v10

    .line 74
    .local v10, "origHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v11

    .line 75
    .local v11, "origWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v16

    .line 76
    .local v16, "showHeight":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v17

    .line 80
    .local v17, "showWidth":I
    int-to-double v0, v11

    move-wide/from16 v18, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v20, v0

    div-double v14, v18, v20

    .line 81
    .local v14, "ratio_w":D
    int-to-double v0, v10

    move-wide/from16 v18, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v20, v0

    div-double v12, v18, v20

    .line 92
    .local v12, "ratio_h":D
    move-object/from16 v0, p0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    mul-double v8, v18, v12

    .line 93
    .local v8, "devTop":D
    move-object/from16 v0, p0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    mul-double v4, v18, v14

    .line 94
    .local v4, "devLeft":D
    move-object/from16 v0, p0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    mul-double v2, v18, v12

    .line 95
    .local v2, "devBottom":D
    move-object/from16 v0, p0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    mul-double v6, v18, v14

    .line 104
    .local v6, "devRight":D
    new-instance v18, Landroid/graphics/Rect;

    double-to-int v0, v4

    move/from16 v19, v0

    double-to-int v0, v8

    move/from16 v20, v0

    double-to-int v0, v6

    move/from16 v21, v0

    double-to-int v0, v2

    move/from16 v22, v0

    invoke-direct/range {v18 .. v22}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v18
.end method
