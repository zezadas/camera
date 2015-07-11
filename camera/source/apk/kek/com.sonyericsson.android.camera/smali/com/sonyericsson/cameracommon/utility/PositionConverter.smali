.class public Lcom/sonyericsson/cameracommon/utility/PositionConverter;
.super Ljava/lang/Object;
.source "PositionConverter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PositionConverter"

.field private static final sDeviceRect:Landroid/graphics/Rect;

.field private static sInstance:Lcom/sonyericsson/cameracommon/utility/PositionConverter;


# instance fields
.field private mDisplayOrientation:I

.field private mMatrixFromDeviceToPreview:Landroid/graphics/Matrix;

.field private mMatrixFromDeviceToSurface:Landroid/graphics/Matrix;

.field private mMatrixFromPreviewToSurface:Landroid/graphics/Matrix;

.field private mMatrixFromSurfaceToDevice:Landroid/graphics/Matrix;

.field private mMatrixFromSurfaceToPreview:Landroid/graphics/Matrix;

.field private mMirror:Z

.field private mPrepared:Z

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mSurfaceHeight:I

.field private mSurfaceWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x3e8

    const/16 v1, -0x3e8

    .line 30
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->sDeviceRect:Landroid/graphics/Rect;

    .line 32
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;-><init>()V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->sInstance:Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method private convert(Landroid/graphics/Rect;Landroid/graphics/Matrix;)Landroid/graphics/Rect;
    .locals 6
    .param p1, "srcRect"    # Landroid/graphics/Rect;
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 280
    if-nez p2, :cond_0

    .line 281
    const-string v1, "PositionConverter"

    const-string v2, "Matrix to convert rect is null. Surface has not been created."

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 286
    :goto_0
    return-object v1

    .line 284
    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 285
    .local v0, "rect":Landroid/graphics/RectF;
    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 286
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0
.end method

.method public static getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->sInstance:Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    return-object v0
.end method

.method private getMatrix()Landroid/graphics/Matrix;
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 96
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 98
    .local v0, "matrix":Landroid/graphics/Matrix;
    iget-boolean v1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMirror:Z

    if-eqz v1, :cond_0

    .line 99
    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 104
    :goto_0
    iget v1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mDisplayOrientation:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 105
    return-object v0

    .line 101
    :cond_0
    invoke-virtual {v0, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_0
.end method


# virtual methods
.method public convertDeviceToFace(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1
    .param p1, "srcRect"    # Landroid/graphics/Rect;

    .prologue
    .line 276
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromPreviewToSurface:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->convert(Landroid/graphics/Rect;Landroid/graphics/Matrix;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public convertFaceFromDeviceToPreview(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1
    .param p1, "srcRect"    # Landroid/graphics/Rect;

    .prologue
    .line 266
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromDeviceToPreview:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->convert(Landroid/graphics/Rect;Landroid/graphics/Matrix;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public convertFaceToDevice(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1
    .param p1, "srcRect"    # Landroid/graphics/Rect;

    .prologue
    .line 253
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromSurfaceToPreview:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->convert(Landroid/graphics/Rect;Landroid/graphics/Matrix;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public convertToDevice(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 2
    .param p1, "srcRect"    # Landroid/graphics/Rect;

    .prologue
    .line 236
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromSurfaceToDevice:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->convert(Landroid/graphics/Rect;Landroid/graphics/Matrix;)Landroid/graphics/Rect;

    move-result-object v0

    .line 237
    .local v0, "dstRect":Landroid/graphics/Rect;
    sget-object v1, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->sDeviceRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 238
    sget-object v1, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->sDeviceRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 240
    :cond_0
    return-object v0
.end method

.method public convertToView(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1
    .param p1, "srcRect"    # Landroid/graphics/Rect;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromDeviceToSurface:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->convert(Landroid/graphics/Rect;Landroid/graphics/Matrix;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceRect()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 291
    new-instance v0, Landroid/graphics/Rect;

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->sDeviceRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public getPreviewSize()Landroid/graphics/Rect;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 295
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mPreviewWidth:I

    iget v2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mPreviewHeight:I

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public init(ZILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "mirror"    # Z
    .param p2, "displayOrientation"    # I
    .param p3, "surface"    # Landroid/graphics/Rect;
    .param p4, "preview"    # Landroid/graphics/Rect;

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMirror:Z

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mDisplayOrientation:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceWidth:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceHeight:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 82
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mPrepared:Z

    .line 85
    :cond_1
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMirror:Z

    .line 86
    iput p2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mDisplayOrientation:I

    .line 87
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mPreviewWidth:I

    .line 88
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mPreviewHeight:I

    .line 90
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->setSurfaceSize(II)V

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mPrepared:Z

    .line 93
    return-void
.end method

.method public setOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mPrepared:Z

    if-eqz v0, :cond_0

    .line 208
    :goto_0
    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromDeviceToSurface:Landroid/graphics/Matrix;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 204
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromDeviceToPreview:Landroid/graphics/Matrix;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 205
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromSurfaceToDevice:Landroid/graphics/Matrix;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 206
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromSurfaceToPreview:Landroid/graphics/Matrix;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 207
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromPreviewToSurface:Landroid/graphics/Matrix;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_0
.end method

.method public setPreviewSize(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mPrepared:Z

    if-eqz v0, :cond_0

    .line 174
    iget v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mPreviewWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mPreviewHeight:I

    if-ne v0, p2, :cond_0

    .line 191
    :goto_0
    return-void

    .line 179
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromSurfaceToPreview:Landroid/graphics/Matrix;

    .line 180
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromPreviewToSurface:Landroid/graphics/Matrix;

    .line 182
    iput p1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mPreviewWidth:I

    .line 183
    iput p2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mPreviewHeight:I

    .line 185
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromSurfaceToPreview:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mPreviewWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mPreviewHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 188
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromPreviewToSurface:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mPreviewWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mPreviewHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_0
.end method

.method public setSurfaceSize(II)V
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 118
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mPrepared:Z

    if-eqz v0, :cond_0

    .line 119
    iget v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceHeight:I

    if-ne v0, p2, :cond_0

    .line 161
    :goto_0
    return-void

    .line 124
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromDeviceToSurface:Landroid/graphics/Matrix;

    .line 125
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromDeviceToPreview:Landroid/graphics/Matrix;

    .line 126
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromSurfaceToDevice:Landroid/graphics/Matrix;

    .line 127
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromSurfaceToPreview:Landroid/graphics/Matrix;

    .line 128
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromPreviewToSurface:Landroid/graphics/Matrix;

    .line 130
    iput p1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceWidth:I

    .line 131
    iput p2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceHeight:I

    .line 133
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromDeviceToSurface:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceWidth:I

    int-to-float v1, v1

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->sDeviceRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceHeight:I

    int-to-float v2, v2

    sget-object v3, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->sDeviceRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 136
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromDeviceToSurface:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v4

    iget v2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 140
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromDeviceToPreview:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mPreviewWidth:I

    int-to-float v1, v1

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->sDeviceRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mPreviewHeight:I

    int-to-float v2, v2

    sget-object v3, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->sDeviceRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 143
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromDeviceToPreview:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mPreviewWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v4

    iget v2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mPreviewHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 147
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromSurfaceToDevice:Landroid/graphics/Matrix;

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->sDeviceRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->sDeviceRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 150
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromSurfaceToDevice:Landroid/graphics/Matrix;

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->sDeviceRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->sDeviceRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 154
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromSurfaceToPreview:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mPreviewWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mPreviewHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 158
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mMatrixFromPreviewToSurface:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mPreviewWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mSurfaceHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->mPreviewHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto/16 :goto_0
.end method
