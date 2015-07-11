.class public Lcom/sonymobile/cameracommon/media/utility/AudioResourceChecker;
.super Ljava/lang/Object;
.source "AudioResourceChecker.java"


# static fields
.field private static final MICROPHONE_ACTIVE_KEY:Ljava/lang/String; = "is_microphone_active"

.field private static final MICROPHONE_ACTIVE_VALUE:Ljava/lang/String; = "is_microphone_active=1"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/sonymobile/cameracommon/media/utility/AudioResourceChecker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/media/utility/AudioResourceChecker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAudioResourceAndShowErrorDialogIfNecessary(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)V
    .locals 2
    .param p0, "activity"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .prologue
    .line 88
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 89
    .local v0, "executor":Ljava/util/concurrent/ExecutorService;
    new-instance v1, Lcom/sonymobile/cameracommon/media/utility/AudioResourceChecker$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/cameracommon/media/utility/AudioResourceChecker$1;-><init>(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 110
    return-void
.end method

.method public static isAudioResourceAvailable(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)Z
    .locals 1
    .param p0, "activity"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .prologue
    .line 39
    invoke-static {p0}, Lcom/sonymobile/cameracommon/media/utility/AudioResourceChecker;->isAudioResourceAvailableCheckImmediately(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    invoke-static {}, Lcom/sonymobile/cameracommon/media/utility/AudioResourceChecker;->isAudioResourceAvailableCheckWithAudioRecord()Z

    move-result v0

    .line 49
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized isAudioResourceAvailableCheckImmediately(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 124
    const-class v3, Lcom/sonymobile/cameracommon/media/utility/AudioResourceChecker;

    monitor-enter v3

    :try_start_0
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 125
    .local v0, "am":Landroid/media/AudioManager;
    const-string v2, "is_microphone_active"

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "value":Ljava/lang/String;
    const-string v2, "is_microphone_active=1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    const/4 v2, 0x0

    .line 136
    :goto_0
    monitor-exit v3

    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 124
    .end local v0    # "am":Landroid/media/AudioManager;
    .end local v1    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private static declared-synchronized isAudioResourceAvailableCheckWithAudioRecord()Z
    .locals 11

    .prologue
    .line 59
    const-class v7, Lcom/sonymobile/cameracommon/media/utility/AudioResourceChecker;

    monitor-enter v7

    :try_start_0
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x5

    const v2, 0xbb80

    const/16 v3, 0xc

    const/4 v4, 0x2

    const/16 v5, 0x5a00

    const v8, 0xbb80

    const/16 v9, 0xc

    const/4 v10, 0x2

    invoke-static {v8, v9, v10}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 63
    .local v0, "audioRecord":Landroid/media/AudioRecord;
    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 66
    const/4 v6, 0x0

    .line 67
    .local v6, "result":Z
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 72
    const/4 v6, 0x1

    .line 77
    :goto_0
    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 78
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    const/4 v0, 0x0

    .line 83
    monitor-exit v7

    return v6

    .line 69
    :pswitch_0
    const/4 v6, 0x0

    .line 70
    goto :goto_0

    .line 59
    .end local v6    # "result":Z
    :catchall_0
    move-exception v1

    monitor-exit v7

    throw v1

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
