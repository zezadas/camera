.class Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$1;
.super Ljava/lang/Object;
.source "MediaEncoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;


# direct methods
.method constructor <init>(Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$1;->this$0:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 103
    const/4 v1, 0x1

    .line 104
    .local v1, "result":Z
    iget-object v2, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$1;->this$0:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    iget-object v4, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$1;->this$0:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    # getter for: Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mInputStreams:[Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;
    invoke-static {v4}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->access$100(Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;)[Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;

    move-result-object v4

    array-length v4, v4

    invoke-direct {v3, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    # setter for: Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mEncoderFormatChangedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v2, v3}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->access$002(Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    .line 105
    iget-object v2, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$1;->this$0:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    # setter for: Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mMuxerStartedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v2, v3}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->access$202(Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    .line 106
    iget-object v2, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$1;->this$0:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    iget-object v4, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$1;->this$0:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    # getter for: Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mInputStreams:[Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;
    invoke-static {v4}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->access$100(Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;)[Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;

    move-result-object v4

    array-length v4, v4

    invoke-direct {v3, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    # setter for: Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mEncoderFinishSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v2, v3}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->access$302(Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    .line 108
    iget-object v2, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$1;->this$0:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->startEncoders()V

    .line 111
    iget-object v2, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$1;->this$0:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->startInputDataSource()V

    .line 114
    iget-object v2, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$1;->this$0:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->startEncodedDataWriteTasks()V

    .line 129
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$1;->this$0:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->startMediaMuxerAfterEncodedFormatIsFixed()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    iget-object v2, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$1;->this$0:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->sendOnStartedEvent()V

    .line 140
    iget-object v2, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$1;->this$0:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->waitToCompleteEncoding()V

    .line 142
    iget-object v2, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$1;->this$0:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->stopEncoders()V

    .line 144
    :try_start_1
    iget-object v2, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$1;->this$0:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->stopMuxer()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 156
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$1;->this$0:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    # invokes: Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->shutdownEncodedDataThreadPool()V
    invoke-static {v2}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->access$400(Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;)V

    .line 157
    iget-object v2, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$1;->this$0:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->releaseInputDataSource()V

    .line 158
    iget-object v2, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$1;->this$0:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->releaseEncoders()V

    .line 160
    :try_start_2
    iget-object v2, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$1;->this$0:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->releaseMuxer()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    .line 166
    :goto_1
    iget-object v2, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$1;->this$0:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    invoke-virtual {v2, v1}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->sendOnFinishedEvent(Z)V

    .line 169
    :goto_2
    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v2, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$1;->this$0:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->stopEncoders()V

    goto :goto_2

    .line 145
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/IllegalStateException;
    const/4 v1, 0x0

    goto :goto_0

    .line 161
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 164
    .restart local v0    # "e":Ljava/lang/IllegalStateException;
    const/4 v1, 0x0

    goto :goto_1
.end method
