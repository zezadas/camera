.class public Lcom/sonyericsson/cameracommon/sound/SoundPlayer;
.super Ljava/lang/Object;
.source "SoundPlayer.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$RecordingSoundPlayer;


# static fields
.field private static final TAG:Ljava/lang/String; = "SoundPlayer"

.field private static final sStreamType:I


# instance fields
.field private final mMediaPlayer:Landroid/media/MediaPlayer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 27
    const-class v0, Landroid/media/AudioManager;

    const-string v1, "STREAM_SYSTEM_ENFORCED"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/apihelper/ApiHelper;->getIntFieldIfExists(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;I)I

    move-result v0

    sput v0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->sStreamType:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 37
    return-void
.end method

.method private playSound(Landroid/content/Context;I)Z
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resid"    # I

    .prologue
    const/4 v9, 0x0

    .line 86
    iget-object v10, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    monitor-enter v10

    .line 87
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 88
    .local v6, "afd":Landroid/content/res/AssetFileDescriptor;
    if-nez v6, :cond_0

    .line 89
    const-string v0, "SoundPlayer"

    const-string v1, "playSound: open RawResourceFd fail"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v9

    .line 114
    :goto_0
    return v0

    .line 94
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 95
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 99
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    sget v1, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->sStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 100
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 107
    :try_start_2
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    :goto_1
    :try_start_3
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 114
    const/4 v0, 0x1

    monitor-exit v10

    goto :goto_0

    .line 115
    .end local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 108
    .restart local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v7

    .line 109
    .local v7, "e":Ljava/io/IOException;
    :try_start_4
    const-string v0, "SoundPlayer"

    const-string v1, "playSound: close RawResourceFd fail"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 101
    .end local v7    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v8

    .line 102
    .local v8, "ex":Ljava/io/IOException;
    :try_start_5
    const-string v0, "SoundPlayer"

    const-string v1, "playSound: IOException"

    invoke-static {v0, v1, v8}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 107
    :try_start_6
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 110
    :goto_2
    :try_start_7
    monitor-exit v10

    move v0, v9

    goto :goto_0

    .line 108
    :catch_2
    move-exception v7

    .line 109
    .restart local v7    # "e":Ljava/io/IOException;
    const-string v0, "SoundPlayer"

    const-string v1, "playSound: close RawResourceFd fail"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 106
    .end local v7    # "e":Ljava/io/IOException;
    .end local v8    # "ex":Ljava/io/IOException;
    :catchall_1
    move-exception v0

    .line 107
    :try_start_8
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 110
    :goto_3
    :try_start_9
    throw v0

    .line 108
    :catch_3
    move-exception v7

    .line 109
    .restart local v7    # "e":Ljava/io/IOException;
    const-string v1, "SoundPlayer"

    const-string v2, "playSound: close RawResourceFd fail"

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3
.end method

.method private playSound(Ljava/lang/String;)Z
    .locals 5
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 60
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    monitor-enter v2

    .line 61
    if-nez p1, :cond_0

    .line 62
    :try_start_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :goto_0
    return v1

    .line 66
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->reset()V

    .line 67
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 68
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    sget v4, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->sStreamType:I

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 69
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    :try_start_2
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 77
    const/4 v1, 0x1

    monitor-exit v2

    goto :goto_0

    .line 78
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "ex":Ljava/io/IOException;
    :try_start_3
    const-string v3, "SoundPlayer"

    const-string v4, "playSound: IOException"

    invoke-static {v3, v4, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->reset()V

    .line 73
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public playAfSuccessSound()Z
    .locals 2

    .prologue
    .line 55
    const-string v0, "/system/media/audio/camera/common/af_success.m4a"

    .line 56
    .local v0, "filePath":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->playSound(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public playRecordingSound()V
    .locals 1

    .prologue
    .line 120
    const-string v0, "/system/media/audio/ui/VideoRecord.ogg"

    .line 121
    .local v0, "filePath":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->playSound(Ljava/lang/String;)Z

    .line 122
    return-void
.end method

.method public playShutterSound(Landroid/content/Context;I)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resid"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->playSound(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public playShutterSound(Ljava/lang/String;)Z
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->playSound(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 40
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    monitor-enter v1

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 42
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 43
    monitor-exit v1

    .line 44
    return-void

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnCompletionListener;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/sound/SoundPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 83
    return-void
.end method
