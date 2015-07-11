.class Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource;
.super Ljava/lang/Object;
.source "AudioSampleDataSource.java"

# interfaces
.implements Landroid/media/AudioRecord$OnRecordPositionUpdateListener;
.implements Lcom/sonymobile/cameracommon/media/encoder/InputDataSource;


# static fields
.field private static final INPUTBUFFER_TIMEOUT_MICROSECONDS:J = 0x186a0L

.field private static final NOTIFICATION_COUNT_PER_SECOND:I = 0xa

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private volatile mAlreadyEos:Z

.field private final mAudioBuffer:Ljava/nio/ByteBuffer;

.field private final mAudioRecord:Landroid/media/AudioRecord;

.field private final mChannelConfig:I

.field private final mCodec:Landroid/media/MediaCodec;

.field private final mFormat:I

.field private final mNotificationPeriod:I

.field private mSampleCount:J

.field private final mSampleDataBytes:I

.field private final mSampleRate:I

.field private final mWorker:Lcom/sonymobile/cameracommon/media/utility/BackgroundWorker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/media/MediaCodec;III)V
    .locals 6
    .param p1, "codec"    # Landroid/media/MediaCodec;
    .param p2, "sampleRate"    # I
    .param p3, "channels"    # I
    .param p4, "format"    # I

    .prologue
    const/16 v3, 0xc

    const/4 v4, 0x2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource;->mAlreadyEos:Z

    .line 60
    iput-object p1, p0, Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource;->mCodec:Landroid/media/MediaCodec;

    .line 61
    iput p2, p0, Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource;->mSampleRate:I

    .line 62
    if-ne p3, v4, :cond_0

    move v0, v3

    :goto_0
    iput v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource;->mChannelConfig:I

    .line 64
    iput p4, p0, Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource;->mFormat:I

    .line 66
    iget v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource;->mSampleRate:I

    iget v1, p0, Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource;->mChannelConfig:I

    iget v2, p0, Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource;->mFormat:I

    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    mul-int/lit8 v5, v0, 0x8

    .line 68
    .local v5, "bufferSize":I
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x1

    iget v2, p0, Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource;->mSampleRate:I

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource;->mAudioRecord:Landroid/media/AudioRecord;

    .line 75
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource;->mAudioBuffer:Ljava/nio/ByteBuffer;

    .line 76
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource;->computeSampleDataBytes()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource;->mSampleDataBytes:I

    .line 77
    iget v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource;->mSampleRate:I

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource;->mNotificationPeriod:I

    .line 79
    new-instance v0, Lcom/sonymobile/cameracommon/media/utility/BackgroundWorker;

    const-string v1, "AudioSampleDataReaderThread"

    invoke-direct {v0, v1}, Lcom/sonymobile/cameracommon/media/utility/BackgroundWorker;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource;->mWorker:Lcom/sonymobile/cameracommon/media/utility/BackgroundWorker;

    .line 85
    return-void

    .line 62
    .end local v5    # "bufferSize":I
    :cond_0
    const/16 v0, 0x10

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource;->readSampleData(Z)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private bytesInFrame()I
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getAudioFormat()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 180
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Specified Audio format is not supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :pswitch_0
    const/4 v0, 0x2

    .line 178
    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 174
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private channels()I
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getChannelCount()I

    move-result v0

    return v0
.end method

