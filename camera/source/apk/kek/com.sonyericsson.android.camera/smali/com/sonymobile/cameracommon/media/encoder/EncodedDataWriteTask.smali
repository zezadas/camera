.class Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;
.super Ljava/lang/Object;
.source "EncodedDataWriteTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask$EncodedDataWriteListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_TIME_DIFF:J = 0x0L

.field private static final OUTPUTBUFFER_TIMEOUT_NANOSECONDS:J = 0x5f5e100L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCodec:Landroid/media/MediaCodec;

.field private final mListener:Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask$EncodedDataWriteListener;

.field private final mMuxer:Landroid/media/MediaMuxer;

.field private mMuxerIndex:I

.field private final mName:Ljava/lang/String;

.field private mTimeDiff:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/media/MediaMuxer;Landroid/media/MediaCodec;Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask$EncodedDataWriteListener;Ljava/lang/String;)V
    .locals 0
    .param p1, "muxer"    # Landroid/media/MediaMuxer;
    .param p2, "encoder"    # Landroid/media/MediaCodec;
    .param p3, "listener"    # Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask$EncodedDataWriteListener;
    .param p4, "name"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p4, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mName:Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mMuxer:Landroid/media/MediaMuxer;

    .line 48
    iput-object p2, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mCodec:Landroid/media/MediaCodec;

    .line 49
    iput-object p3, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mListener:Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask$EncodedDataWriteListener;

    .line 50
    return-void
.end method

