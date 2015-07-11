.class public Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;
.super Lcom/sonymobile/cameracommon/opengl/YuvFrame;
.source "AlphaMaskedYuvFrame.java"


# static fields
.field private static final MASKTEXCOORD:[F

.field private static final TAG:Ljava/lang/String;

.field private static final TEXTURE_INDEX_MASK:I = 0x3


# instance fields
.field private mMaskBmp:Landroid/graphics/Bitmap;

.field private mMaskTexCoordBuffer:[I

.field private mMaskTexCoordInGLSL:I

.field private mMaskTexture:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->TAG:Ljava/lang/String;

    .line 38
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->MASKTEXCOORD:[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "maskResId"    # I

    .prologue
    const/4 v1, 0x1

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 29
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskTexture:[I

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskTexCoordInGLSL:I

    .line 33
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskTexCoordBuffer:[I

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskBmp:Landroid/graphics/Bitmap;

    .line 56
    invoke-direct {p0, p3}, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->initializeMaskTexture(I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "maskImage"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x1

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 29
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskTexture:[I

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskTexCoordInGLSL:I

    .line 33
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskTexCoordBuffer:[I

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskBmp:Landroid/graphics/Bitmap;

    .line 70
    invoke-direct {p0, p3}, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->initializeMaskTexture(Landroid/graphics/Bitmap;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/graphics/Bitmap;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "maskImage"    # Landroid/graphics/Bitmap;
    .param p4, "shouldKeepAspect"    # Z

    .prologue
    const/4 v1, 0x1

    .line 83
    invoke-direct {p0, p1, p2, p4}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;-><init>(Landroid/content/Context;Landroid/view/View;Z)V

    .line 29
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskTexture:[I

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskTexCoordInGLSL:I

    .line 33
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskTexCoordBuffer:[I

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskBmp:Landroid/graphics/Bitmap;

    .line 86
    invoke-direct {p0, p3}, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->initializeMaskTexture(Landroid/graphics/Bitmap;)V

    .line 87
    return-void
.end method

.method private finalizeMaskTexture()V
    .locals 3

    .prologue
    .line 253
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskTexture:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 254
    return-void
.end method

.method private initializeMaskTexture(I)V
    .locals 4
    .param p1, "maskResId"    # I

    .prologue
    const/4 v3, 0x0

    .line 209
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskTexture:[I

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 212
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 213
    .local v0, "option":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 214
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 215
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskBmp:Landroid/graphics/Bitmap;

    .line 220
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->prepareMaskTexture()V

    .line 221
    return-void
.end method

.method private initializeMaskTexture(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 225
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskTexture:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 228
    iput-object p1, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskBmp:Landroid/graphics/Bitmap;

    .line 230
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->prepareMaskTexture()V

    .line 231
    return-void
.end method

.method private prepareMaskTexture()V
    .locals 5

    .prologue
    const v4, 0x47012f00    # 33071.0f

    const/4 v3, 0x0

    const/16 v2, 0xde1

    .line 235
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskTexture:[I

    aget v0, v0, v3

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskBmp:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->bindTextureAndBitmap(ILandroid/graphics/Bitmap;)V

    .line 238
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskTexture:[I

    aget v0, v0, v3

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 240
    const/16 v0, 0x2802

    invoke-static {v2, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 244
    const/16 v0, 0x2803

    invoke-static {v2, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 249
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 250
    return-void
.end method


# virtual methods
.method protected disableLocalFunctions()Z
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskTexCoordInGLSL:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 157
    invoke-super {p0}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->disableLocalFunctions()Z

    move-result v0

    return v0
.end method

.method protected doRender()V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->prepareMaskTexture()V

    .line 165
    invoke-super {p0}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->doRender()V

    .line 166
    return-void
.end method

.method protected enableLocalFunctions()Z
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskTexCoordInGLSL:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 150
    invoke-super {p0}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->enableLocalFunctions()Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 3

    .prologue
    .line 125
    invoke-super {p0}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->release()V

    .line 128
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->finalizeMaskTexture()V

    .line 131
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 135
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskBmp:Landroid/graphics/Bitmap;

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskTexCoordBuffer:[I

    array-length v0, v0

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskTexCoordBuffer:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 143
    return-void
.end method

.method public setShaderProgram(I)V
    .locals 4
    .param p1, "shaderProgram"    # I

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->setShaderProgram(I)V

    .line 95
    :try_start_0
    iget v1, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mShaderProgram:I

    const-string v2, "aMaskTexCoord"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskTexCoordInGLSL:I

    .line 98
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V
    :try_end_0
    .catch Lcom/sonymobile/cameracommon/opengl/OpenGlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskTexCoordBuffer:[I

    array-length v1, v1

    iget-object v2, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskTexCoordBuffer:[I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 108
    sget-object v1, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->MASKTEXCOORD:[F

    invoke-virtual {p0, v1}, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->updateMaskTextureBuffer([F)V

    .line 109
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Lcom/sonymobile/cameracommon/opengl/OpenGlException;
    sget-object v1, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->TAG:Ljava/lang/String;

    const-string v2, "OpenGL initialize Error."

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/opengl/OpenGlException;->printStackTrace()V

    goto :goto_0
.end method

.method protected setupParameter(I)V
    .locals 2
    .param p1, "shaderProgramObject"    # I

    .prologue
    .line 200
    invoke-super {p0, p1}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->setupParameter(I)V

    .line 202
    const-string v1, "uAlphaMaskTexture"

    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 204
    .local v0, "textureMask":I
    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 205
    return-void
.end method

.method protected setupTexture(II[I)Z
    .locals 7
    .param p1, "vertexBufObj"    # I
    .param p2, "texCoordBufObj"    # I
    .param p3, "yuvTextures"    # [I

    .prologue
    const v6, 0x8892

    const/4 v3, 0x0

    .line 173
    invoke-super {p0, p1, p2, p3}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->setupTexture(II[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    :goto_0
    return v3

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskTexCoordBuffer:[I

    aget v0, v0, v3

    invoke-static {v6, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 178
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskTexCoordInGLSL:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 185
    invoke-static {v6, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 188
    const v0, 0x84c3

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 189
    const/16 v0, 0xde1

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskTexture:[I

    aget v1, v1, v3

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 190
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->isGlErrorOccured()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    sget-object v0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->TAG:Ljava/lang/String;

    const-string v1, ".draw():[Texture binder Error]"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 195
    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public updateMaskTextureBuffer([F)V
    .locals 5
    .param p1, "maskTex"    # [F

    .prologue
    const/4 v4, 0x0

    const v3, 0x8892

    .line 112
    invoke-static {p1}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->allocFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 114
    .local v0, "maskTexCoordBuf":Ljava/nio/FloatBuffer;
    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/AlphaMaskedYuvFrame;->mMaskTexCoordBuffer:[I

    aget v1, v1, v4

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 115
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->limit()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    const v2, 0x88e8

    invoke-static {v3, v1, v0, v2}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 120
    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 121
    return-void
.end method
