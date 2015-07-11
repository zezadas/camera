.class public Lcom/sonymobile/cameracommon/multiframerenderer/Vector2dUtil;
.super Ljava/lang/Object;
.source "Vector2dUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static crossProduct(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 3
    .param p0, "vec0"    # Landroid/graphics/PointF;
    .param p1, "vec1"    # Landroid/graphics/PointF;

    .prologue
    .line 96
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method public static getCrossPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 8
    .param p0, "pA0"    # Landroid/graphics/PointF;
    .param p1, "pA1"    # Landroid/graphics/PointF;
    .param p2, "pB0"    # Landroid/graphics/PointF;
    .param p3, "pB1"    # Landroid/graphics/PointF;
    .param p4, "out"    # Landroid/graphics/PointF;

    .prologue
    .line 29
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    .line 30
    .local v2, "dA":Landroid/graphics/PointF;
    iget v6, p1, Landroid/graphics/PointF;->x:F

    iget v7, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v7

    iput v6, v2, Landroid/graphics/PointF;->x:F

    .line 31
    iget v6, p1, Landroid/graphics/PointF;->y:F

    iget v7, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v7

    iput v6, v2, Landroid/graphics/PointF;->y:F

    .line 33
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    .line 34
    .local v3, "dB":Landroid/graphics/PointF;
    iget v6, p3, Landroid/graphics/PointF;->x:F

    iget v7, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v7

    iput v6, v3, Landroid/graphics/PointF;->x:F

    .line 35
    iget v6, p3, Landroid/graphics/PointF;->y:F

    iget v7, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v7

    iput v6, v3, Landroid/graphics/PointF;->y:F

    .line 37
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    .line 38
    .local v4, "dBA":Landroid/graphics/PointF;
    iget v6, p2, Landroid/graphics/PointF;->x:F

    iget v7, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v7

    iput v6, v4, Landroid/graphics/PointF;->x:F

    .line 39
    iget v6, p2, Landroid/graphics/PointF;->y:F

    iget v7, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v7

    iput v6, v4, Landroid/graphics/PointF;->y:F

    .line 41
    invoke-static {v3, v2}, Lcom/sonymobile/cameracommon/multiframerenderer/Vector2dUtil;->crossProduct(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    .line 42
    .local v0, "c0":F
    invoke-static {v3, v4}, Lcom/sonymobile/cameracommon/multiframerenderer/Vector2dUtil;->crossProduct(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v1

    .line 44
    .local v1, "c1":F
    const/4 v5, 0x0

    .line 45
    .local v5, "t":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_0

    .line 46
    const/4 v5, 0x0

    .line 51
    :goto_0
    iget v6, v2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v6, v5

    iget v7, p0, Landroid/graphics/PointF;->x:F

    add-float/2addr v6, v7

    iput v6, p4, Landroid/graphics/PointF;->x:F

    .line 52
    iget v6, v2, Landroid/graphics/PointF;->y:F

    mul-float/2addr v6, v5

    iget v7, p0, Landroid/graphics/PointF;->y:F

    add-float/2addr v6, v7

    iput v6, p4, Landroid/graphics/PointF;->y:F

    .line 53
    return-void

    .line 48
    :cond_0
    div-float v5, v1, v0

    goto :goto_0
.end method

.method public static getDistanceFromSegment(Landroid/graphics/PointF;Landroid/graphics/PointF;FF)F
    .locals 5
    .param p0, "segPoint0"    # Landroid/graphics/PointF;
    .param p1, "segPoint1"    # Landroid/graphics/PointF;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 66
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    .line 67
    .local v1, "dS":Landroid/graphics/PointF;
    iget v3, p1, Landroid/graphics/PointF;->x:F

    iget v4, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    iput v3, v1, Landroid/graphics/PointF;->x:F

    .line 68
    iget v3, p1, Landroid/graphics/PointF;->y:F

    iget v4, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    iput v3, v1, Landroid/graphics/PointF;->y:F

    .line 70
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 71
    .local v0, "dPS":Landroid/graphics/PointF;
    iget v3, p0, Landroid/graphics/PointF;->x:F

    sub-float v3, p2, v3

    iput v3, v0, Landroid/graphics/PointF;->x:F

    .line 72
    iget v3, p0, Landroid/graphics/PointF;->y:F

    sub-float v3, p3, v3

    iput v3, v0, Landroid/graphics/PointF;->y:F

    .line 74
    invoke-static {v1, v0}, Lcom/sonymobile/cameracommon/multiframerenderer/Vector2dUtil;->crossProduct(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v3

    invoke-static {v1}, Lcom/sonymobile/cameracommon/multiframerenderer/Vector2dUtil;->length(Landroid/graphics/PointF;)F

    move-result v4

    div-float v2, v3, v4

    .line 75
    .local v2, "distance":F
    return v2
.end method

.method public static isLeftSide(Landroid/graphics/PointF;Landroid/graphics/PointF;FF)Z
    .locals 8
    .param p0, "p0"    # Landroid/graphics/PointF;
    .param p1, "p1"    # Landroid/graphics/PointF;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 109
    iget v4, p1, Landroid/graphics/PointF;->x:F

    iget v5, p0, Landroid/graphics/PointF;->x:F

    sub-float v0, v4, v5

    .line 110
    .local v0, "vec0x":F
    iget v4, p0, Landroid/graphics/PointF;->x:F

    sub-float v2, p2, v4

    .line 112
    .local v2, "vec1x":F
    iget v4, p1, Landroid/graphics/PointF;->y:F

    iget v5, p0, Landroid/graphics/PointF;->y:F

    sub-float v1, v4, v5

    .line 113
    .local v1, "vec0y":F
    iget v4, p0, Landroid/graphics/PointF;->y:F

    sub-float v3, p3, v4

    .line 115
    .local v3, "vec1y":F
    mul-float v4, v0, v3

    mul-float v5, v2, v1

    sub-float/2addr v4, v5

    float-to-double v4, v4

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static length(Landroid/graphics/PointF;)F
    .locals 3
    .param p0, "vec"    # Landroid/graphics/PointF;

    .prologue
    .line 85
    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget v1, p0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/graphics/PointF;->y:F

    iget v2, p0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static limit(FFF)F
    .locals 1
    .param p0, "value"    # F
    .param p1, "min"    # F
    .param p2, "max"    # F

    .prologue
    .line 127
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    .line 132
    .end local p1    # "min":F
    :goto_0
    return p1

    .line 129
    .restart local p1    # "min":F
    :cond_0
    cmpl-float v0, p0, p2

    if-lez v0, :cond_1

    move p1, p2

    .line 130
    goto :goto_0

    :cond_1
    move p1, p0

    .line 132
    goto :goto_0
.end method
