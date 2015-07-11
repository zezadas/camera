.class public Lcom/sonymobile/cameracommon/memorybuffer/ByteArrayRing;
.super Ljava/lang/Object;
.source "ByteArrayRing.java"


# instance fields
.field private final mByteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field private mCurrentByteIndex:I


# direct methods
.method public constructor <init>(II)V
    .locals 3
    .param p1, "numberOfBuffer"    # I
    .param p2, "lengthOfOneBuffer"    # I

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v2, 0x0

    iput v2, p0, Lcom/sonymobile/cameracommon/memorybuffer/ByteArrayRing;->mCurrentByteIndex:I

    .line 23
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/sonymobile/cameracommon/memorybuffer/ByteArrayRing;->mByteList:Ljava/util/List;

    .line 26
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 28
    new-array v0, p2, [B

    .line 31
    .local v0, "buf":[B
    iget-object v2, p0, Lcom/sonymobile/cameracommon/memorybuffer/ByteArrayRing;->mByteList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 33
    .end local v0    # "buf":[B
    :cond_0
    return-void
.end method

.method private getNextIndex()I
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sonymobile/cameracommon/memorybuffer/ByteArrayRing;->mByteList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/sonymobile/cameracommon/memorybuffer/ByteArrayRing;->mCurrentByteIndex:I

    if-gt v0, v1, :cond_0

    .line 52
    const/4 v0, 0x0

    .line 54
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sonymobile/cameracommon/memorybuffer/ByteArrayRing;->mCurrentByteIndex:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized getCurrent()[B
    .locals 2

    .prologue
    .line 36
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/memorybuffer/ByteArrayRing;->mByteList:Ljava/util/List;

    iget v1, p0, Lcom/sonymobile/cameracommon/memorybuffer/ByteArrayRing;->mCurrentByteIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNext()[B
    .locals 2

    .prologue
    .line 41
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/memorybuffer/ByteArrayRing;->mByteList:Ljava/util/List;

    invoke-direct {p0}, Lcom/sonymobile/cameracommon/memorybuffer/ByteArrayRing;->getNextIndex()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized increment()V
    .locals 1

    .prologue
    .line 46
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/memorybuffer/ByteArrayRing;->getNextIndex()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/cameracommon/memorybuffer/ByteArrayRing;->mCurrentByteIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit p0

    return-void

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
