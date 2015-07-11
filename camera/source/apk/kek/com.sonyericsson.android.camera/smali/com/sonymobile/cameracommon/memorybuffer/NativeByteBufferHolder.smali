.class public Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;
.super Ljava/lang/Object;
.source "NativeByteBufferHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder$NativeByteBufferAllocationHandler;
    }
.end annotation


# static fields
.field private static final DEBUG_LOCK:Ljava/lang/Object;

.field private static final IS_DEBUG:Z

.field private static final TAG:Ljava/lang/String;

.field private static sDebugAllocationHandler:Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder$NativeByteBufferAllocationHandler;

.field private static sDebugCount:I

.field private static sDebugUsedBytes:J


# instance fields
.field private final mByteBuffer:Ljava/nio/ByteBuffer;

.field private mRefCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    const-class v0, Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;->TAG:Ljava/lang/String;

    .line 98
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;->DEBUG_LOCK:Ljava/lang/Object;

    .line 99
    const/4 v0, 0x0

    sput v0, Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;->sDebugCount:I

    .line 100
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;->sDebugUsedBytes:J

    .line 101
    const/4 v0, 0x0

    sput-object v0, Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;->sDebugAllocationHandler:Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder$NativeByteBufferAllocationHandler;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 2
    .param p1, "capacity"    # I

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    if-gtz p1, :cond_0

    .line 38
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 39
    iput v1, p0, Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;->mRefCount:I

    .line 50
    :goto_0
    return-void

    .line 43
    :cond_0
    invoke-static {p1}, Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferAllocator;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 44
    const/4 v0, 0x1

    iput v0, p0, Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;->mRefCount:I

    .line 49
    invoke-static {p0}, Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;->debugNotifyAllocated(Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;)V

    goto :goto_0
.end method

.method public static allocate(I)Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;
    .locals 1
    .param p0, "capacity"    # I

    .prologue
    .line 28
    new-instance v0, Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;

    invoke-direct {v0, p0}, Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;-><init>(I)V

    return-object v0
.end method

.method public static debugGetCount()I
    .locals 1

    .prologue
    .line 104
    sget v0, Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;->sDebugCount:I

    return v0
.end method

.method private static debugNotifyAllocated(Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;)V
    .locals 0
    .param p0, "ref"    # Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;

    .prologue
    .line 139
    return-void
.end method

.method private static debugNotifyReleased(Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;)V
    .locals 0
    .param p0, "ref"    # Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;

    .prologue
    .line 151
    return-void
.end method

.method public static debugSetAllocationHandler(Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder$NativeByteBufferAllocationHandler;)V
    .locals 0
    .param p0, "ntiveMemoryAllocatinHandler"    # Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder$NativeByteBufferAllocationHandler;

    .prologue
    .line 127
    return-void
.end method

.method private static dump()Ljava/lang/String;
    .locals 6

    .prologue
    const-wide/16 v4, 0x400

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "count:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;->sDebugCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " total[kb]:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v2, Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;->sDebugUsedBytes:J

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " used[kb:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v2

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " free[kb]:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    move-result-wide v2

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public debugGetUsedBytes()J
    .locals 2

    .prologue
    .line 108
    sget-wide v0, Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;->sDebugUsedBytes:J

    return-wide v0
.end method

.method public declared-synchronized decrementRefCount()V
    .locals 1

    .prologue
    .line 77
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;->isAvairable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget v0, p0, Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;->mRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;->mRefCount:I

    .line 79
    iget v0, p0, Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;->mRefCount:I

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferAllocator;->release(Ljava/nio/ByteBuffer;)V

    .line 81
    invoke-static {p0}, Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;->debugNotifyReleased(Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :cond_0
    monitor-exit p0

    return-void

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public get()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;->mByteBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public declared-synchronized incrementRefCount()Z
    .locals 1

    .prologue
    .line 62
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;->isAvairable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget v0, p0, Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;->mRefCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    const/4 v0, 0x1

    .line 72
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isAvairable()Z
    .locals 1

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sonymobile/cameracommon/memorybuffer/NativeByteBufferHolder;->mRefCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
