.class abstract Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/BaseUniCast;
.super Ljava/lang/Object;
.source "BaseUniCast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/BaseUniCast$ReceiveTask;
    }
.end annotation


# static fields
.field private static final IS_DEBUG:Z = false

.field protected static final SOCKET_CONNECT_TIMEOUT_MS:I = 0xbb8

.field protected static final SOCKET_SO_TIMEOUT:I = 0xbb8

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mMessageReceivedCallback:Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/MessageReceivedCallback;

.field private mReceiveExecutor:Ljava/util/concurrent/ExecutorService;

.field private mReceiveTask:Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/BaseUniCast$ReceiveTask;

.field private mSubmitExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/BaseUniCast;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/BaseUniCast;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/BaseUniCast;->createIntentionalSubmitterThread()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/BaseUniCast;->mSubmitExecutor:Ljava/util/concurrent/ExecutorService;

    .line 31
    iput-object v1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/BaseUniCast;->mMessageReceivedCallback:Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/MessageReceivedCallback;

    .line 34
    iput-object v1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/BaseUniCast;->mReceiveExecutor:Ljava/util/concurrent/ExecutorService;

    .line 42
    return-void
.end method

.method private createIntentionalReceiverThread()Ljava/util/concurrent/ExecutorService;
    .locals 3

    .prologue
    .line 128
    new-instance v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/util/Util$IntentionalThreadFactory;

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/BaseUniCast;->getReceiverThreadName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/wifip2pcontroller/util/Util$IntentionalThreadFactory;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method private createIntentionalSubmitterThread()Ljava/util/concurrent/ExecutorService;
    .locals 3

    .prologue
    .line 123
    new-instance v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/util/Util$IntentionalThreadFactory;

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/BaseUniCast;->getSubmitterThreadName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/wifip2pcontroller/util/Util$IntentionalThreadFactory;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method private static shutdownExecutor(Ljava/util/concurrent/ExecutorService;)V
    .locals 4
    .param p0, "executor"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 107
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 109
    const-wide/16 v2, 0xbb8

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v2, v3, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private stopSubmitTask()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/BaseUniCast;->mSubmitExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/BaseUniCast;->mSubmitExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/BaseUniCast;->shutdownExecutor(Ljava/util/concurrent/ExecutorService;)V

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/BaseUniCast;->mSubmitExecutor:Ljava/util/concurrent/ExecutorService;

    .line 104
    :cond_0
    return-void
.end method


# virtual methods
.method protected executeSubmitTask(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "submitTask"    # Ljava/lang/Runnable;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/BaseUniCast;->mSubmitExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 79
    return-void
.end method

.method protected abstract getReceiverThreadName()Ljava/lang/String;
.end method

.method protected abstract getSubmitterThreadName()Ljava/lang/String;
.end method

.method protected isReceiveExecutorAvailable()Z
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/BaseUniCast;->mReceiveExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/BaseUniCast;->mReceiveExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isSubmitExecutorAvailable()Z
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/BaseUniCast;->mSubmitExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/BaseUniCast;->mSubmitExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/BaseUniCast;->stopReceiveMessage()V

    .line 54
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/BaseUniCast;->stopSubmitTask()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/BaseUniCast;->mMessageReceivedCallback:Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/MessageReceivedCallback;

    .line 57
    return-void
.end method

.method protected startReceiveMessageImpl(Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/MessageReceivedCallback;Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/BaseUniCast$ReceiveTask;)V
    .locals 2
    .param p1, "callback"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/MessageReceivedCallback;
    .param p2, "receiveTask"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/BaseUniCast$ReceiveTask;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/BaseUniCast;->mMessageReceivedCallback:Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/MessageReceivedCallback;

    .line 71
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/BaseUniCast;->createIntentionalReceiverThread()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/BaseUniCast;->mReceiveExecutor:Ljava/util/concurrent/ExecutorService;

    .line 72
    iput-object p2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/BaseUniCast;->mReceiveTask:Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/BaseUniCast$ReceiveTask;

    .line 73
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/BaseUniCast;->mReceiveExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/BaseUniCast;->mReceiveTask:Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/BaseUniCast$ReceiveTask;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 74
    return-void
.end method

.method public stopReceiveMessage()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 85
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/BaseUniCast;->mReceiveTask:Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/BaseUniCast$ReceiveTask;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/BaseUniCast;->mReceiveTask:Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/BaseUniCast$ReceiveTask;

    invoke-interface {v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/BaseUniCast$ReceiveTask;->release()V

    .line 87
    iput-object v1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/BaseUniCast;->mReceiveTask:Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/BaseUniCast$ReceiveTask;

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/BaseUniCast;->mReceiveExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/BaseUniCast;->mReceiveExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/BaseUniCast;->shutdownExecutor(Ljava/util/concurrent/ExecutorService;)V

    .line 92
    iput-object v1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/BaseUniCast;->mReceiveExecutor:Ljava/util/concurrent/ExecutorService;

    .line 95
    :cond_1
    iput-object v1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/BaseUniCast;->mMessageReceivedCallback:Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/MessageReceivedCallback;

    .line 96
    return-void
.end method