.method private computeSampleDataBytes()I
    .locals 2

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource;->bytesInFrame()I

    move-result v0

    invoke-direct {p0}, Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource;->channels()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method private getPresentationTime()J
    .locals 2

    .prologue
    .line 193
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource;->getPresentationTime(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getPresentationTime(J)J
    .locals 5
    .param p1, "additionalSampleCount"    # J

    .prologue
    .line 197
    const-wide/32 v0, 0xf4240

    iget-wide v2, p0, Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource;->mSampleCount:J

    add-long/2addr v2, p1

    mul-long/2addr v0, v2

    iget v2, p0, Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource;->mSampleRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private static isCancelled()Z
    .locals 1

    .prologue
    .line 313
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    return v0
.end method

.method private pushToEncoder(Ljava/nio/ByteBuffer;IJZ[Ljava/nio/ByteBuffer;)V
    .locals 20
    .param p1, "rawData"    # Ljava/nio/ByteBuffer;
    .param p2, "rawDataBytes"    # I
    .param p3, "presentationTime"    # J
    .param p5, "eos"    # Z
    .param p6, "inputBuffers"    # [Ljava/nio/ByteBuffer;

    .prologue
    .line 264
    const/16 v16, 0x0

    .line 266
    .local v16, "writtenBytes":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 267
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v14

    .line 268
    .local v14, "rawDataArray":[B
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v13

    .line 274
    .local v13, "offset":I
    :goto_0
    const/4 v11, 0x0

    .line 276
    .local v11, "hasWrittenAll":Z
    :cond_0
    :goto_1
    invoke-static {}, Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_4

    if-nez v11, :cond_4

    .line 278
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource;->mCodec:Landroid/media/MediaCodec;

    const-wide/32 v18, 0x186a0

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    .line 279
    .local v5, "inputBufferIndex":I
    if-ltz v5, :cond_0

    .line 285
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource;->computeSampleDataBytes()I

    move-result v4

    div-int v4, v16, v4

    int-to-long v0, v4

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource;->getPresentationTime(J)J

    move-result-wide v8

    .line 288
    .local v8, "currentPresentationTime":J
    aget-object v12, p6, v5

    .line 289
    .local v12, "inputBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    sub-int v6, p2, v16

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 291
    .local v15, "requestBytes":I
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 292
    add-int v4, v16, v13

    invoke-virtual {v12, v14, v4, v15}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 293
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    .line 294
    .local v7, "size":I
    add-int v16, v16, v7

    .line 300
    move/from16 v0, v16

    move/from16 v1, p2

    if-lt v0, v1, :cond_2

    const/4 v11, 0x1

    .line 301
    :goto_2
    if-eqz v11, :cond_3

    if-eqz p5, :cond_3

    const/4 v10, 0x4

    .line 303
    .local v10, "flags":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource;->mCodec:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_1

    .line 270
    .end local v5    # "inputBufferIndex":I
    .end local v7    # "size":I
    .end local v8    # "currentPresentationTime":J
    .end local v10    # "flags":I
    .end local v11    # "hasWrittenAll":Z
    .end local v12    # "inputBuffer":Ljava/nio/ByteBuffer;
    .end local v13    # "offset":I
    .end local v14    # "rawDataArray":[B
    .end local v15    # "requestBytes":I
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/cameracommon/utility/ByteBufferUtil;->array(Ljava/nio/ByteBuffer;)[B

    move-result-object v14

    .line 271
    .restart local v14    # "rawDataArray":[B
    const/4 v13, 0x0

    .restart local v13    # "offset":I
    goto :goto_0

    .line 300
    .restart local v5    # "inputBufferIndex":I
    .restart local v7    # "size":I
    .restart local v8    # "currentPresentationTime":J
    .restart local v11    # "hasWrittenAll":Z
    .restart local v12    # "inputBuffer":Ljava/nio/ByteBuffer;
    .restart local v15    # "requestBytes":I
    :cond_2
    const/4 v11, 0x0

    goto :goto_2

    .line 301
    :cond_3
    const/4 v10, 0x0

    goto :goto_3

    .line 310
    .end local v5    # "inputBufferIndex":I
    .end local v7    # "size":I
    .end local v8    # "currentPresentationTime":J
    .end local v12    # "inputBuffer":Ljava/nio/ByteBuffer;
    .end local v15    # "requestBytes":I
    :cond_4
    return-void
.end method

.method private readSampleData(Z)V
    .locals 11
    .param p1, "requestEos"    # Z

    .prologue
    const/4 v10, 0x1

    .line 203
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource;->mAlreadyEos:Z

    if-eqz v0, :cond_0

    .line 250
    :goto_0
    :pswitch_0
    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 210
    .local v7, "inputBuffers":[Ljava/nio/ByteBuffer;
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource;->mAudioRecord:Landroid/media/AudioRecord;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource;->mAudioBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource;->mAudioBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;I)I

    move-result v3

    .line 211
    .local v3, "readBytes":I
    packed-switch v3, :pswitch_data_0

    .line 222
    :goto_1
    iget v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource;->mSampleDataBytes:I

    div-int v0, v3, v0

    int-to-long v8, v0

    .line 230
    .local v8, "readSampleCount":J
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource;->getPresentationTime()J

    move-result-wide v4

    .line 231
    .local v4, "presentationTime":J
    if-nez v3, :cond_2

    move v0, v10

    :goto_2
    or-int v6, v0, p1

    .line 237
    .local v6, "eos":Z
    iget-object v2, p0, Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource;->mAudioBuffer:Ljava/nio/ByteBuffer;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource;->pushToEncoder(Ljava/nio/ByteBuffer;IJZ[Ljava/nio/ByteBuffer;)V

    .line 243
    if-eqz v6, :cond_1

    .line 244
    iput-boolean v10, p0, Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource;->mAlreadyEos:Z

    .line 247
    :cond_1
    iget-wide v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource;->mSampleCount:J

    add-long/2addr v0, v8

    iput-wide v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource;->mSampleCount:J

    goto :goto_0

    .line 219
    .end local v4    # "presentationTime":J
    .end local v6    # "eos":Z
    .end local v8    # "readSampleCount":J
    :pswitch_1
    const/4 v3, 0x0

    goto :goto_1

    .line 231
    .restart local v4    # "presentationTime":J
    .restart local v8    # "readSampleCount":J
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 211
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private requestToReadSampleData(Z)V
    .locals 2
    .param p1, "eos"    # Z

    .prologue
    .line 156
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource;->mWorker:Lcom/sonymobile/cameracommon/media/utility/BackgroundWorker;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/media/utility/BackgroundWorker;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource$1;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource$1;-><init>(Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 171
    return-void
.end method


# virtual methods
.method public onMarkerReached(Landroid/media/AudioRecord;)V
    .locals 0
    .param p1, "recorder"    # Landroid/media/AudioRecord;

    .prologue
    .line 139
    return-void
.end method

.method public onPeriodicNotification(Landroid/media/AudioRecord;)V
    .locals 4
    .param p1, "recorder"    # Landroid/media/AudioRecord;

    .prologue
    .line 145
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1}, Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource;->readSampleData(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/IllegalStateException;
    sget-object v1, Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " occurred. Maybe camera server is dead."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 92
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 98
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource;->mSampleCount:J

    .line 100
    iget-object v1, p0, Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource;->mAudioRecord:Landroid/media/AudioRecord;

    iget v2, p0, Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource;->mNotificationPeriod:I

    invoke-virtual {v1, v2}, Landroid/media/AudioRecord;->setPositionNotificationPeriod(I)I

    move-result v0

    .line 101
    .local v0, "r":I
    if-eqz v0, :cond_0

    .line 102
    sget-object v1, Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource;->TAG:Ljava/lang/String;

    const-string v2, "setPositionNotificationPeriod:failed"

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource;->mAudioRecord:Landroid/media/AudioRecord;

    iget-object v2, p0, Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource;->mWorker:Lcom/sonymobile/cameracommon/media/utility/BackgroundWorker;

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/media/utility/BackgroundWorker;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/media/AudioRecord;->setRecordPositionUpdateListener(Landroid/media/AudioRecord$OnRecordPositionUpdateListener;Landroid/os/Handler;)V

    .line 105
    iget-object v1, p0, Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->startRecording()V

    .line 109
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource;->requestToReadSampleData(Z)V

    .line 111
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 123
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource;->requestToReadSampleData(Z)V

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/videowriter/AudioSampleDataSource;->mWorker:Lcom/sonymobile/cameracommon/media/utility/BackgroundWorker;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/media/utility/BackgroundWorker;->quit()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    goto :goto_0
.end method
