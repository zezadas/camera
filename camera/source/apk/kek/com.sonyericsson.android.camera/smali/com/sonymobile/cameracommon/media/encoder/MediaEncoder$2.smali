.class Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$2;
.super Ljava/lang/Object;
.source "MediaEncoder.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask$EncodedDataWriteListener;


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
    .line 173
    iput-object p1, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$2;->this$0:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEncodedDataWritten(JJ)V
    .locals 1
    .param p1, "presentationTimeUs"    # J
    .param p3, "wittenSizeBytes"    # J

    .prologue
    .line 177
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$2;->this$0:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    # getter for: Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mStateListener:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$StateListener;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->access$500(Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;)Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$StateListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$StateListener;->onProgress(JJ)V

    .line 178
    return-void
.end method

.method public onEncoderFinished()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$2;->this$0:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    # getter for: Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mEncoderFinishSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->access$300(Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 194
    return-void
.end method

.method public onEncoderFormatChanged(Landroid/media/MediaFormat;)V
    .locals 1
    .param p1, "format"    # Landroid/media/MediaFormat;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$2;->this$0:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    # getter for: Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mEncoderFormatChangedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->access$000(Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$2;->this$0:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    # getter for: Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mMuxerStartedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->access$200(Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :goto_0
    return-void

    .line 186
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onStorageFull()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$2;->this$0:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    # getter for: Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mStateListener:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$StateListener;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->access$500(Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;)Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$StateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$StateListener;->onStorageFull()V

    .line 199
    return-void
.end method
