.class Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;
.super Ljava/lang/Object;
.source "VideoWriter.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaEncoderStateListener"
.end annotation


# instance fields
.field private final mMaxDurationUs:J

.field private final mMaxFileSizeBytes:J

.field private mTotalSizeBytes:J

.field private mTotalTimeUs:J

.field final synthetic this$0:Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;


# direct methods
.method public constructor <init>(Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const-wide/16 v0, -0x1

    .line 249
    iput-object p1, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;->this$0:Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    iput-wide v2, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;->mTotalTimeUs:J

    .line 251
    iput-wide v2, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;->mTotalSizeBytes:J

    .line 252
    iput-wide v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;->mMaxDurationUs:J

    .line 253
    iput-wide v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;->mMaxFileSizeBytes:J

    .line 254
    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;JJ)V
    .locals 2
    .param p2, "maxDurationMills"    # J
    .param p4, "maxFileSizeBytes"    # J

    .prologue
    const-wide/16 v0, 0x0

    .line 256
    iput-object p1, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;->this$0:Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    iput-wide v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;->mTotalTimeUs:J

    .line 258
    iput-wide v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;->mTotalSizeBytes:J

    .line 259
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p2

    iput-wide v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;->mMaxDurationUs:J

    .line 260
    iput-wide p4, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;->mMaxFileSizeBytes:J

    .line 261
    return-void
.end method


# virtual methods
.method public onFinished(Z)V
    .locals 3
    .param p1, "result"    # Z

    .prologue
    .line 276
    if-nez p1, :cond_0

    .line 277
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;->this$0:Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;

    # getter for: Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->mOutputPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->access$200(Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 278
    .local v0, "outputFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 279
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 283
    .end local v0    # "outputFile":Ljava/io/File;
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;->this$0:Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;

    # getter for: Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->access$100(Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener$2;

    invoke-direct {v2, p0, p1}, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener$2;-><init>(Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 291
    return-void
.end method

.method public declared-synchronized onProgress(JJ)V
    .locals 7
    .param p1, "presentationTimeUs"    # J
    .param p3, "wittenSizeBytes"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 295
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;->mTotalTimeUs:J

    .line 296
    iget-wide v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;->mTotalSizeBytes:J

    add-long/2addr v0, p3

    iput-wide v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;->mTotalSizeBytes:J

    .line 299
    iget-wide v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;->mTotalSizeBytes:J

    iget-wide v2, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;->mMaxFileSizeBytes:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    iget-wide v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;->mMaxFileSizeBytes:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;->this$0:Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;

    # getter for: Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->mEncoder:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->access$400(Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;)Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 302
    :cond_1
    :try_start_1
    iget-wide v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;->mTotalTimeUs:J

    iget-wide v2, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;->mMaxDurationUs:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;->mMaxDurationUs:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;->this$0:Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;

    # getter for: Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->mEncoder:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->access$400(Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;)Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->stop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 295
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onStarted()V
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;->this$0:Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;

    # getter for: Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->access$100(Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener$1;-><init>(Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 272
    return-void
.end method

.method public onStorageFull()V
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter$MediaEncoderStateListener;->this$0:Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;

    # getter for: Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->mEncoder:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;->access$400(Lcom/sonymobile/cameracommon/media/videowriter/VideoWriter;)Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->stop()V

    .line 312
    return-void
.end method
