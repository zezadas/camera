.class public Lcom/sonyericsson/android/camera/configuration/IntentReader;
.super Ljava/lang/Object;
.source "IntentReader.java"


# static fields
.field private static final INVALID:J = -0x1L

.field private static final KEY_CROP:Ljava/lang/String; = "crop"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field mCropValue:Ljava/lang/String;

.field mVideoMaxDurationInMillisecs:J

.field mVideoMaxFileSizeInBytes:J

.field mVideoQuality:J

.field mhasLimit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/sonyericsson/android/camera/configuration/IntentReader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/IntentReader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/configuration/IntentReader;->mhasLimit:Z

    return-void
.end method

.method private setCropValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "cropValue"    # Ljava/lang/String;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/sonyericsson/android/camera/configuration/IntentReader;->mCropValue:Ljava/lang/String;

    .line 147
    return-void
.end method

.method private setVideoMaxDurationInMillisecs(J)V
    .locals 3
    .param p1, "videoMaxDurationInMillisecs"    # J

    .prologue
    .line 125
    iput-wide p1, p0, Lcom/sonyericsson/android/camera/configuration/IntentReader;->mVideoMaxDurationInMillisecs:J

    .line 126
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/configuration/IntentReader;->mhasLimit:Z

    .line 129
    :cond_0
    return-void
.end method

.method private setVideoMaxFileSizeInBytes(J)V
    .locals 3
    .param p1, "videoMaxFileSizeInBytes"    # J

    .prologue
    .line 118
    iput-wide p1, p0, Lcom/sonyericsson/android/camera/configuration/IntentReader;->mVideoMaxFileSizeInBytes:J

    .line 119
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/configuration/IntentReader;->mhasLimit:Z

    .line 122
    :cond_0
    return-void
.end method

.method private setVideoQuality(JJJ)V
    .locals 3
    .param p1, "videoQuality"    # J
    .param p3, "maxFileSize"    # J
    .param p5, "maxDuration"    # J

    .prologue
    .line 132
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 133
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonyericsson/android/camera/configuration/IntentReader;->mVideoQuality:J

    .line 143
    :goto_0
    return-void

    .line 134
    :cond_0
    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 135
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/sonyericsson/android/camera/configuration/IntentReader;->mVideoQuality:J

    goto :goto_0

    .line 136
    :cond_1
    const-wide/16 v0, 0x5

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    .line 137
    const-wide/16 v0, 0x5

    iput-wide v0, p0, Lcom/sonyericsson/android/camera/configuration/IntentReader;->mVideoQuality:J

    goto :goto_0

    .line 138
    :cond_2
    const-wide/16 v0, 0x4

    cmp-long v0, p1, v0

    if-nez v0, :cond_3

    .line 139
    const-wide/16 v0, 0x4

    iput-wide v0, p0, Lcom/sonyericsson/android/camera/configuration/IntentReader;->mVideoQuality:J

    goto :goto_0

    .line 141
    :cond_3
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/sonyericsson/android/camera/configuration/IntentReader;->mVideoQuality:J

    goto :goto_0
.end method


