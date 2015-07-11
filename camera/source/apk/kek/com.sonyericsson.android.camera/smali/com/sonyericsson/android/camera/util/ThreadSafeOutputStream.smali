.class public Lcom/sonyericsson/android/camera/util/ThreadSafeOutputStream;
.super Ljava/io/OutputStream;
.source "ThreadSafeOutputStream.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ThreadSafeOutputStream"


# instance fields
.field mClosed:Z

.field private mDelegateStream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "delegate"    # Ljava/io/OutputStream;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/sonyericsson/android/camera/util/ThreadSafeOutputStream;->mDelegateStream:Ljava/io/OutputStream;

    .line 44
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/ThreadSafeOutputStream;->mDelegateStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 49
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/util/ThreadSafeOutputStream;->mClosed:Z

    .line 54
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/ThreadSafeOutputStream;->mDelegateStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit p0

    return-void

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    monitor-exit p0

    return-void

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write(I)V
    .locals 1
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/util/ThreadSafeOutputStream;->mClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 79
    :goto_0
    monitor-exit p0

    return-void

    .line 78
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/ThreadSafeOutputStream;->mDelegateStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public write([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    :goto_0
    if-lez p3, :cond_0

    .line 65
    monitor-enter p0

    .line 66
    :try_start_0
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/util/ThreadSafeOutputStream;->mClosed:Z

    if-eqz v1, :cond_1

    monitor-exit p0

    .line 73
    :cond_0
    return-void

    .line 67
    :cond_1
    const/16 v1, 0x2000

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 68
    .local v0, "writeLength":I
    iget-object v1, p0, Lcom/sonyericsson/android/camera/util/ThreadSafeOutputStream;->mDelegateStream:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 69
    add-int/2addr p2, v0

    .line 70
    sub-int/2addr p3, v0

    .line 71
    monitor-exit p0

    goto :goto_0

    .end local v0    # "writeLength":I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
