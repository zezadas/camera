.class public Lcom/sonymobile/cameracommon/multiframerenderer/CoordConvertUtil;
.super Ljava/lang/Object;
.source "CoordConvertUtil.java"


# static fields
.field private static final sIdentityMatrix:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Lcom/sonymobile/cameracommon/multiframerenderer/CoordConvertUtil;->sIdentityMatrix:[F

    .line 24
    sget-object v0, Lcom/sonymobile/cameracommon/multiframerenderer/CoordConvertUtil;->sIdentityMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCrossCoordWithPlaneAndLine(FFFF[F[F)[F
    .locals 7
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F
    .param p3, "d"    # F
    .param p4, "vecFrom"    # [F
    .param p5, "vecTo"    # [F

    .prologue
    .line 130
    const/4 v4, 0x4

    new-array v3, v4, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget v5, p5, v5

    const/4 v6, 0x0

    aget v6, p4, v6

    sub-float/2addr v5, v6

    aput v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    aget v5, p5, v5

    const/4 v6, 0x1

    aget v6, p4, v6

    sub-float/2addr v5, v6

    aput v5, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x2

    aget v5, p5, v5

    const/4 v6, 0x2

    aget v6, p4, v6

    sub-float/2addr v5, v6

    aput v5, v3, v4

    const/4 v4, 0x3

    const/4 v5, 0x3

    aget v5, p5, v5

    const/4 v6, 0x3

    aget v6, p4, v6

    sub-float/2addr v5, v6

    aput v5, v3, v4

    .line 136
    .local v3, "vecRay":[F
    const/4 v4, 0x0

    aget v4, v3, v4

    mul-float/2addr v4, p0

    const/4 v5, 0x1

    aget v5, v3, v5

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    const/4 v5, 0x2

    aget v5, v3, v5

    mul-float/2addr v5, p2

    add-float v1, v4, v5

    .line 137
    .local v1, "parallelism":F
    const/4 v4, 0x0

    cmpl-float v4, v1, v4

    if-nez v4, :cond_0

    .line 139
    const/4 v0, 0x0

    .line 150
    :goto_0
    return-object v0

    .line 142
    :cond_0
    const/4 v4, 0x0

    aget v4, p4, v4

    mul-float/2addr v4, p0

    const/4 v5, 0x1

    aget v5, p4, v5

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    const/4 v5, 0x2

    aget v5, p4, v5

    mul-float/2addr v5, p2

    add-float/2addr v4, v5

    sub-float v4, p3, v4

    div-float v2, v4, v1

    .line 144
    .local v2, "t":F
    const/4 v4, 0x4

    new-array v0, v4, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget v5, p4, v5

    const/4 v6, 0x0

    aget v6, v3, v6

    mul-float/2addr v6, v2

    add-float/2addr v5, v6

    aput v5, v0, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    aget v5, p4, v5

    const/4 v6, 0x1

    aget v6, v3, v6

    mul-float/2addr v6, v2

    add-float/2addr v5, v6

    aput v5, v0, v4

    const/4 v4, 0x2

    const/4 v5, 0x2

    aget v5, p4, v5

    const/4 v6, 0x2

    aget v6, v3, v6

    mul-float/2addr v6, v2

    add-float/2addr v5, v6

    aput v5, v0, v4

    const/4 v4, 0x3

    const/4 v5, 0x3

    aget v5, p4, v5

    const/4 v6, 0x3

    aget v6, v3, v6

    mul-float/2addr v6, v2

    add-float/2addr v5, v6

    aput v5, v0, v4

    .line 150
    .local v0, "out":[F
    goto :goto_0
.end method

.method public static getObjectCoord(FF[F[F[I[F)Landroid/graphics/PointF;
    .locals 20
    .param p0, "winX"    # F
    .param p1, "winY"    # F
    .param p2, "projectionMatrix"    # [F
    .param p3, "mvpMatrix"    # [F
    .param p4, "viewPort"    # [I
    .param p5, "lookAtPosition"    # [F

    .prologue
    .line 77
    invoke-virtual/range {p3 .. p3}, [F->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    .line 81
    .local v3, "mvpMat":[F
    const/4 v2, 0x4

    new-array v1, v2, [F

    fill-array-data v1, :array_0

    .line 82
    .local v1, "p0":[F
    const/4 v2, 0x4

    new-array v14, v2, [F

    fill-array-data v14, :array_1

    .line 83
    .local v14, "p1":[F
    const/4 v2, 0x4

    new-array v15, v2, [F

    fill-array-data v15, :array_2

    .line 85
    .local v15, "p2":[F
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v5, v1

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 86
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v4, v14

    move-object v6, v3

    move-object v8, v14

    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 87
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v4, v15

    move-object v6, v3

    move-object v8, v15

    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 89
    const/4 v2, 0x3

    new-array v0, v2, [F

    move-object/from16 v18, v0

    const/4 v2, 0x0

    const/4 v7, 0x0

    aget v7, v14, v7

    const/4 v8, 0x0

    aget v8, v1, v8

    sub-float/2addr v7, v8

    aput v7, v18, v2

    const/4 v2, 0x1

    const/4 v7, 0x1

    aget v7, v14, v7

    const/4 v8, 0x1

    aget v8, v1, v8

    sub-float/2addr v7, v8

    aput v7, v18, v2

    const/4 v2, 0x2

    const/4 v7, 0x2

    aget v7, v14, v7

    const/4 v8, 0x2

    aget v8, v1, v8

    sub-float/2addr v7, v8

    aput v7, v18, v2

    .line 90
    .local v18, "vec10":[F
    const/4 v2, 0x3

    new-array v0, v2, [F

    move-object/from16 v19, v0

    const/4 v2, 0x0

    const/4 v7, 0x0

    aget v7, v15, v7

    const/4 v8, 0x0

    aget v8, v1, v8

    sub-float/2addr v7, v8

    aput v7, v19, v2

    const/4 v2, 0x1

    const/4 v7, 0x1

    aget v7, v15, v7

    const/4 v8, 0x1

    aget v8, v1, v8

    sub-float/2addr v7, v8

    aput v7, v19, v2

    const/4 v2, 0x2

    const/4 v7, 0x2

    aget v7, v15, v7

    const/4 v8, 0x2

    aget v8, v1, v8

    sub-float/2addr v7, v8

    aput v7, v19, v2

    .line 93
    .local v19, "vec20":[F
    const/4 v2, 0x3

    new-array v12, v2, [F

    const/4 v2, 0x0

    const/4 v7, 0x1

    aget v7, v18, v7

    const/4 v8, 0x2

    aget v8, v19, v8

    mul-float/2addr v7, v8

    const/4 v8, 0x2

    aget v8, v18, v8

    const/4 v9, 0x1

    aget v9, v19, v9

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    aput v7, v12, v2

    const/4 v2, 0x1

    const/4 v7, 0x2

    aget v7, v18, v7

    const/4 v8, 0x0

    aget v8, v19, v8

    mul-float/2addr v7, v8

    const/4 v8, 0x0

    aget v8, v18, v8

    const/4 v9, 0x2

    aget v9, v19, v9

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    aput v7, v12, v2

    const/4 v2, 0x2

    const/4 v7, 0x0

    aget v7, v18, v7

    const/4 v8, 0x1

    aget v8, v19, v8

    mul-float/2addr v7, v8

    const/4 v8, 0x1

    aget v8, v18, v8

    const/4 v9, 0x0

    aget v9, v19, v9

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    aput v7, v12, v2

    .line 99
    .local v12, "cross":[F
    const/4 v2, 0x0

    aget v2, v12, v2

    const/4 v7, 0x0

    aget v7, v1, v7

    mul-float/2addr v2, v7

    const/4 v7, 0x1

    aget v7, v12, v7

    const/4 v8, 0x1

    aget v8, v1, v8

    mul-float/2addr v7, v8

    add-float/2addr v2, v7

    const/4 v7, 0x2

    aget v7, v12, v7

    const/4 v8, 0x2

    aget v8, v1, v8

    mul-float/2addr v7, v8

    add-float v13, v2, v7

    .line 101
    .local v13, "d":F
    move/from16 v16, p0

    .line 102
    .local v16, "screenX":F
    const/4 v2, 0x3

    aget v2, p4, v2

    const/4 v7, 0x1

    aget v7, p4, v7

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v2, v7

    int-to-float v2, v2

    sub-float v2, v2, p1

    const/4 v7, 0x1

    aget v7, p4, v7

    int-to-float v7, v7

    sub-float v17, v2, v7

    .line 103
    .local v17, "screenY":F
    const/4 v2, 0x2

    aget v2, p4, v2

    int-to-float v2, v2

    div-float v2, v16, v2

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v2, v7

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v16, v2, v7

    .line 104
    const/4 v2, 0x3

    aget v2, p4, v2

    int-to-float v2, v2

    div-float v2, v17, v2

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v2, v7

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v17, v2, v7

    .line 106
    const/4 v2, 0x4

    new-array v4, v2, [F

    const/4 v2, 0x0

    aput v16, v4, v2

    const/4 v2, 0x1

    aput v17, v4, v2

    const/4 v2, 0x2

    const/4 v7, 0x0

    aput v7, v4, v2

    const/4 v2, 0x3

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v4, v2

    .line 107
    .local v4, "vecScreen":[F
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v6, p2

    move-object v8, v4

    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 109
    const/4 v2, 0x4

    new-array v5, v2, [F

    const/4 v2, 0x0

    const/4 v7, 0x0

    aget v7, p5, v7

    aput v7, v5, v2

    const/4 v2, 0x1

    const/4 v7, 0x1

    aget v7, p5, v7

    aput v7, v5, v2

    const/4 v2, 0x2

    const/4 v7, 0x2

    aget v7, p5, v7

    aput v7, v5, v2

    const/4 v2, 0x3

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v5, v2

    .line 110
    .local v5, "vecLookAt":[F
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v7, p2

    move-object v9, v5

    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 112
    const/4 v2, 0x0

    aget v6, v12, v2

    const/4 v2, 0x1

    aget v7, v12, v2

    const/4 v2, 0x2

    aget v8, v12, v2

    move v9, v13

    move-object v10, v5

    move-object v11, v4

    invoke-static/range {v6 .. v11}, Lcom/sonymobile/cameracommon/multiframerenderer/CoordConvertUtil;->getCrossCoordWithPlaneAndLine(FFFF[F[F)[F

    move-result-object v6

    .line 115
    .local v6, "coord":[F
    if-nez v6, :cond_0

    .line 116
    const/4 v2, 0x0

    .line 123
    :goto_0
    return-object v2

    .line 120
    :cond_0
    const/4 v2, 0x0

    const/4 v7, 0x0

    invoke-static {v3, v2, v3, v7}, Landroid/opengl/Matrix;->invertM([FI[FI)Z

    .line 121
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v8, v3

    move-object v10, v6

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 123
    new-instance v2, Landroid/graphics/PointF;

    const/4 v7, 0x0

    aget v7, v6, v7

    const/4 v8, 0x1

    aget v8, v6, v8

    invoke-direct {v2, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0

    .line 81
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 82
    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 83
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static getWindowCoord(FFF[F[I)Landroid/graphics/Point;
    .locals 12
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "z"    # F
    .param p3, "mvpMatrix"    # [F
    .param p4, "viewPort"    # [I

    .prologue
    .line 46
    const/4 v0, 0x3

    new-array v9, v0, [F

    .line 47
    .local v9, "out":[F
    const/4 v4, 0x0

    sget-object v5, Lcom/sonymobile/cameracommon/multiframerenderer/CoordConvertUtil;->sIdentityMatrix:[F

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object/from16 v7, p4

    invoke-static/range {v0 .. v10}, Landroid/opengl/GLU;->gluProject(FFF[FI[FI[II[FI)I

    .line 54
    const/4 v0, 0x3

    aget v0, p4, v0

    const/4 v1, 0x1

    aget v1, p4, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/4 v1, 0x1

    aget v1, v9, v1

    sub-float v11, v0, v1

    .line 55
    .local v11, "sy":F
    const/4 v0, 0x1

    aput v11, v9, v0

    .line 57
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    aget v1, v9, v1

    float-to-int v1, v1

    const/4 v2, 0x1

    aget v2, v9, v2

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method
