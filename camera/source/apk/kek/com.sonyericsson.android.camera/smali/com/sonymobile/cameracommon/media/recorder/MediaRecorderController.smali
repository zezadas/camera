.class Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;
.super Ljava/lang/Object;
.source "MediaRecorderController.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$MyOnInfoListener;,
        Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$MyOnErrorListener;,
        Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$PauseTask;,
        Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$StopTask;,
        Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;
    }
.end annotation


# static fields
.field private static final MEDIA_RECORDER_INFO_DURATION_MS:Ljava/lang/String; = "MEDIA_RECORDER_INFO_DURATION_MS"

.field private static final MEDIA_RECORDER_INFO_READY_FOR_STOP_SOUND:Ljava/lang/String; = "MEDIA_RECORDER_INFO_READY_FOR_STOP_SOUND"

.field private static final MIN_DURATION_FOR_PAUSE_IN_MILLI:I = 0x7d0

.field private static final MIN_DURATION_IN_MILLI:I = 0x3e8

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCallbackHandler:Landroid/os/Handler;

.field private final mContext:Landroid/content/Context;

.field private final mInfoDuration:Ljava/lang/Integer;

.field private final mInfoReadyForStopSound:Ljava/lang/Integer;

.field private mIsManualRecordingSoundNeeded:Z

.field private mIsWaitingStopFinished:Z

.field private final mListener:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$RecorderListener;

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private final mMethodPause:Ljava/lang/reflect/Method;

.field private final mMethodSetExtendedInfoNotifications:Ljava/lang/reflect/Method;

.field private final mOnErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

.field private final mOnInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

.field private final mOnTickCallback:Lcom/sonymobile/cameracommon/media/utility/ReferenceClock$TickCallback;

.field private mPauseTask:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecordingTime:Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;

.field private final mSoundPlayer:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$RecordingSoundPlayer;

.field private mState:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;

.field private final mStateLock:Ljava/lang/Object;