# virtual methods
.method public readIntent(Landroid/content/Intent;)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v12, 0x0

    const/4 v6, -0x1

    const-wide/16 v2, -0x1

    .line 44
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 52
    const-string v1, "android.intent.extra.sizeLimit"

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    .line 58
    .local v10, "sizeLimitLong":J
    cmp-long v1, v10, v2

    if-nez v1, :cond_0

    .line 60
    const-string v1, "android.intent.extra.sizeLimit"

    invoke-virtual {p1, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 65
    .local v9, "sizeLimitInt":I
    int-to-long v4, v9

    invoke-direct {p0, v4, v5}, Lcom/sonyericsson/android/camera/configuration/IntentReader;->setVideoMaxFileSizeInBytes(J)V

    .line 71
    .end local v9    # "sizeLimitInt":I
    :goto_0
    const-string v1, "android.intent.extra.durationLimit"

    invoke-virtual {p1, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 76
    .local v8, "maxDurationSeconds":I
    int-to-long v4, v8

    cmp-long v1, v4, v2

    if-nez v1, :cond_1

    .line 77
    invoke-direct {p0, v2, v3}, Lcom/sonyericsson/android/camera/configuration/IntentReader;->setVideoMaxDurationInMillisecs(J)V

    .line 83
    :goto_1
    const-string v1, "android.intent.extra.videoQuality"

    invoke-virtual {p1, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    int-to-long v2, v1

    iget-wide v4, p0, Lcom/sonyericsson/android/camera/configuration/IntentReader;->mVideoMaxFileSizeInBytes:J

    iget-wide v6, p0, Lcom/sonyericsson/android/camera/configuration/IntentReader;->mVideoMaxDurationInMillisecs:J

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera/configuration/IntentReader;->setVideoQuality(JJJ)V

    .line 87
    invoke-direct {p0, v12}, Lcom/sonyericsson/android/camera/configuration/IntentReader;->setCropValue(Ljava/lang/String;)V

    .line 115
    .end local v8    # "maxDurationSeconds":I
    .end local v10    # "sizeLimitLong":J
    :goto_2
    return-void

    .line 67
    .restart local v10    # "sizeLimitLong":J
    :cond_0
    invoke-direct {p0, v10, v11}, Lcom/sonyericsson/android/camera/configuration/IntentReader;->setVideoMaxFileSizeInBytes(J)V

    goto :goto_0

    .line 79
    .restart local v8    # "maxDurationSeconds":I
    :cond_1
    int-to-long v2, v8

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, Lcom/sonyericsson/android/camera/configuration/IntentReader;->setVideoMaxDurationInMillisecs(J)V

    goto :goto_1

    .line 88
    .end local v8    # "maxDurationSeconds":I
    .end local v10    # "sizeLimitLong":J
    :cond_2
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 90
    const-string v1, "crop"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 91
    const-string v1, "crop"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/configuration/IntentReader;->setCropValue(Ljava/lang/String;)V

    .line 97
    :goto_3
    invoke-direct {p0, v2, v3}, Lcom/sonyericsson/android/camera/configuration/IntentReader;->setVideoMaxFileSizeInBytes(J)V

    .line 98
    invoke-direct {p0, v2, v3}, Lcom/sonyericsson/android/camera/configuration/IntentReader;->setVideoMaxDurationInMillisecs(J)V

    .line 99
    iget-wide v4, p0, Lcom/sonyericsson/android/camera/configuration/IntentReader;->mVideoMaxFileSizeInBytes:J

    iget-wide v6, p0, Lcom/sonyericsson/android/camera/configuration/IntentReader;->mVideoMaxDurationInMillisecs:J

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera/configuration/IntentReader;->setVideoQuality(JJJ)V

    goto :goto_2

    .line 93
    :cond_3
    invoke-direct {p0, v12}, Lcom/sonyericsson/android/camera/configuration/IntentReader;->setCropValue(Ljava/lang/String;)V

    goto :goto_3

    .line 102
    :cond_4
    invoke-direct {p0, v2, v3}, Lcom/sonyericsson/android/camera/configuration/IntentReader;->setVideoMaxFileSizeInBytes(J)V

    .line 103
    invoke-direct {p0, v2, v3}, Lcom/sonyericsson/android/camera/configuration/IntentReader;->setVideoMaxDurationInMillisecs(J)V

    .line 104
    iget-wide v4, p0, Lcom/sonyericsson/android/camera/configuration/IntentReader;->mVideoMaxFileSizeInBytes:J

    iget-wide v6, p0, Lcom/sonyericsson/android/camera/configuration/IntentReader;->mVideoMaxDurationInMillisecs:J

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera/configuration/IntentReader;->setVideoQuality(JJJ)V

    .line 105
    invoke-direct {p0, v12}, Lcom/sonyericsson/android/camera/configuration/IntentReader;->setCropValue(Ljava/lang/String;)V

    goto :goto_2
.end method
