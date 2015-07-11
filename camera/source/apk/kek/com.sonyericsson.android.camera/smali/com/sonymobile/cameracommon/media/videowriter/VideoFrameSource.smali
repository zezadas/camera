.class Lcom/sonymobile/cameracommon/media/videowriter/VideoFrameSource;
.super Ljava/lang/Object;
.source "VideoFrameSource.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/media/encoder/InputDataSource;


# instance fields
.field private final mEncoder:Landroid/media/MediaCodec;


# direct methods
.method public constructor <init>(Landroid/media/MediaCodec;)V
    .locals 0
    .param p1, "videoEncoder"    # Landroid/media/MediaCodec;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoFrameSource;->mEncoder:Landroid/media/MediaCodec;

    .line 27
    return-void
.end method


# virtual methods
.method public createInputSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoFrameSource;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoFrameSource;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    .line 41
    return-void
.end method
