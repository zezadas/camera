.class public Lcom/sonyericsson/cameracommon/utility/RecordingUtil;
.super Ljava/lang/Object;
.source "RecordingUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/utility/RecordingUtil$DeleteFileTask;
    }
.end annotation


# static fields
.field public static final ERROR_SIZE_LIMIT:I = -0x1

.field public static final TAG:Ljava/lang/String; = "RecordingUtil"

.field public static final UPDATE_REMAIN_INTERVAL:I = 0xa

.field public static final VIDEO_PROGRESS_BAR_UPDATE_INTERVAL:I = 0x64

.field public static final VIDEO_REC_TIME_UPDATE_INTERVAL_MILLISEC:I = 0x3e8


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    return-void
.end method

.method public static deleteFile(Ljava/lang/String;Z)Z
    .locals 10
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "isEmpty"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x1

    .line 74
    if-nez p0, :cond_0

    .line 96
    :goto_0
    return v6

    .line 78
    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    .line 79
    .local v3, "executor":Ljava/util/concurrent/ExecutorService;
    new-instance v7, Lcom/sonyericsson/cameracommon/utility/RecordingUtil$DeleteFileTask;

    invoke-direct {v7, p0, p1}, Lcom/sonyericsson/cameracommon/utility/RecordingUtil$DeleteFileTask;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v3, v7}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v4

    .line 81
    .local v4, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;"
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 83
    .local v5, "success":Ljava/lang/Boolean;
    const-wide/16 v6, 0xbb8

    :try_start_0
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v6, v7, v8}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/Boolean;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    invoke-interface {v4, v9}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 93
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 96
    :goto_1
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    goto :goto_0

    .line 85
    :catch_0
    move-exception v2

    .line 86
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_1
    const-string v6, "RecordingUtil"

    const-string v7, "Delete file interrupted."

    invoke-static {v6, v7, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    invoke-interface {v4, v9}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 93
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    goto :goto_1

    .line 87
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v2

    .line 88
    .local v2, "e":Ljava/util/concurrent/ExecutionException;
    :try_start_2
    const-string v6, "RecordingUtil"

    const-string v7, "Delete file failed."

    invoke-static {v6, v7, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    invoke-interface {v4, v9}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 93
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    goto :goto_1

    .line 89
    .end local v2    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_2
    move-exception v2

    .line 90
    .local v2, "e":Ljava/util/concurrent/TimeoutException;
    :try_start_3
    const-string v6, "RecordingUtil"

    const-string v7, "Delete file time out."

    invoke-static {v6, v7, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 92
    invoke-interface {v4, v9}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 93
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    goto :goto_1

    .line 92
    .end local v2    # "e":Ljava/util/concurrent/TimeoutException;
    :catchall_0
    move-exception v6

    invoke-interface {v4, v9}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 93
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    throw v6
.end method

.method public static getDurationMillsFromAverage(JJ)J
    .locals 8
    .param p0, "availableSizeKbyte"    # J
    .param p2, "averageSizeKBytePerMin"    # J

    .prologue
    .line 193
    long-to-double v4, p0

    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    mul-double/2addr v4, v6

    long-to-double v6, p2

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-long v2, v4

    .line 196
    .local v2, "durationSec":J
    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 197
    const-wide/16 v4, 0x3e8

    mul-long v0, v2, v4

    .line 207
    .local v0, "durationMills":J
    return-wide v0
.end method

.method public static getMaxDurationMillisecond(JLcom/sonyericsson/cameracommon/mediasaving/StorageController;)J
    .locals 18
    .param p0, "averageSizeKBytePerMin"    # J
    .param p2, "controller"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    .prologue
    .line 151
    invoke-static/range {p2 .. p2}, Lcom/sonyericsson/cameracommon/utility/RecordingUtil;->getRecordableSizeKBytes(Lcom/sonyericsson/cameracommon/mediasaving/StorageController;)J

    move-result-wide v14

    const-wide/16 v16, 0x400

    mul-long v8, v14, v16

    .line 154
    .local v8, "recordableStorageSizeByte":J
    invoke-virtual/range {p2 .. p2}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->getAvailableStorageSize()J

    move-result-wide v14

    move-wide/from16 v0, p0

    invoke-static {v14, v15, v0, v1}, Lcom/sonyericsson/cameracommon/utility/RecordingUtil;->getDurationMillsFromAverage(JJ)J

    move-result-wide v4

    .line 159
    .local v4, "maxDurationMills":J
    move-wide v10, v4

    .line 162
    .local v10, "retDurationMills":J
    const-wide/16 v14, 0x3e8

    div-long v6, v10, v14

    .line 163
    .local v6, "maxDurationSec":J
    const-wide/16 v14, 0x400

    mul-long v14, v14, p0

    const-wide/16 v16, 0x3c

    div-long v12, v14, v16

    .line 164
    .local v12, "sizeBytePerSec":J
    mul-long v2, v6, v12

    .line 165
    .local v2, "fileSizeByteFromDuration":J
    cmp-long v14, v8, v2

    if-gez v14, :cond_0

    .line 167
    const-wide/16 v14, 0x3e8

    mul-long/2addr v14, v8

    div-long v10, v14, v12

    .line 176
    :cond_0
    const-wide/32 v14, 0x7fffffff

    cmp-long v14, v14, v10

    if-gez v14, :cond_1

    .line 177
    const-wide/32 v10, 0x7fffffff

    .line 180
    :cond_1
    return-wide v10
.end method

.method public static getMaxRecordingDuration(Landroid/media/CamcorderProfile;Lcom/sonyericsson/cameracommon/mediasaving/StorageController;)J
    .locals 12
    .param p0, "profile"    # Landroid/media/CamcorderProfile;
    .param p1, "controller"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    .prologue
    const-wide/16 v10, 0x400

    const-wide/16 v8, 0x3c

    const-wide/16 v6, 0x8

    .line 242
    iget v4, p0, Landroid/media/CamcorderProfile;->videoBitRate:I

    int-to-long v4, v4

    mul-long/2addr v4, v8

    div-long/2addr v4, v10

    div-long v2, v4, v6

    .line 243
    .local v2, "videoBitRateKBytesPerMin":J
    iget v4, p0, Landroid/media/CamcorderProfile;->audioBitRate:I

    int-to-long v4, v4

    mul-long/2addr v4, v8

    div-long/2addr v4, v10

    div-long v0, v4, v6

    .line 246
    .local v0, "audioBitRateKBytesPerMin":J
    add-long v4, v2, v0

    invoke-static {v4, v5, p1}, Lcom/sonyericsson/cameracommon/utility/RecordingUtil;->getMaxDurationMillisecond(JLcom/sonyericsson/cameracommon/mediasaving/StorageController;)J

    move-result-wide v4

    return-wide v4
.end method

.method public static getOutputFile(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "extension"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v4, 0x1e

    .line 45
    const-string v0, "/dev/null"

    .line 46
    .local v0, "path":Ljava/lang/String;
    const/4 v1, 0x0

    .line 47
    .local v1, "sleepCnt":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 48
    invoke-static {}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->getInstance()Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p0}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->getVideoPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    const-string v2, "/dev/null"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63
    :cond_0
    if-lt v1, v4, :cond_1

    .line 64
    const-string v0, "/dev/null"

    .line 68
    :cond_1
    return-object v0

    .line 53
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public static getRecordableSizeKBytes(Lcom/sonyericsson/cameracommon/mediasaving/StorageController;)J
    .locals 6
    .param p0, "controller"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->getAvailableStorageSize()J

    move-result-wide v2

    const-wide/32 v4, 0xf000

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3c00

    add-long v0, v2, v4

    .line 226
    .local v0, "recordableSize":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 227
    const-wide/16 v0, 0x0

    .line 229
    :cond_0
    return-wide v0
.end method
