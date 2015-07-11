.class public Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;
.super Ljava/lang/Object;
.source "MediaEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$StateListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mEncodedDataWriteListener:Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask$EncodedDataWriteListener;

.field private mEncoderFinishSignal:Ljava/util/concurrent/CountDownLatch;

.field private mEncoderFormatChangedSignal:Ljava/util/concurrent/CountDownLatch;

.field private mInputEncodedDataThreadPool:Ljava/util/concurrent/ExecutorService;

.field private final mInputStreams:[Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;

.field private final mMainTask:Ljava/lang/Runnable;

.field private final mMuxer:Landroid/media/MediaMuxer;

.field private mMuxerStartedSignal:Ljava/util/concurrent/CountDownLatch;

.field private mRequestFinishSignal:Ljava/util/concurrent/CountDownLatch;

.field private final mStateListener:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$StateListener;

.field private final mWaitRequestFinishSignalTask:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;Landroid/media/MediaMuxer;Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$StateListener;)V
    .locals 1
    .param p1, "inputStreamInfoList"    # [Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;
    .param p2, "muxer"    # Landroid/media/MediaMuxer;
    .param p3, "stateListener"    # Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$StateListener;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$1;-><init>(Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mMainTask:Ljava/lang/Runnable;

    .line 172
    new-instance v0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$2;-><init>(Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mEncodedDataWriteListener:Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask$EncodedDataWriteListener;

    .line 202
    new-instance v0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$3;

    invoke-direct {v0, p0}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$3;-><init>(Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mWaitRequestFinishSignalTask:Ljava/lang/Runnable;

    .line 52
    iput-object p1, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mInputStreams:[Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;

    .line 53
    iput-object p2, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mMuxer:Landroid/media/MediaMuxer;

    .line 54
    iput-object p3, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mStateListener:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$StateListener;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mRequestFinishSignal:Ljava/util/concurrent/CountDownLatch;

    .line 56
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mInputStreams:[Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;

    array-length v0, v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mInputEncodedDataThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mEncoderFormatChangedSignal:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;
    .param p1, "x1"    # Ljava/util/concurrent/CountDownLatch;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mEncoderFormatChangedSignal:Ljava/util/concurrent/CountDownLatch;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;)[Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mInputStreams:[Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mMuxerStartedSignal:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;
    .param p1, "x1"    # Ljava/util/concurrent/CountDownLatch;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mMuxerStartedSignal:Ljava/util/concurrent/CountDownLatch;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mEncoderFinishSignal:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;
    .param p1, "x1"    # Ljava/util/concurrent/CountDownLatch;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mEncoderFinishSignal:Ljava/util/concurrent/CountDownLatch;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->shutdownEncodedDataThreadPool()V

    return-void
.end method

.method static synthetic access$500(Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;)Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$StateListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mStateListener:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$StateListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mRequestFinishSignal:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method private shutdownEncodedDataThreadPool()V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mInputEncodedDataThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 251
    return-void
.end method


# virtual methods
.method releaseEncoders()V
    .locals 5

    .prologue
    .line 271
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mInputStreams:[Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;

    .local v0, "arr$":[Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 272
    .local v2, "input":Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;
    iget-object v4, v2, Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->release()V

    .line 271
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 275
    .end local v2    # "input":Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;
    :cond_0
    return-void
.end method

.method releaseInputDataSource()V
    .locals 5

    .prologue
    .line 290
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mInputStreams:[Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;

    .local v0, "arr$":[Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 291
    .local v2, "input":Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;
    iget-object v4, v2, Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;->source:Lcom/sonymobile/cameracommon/media/encoder/InputDataSource;

    invoke-interface {v4}, Lcom/sonymobile/cameracommon/media/encoder/InputDataSource;->release()V

    .line 290
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 293
    .end local v2    # "input":Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;
    :cond_0
    return-void
.end method

.method releaseMuxer()V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    .line 305
    return-void
.end method

.method sendOnFinishedEvent(Z)V
    .locals 1
    .param p1, "result"    # Z

    .prologue
    .line 333
    monitor-enter p0

    .line 334
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mRequestFinishSignal:Ljava/util/concurrent/CountDownLatch;

    .line 335
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mStateListener:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$StateListener;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mStateListener:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$StateListener;

    invoke-interface {v0, p1}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$StateListener;->onFinished(Z)V

    .line 339
    :cond_0
    return-void

    .line 335
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method sendOnStartedEvent()V
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mStateListener:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$StateListener;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mStateListener:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$StateListener;

    invoke-interface {v0}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$StateListener;->onStarted()V

    .line 330
    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 61
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->start(Ljava/util/concurrent/ExecutorService;)V

    .line 62
    return-void
.end method

.method public start(Ljava/util/concurrent/ExecutorService;)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mRequestFinishSignal:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    .line 66
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 68
    :cond_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mRequestFinishSignal:Ljava/util/concurrent/CountDownLatch;

    .line 69
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mMainTask:Ljava/lang/Runnable;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 70
    return-void
.end method

.method startEncodedDataWriteTasks()V
    .locals 10

    .prologue
    .line 239
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mInputStreams:[Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;

    .local v0, "arr$":[Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 240
    .local v2, "input":Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;
    iget-object v4, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mInputEncodedDataThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;

    iget-object v6, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mMuxer:Landroid/media/MediaMuxer;

    iget-object v7, v2, Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;->codec:Landroid/media/MediaCodec;

    iget-object v8, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mEncodedDataWriteListener:Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask$EncodedDataWriteListener;

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;->mimeType()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask;-><init>(Landroid/media/MediaMuxer;Landroid/media/MediaCodec;Lcom/sonymobile/cameracommon/media/encoder/EncodedDataWriteTask$EncodedDataWriteListener;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 239
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 247
    .end local v2    # "input":Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;
    :cond_0
    return-void
.end method

.method startEncoders()V
    .locals 5

    .prologue
    .line 255
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mInputStreams:[Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;

    .local v0, "arr$":[Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 256
    .local v2, "input":Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;
    iget-object v4, v2, Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->start()V

    .line 255
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 259
    .end local v2    # "input":Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;
    :cond_0
    return-void
.end method

.method startInputDataSource()V
    .locals 5

    .prologue
    .line 278
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mInputStreams:[Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;

    .local v0, "arr$":[Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 279
    .local v2, "input":Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;
    iget-object v4, v2, Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;->source:Lcom/sonymobile/cameracommon/media/encoder/InputDataSource;

    invoke-interface {v4}, Lcom/sonymobile/cameracommon/media/encoder/InputDataSource;->start()V

    .line 278
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 281
    .end local v2    # "input":Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;
    :cond_0
    return-void
.end method

.method startMediaMuxerAfterEncodedFormatIsFixed()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 226
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mEncoderFormatChangedSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 229
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    .line 233
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mMuxerStartedSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 235
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 73
    monitor-enter p0

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mRequestFinishSignal:Ljava/util/concurrent/CountDownLatch;

    if-nez v0, :cond_0

    .line 75
    monitor-exit p0

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mRequestFinishSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 78
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method stopEncoders()V
    .locals 5

    .prologue
    .line 263
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mInputStreams:[Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;

    .local v0, "arr$":[Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 264
    .local v2, "input":Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;
    iget-object v4, v2, Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->stop()V

    .line 263
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 267
    .end local v2    # "input":Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;
    :cond_0
    return-void
.end method

.method stopInputDataSource()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 284
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mInputStreams:[Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;

    .local v0, "arr$":[Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 285
    .local v2, "input":Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;
    iget-object v4, v2, Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;->source:Lcom/sonymobile/cameracommon/media/encoder/InputDataSource;

    invoke-interface {v4}, Lcom/sonymobile/cameracommon/media/encoder/InputDataSource;->stop()V

    .line 284
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 287
    .end local v2    # "input":Lcom/sonymobile/cameracommon/media/encoder/InputDataInfo;
    :cond_0
    return-void
.end method

.method stopMuxer()V
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    .line 299
    return-void
.end method

.method waitToCompleteEncoding()V
    .locals 3

    .prologue
    .line 309
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mWaitRequestFinishSignalTask:Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 314
    .local v0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mEncoderFinishSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :goto_0
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 324
    return-void

    .line 317
    :catch_0
    move-exception v1

    goto :goto_0
.end method
