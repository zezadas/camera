.class public Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;
.super Ljava/lang/Object;
.source "MovieRecController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$3;,
        Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$NotifyOnMovieRecStoppedTask;,
        Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$NotifyOnMovieRecStartedTask;,
        Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$NotifyCallbackBaseTask;,
        Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$MonitoringCallback;,
        Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;,
        Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$InternalExecutorThreadFactory;
    }
.end annotation


# static fields
.field private static final IS_DEBUG:Z = false

.field private static final TAG:Ljava/lang/String;

.field private static final TIMEOUT:I = 0xbb8


# instance fields
.field private mCallback:Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecCallback;

.field private mCallbackExecutor:Ljava/util/concurrent/ExecutorService;

.field private mCurrentShootMode:Ljava/lang/String;

.field private mCurrentState:Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;

.field private mInternalExecutor:Ljava/util/concurrent/ExecutorService;

.field private mMonitoringCallback:Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$MonitoringCallback;

.field private mTargetRemDev:Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;Ljava/util/concurrent/ExecutorService;)V
    .locals 2
    .param p1, "target"    # Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;
    .param p2, "callbackExecutor"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v1, p0, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;->mTargetRemDev:Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;

    .line 33
    new-instance v0, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$InternalExecutorThreadFactory;

    invoke-direct {v0, v1}, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$InternalExecutorThreadFactory;-><init>(Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$1;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;->mInternalExecutor:Ljava/util/concurrent/ExecutorService;

    .line 45
    iput-object v1, p0, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;->mCallback:Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecCallback;

    .line 48
    iput-object v1, p0, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;->mCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    .line 65
    sget-object v0, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;->IDLE:Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;->mCurrentState:Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;

    .line 68
    iput-object v1, p0, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;->mCurrentShootMode:Ljava/lang/String;

    .line 200
    new-instance v0, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$MonitoringCallback;

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$MonitoringCallback;-><init>(Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$1;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;->mMonitoringCallback:Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$MonitoringCallback;

    .line 83
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "All arguments must be NOT null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_1
    iput-object p1, p0, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;->mTargetRemDev:Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;

    .line 88
    iput-object p2, p0, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;->mCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    .line 89
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;->mCurrentShootMode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;->doStartMovieRec()V

    return-void
.end method

.method static synthetic access$300(Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;->doStopMovieRec()V

    return-void
.end method

.method static synthetic access$500(Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;)Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;->mCurrentState:Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;)Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecCallback;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;->mCallback:Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecCallback;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecCallback;)Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecCallback;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;
    .param p1, "x1"    # Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecCallback;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;->mCallback:Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecCallback;

    return-object p1
.end method

.method static synthetic access$700(Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;->mCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;
    .param p1, "x1"    # Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;->changeStateTo(Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;)V

    return-void
.end method

.method static synthetic access$900(Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;->doStartMovieRecInternal()V

    return-void
.end method

.method private declared-synchronized changeStateTo(Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;)V
    .locals 1
    .param p1, "next"    # Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;->mCurrentState:Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit p0

    return-void

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private doStartMovieRec()V
    .locals 2

    .prologue
    .line 142
    const-string v0, "movie"

    iget-object v1, p0, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;->mCurrentShootMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;->mTargetRemDev:Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->changeToMovieMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    sget-object v0, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;->TAG:Ljava/lang/String;

    const-string v1, "Failed to change to MOVIE mode."

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :goto_0
    return-void

    .line 151
    :cond_0
    sget-object v0, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;->WAIT_FOR_READY_TO_RECORD:Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;

    invoke-direct {p0, v0}, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;->changeStateTo(Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;)V

    goto :goto_0

    .line 156
    :cond_1
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;->doStartMovieRecInternal()V

    goto :goto_0
.end method

.method private doStartMovieRecInternal()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;->mTargetRemDev:Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->rpcStartMovieRec()Lorg/json/JSONObject;

    .line 163
    return-void
.end method

.method private doStopMovieRec()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;->mTargetRemDev:Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->rpcStopMovieRec()Lorg/json/JSONObject;

    .line 190
    return-void
.end method


# virtual methods
.method public getEventObserverCallback()Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$MonitoringCallback;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;->mMonitoringCallback:Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$MonitoringCallback;

    return-object v0
.end method

.method public release()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 96
    iget-object v1, p0, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;->mInternalExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 98
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;->mInternalExecutor:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v2, 0xbb8

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    iput-object v5, p0, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;->mCallback:Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecCallback;

    .line 108
    iput-object v5, p0, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;->mCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    .line 110
    iput-object v5, p0, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;->mTargetRemDev:Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;

    .line 111
    iput-object v5, p0, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;->mInternalExecutor:Ljava/util/concurrent/ExecutorService;

    .line 112
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-object v1, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;->TAG:Ljava/lang/String;

    const-string v2, "Release is interrupted."

    invoke-static {v1, v2}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public startMovieRec(Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecCallback;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;->mCurrentState:Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;

    sget-object v1, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;->IDLE:Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;

    if-eq v0, v1, :cond_0

    .line 123
    sget-object v0, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;->TAG:Ljava/lang/String;

    const-string v1, "Already on recording sequence."

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already on recording sequence."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_0
    iput-object p1, p0, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;->mCallback:Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecCallback;

    .line 129
    sget-object v0, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;->REC_START_REQUESTED:Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;

    invoke-direct {p0, v0}, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;->changeStateTo(Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;)V

    .line 131
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;->mInternalExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$1;-><init>(Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 137
    return-void
.end method

.method public stopMovieRec()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;->mCurrentState:Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;

    sget-object v1, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;->RECORDING:Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;

    if-eq v0, v1, :cond_0

    .line 168
    sget-object v0, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;->TAG:Ljava/lang/String;

    const-string v1, "Already not in recording sequence."

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already not in recording sequence."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_0
    sget-object v0, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;->REC_STOP_REQUESTED:Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;

    invoke-direct {p0, v0}, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;->changeStateTo(Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;)V

    .line 174
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;->mInternalExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$2;

    invoke-direct {v1, p0}, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$2;-><init>(Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 180
    return-void
.end method
