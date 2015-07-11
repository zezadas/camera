.class public abstract Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;
.super Ljava/lang/Object;
.source "MultiFrameLayoutBase.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mFrameMvpMatrixMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[F>;"
        }
    .end annotation
.end field

.field private mFrameStructMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct;",
            ">;"
        }
    .end annotation
.end field

.field private mLookAtPosition:[F

.field private mProjectionMatrix:[F

.field private mSortedFrameStructList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct;",
            ">;"
        }
    .end annotation
.end field

.field private mSurfaceHeight:I

.field private mSurfaceWidth:I

.field private mViewPort:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;->mFrameMvpMatrixMap:Ljava/util/Map;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;->mFrameStructMap:Ljava/util/Map;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;->mSortedFrameStructList:Ljava/util/List;

    .line 94
    iput-object p1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;->mContext:Landroid/content/Context;

    .line 95
    return-void
.end method

.method private isMatrixAlreadySet()Z
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;->mViewPort:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;->mLookAtPosition:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;->mProjectionMatrix:[F

    if-nez v0, :cond_1

    .line 433
    :cond_0
    const/4 v0, 0x0

    .line 436
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected abstract disableFunctions()V
.end method

.method protected abstract enableFunctions()V
.end method

.method public exsitFrameIdForDebug(Ljava/lang/String;)Z
    .locals 1
    .param p1, "frameId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 444
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;->mFrameStructMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getFrameStructList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;->mSortedFrameStructList:Ljava/util/List;

    return-object v0
.end method

.method public getFrameStructListForDebug()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 449
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;->mSortedFrameStructList:Ljava/util/List;

    return-object v0
.end method

.method protected getNormalizedHeight()F
    .locals 3

    .prologue
    const/high16 v0, 0x40000000    # 2.0f

    .line 166
    iget v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;->mSurfaceHeight:I

    iget v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;->mSurfaceWidth:I

    if-ge v1, v2, :cond_0

    .line 168
    iget v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;->mSurfaceHeight:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;->mSurfaceWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 171
    :cond_0
    return v0
.end method

.method protected getNormalizedWidth()F
    .locals 3

    .prologue
    const/high16 v0, 0x40000000    # 2.0f

    .line 151
    iget v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;->mSurfaceHeight:I

    iget v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;->mSurfaceWidth:I

    if-ge v1, v2, :cond_0

    .line 156
    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;->mSurfaceWidth:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;->mSurfaceHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method protected getObjectCoordFromWindowCoord(Ljava/lang/String;Landroid/graphics/Point;)Landroid/graphics/PointF;
    .locals 6
    .param p1, "frameId"    # Ljava/lang/String;
    .param p2, "point"    # Landroid/graphics/Point;

    .prologue
    const/4 v0, 0x0

    .line 364
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;->isMatrixAlreadySet()Z

    move-result v1

    if-nez v1, :cond_1

    .line 377
    :cond_0
    :goto_0
    return-object v0

    .line 368
    :cond_1
    if-eqz p2, :cond_0

    .line 372
    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;->mFrameMvpMatrixMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    .line 373
    .local v3, "mvpMatrix":[F
    if-eqz v3, :cond_0

    .line 377
    iget v0, p2, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v1, p2, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;->mProjectionMatrix:[F

    iget-object v4, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;->mViewPort:[I

    iget-object v5, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;->mLookAtPosition:[F

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/cameracommon/multiframerenderer/CoordConvertUtil;->getObjectCoord(FF[F[F[I[F)Landroid/graphics/PointF;

    move-result-object v0

    goto :goto_0
.end method

.method protected getSurfaceHeight()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;->mSurfaceHeight:I

    return v0
.end method

.method protected getSurfaceWidth()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;->mSurfaceWidth:I

    return v0
.end method

.method protected getWindowCoordFromClipCoord(Landroid/graphics/PointF;)Landroid/graphics/Point;
    .locals 9
    .param p1, "clipCoord"    # Landroid/graphics/PointF;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 417
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;->isMatrixAlreadySet()Z

    move-result v3

    if-nez v3, :cond_0

    .line 418
    const/4 v3, 0x0

    .line 426
    :goto_0
    return-object v3

    .line 421
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;->mViewPort:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/PointF;->x:F

    add-float/2addr v4, v5

    div-float/2addr v4, v6

    mul-float v1, v3, v4

    .line 422
    .local v1, "winx":F
    iget-object v3, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;->mViewPort:[I

    aget v3, v3, v8

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/PointF;->y:F

    add-float/2addr v4, v5

    div-float/2addr v4, v6

    mul-float v0, v3, v4

    .line 423
    .local v0, "screenY":F
    iget-object v3, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;->mViewPort:[I

    aget v3, v3, v8

    iget-object v4, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;->mViewPort:[I

    aget v4, v4, v7

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;->mViewPort:[I

    aget v4, v4, v7

    int-to-float v4, v4

    add-float/2addr v4, v0

    sub-float v2, v3, v4

    .line 426
    .local v2, "winy":F
    new-instance v3, Landroid/graphics/Point;

    float-to-int v4, v1

    float-to-int v5, v2

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_0
.end method

.method protected getWindowCoordFromObjectCoord(Ljava/lang/String;Landroid/graphics/PointF;)Landroid/graphics/Point;
    .locals 5
    .param p1, "frameId"    # Ljava/lang/String;
    .param p2, "point"    # Landroid/graphics/PointF;

    .prologue
    const/4 v1, 0x0

    .line 391
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;->isMatrixAlreadySet()Z

    move-result v2

    if-nez v2, :cond_1

    .line 404
    :cond_0
    :goto_0
    return-object v1

    .line 395
    :cond_1
    if-eqz p2, :cond_0

    .line 399
    iget-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;->mFrameMvpMatrixMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 400
    .local v0, "mvpMatrix":[F
    if-eqz v0, :cond_0

    .line 404
    iget v1, p2, Landroid/graphics/PointF;->x:F

    iget v2, p2, Landroid/graphics/PointF;->y:F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;->mViewPort:[I

    invoke-static {v1, v2, v3, v0, v4}, Lcom/sonymobile/cameracommon/multiframerenderer/CoordConvertUtil;->getWindowCoord(FFF[F[I)Landroid/graphics/Point;

    move-result-object v1

    goto :goto_0
.end method

.method protected isMirroredFrameStruct(Ljava/lang/String;)Z
    .locals 1
    .param p1, "frameId"    # Ljava/lang/String;

    .prologue
    .line 278
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;->mFrameStructMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct;->isMirrored()Z

    move-result v0

    return v0
.end method

.method protected mirroringTextureCoordinate([F)[F
    .locals 11
    .param p1, "texCoord"    # [F

    .prologue
    const/4 v10, 0x6

    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    .line 284
    aget v2, p1, v7

    .line 285
    .local v2, "xLeftSide":F
    aget v4, p1, v8

    aget v5, p1, v7

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 286
    aget v2, p1, v8

    .line 288
    :cond_0
    aget v3, p1, v9

    .line 289
    .local v3, "xRightSide":F
    aget v4, p1, v9

    aget v5, p1, v10

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    .line 290
    aget v3, p1, v10

    .line 294
    :cond_1
    sub-float v4, v3, v2

    div-float/2addr v4, v6

    add-float v1, v4, v2

    .line 296
    .local v1, "xCenter":F
    const/16 v4, 0x8

    new-array v0, v4, [F

    mul-float v4, v1, v6

    aget v5, p1, v7

    sub-float/2addr v4, v5

    aput v4, v0, v7

    const/4 v4, 0x1

    const/4 v5, 0x1

    aget v5, p1, v5

    aput v5, v0, v4

    mul-float v4, v1, v6

    aget v5, p1, v8

    sub-float/2addr v4, v5

    aput v4, v0, v8

    const/4 v4, 0x3

    const/4 v5, 0x3

    aget v5, p1, v5

    aput v5, v0, v4

    mul-float v4, v1, v6

    aget v5, p1, v9

    sub-float/2addr v4, v5

    aput v4, v0, v9

    const/4 v4, 0x5

    const/4 v5, 0x5

    aget v5, p1, v5

    aput v5, v0, v4

    mul-float v4, v1, v6

    aget v5, p1, v10

    sub-float/2addr v4, v5

    aput v4, v0, v10

    const/4 v4, 0x7

    const/4 v5, 0x7

    aget v5, p1, v5

    aput v5, v0, v4

    .line 307
    .local v0, "mirroredTexCoord":[F
    return-object v0
.end method

.method protected abstract onObjectCoordTransformRequested(Ljava/lang/String;Lcom/sonymobile/cameracommon/opengl/RenderBase;)V
.end method

.method protected abstract onObjectVertexUpdateRequested(Ljava/lang/String;Lcom/sonymobile/cameracommon/opengl/FrameBase;)V
.end method

.method public onSurfaceChanged(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 104
    iput p1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;->mSurfaceWidth:I

    .line 105
    iput p2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;->mSurfaceHeight:I

    .line 106
    return-void
.end method

.method protected registerFrameInfo(Ljava/lang/String;Lcom/sonymobile/cameracommon/opengl/FrameData;Lcom/sonymobile/cameracommon/multiframerenderer/FrameBaseFactory;Z)V
    .locals 6
    .param p1, "frameId"    # Ljava/lang/String;
    .param p2, "frameData"    # Lcom/sonymobile/cameracommon/opengl/FrameData;
    .param p3, "frameBaseFactory"    # Lcom/sonymobile/cameracommon/multiframerenderer/FrameBaseFactory;
    .param p4, "needToTextureUpdate"    # Z

    .prologue
    .line 214
    sget-object v5, Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct$FrameStructVisibility;->COMMON:Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct$FrameStructVisibility;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;->registerFrameInfo(Ljava/lang/String;Lcom/sonymobile/cameracommon/opengl/FrameData;Lcom/sonymobile/cameracommon/multiframerenderer/FrameBaseFactory;ZLcom/sonymobile/cameracommon/multiframerenderer/FrameStruct$FrameStructVisibility;)V

    .line 220
    return-void
.end method

.method protected declared-synchronized registerFrameInfo(Ljava/lang/String;Lcom/sonymobile/cameracommon/opengl/FrameData;Lcom/sonymobile/cameracommon/multiframerenderer/FrameBaseFactory;ZLcom/sonymobile/cameracommon/multiframerenderer/FrameStruct$FrameStructVisibility;)V
    .locals 7
    .param p1, "frameId"    # Ljava/lang/String;
    .param p2, "frameData"    # Lcom/sonymobile/cameracommon/opengl/FrameData;
    .param p3, "frameBaseFactory"    # Lcom/sonymobile/cameracommon/multiframerenderer/FrameBaseFactory;
    .param p4, "needToTextureUpdate"    # Z
    .param p5, "visibility"    # Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct$FrameStructVisibility;

    .prologue
    .line 194
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;->mFrameStructMap:Ljava/util/Map;

    new-instance v0, Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct;-><init>(Ljava/lang/String;Lcom/sonymobile/cameracommon/opengl/FrameData;Lcom/sonymobile/cameracommon/multiframerenderer/FrameBaseFactory;ZLcom/sonymobile/cameracommon/multiframerenderer/FrameStruct$FrameStructVisibility;)V

    invoke-interface {v6, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    monitor-exit p0

    return-void

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract releaseGlEglRelatedInstances()V
.end method

.method setFrameMvpMatrix(Ljava/lang/String;[F)V
    .locals 1
    .param p1, "frameId"    # Ljava/lang/String;
    .param p2, "mvpMatrix"    # [F

    .prologue
    .line 353
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;->mFrameMvpMatrixMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    return-void
.end method

.method public declared-synchronized setFrameStructVisibility(Ljava/lang/String;Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct$FrameStructVisibility;)V
    .locals 2
    .param p1, "frameId"    # Ljava/lang/String;
    .param p2, "visibility"    # Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct$FrameStructVisibility;

    .prologue
    .line 257
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;->mFrameStructMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct;

    .line 258
    .local v0, "frameStruct":Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct;
    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {v0, p2}, Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct;->setVisibility(Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct$FrameStructVisibility;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    :cond_0
    monitor-exit p0

    return-void

    .line 257
    .end local v0    # "frameStruct":Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method setMatrix([I[F[F)V
    .locals 0
    .param p1, "viewPort"    # [I
    .param p2, "lookAtPosition"    # [F
    .param p3, "projectionMatrix"    # [F

    .prologue
    .line 338
    iput-object p1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;->mViewPort:[I

    .line 339
    iput-object p2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;->mLookAtPosition:[F

    .line 340
    iput-object p3, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;->mProjectionMatrix:[F

    .line 341
    return-void
.end method

.method public declared-synchronized setMirrored(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "frameId"    # Ljava/lang/String;
    .param p2, "isMirrored"    # Z

    .prologue
    .line 271
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;->mFrameStructMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct;

    .line 272
    .local v0, "frameStruct":Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct;
    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {v0, p2}, Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct;->setMirrored(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    :cond_0
    monitor-exit p0

    return-void

    .line 271
    .end local v0    # "frameStruct":Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected declared-synchronized setSortOrder(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 315
    .local p1, "frameIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 316
    .local v3, "newFrameStructList":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 317
    .local v0, "frameId":Ljava/lang/String;
    iget-object v4, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;->mFrameStructMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct;

    .line 318
    .local v1, "frameStruct":Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct;
    if-eqz v1, :cond_0

    .line 319
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 315
    .end local v0    # "frameId":Ljava/lang/String;
    .end local v1    # "frameStruct":Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "newFrameStructList":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 322
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "newFrameStructList":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct;>;"
    :cond_1
    :try_start_1
    iput-object v3, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;->mSortedFrameStructList:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 323
    monitor-exit p0

    return-void
.end method

.method protected declared-synchronized unregisterFrameInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "frameId"    # Ljava/lang/String;

    .prologue
    .line 229
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;->mFrameStructMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    monitor-exit p0

    return-void

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateFrameData(Ljava/lang/String;Lcom/sonymobile/cameracommon/opengl/FrameData;)V
    .locals 2
    .param p1, "frameId"    # Ljava/lang/String;
    .param p2, "frameData"    # Lcom/sonymobile/cameracommon/opengl/FrameData;

    .prologue
    .line 242
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;->mFrameStructMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct;

    .line 243
    .local v0, "frameStruct":Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct;
    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {v0, p2}, Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct;->updateFrameData(Lcom/sonymobile/cameracommon/opengl/FrameData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    :cond_0
    monitor-exit p0

    return-void

    .line 242
    .end local v0    # "frameStruct":Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public updateFrameDataForDebug(Ljava/lang/String;Lcom/sonymobile/cameracommon/opengl/FrameData;)V
    .locals 0
    .param p1, "frameId"    # Ljava/lang/String;
    .param p2, "frameData"    # Lcom/sonymobile/cameracommon/opengl/FrameData;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 456
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;->updateFrameData(Ljava/lang/String;Lcom/sonymobile/cameracommon/opengl/FrameData;)V

    .line 457
    return-void
.end method
