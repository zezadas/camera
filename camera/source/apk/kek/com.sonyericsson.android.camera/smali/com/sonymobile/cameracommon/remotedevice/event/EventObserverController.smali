.class public Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;
.super Ljava/lang/Object;
.source "EventObserverController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController$NotifyOnShootModeChangedTask;,
        Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController$NotifyOnCameraStatusChangedTask;,
        Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController$NotifyOnAvailableApiSetChangedTask;,
        Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController$NotifyOnErrorStoppedTask;,
        Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController$NotifyCallbackBaseTask;,
        Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController$InternalExecutorThreadFactory;
    }
.end annotation


# static fields
.field private static final IS_DEBUG:Z = false

.field private static final TAG:Ljava/lang/String;

.field private static final TIMEOUT:I = 0xbb8


# instance fields
.field private mCallbackExecutor:Ljava/util/concurrent/ExecutorService;

.field private mCallbackSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mInternalExecutor:Ljava/util/concurrent/ExecutorService;

.field private mIsAlreadyStarted:Z

.field private mTargetRemDev:Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;Ljava/util/concurrent/ExecutorService;)V
    .locals 2
    .param p1, "target"    # Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;
    .param p2, "callbackExecutor"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v1, p0, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;->mTargetRemDev:Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;

    .line 33
    new-instance v0, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController$InternalExecutorThreadFactory;

    invoke-direct {v0, v1}, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController$InternalExecutorThreadFactory;-><init>(Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController$1;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;->mInternalExecutor:Ljava/util/concurrent/ExecutorService;

    .line 45
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;->mCallbackSet:Ljava/util/Set;

    .line 48
    iput-object v1, p0, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;->mCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;->mIsAlreadyStarted:Z

    .line 65
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "All arguments must be NOT null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_1
    iput-object p1, p0, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;->mTargetRemDev:Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;

    .line 70
    iput-object p2, p0, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;->mCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    .line 71
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;->loading()V

    return-void
.end method

.method private loading()V
    .locals 10

    .prologue
    .line 139
    const/4 v3, 0x1

    .line 142
    .local v3, "isImmediateReturnRequired":Z
    :cond_0
    :goto_0
    iget-boolean v7, p0, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;->mIsAlreadyStarted:Z

    if-eqz v7, :cond_1

    .line 144
    iget-object v7, p0, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;->mTargetRemDev:Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;

    invoke-virtual {v7}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->isGetEventAvailable()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 145
    iget-object v7, p0, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;->mTargetRemDev:Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;

    invoke-virtual {v7, v3}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->rpcGetEvent(Z)Lorg/json/JSONObject;

    move-result-object v5

    .line 149
    .local v5, "resJson":Lorg/json/JSONObject;
    if-nez v5, :cond_2

    .line 150
    const/4 v2, 0x2

    .line 160
    .local v2, "errCode":I
    :goto_1
    invoke-static {v2}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->logError(I)V

    .line 163
    packed-switch v2, :pswitch_data_0

    .line 180
    :pswitch_0
    sget-object v7, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;->TAG:Ljava/lang/String;

    const-string v8, "Error Break."

    invoke-static {v7, v8}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v7, p0, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;->mCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController$NotifyOnErrorStoppedTask;

    iget-object v9, p0, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;->mCallbackSet:Ljava/util/Set;

    invoke-direct {v8, v9}, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController$NotifyOnErrorStoppedTask;-><init>(Ljava/util/Set;)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 233
    .end local v2    # "errCode":I
    .end local v5    # "resJson":Lorg/json/JSONObject;
    :cond_1
    :goto_2
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;->mIsAlreadyStarted:Z

    .line 236
    return-void

    .line 152
    .restart local v5    # "resJson":Lorg/json/JSONObject;
    :cond_2
    :try_start_0
    invoke-static {v5}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->getErrorCode(Lorg/json/JSONObject;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .restart local v2    # "errCode":I
    goto :goto_1

    .line 154
    .end local v2    # "errCode":I
    :catch_0
    move-exception v1

    .line 155
    .local v1, "e":Lorg/json/JSONException;
    sget-object v7, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;->TAG:Ljava/lang/String;

    const-string v8, "loading() : Failed to get ErrorCode."

    invoke-static {v7, v8}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 157
    iget-object v7, p0, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;->mCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController$NotifyOnErrorStoppedTask;

    iget-object v9, p0, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;->mCallbackSet:Ljava/util/Set;

    invoke-direct {v8, v9}, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController$NotifyOnErrorStoppedTask;-><init>(Ljava/util/Set;)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 169
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v2    # "errCode":I
    :pswitch_1
    sget-object v7, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;->TAG:Ljava/lang/String;

    const-string v8, "loading() : ERROR_TIMEOUT : Retry."

    invoke-static {v7, v8}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-wide/16 v8, 0x3e8

    :try_start_1
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 174
    :catch_1
    move-exception v1

    .line 175
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 186
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :pswitch_2
    invoke-static {v5}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->getNewAvailabaleApiSetFrom(Lorg/json/JSONObject;)Ljava/util/Set;

    move-result-object v4

    .line 192
    .local v4, "newApiSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 193
    iget-object v7, p0, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;->mCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController$NotifyOnAvailableApiSetChangedTask;

    iget-object v9, p0, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;->mCallbackSet:Ljava/util/Set;

    invoke-direct {v8, v9, v4}, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController$NotifyOnAvailableApiSetChangedTask;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 198
    :cond_3
    invoke-static {v5}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->getCameraStatusFrom(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "cameraStatus":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 201
    iget-object v7, p0, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;->mCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController$NotifyOnCameraStatusChangedTask;

    iget-object v9, p0, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;->mCallbackSet:Ljava/util/Set;

    invoke-direct {v8, p0, v9, v0}, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController$NotifyOnCameraStatusChangedTask;-><init>(Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;Ljava/util/Set;Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 206
    :cond_4
    invoke-static {v5}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->getShootModeFrom(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    .line 208
    .local v6, "shootMode":Ljava/lang/String;
    if-eqz v6, :cond_5

    .line 209
    iget-object v7, p0, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;->mCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController$NotifyOnShootModeChangedTask;

    iget-object v9, p0, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;->mCallbackSet:Ljava/util/Set;

    invoke-direct {v8, p0, v9, v6}, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController$NotifyOnShootModeChangedTask;-><init>(Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;Ljava/util/Set;Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 214
    :cond_5
    const/4 v3, 0x0

    .line 215
    goto/16 :goto_0

    .line 216
    .end local v0    # "cameraStatus":Ljava/lang/String;
    .end local v2    # "errCode":I
    .end local v4    # "newApiSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "resJson":Lorg/json/JSONObject;
    .end local v6    # "shootMode":Ljava/lang/String;
    :cond_6
    sget-object v7, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;->TAG:Ljava/lang/String;

    const-string v8, "GetEvent is not available. Retry."

    invoke-static {v7, v8}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-wide/16 v8, 0x3e8

    :try_start_2
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 225
    :goto_3
    iget-boolean v7, p0, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;->mIsAlreadyStarted:Z

    if-nez v7, :cond_0

    goto :goto_2

    .line 220
    :catch_2
    move-exception v1

    .line 221
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    sget-object v7, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;->TAG:Ljava/lang/String;

    const-string v8, "Retry is interrupted."

    invoke-static {v7, v8}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 163
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public addCallback(Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverCallback;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;->mCallbackSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;->mCallbackSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_0
    return-void
.end method

.method public clearCallbacks()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;->mCallbackSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 89
    return-void
.end method

.method public release()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 96
    iget-object v1, p0, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;->mInternalExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 98
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;->mInternalExecutor:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v2, 0xbb8

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;->mCallbackSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 108
    iput-object v5, p0, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;->mCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    .line 110
    iput-object v5, p0, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;->mTargetRemDev:Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;

    .line 111
    iput-object v5, p0, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;->mInternalExecutor:Ljava/util/concurrent/ExecutorService;

    .line 112
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-object v1, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;->TAG:Ljava/lang/String;

    const-string v2, "Release is interrupted."

    invoke-static {v1, v2}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;->mIsAlreadyStarted:Z

    if-eqz v0, :cond_0

    .line 133
    :goto_0
    return-void

    .line 125
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;->mIsAlreadyStarted:Z

    .line 127
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;->mInternalExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController$1;-><init>(Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;->mIsAlreadyStarted:Z

    .line 245
    return-void
.end method
