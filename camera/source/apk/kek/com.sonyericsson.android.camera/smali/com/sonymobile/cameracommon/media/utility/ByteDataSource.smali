.class public Lcom/sonymobile/cameracommon/media/utility/ByteDataSource;
.super Ljava/lang/Object;
.source "ByteDataSource.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/media/encoder/InputDataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/media/utility/ByteDataSource$SampleDataFilter;,
        Lcom/sonymobile/cameracommon/media/utility/ByteDataSource$PresentationTimeCalculator;
    }
.end annotation


# static fields
.field private static final INPUTBUFFER_TIMEOUT_NANOSECONDS:J = 0x5f5e100L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mEncoder:Landroid/media/MediaCodec;

.field private volatile mIsStopRequested:Z

.field private final mPresentationTime:Lcom/sonymobile/cameracommon/media/utility/ByteDataSource$PresentationTimeCalculator;

.field private final mQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mSampleDataFilter:Lcom/sonymobile/cameracommon/media/utility/ByteDataSource$SampleDataFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/sonymobile/cameracommon/media/utility/ByteDataSource;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/media/utility/ByteDataSource;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Landroid/media/MediaCodec;Lcom/sonymobile/cameracommon/media/utility/ByteDataSource$PresentationTimeCalculator;)V
    .locals 1
    .param p2, "encoder"    # Landroid/media/MediaCodec;
    .param p3, "presentationTimeCalculator"    # Lcom/sonymobile/cameracommon/media/utility/ByteDataSource$PresentationTimeCalculator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;",
            ">;",
            "Landroid/media/MediaCodec;",
            "Lcom/sonymobile/cameracommon/media/utility/ByteDataSource$PresentationTimeCalculator;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sonymobile/cameracommon/media/utility/ByteDataSource;-><init>(Ljava/util/concurrent/BlockingQueue;Landroid/media/MediaCodec;Lcom/sonymobile/cameracommon/media/utility/ByteDataSource$PresentationTimeCalculator;Lcom/sonymobile/cameracommon/media/utility/ByteDataSource$SampleDataFilter;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Landroid/media/MediaCodec;Lcom/sonymobile/cameracommon/media/utility/ByteDataSource$PresentationTimeCalculator;Lcom/sonymobile/cameracommon/media/utility/ByteDataSource$SampleDataFilter;)V
    .locals 1
    .param p2, "encoder"    # Landroid/media/MediaCodec;
    .param p3, "presentationTimeCalculator"    # Lcom/sonymobile/cameracommon/media/utility/ByteDataSource$PresentationTimeCalculator;
    .param p4, "sampleDataFilter"    # Lcom/sonymobile/cameracommon/media/utility/ByteDataSource$SampleDataFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;",
            ">;",
            "Landroid/media/MediaCodec;",
            "Lcom/sonymobile/cameracommon/media/utility/ByteDataSource$PresentationTimeCalculator;",
            "Lcom/sonymobile/cameracommon/media/utility/ByteDataSource$SampleDataFilter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/sonymobile/cameracommon/media/utility/ByteDataSource;->mQueue:Ljava/util/concurrent/BlockingQueue;

    .line 55
    iput-object p2, p0, Lcom/sonymobile/cameracommon/media/utility/ByteDataSource;->mEncoder:Landroid/media/MediaCodec;

    .line 56
    iput-object p3, p0, Lcom/sonymobile/cameracommon/media/utility/ByteDataSource;->mPresentationTime:Lcom/sonymobile/cameracommon/media/utility/ByteDataSource$PresentationTimeCalculator;

    .line 57
    iput-object p4, p0, Lcom/sonymobile/cameracommon/media/utility/ByteDataSource;->mSampleDataFilter:Lcom/sonymobile/cameracommon/media/utility/ByteDataSource$SampleDataFilter;

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/media/utility/ByteDataSource;->mIsStopRequested:Z

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/cameracommon/media/utility/ByteDataSource;)Landroid/media/MediaCodec;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/media/utility/ByteDataSource;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/utility/ByteDataSource;->mEncoder:Landroid/media/MediaCodec;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/cameracommon/media/utility/ByteDataSource;)Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/media/utility/ByteDataSource;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/utility/ByteDataSource;->mQueue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/cameracommon/media/utility/ByteDataSource;)Lcom/sonymobile/cameracommon/media/utility/ByteDataSource$SampleDataFilter;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/media/utility/ByteDataSource;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/utility/ByteDataSource;->mSampleDataFilter:Lcom/sonymobile/cameracommon/media/utility/ByteDataSource$SampleDataFilter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/cameracommon/media/utility/ByteDataSource;Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/media/utility/ByteDataSource;
    .param p1, "x1"    # Ljava/nio/ByteBuffer;
    .param p2, "x2"    # [Ljava/nio/ByteBuffer;
    .param p3, "x3"    # I
    .param p4, "x4"    # Z

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonymobile/cameracommon/media/utility/ByteDataSource;->pushToEncoder(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;IZ)V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/sonymobile/cameracommon/media/utility/ByteDataSource;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private pushToEncoder(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;IZ)V
    .locals 10
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dstBuffers"    # [Ljava/nio/ByteBuffer;
    .param p3, "srcOffset"    # I
    .param p4, "eos"    # Z

    .prologue
    .line 134
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/utility/ByteDataSource;->mEncoder:Landroid/media/MediaCodec;

    const-wide/32 v2, 0x5f5e100

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    .line 139
    .local v1, "dstBufferIndex":I
    if-ltz v1, :cond_0

    .line 145
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/utility/ByteDataSource;->mPresentationTime:Lcom/sonymobile/cameracommon/media/utility/ByteDataSource$PresentationTimeCalculator;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, p3

    invoke-interface {v0, v2}, Lcom/sonymobile/cameracommon/media/utility/ByteDataSource$PresentationTimeCalculator;->get(I)J

    move-result-wide v4

    .line 147
    .local v4, "currentPresentationTime":J
    aget-object v7, p2, v1

    .line 148
    .local v7, "dst":Ljava/nio/ByteBuffer;
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 150
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-le v0, v2, :cond_3

    .line 151
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v8

    .line 152
    .local v8, "originalLimit":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 153
    invoke-virtual {v7, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 154
    invoke-virtual {p1, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 165
    .end local v8    # "originalLimit":I
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-nez v0, :cond_4

    const/4 v9, 0x1

    .line 166
    .local v9, "writtenAll":Z
    :goto_1
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/media/utility/ByteDataSource;->mIsStopRequested:Z

    if-nez v0, :cond_1

    if-eqz v9, :cond_5

    if-eqz p4, :cond_5

    :cond_1
    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/media/utility/ByteDataSource;->mIsStopRequested:Z

    .line 167
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/media/utility/ByteDataSource;->mIsStopRequested:Z

    if-eqz v0, :cond_6

    const/4 v6, 0x4

    .line 169
    .local v6, "flags":I
    :goto_3
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/utility/ByteDataSource;->mEncoder:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 178
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/media/utility/ByteDataSource;->mIsStopRequested:Z

    if-nez v0, :cond_2

    if-eqz v9, :cond_0

    .line 184
    :cond_2
    return-void

    .line 156
    .end local v6    # "flags":I
    .end local v9    # "writtenAll":Z
    :cond_3
    invoke-virtual {v7, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 165
    :cond_4
    const/4 v9, 0x0

    goto :goto_1

    .line 166
    .restart local v9    # "writtenAll":Z
    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    .line 167
    :cond_6
    const/4 v6, 0x0

    goto :goto_3
.end method


# virtual methods
.method public release()V
    .locals 0

    .prologue
    .line 107
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/media/utility/ByteDataSource;->mIsStopRequested:Z

    .line 64
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/sonymobile/cameracommon/media/utility/ByteDataSource$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/cameracommon/media/utility/ByteDataSource$1;-><init>(Lcom/sonymobile/cameracommon/media/utility/ByteDataSource;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 97
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/media/utility/ByteDataSource;->mIsStopRequested:Z

    .line 102
    return-void
.end method
