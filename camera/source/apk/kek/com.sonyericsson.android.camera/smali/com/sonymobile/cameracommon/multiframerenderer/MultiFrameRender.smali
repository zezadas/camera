.class public Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;
.super Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView;
.source "MultiFrameRender.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$Renderer;
.implements Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;
.implements Lcom/sonymobile/cameracommon/multiframerenderer/GLRendererAccessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender$3;
    }
.end annotation


# static fields
.field public static final EYE_POSITION:[F

.field public static final EYE_POSITION_Z:F = 2.0f

.field private static final EYE_SIGHT_MATRIX:[F

.field public static final FAR_CLIP:F = 10.0f

.field private static final IS_DEBUG:Z = false

.field public static final NEAR_CLIP:F = 1.0f

.field private static final PARALLEL_PROJECTION_MATRIX:[F

.field private static final PERSPECTIVE_PROJECTION_MATRIX:[F

.field private static final TAG:Ljava/lang/String;

.field private static final mFrameEncoderLock:Ljava/lang/Object;


# instance fields
.field private mCaptureWorkBitmap:Landroid/graphics/Bitmap;

.field private mClearColorBlue:F

.field private mClearColorGreen:F

.field private mClearColorRed:F

.field private mCurrentMultiFrameLayout:Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;

.field private mFramebuffer:Lcom/sonymobile/cameracommon/opengl/FramebufferController;

.field private mFramebufferRenderer:Lcom/sonymobile/cameracommon/opengl/CopiedFrame;

.field private mFramebufferRendererShader:I

.field private mIsNeedToSkipGetBitmap:Z

.field private mIsVideoFrameRendererReleaseRequired:Z

.field private mLifeCycleCallback:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;

.field private mOnTakeGlTextureViewBitmapCallback:Lcom/sonymobile/cameracommon/multiframerenderer/GLRendererAccessor$OnTakeGlTextureViewBitmapCallback;

.field private mPhotoSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

.field private mRotator:Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlRotator;

.field private mTranslator:Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlTranslator;

.field private mUiThreadHandler:Landroid/os/Handler;

.field private mVideoEncoderEglController:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

.field private mVideoFrameHeight:I

.field private mVideoFrameWidth:I

.field private mViewPort:[I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const/high16 v14, -0x41000000    # -0.5f

    const/16 v2, 0x10

    const/4 v1, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 49
    const-class v0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->TAG:Ljava/lang/String;

    .line 62
    new-array v0, v2, [F

    sput-object v0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->EYE_SIGHT_MATRIX:[F

    .line 64
    new-array v0, v2, [F

    sput-object v0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->PERSPECTIVE_PROJECTION_MATRIX:[F

    .line 66
    new-array v0, v2, [F

    sput-object v0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->PARALLEL_PROJECTION_MATRIX:[F

    .line 70
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->EYE_POSITION:[F

    .line 76
    sget-object v0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->EYE_SIGHT_MATRIX:[F

    sget-object v2, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->EYE_POSITION:[F

    aget v2, v2, v1

    sget-object v3, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->EYE_POSITION:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    sget-object v4, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->EYE_POSITION:[F

    const/4 v6, 0x2

    aget v4, v4, v6

    move v6, v5

    move v7, v5

    move v8, v5

    move v10, v5

    invoke-static/range {v0 .. v10}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 83
    sget-object v6, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->PARALLEL_PROJECTION_MATRIX:[F

    const/high16 v8, -0x40800000    # -1.0f

    const/high16 v10, -0x40800000    # -1.0f

    const/high16 v13, 0x43480000    # 200.0f

    move v7, v1

    move v11, v9

    move v12, v5

    invoke-static/range {v6 .. v13}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 93
    sget-object v0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->PERSPECTIVE_PROJECTION_MATRIX:[F

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v5, 0x3f000000    # 0.5f

    const/high16 v7, 0x41200000    # 10.0f

    move v2, v14

    move v4, v14

    move v6, v9

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    .line 181
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mFrameEncoderLock:Ljava/lang/Object;

    return-void

    .line 70
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x40000000    # 2.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "requiredFps"    # I

    .prologue
    const/4 v5, 0x0

    const v4, 0x3e4ccccd    # 0.2f

    const v3, 0x3c23d70a    # 0.01f

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 218
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView;-><init>(Landroid/content/Context;ZI)V

    .line 173
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mUiThreadHandler:Landroid/os/Handler;

    .line 179
    iput-boolean v5, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mIsVideoFrameRendererReleaseRequired:Z

    .line 180
    iput-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mVideoEncoderEglController:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    .line 187
    iput-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mLifeCycleCallback:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;

    .line 199
    iput v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mClearColorRed:F

    .line 200
    iput v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mClearColorGreen:F

    .line 201
    iput v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mClearColorBlue:F

    .line 208
    iput-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mFramebufferRenderer:Lcom/sonymobile/cameracommon/opengl/CopiedFrame;

    .line 209
    iput v5, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mFramebufferRendererShader:I

    .line 219
    invoke-super {p0, p0}, Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView;->setSurfaceStateCallback(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;)V

    .line 220
    invoke-super {p0, p0}, Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView;->setRenderer(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$Renderer;)V

    .line 223
    new-instance v0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlRotator;

    invoke-direct {v0, v1, v1, v1}, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlRotator;-><init>(FFF)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mRotator:Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlRotator;

    .line 224
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mRotator:Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlRotator;

    invoke-virtual {v0, v4, v3, v3}, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlRotator;->setGains(FFF)V

    .line 225
    new-instance v0, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlTranslator;

    invoke-direct {v0, v1, v1, v1}, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlTranslator;-><init>(FFF)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mTranslator:Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlTranslator;

    .line 226
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mTranslator:Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlTranslator;

    const v1, 0x3cf5c28f    # 0.03f

    const v2, 0x3d23d70a    # 0.04f

    invoke-virtual {v0, v4, v1, v2}, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlTranslator;->setGains(FFF)V

    .line 227
    return-void
.end method

.method private bindAndRenderToFrameBuffer([F)V
    .locals 3
    .param p1, "rootGM"    # [F

    .prologue
    .line 619
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mFramebuffer:Lcom/sonymobile/cameracommon/opengl/FramebufferController;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/opengl/FramebufferController;->bind()V

    .line 622
    iget v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mClearColorRed:F

    iget v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mClearColorGreen:F

    iget v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mClearColorBlue:F

    invoke-static {v0, v1, v2}, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->clearSurface(FFF)V

    .line 623
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->setDefaultGlViewPort(II)V

    .line 625
    invoke-virtual {p0, p1}, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->renderToFrameBuffer([F)V

    .line 627
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mFramebuffer:Lcom/sonymobile/cameracommon/opengl/FramebufferController;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/opengl/FramebufferController;->unbind()V

    .line 628
    return-void
.end method

.method private static clearSurface(FFF)V
    .locals 1
    .param p0, "red"    # F
    .param p1, "green"    # F
    .param p2, "blue"    # F

    .prologue
    .line 157
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, p1, p2, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 159
    const/16 v0, 0x4100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 160
    return-void
.end method

.method private static disableGlobalFunctions()V
    .locals 1

    .prologue
    .line 150
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 152
    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 153
    return-void
.end method

.method private static enableGlobalFunctions()V
    .locals 2

    .prologue
    .line 142
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 143
    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 145
    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 146
    return-void
.end method

.method private static getPerspectiveProjectionRootGlobalMatrix()[F
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 163
    const/16 v2, 0x10

    new-array v0, v2, [F

    .line 164
    .local v0, "rootGM":[F
    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 165
    sget-object v2, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->EYE_SIGHT_MATRIX:[F

    move v3, v1

    move-object v4, v0

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 166
    sget-object v2, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->PERSPECTIVE_PROJECTION_MATRIX:[F

    move v3, v1

    move-object v4, v0

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 167
    return-object v0
.end method

.method private static logDebug(Ljava/lang/String;)V
    .locals 4
    .param p0, "event"    # Ljava/lang/String;

    .prologue
    .line 54
    const-string v0, "TraceLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TIME="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] [TAG="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] [THREAD="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] [EVENT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void
.end method

.method private render()V
    .locals 5

    .prologue
    .line 581
    iget v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mClearColorRed:F

    iget v3, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mClearColorGreen:F

    iget v4, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mClearColorBlue:F

    invoke-static {v2, v3, v4}, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->clearSurface(FFF)V

    .line 582
    iget-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mCurrentMultiFrameLayout:Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;->getFrameStructList()Ljava/util/List;

    move-result-object v1

    .line 583
    .local v1, "structList":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 610
    :goto_0
    return-void

    .line 589
    :cond_0
    invoke-static {}, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->getPerspectiveProjectionRootGlobalMatrix()[F

    move-result-object v0

    .line 591
    .local v0, "rootGM":[F
    iget-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mRotator:Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlRotator;

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlRotator;->update()V

    .line 592
    iget-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mTranslator:Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlTranslator;

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlTranslator;->update()V

    .line 595
    iget-object v3, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mCurrentMultiFrameLayout:Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;

    monitor-enter v3

    .line 596
    :try_start_0
    invoke-static {}, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->enableGlobalFunctions()V

    .line 599
    invoke-direct {p0, v0}, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->bindAndRenderToFrameBuffer([F)V

    .line 602
    invoke-direct {p0, v0}, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->renderPreviewFrame([F)V

    .line 603
    invoke-static {}, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->disableGlobalFunctions()V

    .line 605
    sget-object v4, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mFrameEncoderLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 606
    :try_start_1
    invoke-direct {p0, v0}, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->renderVideoFrame([F)V

    .line 607
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 608
    :try_start_2
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 607
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method private renderPreviewFrame([F)V
    .locals 3
    .param p1, "rootGM"    # [F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 650
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->setDefaultGlViewPort(II)V

    .line 653
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mFramebufferRenderer:Lcom/sonymobile/cameracommon/opengl/CopiedFrame;

    invoke-virtual {v0, p1}, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->setGlobalMatrix([F)V

    .line 656
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mFramebufferRenderer:Lcom/sonymobile/cameracommon/opengl/CopiedFrame;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mFramebuffer:Lcom/sonymobile/cameracommon/opengl/FramebufferController;

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/opengl/FramebufferController;->getTexture()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->setInputTexture(I)V

    .line 657
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mFramebufferRenderer:Lcom/sonymobile/cameracommon/opengl/CopiedFrame;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v2, v1, v2}, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->scale(FFF)V

    .line 658
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mFramebufferRenderer:Lcom/sonymobile/cameracommon/opengl/CopiedFrame;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->render()V

    .line 661
    invoke-virtual {p0, p1}, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->renderOnlyPreviewFrame([F)V

    .line 662
    return-void
.end method

.method private renderVideoFrame([F)V
    .locals 4
    .param p1, "rootGM"    # [F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 791
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mVideoEncoderEglController:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    if-eqz v0, :cond_1

    .line 794
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mVideoEncoderEglController:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 796
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mIsVideoFrameRendererReleaseRequired:Z

    if-eqz v0, :cond_2

    .line 798
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mVideoEncoderEglController:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->release()V

    .line 799
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mVideoEncoderEglController:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    .line 837
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->recoverEglContext()V

    .line 841
    :cond_1
    return-void

    .line 803
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mVideoEncoderEglController:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->enable()V

    .line 804
    iget v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mVideoFrameWidth:I

    iget v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mVideoFrameHeight:I

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->setDefaultGlViewPort(II)V

    .line 807
    invoke-static {}, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->enableGlobalFunctions()V

    .line 809
    iget v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mClearColorRed:F

    iget v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mClearColorGreen:F

    iget v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mClearColorBlue:F

    invoke-static {v0, v1, v2}, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->clearSurface(FFF)V

    .line 811
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mFramebufferRenderer:Lcom/sonymobile/cameracommon/opengl/CopiedFrame;

    invoke-virtual {v0, p1}, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->setGlobalMatrix([F)V

    .line 812
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mFramebufferRenderer:Lcom/sonymobile/cameracommon/opengl/CopiedFrame;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mFramebuffer:Lcom/sonymobile/cameracommon/opengl/FramebufferController;

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/opengl/FramebufferController;->getTexture()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->setInputTexture(I)V

    .line 813
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mFramebufferRenderer:Lcom/sonymobile/cameracommon/opengl/CopiedFrame;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v3, v1, v3}, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->scale(FFF)V

    .line 814
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mFramebufferRenderer:Lcom/sonymobile/cameracommon/opengl/CopiedFrame;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->render()V

    .line 817
    invoke-virtual {p0, p1}, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->renderOnlyVideoFrame([F)V

    .line 819
    invoke-static {}, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->disableGlobalFunctions()V

    .line 822
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    .line 823
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 826
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mVideoEncoderEglController:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->onDrawFrameFinished()Z

    .line 830
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mVideoEncoderEglController:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/gltextureview/EGLController;->disable()V

    goto :goto_0
.end method

.method private setDefaultGlViewPort(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v3, 0x0

    .line 278
    if-ge p2, p1, :cond_0

    .line 295
    sub-int v2, p1, p2

    div-int/lit8 v1, v2, 0x2

    .line 296
    .local v1, "verticalOffset":I
    mul-int/lit8 v2, v1, -0x1

    invoke-static {v3, v2, p1, p1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 301
    .end local v1    # "verticalOffset":I
    :goto_0
    return-void

    .line 298
    :cond_0
    sub-int v2, p2, p1

    div-int/lit8 v0, v2, 0x2

    .line 299
    .local v0, "horizontalOffset":I
    mul-int/lit8 v2, v0, -0x1

    invoke-static {v3, v2, p2, p2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    goto :goto_0
.end method

.method private static setupDynamicConfig(II)[I
    .locals 5
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    const/4 v4, 0x0

    .line 109
    if-ge p1, p0, :cond_0

    .line 126
    sub-int v3, p0, p1

    div-int/lit8 v1, v3, 0x2

    .line 127
    .local v1, "verticalOffset":I
    mul-int/lit8 v3, v1, -0x1

    invoke-static {v4, v3, p0, p0}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 133
    .end local v1    # "verticalOffset":I
    :goto_0
    const/4 v3, 0x4

    invoke-static {v3}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v2

    .line 134
    .local v2, "viewPort":Ljava/nio/IntBuffer;
    const/16 v3, 0xba2

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 136
    invoke-virtual {v2}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v3

    return-object v3

    .line 129
    .end local v2    # "viewPort":Ljava/nio/IntBuffer;
    :cond_0
    sub-int v3, p1, p0

    div-int/lit8 v0, v3, 0x2

    .line 130
    .local v0, "horizontalOffset":I
    mul-int/lit8 v3, v0, -0x1

    invoke-static {v4, v3, p1, p1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public getCurrentMultiFrameLayout()Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mCurrentMultiFrameLayout:Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;

    return-object v0
.end method

.method public getGLTextureViewBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 907
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getGLTextureViewBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 912
    invoke-virtual {p0, p1}, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 913
    return-void
.end method

.method public onDrawFrame()V
    .locals 3

    .prologue
    .line 565
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 566
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->render()V

    .line 573
    :goto_0
    return-void

    .line 569
    :cond_0
    iget v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mClearColorRed:F

    iget v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mClearColorGreen:F

    iget v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mClearColorBlue:F

    invoke-static {v0, v1, v2}, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->clearSurface(FFF)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 400
    invoke-super {p0}, Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView;->onPause()V

    .line 402
    new-instance v0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender$2;-><init>(Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;)V

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->requestAction(Ljava/lang/Runnable;)V

    .line 410
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->requestRender()V

    .line 413
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 379
    invoke-super {p0}, Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView;->onResume()V

    .line 381
    new-instance v0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender$1;-><init>(Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;)V

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->requestAction(Ljava/lang/Runnable;)V

    .line 390
    return-void
.end method

.method public onSurfaceChanged(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 446
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->setupDynamicConfig(II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mViewPort:[I

    .line 451
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mCurrentMultiFrameLayout:Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->setMatrix(Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;)V

    .line 453
    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mCurrentMultiFrameLayout:Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;

    monitor-enter v1

    .line 454
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mCurrentMultiFrameLayout:Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;->onSurfaceChanged(II)V

    .line 455
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    new-instance v0, Lcom/sonymobile/cameracommon/opengl/FramebufferController;

    invoke-direct {v0, p1, p2}, Lcom/sonymobile/cameracommon/opengl/FramebufferController;-><init>(II)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mFramebuffer:Lcom/sonymobile/cameracommon/opengl/FramebufferController;

    .line 459
    new-instance v0, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mFramebufferRenderer:Lcom/sonymobile/cameracommon/opengl/CopiedFrame;

    .line 460
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/cameracommon/opengl/ShaderProgramFactory;->createCopyFrameShaderProgram(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mFramebufferRendererShader:I

    .line 462
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mFramebufferRenderer:Lcom/sonymobile/cameracommon/opengl/CopiedFrame;

    iget v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mFramebufferRendererShader:I

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->setShaderProgram(I)V

    .line 464
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mLifeCycleCallback:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mUiThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask;

    sget-object v2, Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask$NotifyType;->CHANGED:Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask$NotifyType;

    iget-object v3, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mLifeCycleCallback:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;

    invoke-direct {v1, v2, p1, p2, v3}, Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask;-><init>(Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask$NotifyType;IILcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 474
    :cond_0
    return-void

    .line 455
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onSurfaceCreated()V
    .locals 6

    .prologue
    .line 424
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mLifeCycleCallback:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mUiThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask;

    sget-object v2, Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask$NotifyType;->CREATED:Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask$NotifyType;

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mLifeCycleCallback:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask;-><init>(Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask$NotifyType;IILcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 434
    :cond_0
    return-void
.end method

.method public onSurfaceDestroyed()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 485
    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mCurrentMultiFrameLayout:Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;

    monitor-enter v1

    .line 486
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mCurrentMultiFrameLayout:Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;->releaseGlEglRelatedInstances()V

    .line 487
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 490
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mFramebuffer:Lcom/sonymobile/cameracommon/opengl/FramebufferController;

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mFramebuffer:Lcom/sonymobile/cameracommon/opengl/FramebufferController;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/opengl/FramebufferController;->release()V

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mFramebufferRenderer:Lcom/sonymobile/cameracommon/opengl/CopiedFrame;

    if-eqz v0, :cond_1

    .line 494
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mFramebufferRenderer:Lcom/sonymobile/cameracommon/opengl/CopiedFrame;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/opengl/CopiedFrame;->release()V

    .line 495
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mFramebufferRenderer:Lcom/sonymobile/cameracommon/opengl/CopiedFrame;

    .line 497
    :cond_1
    iget v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mFramebufferRendererShader:I

    if-eqz v0, :cond_2

    .line 498
    iget v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mFramebufferRendererShader:I

    invoke-static {v0}, Lcom/sonymobile/cameracommon/opengl/ShaderProgramFactory;->deleteShaderProgram(I)V

    .line 499
    iput v4, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mFramebufferRendererShader:I

    .line 503
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mLifeCycleCallback:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;

    if-eqz v0, :cond_3

    .line 504
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mUiThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask;

    sget-object v2, Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask$NotifyType;->DESTROYED:Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask$NotifyType;

    iget-object v3, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mLifeCycleCallback:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;

    invoke-direct {v1, v2, v4, v4, v3}, Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask;-><init>(Lcom/sonymobile/cameracommon/multiframerenderer/NotifySurfaceStateTask$NotifyType;IILcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 513
    :cond_3
    return-void

    .line 487
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 4
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    const/4 v3, 0x0

    .line 917
    invoke-super {p0, p1}, Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView;->onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V

    .line 919
    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mOnTakeGlTextureViewBitmapCallback:Lcom/sonymobile/cameracommon/multiframerenderer/GLRendererAccessor$OnTakeGlTextureViewBitmapCallback;

    if-eqz v1, :cond_0

    .line 922
    iget-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mGlLock:Ljava/lang/Object;

    monitor-enter v2

    .line 923
    :try_start_0
    iget-boolean v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mIsNeedToSkipGetBitmap:Z

    if-eqz v1, :cond_1

    .line 924
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mIsNeedToSkipGetBitmap:Z

    .line 925
    monitor-exit v2

    .line 947
    :cond_0
    :goto_0
    return-void

    .line 928
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mCaptureWorkBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 929
    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mCaptureWorkBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1}, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 930
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mCaptureWorkBitmap:Landroid/graphics/Bitmap;

    .line 934
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 936
    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mOnTakeGlTextureViewBitmapCallback:Lcom/sonymobile/cameracommon/multiframerenderer/GLRendererAccessor$OnTakeGlTextureViewBitmapCallback;

    iget-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mPhotoSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    invoke-interface {v1, v0, v2}, Lcom/sonymobile/cameracommon/multiframerenderer/GLRendererAccessor$OnTakeGlTextureViewBitmapCallback;->onTakeGlTextureViewBitmap(Landroid/graphics/Bitmap;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)V

    .line 941
    iput-object v3, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mOnTakeGlTextureViewBitmapCallback:Lcom/sonymobile/cameracommon/multiframerenderer/GLRendererAccessor$OnTakeGlTextureViewBitmapCallback;

    .line 942
    iput-object v3, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mPhotoSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    .line 943
    iget-object v2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mGlLock:Ljava/lang/Object;

    monitor-enter v2

    .line 944
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mCaptureWorkBitmap:Landroid/graphics/Bitmap;

    .line 945
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 932
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 934
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public release()V
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mLifeCycleCallback:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;

    .line 235
    return-void
.end method

.method protected render(Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;[FLcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase$Applier;Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase$Applier;Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase$Applier;Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct$FrameStructVisibility;)V
    .locals 13
    .param p1, "layoutBase"    # Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;
    .param p2, "rootGM"    # [F
    .param p3, "rotateApplier"    # Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase$Applier;
    .param p4, "traslateApplir"    # Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase$Applier;
    .param p5, "scalorApplir"    # Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase$Applier;
    .param p6, "visibility"    # Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct$FrameStructVisibility;

    .prologue
    .line 698
    invoke-virtual {p1}, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;->enableFunctions()V

    .line 701
    invoke-virtual {p1}, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;->getFrameStructList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct;

    .line 704
    .local v7, "data":Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct;
    invoke-virtual {v7}, Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct;->getVisibility()Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct$FrameStructVisibility;

    move-result-object v1

    move-object/from16 v0, p6

    if-ne v1, v0, :cond_0

    .line 709
    const/4 v12, 0x0

    .line 712
    .local v12, "skipRender":Z
    invoke-virtual {v7}, Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct;->getFrameBaseFactory()Lcom/sonymobile/cameracommon/multiframerenderer/FrameBaseFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonymobile/cameracommon/multiframerenderer/FrameBaseFactory;->obtain()Lcom/sonymobile/cameracommon/opengl/FrameBase;

    move-result-object v8

    .line 713
    .local v8, "frameBase":Lcom/sonymobile/cameracommon/opengl/FrameBase;
    if-nez v8, :cond_1

    .line 714
    invoke-virtual {v7}, Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct;->getFrameBaseFactory()Lcom/sonymobile/cameracommon/multiframerenderer/FrameBaseFactory;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/sonymobile/cameracommon/multiframerenderer/FrameBaseFactory;->initialize(Landroid/view/View;)V

    .line 715
    invoke-virtual {v7}, Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct;->getFrameBaseFactory()Lcom/sonymobile/cameracommon/multiframerenderer/FrameBaseFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonymobile/cameracommon/multiframerenderer/FrameBaseFactory;->obtain()Lcom/sonymobile/cameracommon/opengl/FrameBase;

    move-result-object v8

    .line 718
    :cond_1
    invoke-virtual {v7}, Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct;->isTextureRequiredToUpdate()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 720
    invoke-virtual {v7}, Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct;->getFrameData()Lcom/sonymobile/cameracommon/opengl/FrameData;

    move-result-object v9

    .line 721
    .local v9, "frameData":Lcom/sonymobile/cameracommon/opengl/FrameData;
    if-nez v9, :cond_7

    .line 722
    const/4 v12, 0x1

    .line 747
    .end local v9    # "frameData":Lcom/sonymobile/cameracommon/opengl/FrameData;
    :cond_2
    :goto_1
    invoke-virtual {v7}, Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct;->getFrameId()Ljava/lang/String;

    move-result-object v10

    .line 750
    .local v10, "frameId":Ljava/lang/String;
    invoke-virtual {v8, p2}, Lcom/sonymobile/cameracommon/opengl/FrameBase;->setGlobalMatrix([F)V

    .line 751
    invoke-virtual {p1, v10, v8}, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;->onObjectCoordTransformRequested(Ljava/lang/String;Lcom/sonymobile/cameracommon/opengl/RenderBase;)V

    .line 754
    invoke-virtual {p1, v10, v8}, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;->onObjectVertexUpdateRequested(Ljava/lang/String;Lcom/sonymobile/cameracommon/opengl/FrameBase;)V

    .line 758
    if-eqz p5, :cond_3

    .line 759
    move-object/from16 v0, p5

    invoke-virtual {v0, v8}, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase$Applier;->apply(Lcom/sonymobile/cameracommon/opengl/RenderBase;)V

    .line 761
    :cond_3
    if-eqz p3, :cond_4

    .line 762
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase$Applier;->apply(Lcom/sonymobile/cameracommon/opengl/RenderBase;)V

    .line 764
    :cond_4
    if-eqz p4, :cond_5

    .line 765
    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase$Applier;->apply(Lcom/sonymobile/cameracommon/opengl/RenderBase;)V

    .line 769
    :cond_5
    if-nez v12, :cond_6

    .line 770
    invoke-virtual {v8}, Lcom/sonymobile/cameracommon/opengl/FrameBase;->render()V

    .line 776
    :cond_6
    invoke-virtual {v8}, Lcom/sonymobile/cameracommon/opengl/FrameBase;->getLocalGlobalMatrix()[F

    move-result-object v1

    invoke-virtual {p1, v10, v1}, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;->setFrameMvpMatrix(Ljava/lang/String;[F)V

    goto :goto_0

    .line 725
    .end local v10    # "frameId":Ljava/lang/String;
    .restart local v9    # "frameData":Lcom/sonymobile/cameracommon/opengl/FrameData;
    :cond_7
    sget-object v1, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender$3;->$SwitchMap$com$sonymobile$cameracommon$opengl$FrameData$ImageFormat:[I

    invoke-virtual {v9}, Lcom/sonymobile/cameracommon/opengl/FrameData;->getImageFormat()Lcom/sonymobile/cameracommon/opengl/FrameData$ImageFormat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/opengl/FrameData$ImageFormat;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    move-object v1, v8

    .line 727
    check-cast v1, Lcom/sonymobile/cameracommon/opengl/YuvFrame;

    invoke-virtual {v9}, Lcom/sonymobile/cameracommon/opengl/FrameData;->getFrameWidth()I

    move-result v2

    invoke-virtual {v9}, Lcom/sonymobile/cameracommon/opengl/FrameData;->getFrameHeight()I

    move-result v3

    invoke-virtual {v9}, Lcom/sonymobile/cameracommon/opengl/FrameData;->getByteArrayYvu()[B

    move-result-object v4

    invoke-virtual {v9}, Lcom/sonymobile/cameracommon/opengl/FrameData;->getYOffset()I

    move-result v5

    invoke-virtual {v9}, Lcom/sonymobile/cameracommon/opengl/FrameData;->getVuOffset()I

    move-result v6

    invoke-virtual/range {v1 .. v6}, Lcom/sonymobile/cameracommon/opengl/YuvFrame;->setTextureYvu(II[BII)V

    goto :goto_1

    :pswitch_1
    move-object v1, v8

    .line 736
    check-cast v1, Lcom/sonymobile/cameracommon/opengl/RgbFrame;

    invoke-virtual {v9}, Lcom/sonymobile/cameracommon/opengl/FrameData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/cameracommon/opengl/RgbFrame;->updataTexture(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 781
    .end local v7    # "data":Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct;
    .end local v8    # "frameBase":Lcom/sonymobile/cameracommon/opengl/FrameBase;
    .end local v9    # "frameData":Lcom/sonymobile/cameracommon/opengl/FrameData;
    .end local v12    # "skipRender":Z
    :cond_8
    invoke-virtual {p1}, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;->disableFunctions()V

    .line 782
    return-void

    .line 725
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected renderOnlyPreviewFrame([F)V
    .locals 7
    .param p1, "rootGM"    # [F

    .prologue
    const/4 v5, 0x0

    .line 672
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mRotator:Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlRotator;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlRotator;->getCurrentConcreteApplier()Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase$Applier;

    move-result-object v3

    .line 673
    .local v3, "rotateApplier":Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase$Applier;
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mTranslator:Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlTranslator;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlTranslator;->getCurrentConcreteApplier()Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase$Applier;

    move-result-object v4

    .line 674
    .local v4, "traslateApplir":Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase$Applier;
    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mCurrentMultiFrameLayout:Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;

    sget-object v6, Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct$FrameStructVisibility;->PREVIEW_ONLY:Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct$FrameStructVisibility;

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->render(Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;[FLcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase$Applier;Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase$Applier;Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase$Applier;Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct$FrameStructVisibility;)V

    .line 676
    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mCurrentMultiFrameLayout:Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;

    sget-object v6, Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct$FrameStructVisibility;->COMMON_OVERLAY:Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct$FrameStructVisibility;

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->render(Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;[FLcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase$Applier;Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase$Applier;Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase$Applier;Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct$FrameStructVisibility;)V

    .line 678
    return-void
.end method

.method protected renderOnlyVideoFrame([F)V
    .locals 7
    .param p1, "rootGM"    # [F

    .prologue
    const/4 v5, 0x0

    .line 851
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mRotator:Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlRotator;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlRotator;->getCurrentConcreteApplier()Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase$Applier;

    move-result-object v3

    .line 852
    .local v3, "rotateApplier":Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase$Applier;
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mTranslator:Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlTranslator;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlTranslator;->getCurrentConcreteApplier()Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase$Applier;

    move-result-object v4

    .line 853
    .local v4, "traslateApplir":Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase$Applier;
    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mCurrentMultiFrameLayout:Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;

    sget-object v6, Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct$FrameStructVisibility;->VIDEO_ONLY:Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct$FrameStructVisibility;

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->render(Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;[FLcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase$Applier;Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase$Applier;Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase$Applier;Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct$FrameStructVisibility;)V

    .line 855
    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mCurrentMultiFrameLayout:Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;

    sget-object v6, Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct$FrameStructVisibility;->COMMON_OVERLAY:Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct$FrameStructVisibility;

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->render(Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;[FLcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase$Applier;Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase$Applier;Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase$Applier;Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct$FrameStructVisibility;)V

    .line 857
    return-void
.end method

.method protected renderToFrameBuffer([F)V
    .locals 7
    .param p1, "rootGM"    # [F

    .prologue
    .line 637
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mRotator:Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlRotator;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlRotator;->getCurrentConcreteApplier()Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase$Applier;

    move-result-object v3

    .line 638
    .local v3, "rotateApplier":Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase$Applier;
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mTranslator:Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlTranslator;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlTranslator;->getCurrentConcreteApplier()Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase$Applier;

    move-result-object v4

    .line 639
    .local v4, "traslateApplir":Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase$Applier;
    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mCurrentMultiFrameLayout:Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;

    const/4 v5, 0x0

    sget-object v6, Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct$FrameStructVisibility;->COMMON:Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct$FrameStructVisibility;

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->render(Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;[FLcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase$Applier;Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase$Applier;Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase$Applier;Lcom/sonymobile/cameracommon/multiframerenderer/FrameStruct$FrameStructVisibility;)V

    .line 641
    return-void
.end method

.method public requestFrame(Ljava/lang/String;Lcom/sonymobile/cameracommon/opengl/FrameData;)V
    .locals 1
    .param p1, "frameId"    # Ljava/lang/String;
    .param p2, "frameData"    # Lcom/sonymobile/cameracommon/opengl/FrameData;

    .prologue
    .line 525
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 534
    :goto_0
    return-void

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mCurrentMultiFrameLayout:Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;->updateFrameData(Ljava/lang/String;Lcom/sonymobile/cameracommon/opengl/FrameData;)V

    goto :goto_0
.end method

.method public requestTakeGlTextureViewBitmap(Lcom/sonymobile/cameracommon/multiframerenderer/GLRendererAccessor$OnTakeGlTextureViewBitmapCallback;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "callback"    # Lcom/sonymobile/cameracommon/multiframerenderer/GLRendererAccessor$OnTakeGlTextureViewBitmapCallback;
    .param p2, "request"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 895
    if-eqz p1, :cond_0

    .line 896
    iget-object v1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mGlLock:Ljava/lang/Object;

    monitor-enter v1

    .line 897
    :try_start_0
    iput-object p1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mOnTakeGlTextureViewBitmapCallback:Lcom/sonymobile/cameracommon/multiframerenderer/GLRendererAccessor$OnTakeGlTextureViewBitmapCallback;

    .line 898
    iput-object p2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mPhotoSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    .line 899
    iput-object p3, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mCaptureWorkBitmap:Landroid/graphics/Bitmap;

    .line 900
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mIsNeedToSkipGetBitmap:Z

    .line 901
    monitor-exit v1

    .line 903
    :cond_0
    return-void

    .line 901
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setGlobalRotate(FFF)V
    .locals 1
    .param p1, "targetX"    # F
    .param p2, "targetY"    # F
    .param p3, "targetZ"    # F

    .prologue
    .line 238
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mRotator:Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlRotator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlRotator;->updateTargetCondition(FFF)V

    .line 239
    return-void
.end method

.method public setGlobalTranslator(FFF)V
    .locals 1
    .param p1, "targetX"    # F
    .param p2, "targetY"    # F
    .param p3, "targetZ"    # F

    .prologue
    .line 242
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->setGlobalTranslator(FFFLcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase$ServoControlListener;)V

    .line 243
    return-void
.end method

.method public setGlobalTranslator(FFFLcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase$ServoControlListener;)V
    .locals 1
    .param p1, "targetX"    # F
    .param p2, "targetY"    # F
    .param p3, "targetZ"    # F
    .param p4, "listener"    # Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase$ServoControlListener;

    .prologue
    .line 247
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mTranslator:Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlTranslator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlTranslator;->updateTargetCondition(FFF)V

    .line 248
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mTranslator:Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlTranslator;

    invoke-virtual {v0, p4}, Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlTranslator;->setListener(Lcom/sonymobile/cameracommon/opengl/TransitionControllerUtil$ServoControlBase$ServoControlListener;)V

    .line 249
    return-void
.end method

.method protected setMatrix(Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;)V
    .locals 3
    .param p1, "layout"    # Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;

    .prologue
    .line 334
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mViewPort:[I

    sget-object v1, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->EYE_POSITION:[F

    invoke-static {}, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->getPerspectiveProjectionRootGlobalMatrix()[F

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;->setMatrix([I[F[F)V

    .line 338
    return-void
.end method

.method public setMirrored(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "frameId"    # Ljava/lang/String;
    .param p2, "isMirrored"    # Z

    .prologue
    .line 546
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 554
    :goto_0
    return-void

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mCurrentMultiFrameLayout:Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;->setMirrored(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public setMultiFrameLayout(Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;)V
    .locals 0
    .param p1, "layout"    # Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;

    .prologue
    .line 322
    iput-object p1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mCurrentMultiFrameLayout:Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;

    .line 323
    invoke-virtual {p0, p1}, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->setMatrix(Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameLayoutBase;)V

    .line 324
    return-void
.end method

.method public setRenderer(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$Renderer;)V
    .locals 2
    .param p1, "renderer"    # Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$Renderer;

    .prologue
    .line 357
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "Do not use this directly."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSurfaceClearColor(FFF)V
    .locals 0
    .param p1, "red"    # F
    .param p2, "green"    # F
    .param p3, "blue"    # F

    .prologue
    .line 271
    iput p1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mClearColorRed:F

    .line 272
    iput p2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mClearColorGreen:F

    .line 273
    iput p3, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mClearColorBlue:F

    .line 274
    return-void
.end method

.method public setSurfaceClearColor(I)V
    .locals 4
    .param p1, "color"    # I

    .prologue
    const/high16 v3, 0x437f0000    # 255.0f

    .line 257
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->setSurfaceClearColor(FFF)V

    .line 261
    return-void
.end method

.method public setSurfaceStateCallback(Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;

    .prologue
    .line 367
    iput-object p1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mLifeCycleCallback:Lcom/sonymobile/cameracommon/gltextureview/GLTextureView$SurfaceStateCallback;

    .line 368
    return-void
.end method

.method public setUiOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 312
    return-void
.end method

.method public startVideoFrameRendering(Lcom/sonymobile/cameracommon/gltextureview/EGLController;II)V
    .locals 2
    .param p1, "eglController"    # Lcom/sonymobile/cameracommon/gltextureview/EGLController;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 863
    sget-object v1, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mFrameEncoderLock:Ljava/lang/Object;

    monitor-enter v1

    .line 864
    :try_start_0
    iput p2, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mVideoFrameWidth:I

    .line 865
    iput p3, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mVideoFrameHeight:I

    .line 866
    iput-object p1, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mVideoEncoderEglController:Lcom/sonymobile/cameracommon/gltextureview/EGLController;

    .line 867
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mIsVideoFrameRendererReleaseRequired:Z

    .line 868
    monitor-exit v1

    .line 871
    return-void

    .line 868
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopVideoFrameRendering()V
    .locals 2

    .prologue
    .line 877
    sget-object v1, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mFrameEncoderLock:Ljava/lang/Object;

    monitor-enter v1

    .line 878
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/multiframerenderer/MultiFrameRender;->mIsVideoFrameRendererReleaseRequired:Z

    .line 879
    monitor-exit v1

    .line 882
    return-void

    .line 879
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
