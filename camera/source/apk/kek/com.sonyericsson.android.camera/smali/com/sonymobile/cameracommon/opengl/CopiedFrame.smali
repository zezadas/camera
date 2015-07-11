.class public Lcom/sonymobile/cameracommon/opengl/CopiedFrame;
.super Lcom/sonymobile/cameracommon/opengl/FrameBase;
.source "CopiedFrame.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mInputTexture:I

.field private mInputTextureInGLSL:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rootView"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/cameracommon/opengl/FrameBase;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 29
    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->mInputTexture:I

    .line 32
    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->mInputTextureInGLSL:I

    .line 43
    return-void
.end method

.method private updateVertexBuffer(Ljava/nio/FloatBuffer;)V
    .locals 4
    .param p1, "vertexBuf"    # Ljava/nio/FloatBuffer;

    .prologue
    const/4 v3, 0x0

    const v2, 0x8892

    .line 248
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->mVertexBuffers:[I

    aget v0, v0, v3

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 249
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->limit()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    const v1, 0x88e8

    invoke-static {v2, v0, p1, v1}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 254
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 255
    return-void
.end method


# virtual methods
.method protected doRender()V
    .locals 8

    .prologue
    const/16 v2, 0x1406

    const v6, 0x8892

    const/4 v3, 0x0

    .line 96
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->mVertexBuffers:[I

    aget v0, v0, v3

    invoke-static {v6, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 97
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->mVertexInGLSL:I

    const/4 v1, 0x3

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 104
    invoke-static {v6, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 107
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->mTexCoordBuffers:[I

    aget v0, v0, v3

    invoke-static {v6, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 108
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->mTexCoordInGLSL:I

    const/4 v1, 0x2

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 115
    invoke-static {v6, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 118
    const/16 v0, 0x10

    new-array v2, v0, [F

    .line 119
    .local v2, "mvpMatrix":[F
    invoke-static {v2, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 122
    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->mSequencedLocalMatrix:[F

    move v5, v3

    move-object v6, v2

    move v7, v3

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 123
    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->mGlobalMatrix:[F

    move v5, v3

    move-object v6, v2

    move v7, v3

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 125
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->mMvpMatrixInGLSL:I

    const/4 v1, 0x1

    invoke-static {v0, v1, v3, v2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 133
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 134
    const/16 v0, 0xde1

    iget v1, p0, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->mInputTexture:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 135
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->mInputTextureInGLSL:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 138
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 139
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->isGlErrorOccured()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    sget-object v0, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->TAG:Ljava/lang/String;

    const-string v1, "doRender():[Draw frame Error]"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
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

    .line 156
    iget v2, p0, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->mShaderProgram:I

    const-string v3, "aVertex"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->mVertexInGLSL:I

    .line 159
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 162
    iget v2, p0, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->mShaderProgram:I

    const-string v3, "aTexCoord"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->mTexCoordInGLSL:I

    .line 165
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 168
    iget v2, p0, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->mShaderProgram:I

    const-string v3, "uMvpMatrix"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->mMvpMatrixInGLSL:I

    .line 171
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 174
    iget v2, p0, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->mShaderProgram:I

    const-string v3, "sTexture"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->mInputTextureInGLSL:I

    .line 177
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 180
    const/4 v2, 0x1

    new-array v1, v2, [I

    .line 181
    .local v1, "statusChecker":[I
    iget v2, p0, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->mShaderProgram:I

    const v3, 0x8b82

    invoke-static {v2, v3, v1, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 187
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 190
    aget v2, v1, v4

    if-nez v2, :cond_0

    .line 191
    const-string v0, "SimpleFrame.initializeShaderProgram():[Program link Error]"

    .line 192
    .local v0, "message":Ljava/lang/String;
    sget-object v2, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    new-instance v2, Lcom/sonymobile/cameracommon/opengl/OpenGlException;

    invoke-direct {v2, v0}, Lcom/sonymobile/cameracommon/opengl/OpenGlException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 197
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->initializeVertexAndTextureCoordinatesBuffer()V

    .line 202
    return-void
.end method

.method public release()V
    .locals 0

    .prologue
    .line 60
    invoke-super {p0}, Lcom/sonymobile/cameracommon/opengl/FrameBase;->release()V

    .line 63
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->finalizeShaderProgram()V

    .line 64
    return-void
.end method

.method public render()V
    .locals 2

    .prologue
    const/16 v1, 0x303

    .line 71
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->enableLocalFunctions()Z

    move-result v0

    if-nez v0, :cond_2

    .line 77
    sget-object v0, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->TAG:Ljava/lang/String;

    const-string v1, "render():[Enable functions failed.]"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 82
    :cond_2
    const/4 v0, 0x1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 83
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->doRender()V

    .line 85
    const/16 v0, 0x302

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 87
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->disableLocalFunctions()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    sget-object v0, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->TAG:Ljava/lang/String;

    const-string v1, "render():[Disable functions failed.]"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAlignXYAxisCoordinates()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/high16 v4, -0x40800000    # -1.0f

    .line 235
    const/16 v2, 0xc

    new-array v0, v2, [F

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->getWidthNorm()F

    move-result v3

    mul-float/2addr v3, v4

    aput v3, v0, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->getHeightNorm()F

    move-result v3

    mul-float/2addr v3, v6

    aput v3, v0, v2

    const/4 v2, 0x2

    aput v5, v0, v2

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->getWidthNorm()F

    move-result v3

    mul-float/2addr v3, v4

    aput v3, v0, v2

    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->getHeightNorm()F

    move-result v3

    mul-float/2addr v3, v4

    aput v3, v0, v2

    const/4 v2, 0x5

    aput v5, v0, v2

    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->getWidthNorm()F

    move-result v3

    mul-float/2addr v3, v6

    aput v3, v0, v2

    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->getHeightNorm()F

    move-result v3

    mul-float/2addr v3, v6

    aput v3, v0, v2

    const/16 v2, 0x8

    aput v5, v0, v2

    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->getWidthNorm()F

    move-result v3

    mul-float/2addr v3, v6

    aput v3, v0, v2

    const/16 v2, 0xa

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->getHeightNorm()F

    move-result v3

    mul-float/2addr v3, v4

    aput v3, v0, v2

    const/16 v2, 0xb

    aput v5, v0, v2

    .line 241
    .local v0, "VERTEX_BACKGROUND":[F
    invoke-static {v0}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->allocFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 243
    .local v1, "vertexBuf":Ljava/nio/FloatBuffer;
    invoke-direct {p0, v1}, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->updateVertexBuffer(Ljava/nio/FloatBuffer;)V

    .line 244
    return-void
.end method

.method public setInputTexture(I)V
    .locals 0
    .param p1, "textureId"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->mInputTexture:I

    .line 52
    return-void
.end method

.method public setNormalizedXYAxisToScreen()V
    .locals 3

    .prologue
    .line 214
    const/16 v2, 0xc

    new-array v0, v2, [F

    fill-array-data v0, :array_0

    .line 220
    .local v0, "VERTEX_BACKGROUND":[F
    invoke-static {v0}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->allocFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 222
    .local v1, "vertexBuf":Ljava/nio/FloatBuffer;
    invoke-direct {p0, v1}, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->updateVertexBuffer(Ljava/nio/FloatBuffer;)V

    .line 223
    return-void

    .line 214
    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
    .end array-data
.end method
