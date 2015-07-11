.class Lcom/sonymobile/cameracommon/media/utility/ByteDataSource$1;
.super Ljava/lang/Object;
.source "ByteDataSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/cameracommon/media/utility/ByteDataSource;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/cameracommon/media/utility/ByteDataSource;


# direct methods
.method constructor <init>(Lcom/sonymobile/cameracommon/media/utility/ByteDataSource;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/sonymobile/cameracommon/media/utility/ByteDataSource$1;->this$0:Lcom/sonymobile/cameracommon/media/utility/ByteDataSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 68
    const/4 v4, 0x0

    .line 69
    .local v4, "eos":Z
    const/4 v6, 0x0

    .line 70
    .local v6, "writtenBytes":I
    iget-object v7, p0, Lcom/sonymobile/cameracommon/media/utility/ByteDataSource$1;->this$0:Lcom/sonymobile/cameracommon/media/utility/ByteDataSource;

    # getter for: Lcom/sonymobile/cameracommon/media/utility/ByteDataSource;->mEncoder:Landroid/media/MediaCodec;
    invoke-static {v7}, Lcom/sonymobile/cameracommon/media/utility/ByteDataSource;->access$000(Lcom/sonymobile/cameracommon/media/utility/ByteDataSource;)Landroid/media/MediaCodec;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 71
    .local v5, "inputBuffers":[Ljava/nio/ByteBuffer;
    :cond_0
    :goto_0
    if-nez v4, :cond_4

    .line 72
    const/4 v2, 0x0

    .line 75
    .local v2, "bufferRef":Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;
    :try_start_0
    iget-object v7, p0, Lcom/sonymobile/cameracommon/media/utility/ByteDataSource$1;->this$0:Lcom/sonymobile/cameracommon/media/utility/ByteDataSource;

    # getter for: Lcom/sonymobile/cameracommon/media/utility/ByteDataSource;->mQueue:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v7}, Lcom/sonymobile/cameracommon/media/utility/ByteDataSource;->access$100(Lcom/sonymobile/cameracommon/media/utility/ByteDataSource;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;

    move-object v2, v0

    .line 76
    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;->get()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 79
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    if-nez v7, :cond_2

    const/4 v4, 0x1

    .line 80
    :goto_1
    iget-object v7, p0, Lcom/sonymobile/cameracommon/media/utility/ByteDataSource$1;->this$0:Lcom/sonymobile/cameracommon/media/utility/ByteDataSource;

    # getter for: Lcom/sonymobile/cameracommon/media/utility/ByteDataSource;->mSampleDataFilter:Lcom/sonymobile/cameracommon/media/utility/ByteDataSource$SampleDataFilter;
    invoke-static {v7}, Lcom/sonymobile/cameracommon/media/utility/ByteDataSource;->access$200(Lcom/sonymobile/cameracommon/media/utility/ByteDataSource;)Lcom/sonymobile/cameracommon/media/utility/ByteDataSource$SampleDataFilter;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 81
    iget-object v7, p0, Lcom/sonymobile/cameracommon/media/utility/ByteDataSource$1;->this$0:Lcom/sonymobile/cameracommon/media/utility/ByteDataSource;

    # getter for: Lcom/sonymobile/cameracommon/media/utility/ByteDataSource;->mSampleDataFilter:Lcom/sonymobile/cameracommon/media/utility/ByteDataSource$SampleDataFilter;
    invoke-static {v7}, Lcom/sonymobile/cameracommon/media/utility/ByteDataSource;->access$200(Lcom/sonymobile/cameracommon/media/utility/ByteDataSource;)Lcom/sonymobile/cameracommon/media/utility/ByteDataSource$SampleDataFilter;

    move-result-object v7

    invoke-interface {v7, v2, v4}, Lcom/sonymobile/cameracommon/media/utility/ByteDataSource$SampleDataFilter;->onSamples(Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;Z)V

    .line 83
    :cond_1
    iget-object v7, p0, Lcom/sonymobile/cameracommon/media/utility/ByteDataSource$1;->this$0:Lcom/sonymobile/cameracommon/media/utility/ByteDataSource;

    # invokes: Lcom/sonymobile/cameracommon/media/utility/ByteDataSource;->pushToEncoder(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;IZ)V
    invoke-static {v7, v1, v5, v6, v4}, Lcom/sonymobile/cameracommon/media/utility/ByteDataSource;->access$300(Lcom/sonymobile/cameracommon/media/utility/ByteDataSource;Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;IZ)V

    .line 85
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    add-int/2addr v6, v7

    .line 90
    if-eqz v2, :cond_0

    .line 91
    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;->decrementRefCount()V

    goto :goto_0

    .line 79
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 87
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v3

    .line 88
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_1
    # getter for: Lcom/sonymobile/cameracommon/media/utility/ByteDataSource;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/cameracommon/media/utility/ByteDataSource;->access$400()Ljava/lang/String;

    move-result-object v7

    const-string v8, "mQueue.take() INTERRUPTED"

    invoke-static {v7, v8}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    if-eqz v2, :cond_0

    .line 91
    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;->decrementRefCount()V

    goto :goto_0

    .line 90
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v7

    if-eqz v2, :cond_3

    .line 91
    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;->decrementRefCount()V

    :cond_3
    throw v7

    .line 95
    .end local v2    # "bufferRef":Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;
    :cond_4
    return-void
.end method
