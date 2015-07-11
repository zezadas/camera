.class public Lcom/sonyericsson/android/camera/controller/State;
.super Ljava/lang/Object;
.source "State.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canHandleCaptureRequest()Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public entry()V
    .locals 0

    .prologue
    .line 16
    return-void
.end method

.method public exit()V
    .locals 0

    .prologue
    .line 19
    return-void
.end method

.method public handleAbort(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 48
    return-void
.end method

.method public handleAfCancel(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 51
    return-void
.end method

.method public handleAfDone(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 54
    return-void
.end method

.method public handleAfStart(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 57
    return-void
.end method

.method public handleAudioResourceError(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 90
    return-void
.end method

.method public handleBurstCompressedData(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 84
    return-void
.end method

.method public handleBurstStart(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 60
    return-void
.end method

.method public handleBurstStop(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 63
    return-void
.end method

.method public handleCameraSetupFinished(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 69
    return-void
.end method

.method public handleCapture(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 66
    return-void
.end method

.method public handleChangeCapturingMode(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 72
    return-void
.end method

.method public handleClickContentProgress(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 213
    return-void
.end method

.method public handleCompressedData(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 81
    return-void
.end method

.method public handleControllerPause(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 75
    return-void
.end method

.method public handleControllerResume(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 78
    return-void
.end method

.method public handleDeviceError(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 87
    return-void
.end method

.method public handleFaceDetect(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 102
    return-void
.end method

.method public handleFaceDetectChange(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 108
    return-void
.end method

.method public handleFaceIdentify(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 105
    return-void
.end method

.method public handleFocusPositionCancel(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 111
    return-void
.end method

.method public handleFocusPositionChange(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 114
    return-void
.end method

.method public handleFocusPositionContinue(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 117
    return-void
.end method

.method public handleFocusPositionFinish(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 120
    return-void
.end method

.method public handleFocusPositionStart(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 123
    return-void
.end method

.method public handleKeyBack(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 126
    return-void
.end method

.method public handleLaunch(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 129
    return-void
.end method

.method public handleObjectTracking(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 132
    return-void
.end method

.method public handleObjectTrackingInvisible(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 135
    return-void
.end method

.method public handleObjectTrackingLost(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 138
    return-void
.end method

.method public handleObjectTrackingStart(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 141
    return-void
.end method

.method public handleOpenSettingsDialog(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 144
    return-void
.end method

.method public handleReachHighTemperature(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 147
    return-void
.end method

.method public handleSceneChanged(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 150
    return-void
.end method

.method public handleSelfTimerCancel(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 153
    return-void
.end method

.method public handleSelfTimerCapture(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 156
    return-void
.end method

.method public handleSelfTimerCountdown(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 159
    return-void
.end method

.method public handleSelfTimerFinish(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 162
    return-void
.end method

.method public handleSelfTimerStart(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 165
    return-void
.end method

.method public handleShutterDone(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 168
    return-void
.end method

.method public handleSmileCapture(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 171
    return-void
.end method

.method public handleStorageError(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 93
    return-void
.end method

.method public handleStorageMounted(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 96
    return-void
.end method

.method public handleStorageShouldChange(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 99
    return-void
.end method

.method public handleStoreDone(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 174
    return-void
.end method

.method public handleSurfaceChanged(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 177
    return-void
.end method

.method public handleSurfaceCreated(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 180
    return-void
.end method

.method public handleSurfaceDestroyed(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 183
    return-void
.end method

.method public handleVideoFinished(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 216
    return-void
.end method

.method public handleVideoInfo(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 186
    return-void
.end method

.method public handleVideoPauseResume(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 195
    return-void
.end method

.method public handleVideoPaused(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 219
    return-void
.end method

.method public handleVideoProgress(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 189
    return-void
.end method

.method public handleVideoStartWaitDone(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 192
    return-void
.end method

.method public handleZoomFinish(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 198
    return-void
.end method

.method public handleZoomPrepare(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 201
    return-void
.end method

.method public handleZoomProgress(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 204
    return-void
.end method

.method public handleZoomStart(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 207
    return-void
.end method

.method public handleZoomStop(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 0
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 210
    return-void
.end method

.method public isBackKeyValid()Z
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    return v0
.end method

.method public isMenuAvailable()Z
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public isRecording()Z
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
