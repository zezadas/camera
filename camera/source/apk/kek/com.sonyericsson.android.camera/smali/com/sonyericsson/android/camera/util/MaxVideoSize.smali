.class public Lcom/sonyericsson/android/camera/util/MaxVideoSize;
.super Ljava/lang/Object;
.source "MaxVideoSize.java"


# static fields
.field public static final GUARANTEED_MIN_DURATION_IN_MILLIS:J = 0xbb8L

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mMaxDurationMillisecs:J

.field private mMaxFileSizeBytes:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/sonyericsson/android/camera/util/MaxVideoSize;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/cameracommon/mediasaving/StorageController;)Lcom/sonyericsson/android/camera/util/MaxVideoSize;
    .locals 34
    .param p0, "config"    # Lcom/sonyericsson/android/camera/configuration/Configurations;
    .param p1, "videoSize"    # Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    .param p2, "controller"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    .prologue
    .line 52
    invoke-static/range {p2 .. p2}, Lcom/sonyericsson/cameracommon/utility/RecordingUtil;->getRecordableSizeKBytes(Lcom/sonyericsson/cameracommon/mediasaving/StorageController;)J

    move-result-wide v24

    .line 55
    .local v24, "recordableStorageSizeKBytes":J
    new-instance v14, Lcom/sonyericsson/android/camera/util/MaxVideoSize;

    invoke-direct {v14}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;-><init>()V

    .line 58
    .local v14, "max":Lcom/sonyericsson/android/camera/util/MaxVideoSize;
    const-wide/16 v30, 0x400

    mul-long v18, v24, v30

    .line 61
    .local v18, "maxFilesize":J
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera/configuration/Configurations;->getVideoMaxFileSizeInBytes()J

    move-result-wide v8

    .line 64
    .local v8, "configMaxSize":J
    const-wide/16 v30, 0x0

    cmp-long v15, v8, v30

    if-lez v15, :cond_0

    cmp-long v15, v8, v18

    if-gez v15, :cond_0

    .line 65
    invoke-direct {v14, v8, v9}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->setMaxFileSizeBytes(J)V

    .line 71
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getAverageFileSize()J

    move-result-wide v30

    move-wide/from16 v0, v24

    move-wide/from16 v2, v30

    invoke-static {v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/utility/RecordingUtil;->getDurationMillsFromAverage(JJ)J

    move-result-wide v16

    .line 76
    .local v16, "maxDuration":J
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera/configuration/Configurations;->getVideoMaxDurationInMillisecs()J

    move-result-wide v6

    .line 79
    .local v6, "configMaxDuration":J
    const-wide/16 v30, 0x0

    cmp-long v15, v6, v30

    if-lez v15, :cond_1

    .line 80
    move-wide/from16 v0, v16

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v30

    move-wide/from16 v0, v30

    invoke-direct {v14, v0, v1}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->setMaxDurationMillisecs(J)V

    .line 86
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getAverageFileSize()J

    move-result-wide v30

    const-wide/16 v32, 0x400

    mul-long v30, v30, v32

    const-wide/16 v32, 0x3c

    div-long v28, v30, v32

    .line 88
    .local v28, "sizePerSecond":J
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->isConstraint()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera/configuration/Configurations;->getMmsOptions()Lcom/sonyericsson/android/camera/configuration/MmsOptions;

    move-result-object v15

    iget v15, v15, Lcom/sonyericsson/android/camera/configuration/MmsOptions;->mMaxDuration:I

    int-to-long v0, v15

    move-wide/from16 v20, v0

    .line 90
    .local v20, "mmsMaxDuration":J
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera/configuration/Configurations;->getMmsOptions()Lcom/sonyericsson/android/camera/configuration/MmsOptions;

    move-result-object v15

    iget-wide v0, v15, Lcom/sonyericsson/android/camera/configuration/MmsOptions;->mMaxFileSizeBytes:J

    move-wide/from16 v22, v0

    .line 96
    .local v22, "mmsMaxSize":J
    const-wide/16 v30, 0x0

    cmp-long v15, v22, v30

    if-lez v15, :cond_3

    .line 97
    invoke-virtual {v14}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->getMaxFileSize()J

    move-result-wide v30

    cmp-long v15, v22, v30

    if-gez v15, :cond_2

    .line 98
    move-wide/from16 v0, v22

    invoke-direct {v14, v0, v1}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->setMaxFileSizeBytes(J)V

    .line 116
    :goto_2
    move-wide/from16 v16, v20

    .line 122
    .end local v20    # "mmsMaxDuration":J
    .end local v22    # "mmsMaxSize":J
    :goto_3
    invoke-virtual {v14}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->getMaxFileSize()J

    move-result-wide v30

    move-wide/from16 v0, v30

    long-to-double v0, v0

    move-wide/from16 v30, v0

    move-wide/from16 v0, v28

    long-to-double v0, v0

    move-wide/from16 v32, v0

    div-double v30, v30, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->floor(D)D

    move-result-wide v30

    move-wide/from16 v0, v30

    double-to-long v12, v0

    .line 124
    .local v12, "durationInSecond":J
    const-wide/16 v30, 0x0

    move-wide/from16 v0, v30

    invoke-static {v0, v1, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    .line 125
    const-wide/16 v10, 0x0

    .line 127
    .local v10, "durationFromBytes":J
    const-wide/16 v30, 0x0

    cmp-long v15, v6, v30

    if-lez v15, :cond_6

    .line 128
    const-wide/16 v30, 0x3e8

    mul-long v30, v30, v12

    move-wide/from16 v0, v30

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .line 137
    :goto_4
    const-wide/16 v30, 0x0

    cmp-long v15, v16, v30

    if-lez v15, :cond_7

    .line 138
    move-wide/from16 v0, v16

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v30

    move-wide/from16 v0, v30

    invoke-direct {v14, v0, v1}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->setMaxDurationMillisecs(J)V

    .line 148
    :goto_5
    return-object v14

    .line 67
    .end local v6    # "configMaxDuration":J
    .end local v10    # "durationFromBytes":J
    .end local v12    # "durationInSecond":J
    .end local v16    # "maxDuration":J
    .end local v28    # "sizePerSecond":J
    :cond_0
    move-wide/from16 v0, v18

    invoke-direct {v14, v0, v1}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->setMaxFileSizeBytes(J)V

    goto/16 :goto_0

    .line 82
    .restart local v6    # "configMaxDuration":J
    .restart local v16    # "maxDuration":J
    :cond_1
    move-wide/from16 v0, v16

    invoke-direct {v14, v0, v1}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->setMaxDurationMillisecs(J)V

    goto/16 :goto_1

    .line 100
    .restart local v20    # "mmsMaxDuration":J
    .restart local v22    # "mmsMaxSize":J
    .restart local v28    # "sizePerSecond":J
    :cond_2
    invoke-virtual {v14}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->getMaxFileSize()J

    move-result-wide v30

    move-wide/from16 v0, v30

    invoke-direct {v14, v0, v1}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->setMaxFileSizeBytes(J)V

    goto :goto_2

    .line 104
    :cond_3
    const-wide/16 v30, 0x3e8

    div-long v26, v20, v30

    .line 105
    .local v26, "second":J
    mul-long v4, v26, v28

    .line 110
    .local v4, "bytesFromDuration":J
    invoke-virtual {v14}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->getMaxFileSize()J

    move-result-wide v30

    cmp-long v15, v4, v30

    if-gez v15, :cond_4

    .line 111
    invoke-direct {v14, v4, v5}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->setMaxFileSizeBytes(J)V

    goto :goto_2

    .line 113
    :cond_4
    invoke-virtual {v14}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->getMaxFileSize()J

    move-result-wide v30

    move-wide/from16 v0, v30

    invoke-direct {v14, v0, v1}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->setMaxFileSizeBytes(J)V

    goto :goto_2

    .line 118
    .end local v4    # "bytesFromDuration":J
    .end local v20    # "mmsMaxDuration":J
    .end local v22    # "mmsMaxSize":J
    .end local v26    # "second":J
    :cond_5
    invoke-virtual {v14}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->getMaxDuration()I

    move-result v15

    int-to-long v0, v15

    move-wide/from16 v16, v0

    goto :goto_3

    .line 130
    .restart local v10    # "durationFromBytes":J
    .restart local v12    # "durationInSecond":J
    :cond_6
    const-wide/16 v30, 0x3e8

    mul-long v10, v12, v30

    goto :goto_4

    .line 140
    :cond_7
    invoke-direct {v14, v10, v11}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->setMaxDurationMillisecs(J)V

    goto :goto_5
.end method

.method private setMaxDurationMillisecs(J)V
    .locals 3
    .param p1, "maxDurationMillisecs"    # J

    .prologue
    .line 39
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 40
    const-wide/32 p1, 0x7fffffff

    .line 42
    :cond_0
    iput-wide p1, p0, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->mMaxDurationMillisecs:J

    .line 43
    return-void
.end method

.method private setMaxFileSizeBytes(J)V
    .locals 1
    .param p1, "maxFileSizeBytes"    # J

    .prologue
    .line 46
    iput-wide p1, p0, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->mMaxFileSizeBytes:J

    .line 47
    return-void
.end method


# virtual methods
.method public getMaxDuration()I
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->mMaxDurationMillisecs:J

    long-to-int v0, v0

    return v0
.end method

.method public getMaxFileSize()J
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->mMaxFileSizeBytes:J

    return-wide v0
.end method
