.class public Lcom/sonymobile/cameracommon/opengl/FramebufferController;
.super Ljava/lang/Object;
.source "FramebufferController.java"


# instance fields
.field private final mFramebuffer:[I

.field private mPreviousFramebuffer:[I

.field private final mStencilBuffer:[I

.field private final mTexture:[I


# direct methods
.method public constructor <init>(II)V
    .locals 12
    .param p1, "textureWidth"    # I
    .param p2, "textureHeight"    # I

    .prologue
    const/16 v2, 0x1908

    const v11, 0x8d41

    const/4 v10, 0x1

    const/16 v0, 0xde1

    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-array v3, v10, [I

    iput-object v3, p0, Lcom/sonymobile/cameracommon/opengl/FramebufferController;->mFramebuffer:[I

    .line 21
    new-array v3, v10, [I

    iput-object v3, p0, Lcom/sonymobile/cameracommon/opengl/FramebufferController;->mTexture:[I

    .line 22
    new-array v3, v10, [I

    iput-object v3, p0, Lcom/sonymobile/cameracommon/opengl/FramebufferController;->mStencilBuffer:[I

    .line 25
    new-array v3, v10, [I

    iput-object v3, p0, Lcom/sonymobile/cameracommon/opengl/FramebufferController;->mPreviousFramebuffer:[I

    .line 35
    iget-object v3, p0, Lcom/sonymobile/cameracommon/opengl/FramebufferController;->mFramebuffer:[I

    invoke-static {v10, v3, v1}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 37
    iget-object v3, p0, Lcom/sonymobile/cameracommon/opengl/FramebufferController;->mTexture:[I

    invoke-static {v10, v3, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 40
    iget-object v3, p0, Lcom/sonymobile/cameracommon/opengl/FramebufferController;->mTexture:[I

    aget v3, v3, v1

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 42
    const/16 v7, 0x1401

    const/4 v8, 0x0

    move v3, p1

    move v4, p2

    move v5, v1

    move v6, v2

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 45
    const/16 v2, 0x2802

    const v3, 0x812f

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 47
    const/16 v2, 0x2803

    const v3, 0x812f

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 49
    const/16 v2, 0x2800

    const/16 v3, 0x2600

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 51
    const/16 v2, 0x2801

    const/16 v3, 0x2600

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 54
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 57
    iget-object v2, p0, Lcom/sonymobile/cameracommon/opengl/FramebufferController;->mStencilBuffer:[I

    invoke-static {v2}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v9

    .line 58
    .local v9, "stencilBuffer":Ljava/nio/IntBuffer;
    invoke-static {v10, v9}, Landroid/opengl/GLES20;->glGenRenderbuffers(ILjava/nio/IntBuffer;)V

    .line 59
    iget-object v2, p0, Lcom/sonymobile/cameracommon/opengl/FramebufferController;->mStencilBuffer:[I

    aget v2, v2, v1

    invoke-static {v11, v2}, Landroid/opengl/GLES20;->glBindRenderbuffer(II)V

    .line 60
    const v2, 0x8d48

    invoke-static {v11, v2, p1, p2}, Landroid/opengl/GLES20;->glRenderbufferStorage(IIII)V

    .line 62
    invoke-static {v11, v1}, Landroid/opengl/GLES20;->glBindRenderbuffer(II)V

    .line 65
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/FramebufferController;->bind()V

    .line 67
    const v2, 0x8d40

    const v3, 0x8ce0

    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/FramebufferController;->mTexture:[I

    aget v4, v4, v1

    invoke-static {v2, v3, v0, v4, v1}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 70
    const v0, 0x8d40

    const v2, 0x8d20

    iget-object v3, p0, Lcom/sonymobile/cameracommon/opengl/FramebufferController;->mStencilBuffer:[I

    aget v1, v3, v1

    invoke-static {v0, v2, v11, v1}, Landroid/opengl/GLES20;->glFramebufferRenderbuffer(IIII)V

    .line 73
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/FramebufferController;->unbind()V

    .line 74
    return-void
.end method


# virtual methods
.method public bind()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 92
    const v0, 0x8ca6

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/FramebufferController;->mPreviousFramebuffer:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 93
    const v0, 0x8d40

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/FramebufferController;->mFramebuffer:[I

    aget v1, v1, v2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 94
    return-void
.end method

.method public getTexture()I
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/FramebufferController;->mTexture:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 81
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/FramebufferController;->mFramebuffer:[I

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 82
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/FramebufferController;->mStencilBuffer:[I

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteRenderbuffers(I[II)V

    .line 83
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/FramebufferController;->mTexture:[I

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 84
    return-void
.end method

.method public unbind()V
    .locals 3

    .prologue
    .line 98
    const v0, 0x8d40

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/FramebufferController;->mPreviousFramebuffer:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 99
    return-void
.end method
