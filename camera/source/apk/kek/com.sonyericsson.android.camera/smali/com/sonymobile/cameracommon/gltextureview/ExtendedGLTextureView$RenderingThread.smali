.class Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView$RenderingThread;
.super Ljava/lang/Thread;
.source "ExtendedGLTextureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RenderingThread"
.end annotation


# instance fields
.field private final mInterval:I

.field private mIsAlive:Z

.field final synthetic this$0:Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView;


# direct methods
.method public constructor <init>(Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView;I)V
    .locals 1
    .param p2, "interval"    # I

    .prologue
    .line 64
    iput-object p1, p0, Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView$RenderingThread;->this$0:Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView$RenderingThread;->mIsAlive:Z

    .line 65
    iput p2, p0, Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView$RenderingThread;->mInterval:I

    .line 66
    return-void
.end method


# virtual methods
.method public release()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView$RenderingThread;->mIsAlive:Z

    .line 73
    return-void
.end method

.method public run()V
    .locals 10

    .prologue
    .line 77
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView$RenderingThread;->mIsAlive:Z

    if-eqz v1, :cond_1

    .line 78
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 79
    .local v4, "requestTime":J
    iget-object v1, p0, Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView$RenderingThread;->this$0:Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView;

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView;->requestRender()V

    .line 80
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v6, v8, v4

    .line 81
    .local v6, "spentTime":J
    iget v1, p0, Lcom/sonymobile/cameracommon/gltextureview/ExtendedGLTextureView$RenderingThread;->mInterval:I

    int-to-long v8, v1

    sub-long v2, v8, v6

    .line 82
    .local v2, "interval":J
    const-wide/16 v8, 0x0

    cmp-long v1, v2, v8

    if-lez v1, :cond_0

    .line 85
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 91
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "interval":J
    .end local v4    # "requestTime":J
    .end local v6    # "spentTime":J
    :cond_1
    return-void
.end method
