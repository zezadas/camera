.class public Lcom/sonymobile/cameracommon/opengl/TextureMappingFrame;
.super Lcom/sonymobile/cameracommon/opengl/YuvFrame;
.source "TextureMappingFrame.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mIndexBuffers:[I

.field protected mIndicesNumber:I

.field protected mVertexAlphaBuffers:[I

.field protected mVertexAlphaInGLSL:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/sonymobile/cameracommon/opengl/TextureMappingFrame;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/opengl/TextureMappingFrame;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rootView"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 31
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/TextureMappingFrame;->mVertexAlphaBuffers:[I

    .line 33
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/sonymobile/cameracommon/opengl/TextureMappingFrame;->mIndexBuffers:[I

    .line 45
    return-void
.end method


# virtual methods
.method protected disableLocalFunctions()Z
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/TextureMappingFrame;->mVertexAlphaInGLSL:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 133
    invoke-super {p0}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->enableLocalFunctions()Z

    move-result v0

    return v0
.end method

.method protected doRender()V
    .locals 0

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/TextureMappingFrame;->renderYuvFrame()Z

    .line 122
    return-void
.end method

.method protected enableLocalFunctions()Z
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/TextureMappingFrame;->mVertexAlphaInGLSL:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 127
    invoke-super {p0}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->enableLocalFunctions()Z

    move-result v0

    return v0
.end method

.method protected initializeShaderProgram()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/cameracommon/opengl/OpenGlException;
        }
    .end annotation

    .prologue
    .line 50
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/TextureMappingFrame;->mShaderProgram:I

    const-string v1, "vertexAlpha"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/TextureMappingFrame;->mVertexAlphaInGLSL:I

    .line 54
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 56
    invoke-super {p0}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->initializeShaderProgram()V

    .line 57
    return-void
.end method

.method protected initializeVertexAndTextureCoordinatesBuffer()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 61
    const/4 v2, 0x6

    new-array v0, v2, [B

    fill-array-data v0, :array_0

    .line 65
    .local v0, "indices":[B
    const/4 v2, 0x4

    new-array v1, v2, [F

    fill-array-data v1, :array_1

    .line 73
    .local v1, "vertexAlpha":[F
    iget-object v2, p0, Lcom/sonymobile/cameracommon/opengl/TextureMappingFrame;->mIndexBuffers:[I

    array-length v2, v2

    iget-object v3, p0, Lcom/sonymobile/cameracommon/opengl/TextureMappingFrame;->mIndexBuffers:[I

    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 74
    iget-object v2, p0, Lcom/sonymobile/cameracommon/opengl/TextureMappingFrame;->mVertexAlphaBuffers:[I

    array-length v2, v2

    iget-object v3, p0, Lcom/sonymobile/cameracommon/opengl/TextureMappingFrame;->mVertexAlphaBuffers:[I

    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 77
    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/opengl/TextureMappingFrame;->updateIndexBuffer([B)V

    .line 78
    invoke-virtual {p0, v1}, Lcom/sonymobile/cameracommon/opengl/TextureMappingFrame;->updateVertexAlphaBuffer([F)V

    .line 80
    invoke-super {p0}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->initializeVertexAndTextureCoordinatesBuffer()V

    .line 81
    return-void

    .line 61
    nop

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x2t
        0x3t
        0x2t
        0x1t
    .end array-data

    .line 65
    nop

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public release()V
    .locals 0

    .prologue
    .line 115
    invoke-super {p0}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->release()V

    .line 117
    return-void
.end method

.method protected renderYuvFrame()Z
    .locals 7

    .prologue
    const v6, 0x8893

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 138
    const v0, 0x8892

    iget-object v2, p0, Lcom/sonymobile/cameracommon/opengl/TextureMappingFrame;->mVertexAlphaBuffers:[I

    aget v2, v2, v3

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 139
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/TextureMappingFrame;->mVertexAlphaInGLSL:I

    const/16 v2, 0x1406

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 148
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/TextureMappingFrame;->mVertexBuffers:[I

    aget v0, v0, v3

    iget-object v2, p0, Lcom/sonymobile/cameracommon/opengl/TextureMappingFrame;->mTexCoordBuffers:[I

    aget v2, v2, v3

    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/TextureMappingFrame;->mFrameTextures:[I

    invoke-virtual {p0, v0, v2, v4}, Lcom/sonymobile/cameracommon/opengl/TextureMappingFrame;->setupTexture(II[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    :goto_0
    return v3

    .line 153
    :cond_0
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/TextureMappingFrame;->mShaderProgram:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/opengl/TextureMappingFrame;->setupParameter(I)V

    .line 156
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/TextureMappingFrame;->setupMvpMatrix()V

    .line 159
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/TextureMappingFrame;->mIndexBuffers:[I

    aget v0, v0, v3

    invoke-static {v6, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 160
    const/4 v0, 0x4

    iget v2, p0, Lcom/sonymobile/cameracommon/opengl/TextureMappingFrame;->mIndicesNumber:I

    const/16 v4, 0x1401

    invoke-static {v0, v2, v4, v3}, Landroid/opengl/GLES20;->glDrawElements(IIII)V

    .line 165
    invoke-static {v6, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 167
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->isGlErrorOccured()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    sget-object v0, Lcom/sonymobile/cameracommon/opengl/TextureMappingFrame;->TAG:Ljava/lang/String;

    const-string v1, ".render():[Draw frame Error]"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move v3, v1

    .line 173
    goto :goto_0
.end method

.method public updateIndexBuffer([B)V
    .locals 5
    .param p1, "indices"    # [B

    .prologue
    const/4 v4, 0x0

    const v3, 0x8893

    .line 84
    array-length v1, p1

    iput v1, p0, Lcom/sonymobile/cameracommon/opengl/TextureMappingFrame;->mIndicesNumber:I

    .line 86
    invoke-static {p1}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->allocByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 88
    .local v0, "indexBuf":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/TextureMappingFrame;->mIndexBuffers:[I

    aget v1, v1, v4

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 89
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    const v2, 0x88e8

    invoke-static {v3, v1, v0, v2}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 94
    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 95
    return-void
.end method

.method public updateVertexAlphaBuffer([F)V
    .locals 5
    .param p1, "vertex"    # [F

    .prologue
    const/4 v4, 0x0

    const v3, 0x8892

    .line 98
    invoke-static {p1}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->allocFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 100
    .local v0, "vertexBuf":Ljava/nio/FloatBuffer;
    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/TextureMappingFrame;->mVertexAlphaBuffers:[I

    aget v1, v1, v4

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 101
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->limit()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    const v2, 0x88e8

    invoke-static {v3, v1, v0, v2}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 106
    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 107
    return-void
.end method