.field private mStopTask:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mTaskExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$RecorderListener;Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$RecordingSoundPlayer;Landroid/os/Handler;IZ)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$RecorderListener;
    .param p3, "soundPlayer"    # Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$RecordingSoundPlayer;
    .param p4, "callbackHandler"    # Landroid/os/Handler;
    .param p5, "progressNotificationIntervalMillis"    # I
    .param p6, "isManualRecordingSoundNeeded"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mStateLock:Ljava/lang/Object;

    .line 73
    iput-boolean v3, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mIsManualRecordingSoundNeeded:Z

    .line 577
    new-instance v0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$MyOnErrorListener;

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$MyOnErrorListener;-><init>(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$1;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mOnErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    .line 604
    new-instance v0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$MyOnInfoListener;

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$MyOnInfoListener;-><init>(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$1;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mOnInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    .line 702
    new-instance v0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$4;

    invoke-direct {v0, p0}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$4;-><init>(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mOnTickCallback:Lcom/sonymobile/cameracommon/media/utility/ReferenceClock$TickCallback;

    .line 122
    iput-object p1, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mContext:Landroid/content/Context;

    .line 123
    iput-object p2, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mListener:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$RecorderListener;

    .line 124
    iput-object p3, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mSoundPlayer:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$RecordingSoundPlayer;

    .line 125
    iput-object p4, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mCallbackHandler:Landroid/os/Handler;

    .line 126
    iput-boolean p6, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mIsManualRecordingSoundNeeded:Z

    .line 127
    sget-object v0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;->IDLE:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mState:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;

    .line 128
    new-instance v0, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mCallbackHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mOnTickCallback:Lcom/sonymobile/cameracommon/media/utility/ReferenceClock$TickCallback;

    int-to-long v4, p5

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;-><init>(Landroid/os/Handler;Lcom/sonymobile/cameracommon/media/utility/ReferenceClock$TickCallback;J)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mRecordingTime:Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;

    .line 132
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mTaskExecutor:Ljava/util/concurrent/ExecutorService;

    .line 133
    iput-boolean v3, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mIsWaitingStopFinished:Z

    .line 135
    const-string v0, "pause"

    new-array v1, v3, [Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->findMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mMethodPause:Ljava/lang/reflect/Method;

    .line 136
    const-string v0, "setExtendedInfoNotifications"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->findMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mMethodSetExtendedInfoNotifications:Ljava/lang/reflect/Method;

    .line 138
    const-string v0, "MEDIA_RECORDER_INFO_READY_FOR_STOP_SOUND"

    invoke-static {v0}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->getStaticValueByReflect(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mInfoReadyForStopSound:Ljava/lang/Integer;

    .line 139
    const-string v0, "MEDIA_RECORDER_INFO_DURATION_MS"

    invoke-static {v0}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->getStaticValueByReflect(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mInfoDuration:Ljava/lang/Integer;

    .line 140
    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;)Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mRecordingTime:Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;)Ljava/lang/reflect/Method;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mMethodPause:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;)Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;
    .param p1, "x1"    # Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mState:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;
    .param p1, "x1"    # Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->notifyPauseResult(Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mIsWaitingStopFinished:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;)Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$RecorderListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mListener:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$RecorderListener;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mCallbackHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mInfoReadyForStopSound:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->notifyReadyForSound()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;)Ljava/util/concurrent/Future;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mPauseTask:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mInfoDuration:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;
    .param p1, "x1"    # Ljava/util/concurrent/Future;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mPauseTask:Ljava/util/concurrent/Future;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;
    .param p1, "x1"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->notifyDuration(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mIsManualRecordingSoundNeeded:Z

    return v0
.end method

.method static synthetic access$300(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;)Landroid/media/MediaRecorder;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->releaseMediaRecorder()V

    return-void
.end method

.method static synthetic access$500(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mStateLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;
    .param p1, "x1"    # Ljava/util/concurrent/Future;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mStopTask:Ljava/util/concurrent/Future;

    return-object p1
.end method

.method static synthetic access$700(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;
    .param p1, "x1"    # Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->notifyFinishResult(Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;)V

    return-void
.end method

.method static synthetic access$800(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->playRecordingSoundIfNeeded()V

    return-void
.end method

.method private static varargs findMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 715
    .local p1, "argumentTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    const-class v1, Landroid/media/MediaRecorder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 717
    :goto_0
    return-object v1

    .line 716
    :catch_0
    move-exception v0

    .line 717
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getStaticValueByReflect(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 723
    :try_start_0
    const-class v2, Landroid/media/MediaRecorder;

    invoke-virtual {v2, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 724
    .local v0, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 733
    .end local v0    # "field":Ljava/lang/reflect/Field;
    :goto_0
    return-object v1

    .line 730
    :catch_0
    move-exception v2

    goto :goto_0

    .line 728
    :catch_1
    move-exception v2

    goto :goto_0

    .line 726
    :catch_2
    move-exception v2

    goto :goto_0
.end method

.method private nameError(I)Ljava/lang/String;
    .locals 2
    .param p1, "what"    # I

    .prologue
    .line 758
    sparse-switch p1, :sswitch_data_0

    .line 766
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 760
    :sswitch_0
    const-string v0, "MEDIA_RECORDER_ERROR_UNKNOWN"

    goto :goto_0

    .line 763
    :sswitch_1
    const-string v0, "MEDIA_ERROR_SERVER_DIED"

    goto :goto_0

    .line 758
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x64 -> :sswitch_1
    .end sparse-switch
.end method

.method private nameInfo(I)Ljava/lang/String;
    .locals 2
    .param p1, "what"    # I

    .prologue
    .line 737
    packed-switch p1, :pswitch_data_0

    .line 745
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mInfoReadyForStopSound:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mInfoReadyForStopSound:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 746
    const-string v0, "MEDIA_RECORDER_INFO_READY_FOR_STOP_SOUND"

    .line 752
    :goto_0
    return-object v0

    .line 739
    :pswitch_0
    const-string v0, "MEDIA_RECORDER_INFO_MAX_DURATION_REACHED"

    goto :goto_0

    .line 742
    :pswitch_1
    const-string v0, "MEDIA_RECORDER_INFO_MAX_FILESIZE_REACHED"

    goto :goto_0

    .line 748
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mInfoDuration:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mInfoDuration:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 749
    const-string v0, "MEDIA_RECORDER_INFO_DURATION_MS"

    goto :goto_0

    .line 752
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 737
    nop

    :pswitch_data_0
    .packed-switch 0x320
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private notifyDuration(I)V
    .locals 4
    .param p1, "durationMillis"    # I

    .prologue
    .line 694
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mRecordingTime:Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->reset(J)V

    .line 695
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mRecordingTime:Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->isMeasuring()Z

    move-result v0

    if-nez v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mListener:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$RecorderListener;

    int-to-long v2, p1

    invoke-interface {v0, v2, v3}, Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$RecorderListener;->onRecordProgress(J)V

    .line 700
    :cond_0
    return-void
.end method

.method private notifyFinishResult(Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;)V
    .locals 2
    .param p1, "result"    # Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;

    .prologue
    .line 643
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mCallbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$1;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$1;-><init>(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 662
    return-void
.end method

.method private notifyPauseResult(Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;)V
    .locals 2
    .param p1, "result"    # Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;

    .prologue
    .line 665
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mCallbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$2;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$2;-><init>(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 675
    return-void
.end method

.method private notifyReadyForSound()V
    .locals 2

    .prologue
    .line 678
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mCallbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$3;

    invoke-direct {v1, p0}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$3;-><init>(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 691
    return-void
.end method

.method private playRecordingSoundIfNeeded()V
    .locals 1

    .prologue
    .line 635
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mSoundPlayer:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$RecordingSoundPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mIsManualRecordingSoundNeeded:Z

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mSoundPlayer:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$RecordingSoundPlayer;

    invoke-interface {v0}, Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$RecordingSoundPlayer;->playRecordingSound()V

    .line 637
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mIsManualRecordingSoundNeeded:Z

    .line 640
    :cond_0
    return-void
.end method

.method private releaseMediaRecorder()V
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 528
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->setExtendedInfoNotifications(Z)V

    .line 529
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 530
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 533
    :cond_0
    return-void
.end method

.method private setExtendedInfoNotifications(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    .line 536
    iget-object v1, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mMethodSetExtendedInfoNotifications:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 538
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mMethodSetExtendedInfoNotifications:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 547
    :cond_0
    :goto_0
    return-void

    .line 539
    :catch_0
    move-exception v0

    .line 540
    .local v0, "e":Ljava/lang/IllegalAccessException;
    sget-object v1, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->TAG:Ljava/lang/String;

    const-string v2, "Extended info notifications is not supported."

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 541
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 542
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->TAG:Ljava/lang/String;

    const-string v2, "Extended info notifications is not supported."

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 543
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 544
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v1, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->TAG:Ljava/lang/String;

    const-string v2, "Extended info notifications is not supported."

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static setMediaRecorderOutput(Landroid/content/Context;Landroid/media/MediaRecorder;Landroid/net/Uri;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "recorder"    # Landroid/media/MediaRecorder;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 556
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "content"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 557
    const/4 v1, 0x0

    .line 559
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "rw"

    invoke-virtual {v3, p2, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 564
    if-eqz v1, :cond_1

    .line 565
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 574
    .end local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_0
    :goto_0
    const/4 v2, 0x1

    :cond_1
    :goto_1
    return v2

    .line 560
    .restart local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v0

    .line 562
    .local v0, "e":Ljava/io/FileNotFoundException;
    goto :goto_1

    .line 570
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_2
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 571
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setupParameters(Landroid/content/Context;Landroid/media/MediaRecorder;Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "recorder"    # Landroid/media/MediaRecorder;
    .param p3, "parameters"    # Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;

    .prologue
    const/4 v0, 0x1

    .line 468
    invoke-virtual {p3}, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;->isMicrophoneEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 469
    invoke-virtual {p2, v0}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 470
    const/4 v1, 0x5

    invoke-virtual {p2, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 475
    invoke-virtual {p3}, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;->profile()Landroid/media/CamcorderProfile;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 492
    :goto_0
    invoke-virtual {p3}, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;->hasMaxDuration()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 494
    :try_start_0
    invoke-virtual {p3}, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;->maxDuration()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/media/MediaRecorder;->setMaxDuration(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 499
    :cond_0
    :goto_1
    invoke-virtual {p3}, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;->hasMaxFileSize()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 501
    :try_start_1
    invoke-virtual {p3}, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;->maxFileSize()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 507
    :cond_1
    :goto_2
    invoke-virtual {p3}, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;->hasLocation()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 508
    invoke-virtual {p3}, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;->location()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    double-to-float v1, v2

    invoke-virtual {p3}, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;->location()Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {p2, v1, v2}, Landroid/media/MediaRecorder;->setLocation(FF)V

    .line 513
    :cond_2
    invoke-virtual {p3}, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;->hasOrientationHint()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 514
    invoke-virtual {p3}, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;->orientationHint()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 517
    :cond_3
    iget-object v1, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;->outputUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, p2, v2}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->setMediaRecorderOutput(Landroid/content/Context;Landroid/media/MediaRecorder;Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 520
    :goto_3
    return v0

    .line 478
    :cond_4
    invoke-virtual {p2, v0}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 480
    invoke-virtual {p3}, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;->profile()Landroid/media/CamcorderProfile;

    move-result-object v1

    iget v1, v1, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-virtual {p2, v1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 481
    invoke-virtual {p3}, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;->profile()Landroid/media/CamcorderProfile;

    move-result-object v1

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {p2, v1}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 482
    invoke-virtual {p3}, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;->profile()Landroid/media/CamcorderProfile;

    move-result-object v1

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {p3}, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;->profile()Landroid/media/CamcorderProfile;

    move-result-object v2

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {p2, v1, v2}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 485
    invoke-virtual {p3}, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;->profile()Landroid/media/CamcorderProfile;

    move-result-object v1

    iget v1, v1, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {p2, v1}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 486
    invoke-virtual {p3}, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;->profile()Landroid/media/CamcorderProfile;

    move-result-object v1

    iget v1, v1, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {p2, v1}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    goto/16 :goto_0

    .line 520
    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    .line 502
    :catch_0
    move-exception v1

    goto :goto_2

    .line 495
    :catch_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public awaitFinish()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 428
    const/4 v1, 0x0

    .line 429
    .local v1, "stopTask":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;"
    iget-object v5, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mStateLock:Ljava/lang/Object;

    monitor-enter v5

    .line 430
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mState:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;

    sget-object v6, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;->RECORDING:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;

    if-eq v3, v6, :cond_0

    iget-object v3, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mState:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;

    sget-object v6, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;->PAUSED:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, v6, :cond_1

    .line 432
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->stop()V
    :try_end_1
    .catch Lcom/sonymobile/cameracommon/media/recorder/RecorderException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 440
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mStopTask:Ljava/util/concurrent/Future;

    .line 441
    if-nez v1, :cond_2

    .line 443
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->playRecordingSoundIfNeeded()V

    .line 444
    monitor-exit v5

    .line 458
    :goto_0
    return v2

    .line 433
    :catch_0
    move-exception v0

    .line 436
    .local v0, "e":Lcom/sonymobile/cameracommon/media/recorder/RecorderException;
    monitor-exit v5

    move v2, v4

    goto :goto_0

    .line 446
    .end local v0    # "e":Lcom/sonymobile/cameracommon/media/recorder/RecorderException;
    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mIsWaitingStopFinished:Z

    .line 447
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 451
    :try_start_3
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v2

    .line 453
    .local v2, "success":Z
    goto :goto_0

    .line 447
    .end local v2    # "success":Z
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 455
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    move v2, v4

    .line 456
    goto :goto_0

    .line 457
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v0

    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    move v2, v4

    .line 458
    goto :goto_0

    .line 460
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :catchall_1
    move-exception v3

    throw v3
.end method

.method public getRecordingTimeMillis()J
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mRecordingTime:Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->elapsedTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public isPauseAndResumeSupported()Z
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mMethodPause:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPaused()Z
    .locals 3

    .prologue
    .line 152
    iget-object v1, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mState:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;

    sget-object v2, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;->PAUSED:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isRecordingOrPaused()Z
    .locals 3

    .prologue
    .line 159
    iget-object v1, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mState:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;

    sget-object v2, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;->RECORDING:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mState:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;

    sget-object v2, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;->PAUSED:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isStopping()Z
    .locals 3

    .prologue
    .line 166
    iget-object v1, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mState:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;

    sget-object v2, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;->STOPPING:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pause()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/cameracommon/media/recorder/RecorderException;
        }
    .end annotation

    .prologue
    .line 334
    iget-object v1, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 335
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mState:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;

    sget-object v2, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;->RECORDING:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;

    if-eq v0, v2, :cond_0

    .line 337
    monitor-exit v1

    .line 346
    :goto_0
    return-void

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mPauseTask:Ljava/util/concurrent/Future;

    if-nez v0, :cond_1

    .line 341
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mTaskExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$PauseTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$PauseTask;-><init>(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$1;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mPauseTask:Ljava/util/concurrent/Future;

    .line 343
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public prepare(Landroid/hardware/Camera;Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;)Z
    .locals 6
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "parameters"    # Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 184
    invoke-virtual {p2}, Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;->dump()V

    .line 186
    iget-object v3, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mStateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 187
    :try_start_0
    iget-object v4, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mState:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;

    sget-object v5, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;->IDLE:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;

    if-eq v4, v5, :cond_0

    .line 188
    monitor-exit v3

    .line 226
    :goto_0
    return v1

    .line 191
    :cond_0
    new-instance v4, Landroid/media/MediaRecorder;

    invoke-direct {v4}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v4, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 192
    iget-object v4, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, p1}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 193
    iget-object v4, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-direct {p0, v4, v5, p2}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->setupParameters(Landroid/content/Context;Landroid/media/MediaRecorder;Lcom/sonymobile/cameracommon/media/recorder/RecorderParameters;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 194
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->releaseMediaRecorder()V

    .line 195
    monitor-exit v3

    goto :goto_0

    .line 218
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 198
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v5, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mOnErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 199
    iget-object v4, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v5, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mOnInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 203
    :try_start_2
    iget-object v4, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 217
    :try_start_3
    sget-object v1, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;->PREPARED:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;

    iput-object v1, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mState:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;

    .line 218
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 223
    invoke-direct {p0, v2}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->setExtendedInfoNotifications(Z)V

    move v1, v2

    .line 226
    goto :goto_0

    .line 206
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_4
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->releaseMediaRecorder()V

    .line 209
    monitor-exit v3

    goto :goto_0

    .line 211
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 213
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->releaseMediaRecorder()V

    .line 214
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public resume()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/cameracommon/media/recorder/RecorderException;
        }
    .end annotation

    .prologue
    .line 408
    iget-object v1, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 409
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mState:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;

    sget-object v2, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;->PAUSED:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;

    if-eq v0, v2, :cond_0

    .line 411
    monitor-exit v1

    .line 422
    :goto_0
    return-void

    .line 413
    :cond_0
    sget-object v0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;->RECORDING:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mState:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;

    .line 414
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    .line 419
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mRecordingTime:Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->resume()V

    goto :goto_0

    .line 414
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public start()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/cameracommon/media/recorder/RecorderException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 233
    iget-object v2, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mStateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 234
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mState:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;

    sget-object v3, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;->PREPARED:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;

    if-eq v1, v3, :cond_0

    .line 236
    monitor-exit v2

    .line 260
    :goto_0
    return-void

    .line 239
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mIsWaitingStopFinished:Z

    .line 240
    sget-object v1, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;->RECORDING:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;

    iput-object v1, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mState:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;

    .line 241
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    :try_start_1
    iget-object v1, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->start()V

    .line 251
    iget-object v1, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mRecordingTime:Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->start()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 253
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Ljava/lang/IllegalStateException;
    iput-boolean v4, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mIsManualRecordingSoundNeeded:Z

    .line 257
    new-instance v1, Lcom/sonymobile/cameracommon/media/recorder/RecorderException;

    invoke-direct {v1, v0}, Lcom/sonymobile/cameracommon/media/recorder/RecorderException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 241
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public stop()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/cameracommon/media/recorder/RecorderException;
        }
    .end annotation

    .prologue
    .line 266
    iget-object v1, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 267
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mState:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;

    sget-object v2, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;->RECORDING:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mState:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;

    sget-object v2, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;->PAUSED:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;

    if-eq v0, v2, :cond_0

    .line 269
    monitor-exit v1

    .line 277
    :goto_0
    return-void

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mRecordingTime:Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->stop()V

    .line 272
    sget-object v0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;->STOPPING:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mState:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;

    .line 273
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mTaskExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$StopTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$StopTask;-><init>(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$1;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mStopTask:Ljava/util/concurrent/Future;

    .line 274
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
