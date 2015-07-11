.class public Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;
.super Landroid/view/TextureView;
.source "TextureContextView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/sonyericsson/cameracommon/capturefeedback/CaptureFeedback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$1;,
        Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$AnimationCanvas;,
        Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$SetInvisibleTask;,
        Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$DrawFrameTask;,
        Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$ThreadFactoryImpl;
    }
.end annotation


# static fields
.field private static final DRAW_INTERVAL_MILLIS:J = 0x21L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAnimation:Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimation;

.field private final mAnimationElapsedTimeCount:Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;

.field private final mCanvas:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$AnimationCanvas;

.field private final mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private mIsAnimationRequested:Z

.field private mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private final mSetInvisibleTask:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$SetInvisibleTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 53
    new-instance v0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$SetInvisibleTask;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$SetInvisibleTask;-><init>(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$1;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->mSetInvisibleTask:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$SetInvisibleTask;

    .line 58
    new-instance v0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$AnimationCanvas;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$AnimationCanvas;-><init>(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$1;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->mCanvas:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$AnimationCanvas;

    .line 62
    invoke-virtual {p0, p0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 63
    new-instance v0, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;

    invoke-direct {v0}, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->mAnimationElapsedTimeCount:Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;

    .line 64
    new-instance v0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$ThreadFactoryImpl;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$ThreadFactoryImpl;-><init>(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$1;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 65
    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;)Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$AnimationCanvas;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->mCanvas:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$AnimationCanvas;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;)Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimation;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->mAnimation:Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimation;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;)Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->mAnimationElapsedTimeCount:Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;)Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$SetInvisibleTask;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->mSetInvisibleTask:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$SetInvisibleTask;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;)Ljava/util/concurrent/ScheduledFuture;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    return-object v0
.end method


# virtual methods
.method public onPause()V
    .locals 0

    .prologue
    .line 165
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 160
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 7
    .param p1, "arg0"    # Landroid/graphics/SurfaceTexture;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->mIsAnimationRequested:Z

    if-eqz v0, :cond_0

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->mIsAnimationRequested:Z

    .line 81
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$DrawFrameTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$DrawFrameTask;-><init>(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$1;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x21

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 87
    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "arg0"    # Landroid/graphics/SurfaceTexture;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    .line 97
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "arg0"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 102
    return-void
.end method

.method public release()V
    .locals 0

    .prologue
    .line 125
    return-void
.end method

.method public start(Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimation;)V
    .locals 7
    .param p1, "animation"    # Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimation;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->mAnimation:Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimation;

    .line 109
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->mAnimationElapsedTimeCount:Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->start()V

    .line 110
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->setVisibility(I)V

    .line 111
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$DrawFrameTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$DrawFrameTask;-><init>(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$1;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x21

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 120
    :goto_0
    return-void

    .line 118
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->mIsAnimationRequested:Z

    goto :goto_0
.end method
