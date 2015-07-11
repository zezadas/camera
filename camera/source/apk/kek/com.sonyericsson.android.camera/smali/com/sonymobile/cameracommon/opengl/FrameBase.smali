.class public abstract Lcom/sonymobile/cameracommon/opengl/FrameBase;
.super Lcom/sonymobile/cameracommon/opengl/RenderBase;
.source "FrameBase.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/opengl/AlphaBlendable;


# static fields
.field private static final DEFAULT_TEXCOORD_INDEX:I = 0x1

.field private static final DEFAULT_VERTEX_INDEX:I = 0x0

.field private static final INVALID_INDEX_IN_GLSL:I = -0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mAlpha:F

.field protected mMvpMatrixInGLSL:I

.field protected mShaderProgram:I

.field protected mTexCoordBuffers:[I

.field protected mTexCoordInGLSL:I

.field protected mVertexBuffers:[I

.field protected mVertexInGLSL:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/sonymobile/cameracommon/opengl/FrameBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rootView"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/cameracommon/opengl/RenderBase;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mShaderProgram:I

    .line 39
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mVertexBuffers:[I

    .line 40
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mTexCoordBuffers:[I

    .line 43
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mAlpha:F

    .line 48
    return-void
.end method

.method private checkAndBindAttriLocation()V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 122
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mVertexInGLSL:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mTexCoordInGLSL:I

    if-ne v0, v1, :cond_1

    .line 123
    :cond_0
    sget-object v0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkAndBindAttriLocation: mVertexInGLSL = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mVertexInGLSL:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mTexCoordInGLSL = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mTexCoordInGLSL:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mVertexInGLSL:I

    .line 129
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mShaderProgram:I

    iget v1, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mVertexInGLSL:I

    const-string v2, "vertex"

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 131
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 133
    const/4 v0, 0x1

    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mTexCoordInGLSL:I

    .line 134
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mShaderProgram:I

    iget v1, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mTexCoordInGLSL:I

    const-string v2, "texCoord"

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 136
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 139
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mShaderProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 140
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 142
    :cond_1
    return-void
.end method

.method private enableShaderProgram()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 238
    iget v1, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mShaderProgram:I

    if-nez v1, :cond_0

    .line 239
    sget-object v1, Lcom/sonymobile/cameracommon/opengl/FrameBase;->TAG:Ljava/lang/String;

    const-string v2, ".enableYuv2RgbShaderProgram():[Program is Invalid]"

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :goto_0
    return v0

    .line 242
    :cond_0
    iget v1, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mShaderProgram:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 243
    iget v1, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mShaderProgram:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glValidateProgram(I)V

    .line 244
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->isGlErrorOccured()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 245
    sget-object v1, Lcom/sonymobile/cameracommon/opengl/FrameBase;->TAG:Ljava/lang/String;

    const-string v2, ".enableYuv2RgbShaderProgram():[Program Error]"

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 249
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private finalizeVertexAndTextureCoordinatesBuffer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 273
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mVertexBuffers:[I

    array-length v0, v0

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mVertexBuffers:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 277
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mTexCoordBuffers:[I

    array-length v0, v0

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mTexCoordBuffers:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 281
    return-void
.end method


# virtual methods
.method protected disableLocalFunctions()Z
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 254
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mVertexInGLSL:I

    if-eq v0, v1, :cond_0

    .line 255
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mVertexInGLSL:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 257
    :cond_0
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mTexCoordInGLSL:I

    if-eq v0, v1, :cond_1

    .line 258
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mTexCoordInGLSL:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 262
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract doRender()V
.end method

.method protected enableLocalFunctions()Z
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 219
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mVertexInGLSL:I

    if-eq v0, v1, :cond_0

    .line 220
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mVertexInGLSL:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 222
    :cond_0
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mTexCoordInGLSL:I

    if-eq v0, v1, :cond_1

    .line 223
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mTexCoordInGLSL:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 227
    :cond_1
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/FrameBase;->enableShaderProgram()Z

    move-result v0

    if-nez v0, :cond_2

    .line 228
    sget-object v0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->TAG:Ljava/lang/String;

    const-string v1, "enableFunctions():[Enable shader program failed.]"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const/4 v0, 0x0

    .line 233
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected finalizeShaderProgram()V
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mShaderProgram:I

    .line 269
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/FrameBase;->finalizeVertexAndTextureCoordinatesBuffer()V

    .line 270
    return-void
.end method

.method protected initializeShaderProgram()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/cameracommon/opengl/OpenGlException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 70
    iget v2, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mShaderProgram:I

    const-string v3, "vertex"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mVertexInGLSL:I

    .line 73
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 76
    iget v2, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mShaderProgram:I

    const-string v3, "texCoord"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mTexCoordInGLSL:I

    .line 79
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 81
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/FrameBase;->checkAndBindAttriLocation()V

    .line 84
    iget v2, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mShaderProgram:I

    const-string v3, "mvpMatrix"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mMvpMatrixInGLSL:I

    .line 87
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 90
    const/4 v2, 0x1

    new-array v1, v2, [I

    .line 91
    .local v1, "statusChecker":[I
    iget v2, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mShaderProgram:I

    const v3, 0x8b82

    invoke-static {v2, v3, v1, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 93
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 96
    aget v2, v1, v4

    if-nez v2, :cond_0

    .line 97
    const-string v0, "TimeShiftSlider.initializeYuv2RgbShader():[Program link Error]"

    .line 98
    .local v0, "message":Ljava/lang/String;
    sget-object v2, Lcom/sonymobile/cameracommon/opengl/FrameBase;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    new-instance v2, Lcom/sonymobile/cameracommon/opengl/OpenGlException;

    invoke-direct {v2, v0}, Lcom/sonymobile/cameracommon/opengl/OpenGlException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 103
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/FrameBase;->initializeVertexAndTextureCoordinatesBuffer()V

    .line 109
    return-void
.end method

.method protected initializeVertexAndTextureCoordinatesBuffer()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/high16 v4, -0x40800000    # -1.0f

    .line 146
    const/16 v2, 0xc

    new-array v1, v2, [F

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/FrameBase;->getWidthNorm()F

    move-result v2

    mul-float/2addr v2, v4

    aput v2, v1, v7

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/FrameBase;->getHeightNorm()F

    move-result v3

    mul-float/2addr v3, v6

    aput v3, v1, v2

    const/4 v2, 0x2

    aput v5, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/FrameBase;->getWidthNorm()F

    move-result v3

    mul-float/2addr v3, v4

    aput v3, v1, v2

    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/FrameBase;->getHeightNorm()F

    move-result v3

    mul-float/2addr v3, v4

    aput v3, v1, v2

    const/4 v2, 0x5

    aput v5, v1, v2

    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/FrameBase;->getWidthNorm()F

    move-result v3

    mul-float/2addr v3, v6

    aput v3, v1, v2

    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/FrameBase;->getHeightNorm()F

    move-result v3

    mul-float/2addr v3, v6

    aput v3, v1, v2

    aput v5, v1, v8

    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/FrameBase;->getWidthNorm()F

    move-result v3

    mul-float/2addr v3, v6

    aput v3, v1, v2

    const/16 v2, 0xa

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/FrameBase;->getHeightNorm()F

    move-result v3

    mul-float/2addr v3, v4

    aput v3, v1, v2

    const/16 v2, 0xb

    aput v5, v1, v2

    .line 153
    .local v1, "VERTEX":[F
    new-array v0, v8, [F

    fill-array-data v0, :array_0

    .line 161
    .local v0, "TEXCOORD":[F
    iget-object v2, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mVertexBuffers:[I

    array-length v2, v2

    iget-object v3, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mVertexBuffers:[I

    invoke-static {v2, v3, v7}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 162
    iget-object v2, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mTexCoordBuffers:[I

    array-length v2, v2

    iget-object v3, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mTexCoordBuffers:[I

    invoke-static {v2, v3, v7}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 165
    invoke-virtual {p0, v1}, Lcom/sonymobile/cameracommon/opengl/FrameBase;->updateVertexBuffer([F)V

    .line 166
    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/opengl/FrameBase;->updateTextureBuffer([F)V

    .line 168
    return-void

    .line 153
    nop

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

.method public render()V
    .locals 2

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/FrameBase;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/FrameBase;->enableLocalFunctions()Z

    move-result v0

    if-nez v0, :cond_2

    .line 205
    sget-object v0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->TAG:Ljava/lang/String;

    const-string v1, "render():[Enable functions failed.]"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 209
    :cond_2
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/FrameBase;->doRender()V

    .line 211
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/FrameBase;->disableLocalFunctions()Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    sget-object v0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->TAG:Ljava/lang/String;

    const-string v1, "render():[Disable functions failed.]"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 290
    iput p1, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mAlpha:F

    .line 291
    return-void
.end method

.method public setShaderProgram(I)V
    .locals 3
    .param p1, "shaderProgram"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mShaderProgram:I

    .line 56
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/FrameBase;->initializeShaderProgram()V
    :try_end_0
    .catch Lcom/sonymobile/cameracommon/opengl/OpenGlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Lcom/sonymobile/cameracommon/opengl/OpenGlException;
    sget-object v1, Lcom/sonymobile/cameracommon/opengl/FrameBase;->TAG:Ljava/lang/String;

    const-string v2, "OpenGL initialize Error."

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/opengl/OpenGlException;->printStackTrace()V

    goto :goto_0
.end method

.method public updateTextureBuffer([F)V
    .locals 5
    .param p1, "tex"    # [F

    .prologue
    const/4 v4, 0x0

    const v3, 0x8892

    .line 183
    invoke-static {p1}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->allocFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 185
    .local v0, "texCoordBuf":Ljava/nio/FloatBuffer;
    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mTexCoordBuffers:[I

    aget v1, v1, v4

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 186
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->limit()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    const v2, 0x88e8

    invoke-static {v3, v1, v0, v2}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 191
    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 192
    return-void
.end method

.method public updateVertexBuffer([F)V
    .locals 5
    .param p1, "vertex"    # [F

    .prologue
    const/4 v4, 0x0

    const v3, 0x8892

    .line 171
    invoke-static {p1}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->allocFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 173
    .local v0, "vertexBuf":Ljava/nio/FloatBuffer;
    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mVertexBuffers:[I

    aget v1, v1, v4

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 174
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->limit()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    const v2, 0x88e8

    invoke-static {v3, v1, v0, v2}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 179
    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 180
    return-void
.end method
