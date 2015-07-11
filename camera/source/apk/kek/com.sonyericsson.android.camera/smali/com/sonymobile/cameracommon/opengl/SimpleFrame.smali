.class public Lcom/sonymobile/cameracommon/opengl/SimpleFrame;
.super Lcom/sonymobile/cameracommon/opengl/FrameBase;
.source "SimpleFrame.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mColor:[F

.field private mSimpleColorInGLSL:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rootView"    # Landroid/view/View;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/cameracommon/opengl/FrameBase;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mSimpleColorInGLSL:I

    .line 28
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mColor:[F

    .line 39
    return-void
.end method


# virtual methods
.method protected doRender()V
    .locals 9

    .prologue
    const v6, 0x8892

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 71
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mVertexBuffers:[I

    aget v0, v0, v3

    invoke-static {v6, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 72
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mVertexInGLSL:I

    const/4 v1, 0x3

    const/16 v2, 0x1406

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 79
    invoke-static {v6, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 82
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mSimpleColorInGLSL:I

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mColor:[F

    aget v1, v1, v3

    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mColor:[F

    aget v4, v4, v8

    iget-object v5, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mColor:[F

    const/4 v6, 0x2

    aget v5, v5, v6

    iget v6, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mAlpha:F

    invoke-static {v0, v1, v4, v5, v6}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    .line 84
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->isGlErrorOccured()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    sget-object v0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->TAG:Ljava/lang/String;

    const-string v1, "clearAndResetSurface():[Texture binder Error]"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    const/16 v0, 0x10

    new-array v2, v0, [F

    .line 90
    .local v2, "mvpMatrix":[F
    invoke-static {v2, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 93
    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mSequencedLocalMatrix:[F

    move v5, v3

    move-object v6, v2

    move v7, v3

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 94
    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mGlobalMatrix:[F

    move v5, v3

    move-object v6, v2

    move v7, v3

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 96
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mMvpMatrixInGLSL:I

    invoke-static {v0, v8, v3, v2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 104
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 105
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->isGlErrorOccured()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    sget-object v0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->TAG:Ljava/lang/String;

    const-string v1, "clearAndResetSurface():[Draw frame Error]"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_1
    return-void
.end method

.method protected initializeShaderProgram()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/cameracommon/opengl/OpenGlException;
        }
    .end annotation

    .prologue
    .line 113
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mShaderProgram:I

    const-string v1, "simpleColor"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mSimpleColorInGLSL:I

    .line 116
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 117
    invoke-super {p0}, Lcom/sonymobile/cameracommon/opengl/FrameBase;->initializeShaderProgram()V

    .line 118
    return-void
.end method

.method public release()V
    .locals 0

    .prologue
    .line 62
    invoke-super {p0}, Lcom/sonymobile/cameracommon/opengl/FrameBase;->release()V

    .line 65
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->finalizeShaderProgram()V

    .line 66
    return-void
.end method

.method public setColor(FFFF)V
    .locals 2
    .param p1, "red"    # F
    .param p2, "green"    # F
    .param p3, "blue"    # F
    .param p4, "alpha"    # F

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mColor:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 51
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mColor:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 52
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mColor:[F

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 53
    iput p4, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mAlpha:F

    .line 54
    return-void
.end method

.method public updateVertexBuffer([F)V
    .locals 5
    .param p1, "vertexBuffer"    # [F

    .prologue
    const v4, 0x8892

    const/4 v3, 0x0

    .line 126
    invoke-static {p1}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->allocFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 129
    .local v0, "vertexBuf":Ljava/nio/FloatBuffer;
    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mVertexBuffers:[I

    array-length v1, v1

    iget-object v2, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mVertexBuffers:[I

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 132
    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mVertexBuffers:[I

    aget v1, v1, v3

    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 133
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->limit()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    const v2, 0x88e8

    invoke-static {v4, v1, v0, v2}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 138
    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 139
    return-void
.end method
