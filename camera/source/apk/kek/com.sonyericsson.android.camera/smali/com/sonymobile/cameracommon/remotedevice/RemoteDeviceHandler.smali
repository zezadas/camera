.class public Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceHandler;
.super Ljava/lang/Object;
.source "RemoteDeviceHandler.java"


# static fields
.field private static final IS_DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCallbackExecutor:Ljava/util/concurrent/ExecutorService;

.field private mEventObserver:Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;

.field private mEvfStreamSlicer:Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;

.field private mIsOnEvfStreaming:Z

.field private mMovieRecController:Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;

.field private mRemoteDevice:Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;

.field private mTakePictureController:Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;Ljava/util/concurrent/ExecutorService;)V
    .locals 3
    .param p1, "target"    # Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;
    .param p2, "callbackExecutor"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceHandler;->mRemoteDevice:Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;

    .line 31
    iput-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceHandler;->mCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    .line 34
    iput-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceHandler;->mEvfStreamSlicer:Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;

    .line 37
    iput-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceHandler;->mEventObserver:Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;

    .line 40
    iput-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceHandler;->mTakePictureController:Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController;

    .line 43
    iput-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceHandler;->mMovieRecController:Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceHandler;->mIsOnEvfStreaming:Z

    .line 59
    iput-object p1, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceHandler;->mRemoteDevice:Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;

    .line 60
    iput-object p2, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceHandler;->mCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    .line 63
    new-instance v0, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceHandler;->mRemoteDevice:Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;

    iget-object v2, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceHandler;->mCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;-><init>(Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceHandler;->mEventObserver:Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;

    .line 68
    new-instance v0, Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceHandler;->mRemoteDevice:Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;

    iget-object v2, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceHandler;->mCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController;-><init>(Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceHandler;->mTakePictureController:Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController;

    .line 71
    new-instance v0, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceHandler;->mRemoteDevice:Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;

    iget-object v2, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceHandler;->mCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;-><init>(Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceHandler;->mMovieRecController:Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;

    .line 74
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceHandler;->mEventObserver:Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceHandler;->mRemoteDevice:Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->getEventObserverCallback()Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice$MonitoringCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;->addCallback(Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverCallback;)V

    .line 75
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceHandler;->mEventObserver:Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceHandler;->mTakePictureController:Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController;

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController;->getEventObserverCallback()Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController$MonitoringCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;->addCallback(Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverCallback;)V

    .line 76
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceHandler;->mEventObserver:Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceHandler;->mMovieRecController:Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;->getEventObserverCallback()Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$MonitoringCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;->addCallback(Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverCallback;)V

    .line 77
    return-void
.end method


# virtual methods
.method public closeEvf()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceHandler;->mEvfStreamSlicer:Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceHandler;->mEvfStreamSlicer:Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->close()V

    .line 134
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceHandler;->mEvfStreamSlicer:Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->release()V

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceHandler;->mEvfStreamSlicer:Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;

    .line 138
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceHandler;->mIsOnEvfStreaming:Z

    .line 139
    return-void
.end method

.method public isMovieRecSupported()Z
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceHandler;->mRemoteDevice:Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->isMovieRecSupported()Z

    move-result v0

    return v0
.end method

.method public isTakePictureSupported()Z
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceHandler;->mRemoteDevice:Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->isStillCaptureSupported()Z

    move-result v0

    return v0
.end method

.method public openEvf(Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamCallback;

    .prologue
    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceHandler;->mIsOnEvfStreaming:Z

    .line 122
    new-instance v0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceHandler;->mRemoteDevice:Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;

    iget-object v2, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceHandler;->mCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, v1, p1, v2}, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;-><init>(Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamCallback;Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceHandler;->mEvfStreamSlicer:Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;

    .line 123
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceHandler;->mEvfStreamSlicer:Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->open()V

    .line 126
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 83
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceHandler;->mIsOnEvfStreaming:Z

    if-eqz v0, :cond_0

    .line 84
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Do closeEvf() before release()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceHandler;->mEventObserver:Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceHandler;->mEventObserver:Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;->clearCallbacks()V

    .line 89
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceHandler;->mEventObserver:Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;->stop()V

    .line 90
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceHandler;->mEventObserver:Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;->release()V

    .line 91
    iput-object v1, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceHandler;->mEventObserver:Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceHandler;->mEvfStreamSlicer:Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;

    if-eqz v0, :cond_2

    .line 95
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceHandler;->mEvfStreamSlicer:Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->release()V

    .line 96
    iput-object v1, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceHandler;->mEvfStreamSlicer:Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceHandler;->mTakePictureController:Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController;

    if-eqz v0, :cond_3

    .line 100
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceHandler;->mTakePictureController:Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController;->release()V

    .line 101
    iput-object v1, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceHandler;->mTakePictureController:Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController;

    .line 104
    :cond_3
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceHandler;->mRemoteDevice:Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;

    if-eqz v0, :cond_4

    .line 105
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceHandler;->mRemoteDevice:Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->release()V

    .line 106
    iput-object v1, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceHandler;->mRemoteDevice:Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;

    .line 109
    :cond_4
    iput-object v1, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceHandler;->mCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    .line 110
    return-void
.end method

.method public startMonitoring()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceHandler;->mEventObserver:Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;->start()V

    .line 151
    return-void
.end method

.method public startMovieRec(Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecCallback;

    .prologue
    .line 228
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceHandler;->mRemoteDevice:Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->isMovieRecSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    :goto_0
    return-void

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceHandler;->mMovieRecController:Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;

    invoke-virtual {v0, p1}, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;->startMovieRec(Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecCallback;)V

    goto :goto_0
.end method

.method public stopMonitoring()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceHandler;->mEventObserver:Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceHandler;->mEventObserver:Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;->stop()V

    .line 161
    :cond_0
    return-void
.end method

.method public stopMovieRec()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceHandler;->mMovieRecController:Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;->stopMovieRec()V

    .line 250
    return-void
.end method

.method public takePicture(Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureCallback;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceHandler;->mRemoteDevice:Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->isStillCaptureSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceHandler;->mRemoteDevice:Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->changeToStillMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceHandler;->mTakePictureController:Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController;

    invoke-virtual {v0, p1}, Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController;->takePicture(Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureCallback;)V

    goto :goto_0
.end method