.method private awaitEncoderFormat()Z
    .locals 6

    .prologue
    .line 211
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 213
    .local v0, "bufferInfo":Landroid/media/MediaCodec$BufferInfo;
    :cond_0
    invoke-static {}, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->canceled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 214
    iget-object v2, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mCodec:Landroid/media/MediaCodec;

    const-wide/32 v4, 0x5f5e100

    invoke-virtual {v2, v0, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    .line 217
    .local v1, "info":I
    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    .line 219
    const/4 v2, 0x1

    .line 227
    .end local v1    # "info":I
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static canceled()Z
    .locals 1

    .prologue
    .line 231
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    return v0
.end method

.method private logBufferInfoForPull(Landroid/media/MediaCodec$BufferInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/media/MediaCodec$BufferInfo;

    .prologue
    .line 195
    return-void
.end method

.method private logBufferInfoForWrite(Landroid/media/MediaCodec$BufferInfo;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "info"    # Landroid/media/MediaCodec$BufferInfo;
    .param p2, "outbuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 208
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->awaitEncoderFormat()Z

    move-result v8

    if-nez v8, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    iget-object v8, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v8}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 60
    .local v5, "outputBuffers":[Ljava/nio/ByteBuffer;
    new-instance v2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 62
    .local v2, "info":Landroid/media/MediaCodec$BufferInfo;
    const-wide/16 v6, -0x1

    .line 63
    .local v6, "presentationTimeUs":J
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mTimeDiff:J

    .line 66
    iget-object v8, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v8}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    .line 67
    .local v1, "format":Landroid/media/MediaFormat;
    iget-object v9, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mMuxer:Landroid/media/MediaMuxer;

    monitor-enter v9

    .line 69
    :try_start_0
    iget-object v8, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v8, v1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v8

    iput v8, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mMuxerIndex:I

    .line 71
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    iget-object v8, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mListener:Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask$EncodedDataWriteListener;

    if-eqz v8, :cond_2

    .line 74
    iget-object v8, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mListener:Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask$EncodedDataWriteListener;

    invoke-interface {v8, v1}, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask$EncodedDataWriteListener;->onEncoderFormatChanged(Landroid/media/MediaFormat;)V

    .line 77
    :cond_2
    :goto_1
    invoke-static {}, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->canceled()Z

    move-result v8

    if-nez v8, :cond_3

    .line 78
    const/4 v4, 0x0

    .line 81
    .local v4, "outputBufferIndex":I
    :try_start_1
    iget-object v8, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mCodec:Landroid/media/MediaCodec;

    const-wide/32 v10, 0x5f5e100

    invoke-virtual {v8, v2, v10, v11}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    .line 92
    const/4 v8, -0x1

    if-ne v4, v8, :cond_4

    .line 94
    invoke-static {}, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->canceled()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 181
    .end local v4    # "outputBufferIndex":I
    :cond_3
    :goto_2
    iget-object v8, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mListener:Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask$EncodedDataWriteListener;

    if-eqz v8, :cond_0

    .line 182
    iget-object v8, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mListener:Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask$EncodedDataWriteListener;

    invoke-interface {v8}, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask$EncodedDataWriteListener;->onEncoderFinished()V

    goto :goto_0

    .line 71
    :catchall_0
    move-exception v8

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .line 84
    .restart local v4    # "outputBufferIndex":I
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/IllegalStateException;
    sget-object v8, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " occurred. Maybe camera server is dead."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 102
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_4
    if-ltz v4, :cond_a

    .line 103
    invoke-static {}, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->canceled()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 105
    iget v8, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    or-int/lit8 v8, v8, 0x4

    iput v8, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 108
    :cond_5
    invoke-direct {p0, v2}, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->logBufferInfoForPull(Landroid/media/MediaCodec$BufferInfo;)V

    .line 110
    aget-object v3, v5, v4

    .line 111
    .local v3, "outbuffer":Ljava/nio/ByteBuffer;
    iget-wide v8, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v10, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mTimeDiff:J

    sub-long/2addr v8, v10

    cmp-long v8, v6, v8

    if-ltz v8, :cond_6

    iget v8, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_9

    .line 115
    :cond_6
    iget-wide v8, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mTimeDiff:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_7

    .line 116
    iget-wide v8, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v8, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mTimeDiff:J

    .line 121
    :cond_7
    iget-wide v8, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v10, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mTimeDiff:J

    sub-long/2addr v8, v10

    iput-wide v8, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 123
    invoke-direct {p0, v2, v3}, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->logBufferInfoForWrite(Landroid/media/MediaCodec$BufferInfo;Ljava/nio/ByteBuffer;)V

    .line 126
    :try_start_3
    iget-object v9, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mMuxer:Landroid/media/MediaMuxer;

    monitor-enter v9
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    .line 127
    :try_start_4
    iget-object v8, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mMuxer:Landroid/media/MediaMuxer;

    iget v10, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mMuxerIndex:I

    invoke-virtual {v8, v10, v3, v2}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 128
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 135
    :goto_3
    iget-wide v6, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 136
    iget-object v8, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mListener:Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask$EncodedDataWriteListener;

    if-eqz v8, :cond_8

    .line 137
    iget-object v8, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mListener:Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask$EncodedDataWriteListener;

    iget v9, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    int-to-long v10, v9

    invoke-interface {v8, v6, v7, v10, v11}, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask$EncodedDataWriteListener;->onEncodedDataWritten(JJ)V

    .line 158
    :cond_8
    :goto_4
    iget-object v8, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mCodec:Landroid/media/MediaCodec;

    const/4 v9, 0x0

    invoke-virtual {v8, v4, v9}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 160
    invoke-static {}, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->canceled()Z

    move-result v8

    if-nez v8, :cond_3

    .line 165
    iget v8, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v8, v8, 0x4

    const/4 v9, 0x4

    if-ne v8, v9, :cond_2

    goto/16 :goto_2

    .line 128
    :catchall_1
    move-exception v8

    :try_start_5
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v8
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_1

    .line 129
    :catch_1
    move-exception v0

    .line 133
    .restart local v0    # "e":Ljava/lang/IllegalStateException;
    iget-object v8, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mListener:Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask$EncodedDataWriteListener;

    invoke-interface {v8}, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask$EncodedDataWriteListener;->onStorageFull()V

    goto :goto_3

    .line 140
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_9
    iget v8, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_8

    .line 141
    const-wide/16 v8, 0x1

    add-long/2addr v8, v6

    iput-wide v8, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 142
    const/4 v8, 0x0

    iput v8, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 144
    invoke-direct {p0, v2, v3}, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->logBufferInfoForWrite(Landroid/media/MediaCodec$BufferInfo;Ljava/nio/ByteBuffer;)V

    .line 147
    :try_start_7
    iget-object v9, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mMuxer:Landroid/media/MediaMuxer;

    monitor-enter v9
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_2

    .line 148
    :try_start_8
    iget-object v8, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mMuxer:Landroid/media/MediaMuxer;

    iget v10, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mMuxerIndex:I

    invoke-virtual {v8, v10, v3, v2}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 149
    monitor-exit v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 155
    :goto_5
    iget-wide v6, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    goto :goto_4

    .line 149
    :catchall_2
    move-exception v8

    :try_start_9
    monitor-exit v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v8
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_2

    .line 150
    :catch_2
    move-exception v8

    goto :goto_5

    .line 172
    .end local v3    # "outbuffer":Ljava/nio/ByteBuffer;
    :cond_a
    const/4 v8, -0x3

    if-ne v4, v8, :cond_b

    .line 174
    iget-object v8, p0, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v8}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v5

    goto/16 :goto_1

    .line 176
    :cond_b
    const/4 v8, -0x2

    if-ne v4, v8, :cond_2

    goto/16 :goto_1
.end method
