.class public Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;
.super Ljava/lang/Object;
.source "ControllerMessageHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCurrentState:Lcom/sonyericsson/android/camera/controller/State;

.field private mHandler:Landroid/os/Handler;

.field private mQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/sonyericsson/android/camera/controller/ControllerMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/controller/State;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "state"    # Lcom/sonyericsson/android/camera/controller/State;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->mHandler:Landroid/os/Handler;

    .line 44
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->mQueue:Ljava/util/Queue;

    .line 45
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->setState(Lcom/sonyericsson/android/camera/controller/State;)V

    .line 46
    return-void
.end method

.method private declared-synchronized dispatch(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 254
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler$1;->$SwitchMap$com$sonyericsson$android$camera$controller$ControllerEvent:[I

    iget-object v1, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mEventId:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    .line 492
    :goto_0
    monitor-exit p0

    return-void

    .line 256
    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->mCurrentState:Lcom/sonyericsson/android/camera/controller/State;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/State;->handleAbort(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 254
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 260
    :pswitch_1
    :try_start_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->mCurrentState:Lcom/sonyericsson/android/camera/controller/State;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/State;->handleAfCancel(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    goto :goto_0

    .line 264
    :pswitch_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->mCurrentState:Lcom/sonyericsson/android/camera/controller/State;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/State;->handleAfDone(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    goto :goto_0

    .line 268
    :pswitch_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->mCurrentState:Lcom/sonyericsson/android/camera/controller/State;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/State;->handleAfStart(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    goto :goto_0

    .line 272
    :pswitch_4
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->mCurrentState:Lcom/sonyericsson/android/camera/controller/State;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/State;->handleBurstStart(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    goto :goto_0

    .line 276
    :pswitch_5
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->mCurrentState:Lcom/sonyericsson/android/camera/controller/State;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/State;->handleBurstStop(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    goto :goto_0

    .line 280
    :pswitch_6
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->mCurrentState:Lcom/sonyericsson/android/camera/controller/State;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/State;->handleCameraSetupFinished(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    goto :goto_0

    .line 284
    :pswitch_7
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->mCurrentState:Lcom/sonyericsson/android/camera/controller/State;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/State;->handleCapture(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    goto :goto_0

    .line 288
    :pswitch_8
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->mCurrentState:Lcom/sonyericsson/android/camera/controller/State;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/State;->handleChangeCapturingMode(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    goto :goto_0

    .line 292
    :pswitch_9
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->mCurrentState:Lcom/sonyericsson/android/camera/controller/State;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/State;->handleCompressedData(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    goto :goto_0

    .line 296
    :pswitch_a
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->mCurrentState:Lcom/sonyericsson/android/camera/controller/State;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/State;->handleBurstCompressedData(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    goto :goto_0

    .line 300
    :pswitch_b
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->mCurrentState:Lcom/sonyericsson/android/camera/controller/State;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/State;->handleControllerPause(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    goto :goto_0

    .line 304
    :pswitch_c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->mCurrentState:Lcom/sonyericsson/android/camera/controller/State;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/State;->handleControllerResume(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    goto :goto_0

    .line 308
    :pswitch_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->mCurrentState:Lcom/sonyericsson/android/camera/controller/State;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/State;->handleDeviceError(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    goto :goto_0

    .line 312
    :pswitch_e
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->mCurrentState:Lcom/sonyericsson/android/camera/controller/State;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/State;->handleAudioResourceError(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    goto :goto_0

    .line 316
    :pswitch_f
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->mCurrentState:Lcom/sonyericsson/android/camera/controller/State;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/State;->handleStorageError(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    goto :goto_0

    .line 320
    :pswitch_10
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->mCurrentState:Lcom/sonyericsson/android/camera/controller/State;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/State;->handleStorageMounted(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    goto :goto_0

    .line 324
    :pswitch_11
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->mCurrentState:Lcom/sonyericsson/android/camera/controller/State;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/State;->handleStorageShouldChange(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    goto :goto_0

    .line 328
    :pswitch_12
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->mCurrentState:Lcom/sonyericsson/android/camera/controller/State;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/State;->handleFaceDetect(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    goto :goto_0

    .line 332
    :pswitch_13
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->mCurrentState:Lcom/sonyericsson/android/camera/controller/State;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/State;->handleFaceIdentify(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    goto :goto_0

    .line 336
    :pswitch_14
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->mCurrentState:Lcom/sonyericsson/android/camera/controller/State;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/State;->handleFaceDetectChange(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    goto/16 :goto_0

    .line 340
    :pswitch_15
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->mCurrentState:Lcom/sonyericsson/android/camera/controller/State;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/State;->handleFocusPositionCancel(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    goto/16 :goto_0

    .line 344
    :pswitch_16
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->mCurrentState:Lcom/sonyericsson/android/camera/controller/State;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/State;->handleFocusPositionChange(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    goto/16 :goto_0

    .line 348
    :pswitch_17
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->mCurrentState:Lcom/sonyericsson/android/camera/controller/State;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/State;->handleFocusPositionContinue(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    goto/16 :goto_0

    .line 352
    :pswitch_18
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->mCurrentState:Lcom/sonyericsson/android/camera/controller/State;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/State;->handleFocusPositionFinish(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    goto/16 :goto_0

    .line 356
    :pswitch_19
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->mCurrentState:Lcom/sonyericsson/android/camera/controller/State;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/State;->handleFocusPositionStart(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    goto/16 :goto_0

    .line 360
    :pswitch_1a
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->mCurrentState:Lcom/sonyericsson/android/camera/controller/State;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/State;->handleKeyBack(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    goto/16 :goto_0

    .line 364
    :pswitch_1b
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->mCurrentState:Lcom/sonyericsson/android/camera/controller/State;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/State;->handleLaunch(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    goto/16 :goto_0

    .line 368
    :pswitch_1c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->mCurrentState:Lcom/sonyericsson/android/camera/controller/State;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/State;->handleObjectTracking(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    goto/16 :goto_0

    .line 372
    :pswitch_1d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->mCurrentState:Lcom/sonyericsson/android/camera/controller/State;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/State;->handleObjectTrackingInvisible(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    goto/16 :goto_0

    .line 376
    :pswitch_1e
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->mCurrentState:Lcom/sonyericsson/android/camera/controller/State;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/State;->handleObjectTrackingLost(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    goto/16 :goto_0

    .line 380
    :pswitch_1f
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->mCurrentState:Lcom/sonyericsson/android/camera/controller/State;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/State;->handleObjectTrackingStart(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    goto/16 :goto_0

    .line 384
    :pswitch_20
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->mCurrentState:Lcom/sonyericsson/android/camera/controller/State;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/State;->handleOpenSettingsDialog(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    goto/16 :goto_0

    .line 388
    :pswitch_21
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->mCurrentState:Lcom/sonyericsson/android/camera/controller/State;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/State;->handleReachHighTemperature(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    goto/16 :goto_0

    .line 392
    :pswitch_22
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->mCurrentState:Lcom/sonyericsson/android/camera/controller/State;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/State;->handleSceneChanged(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    goto/16 :goto_0

    .line 396
    :pswitch_23
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->mCurrentState:Lcom/sonyericsson/android/camera/controller/State;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/State;->handleSelfTimerCancel(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    goto/16 :goto_0

    .line 400
    :pswitch_24
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->mCurrentState:Lcom/sonyericsson/android/camera/controller/State;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/State;->handleSelfTimerCapture(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    goto/16 :goto_0

    .line 404
    :pswitch_25
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->mCurrentState:Lcom/sonyericsson/android/camera/controller/State;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/State;->handleSelfTimerCountdown(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    goto/16 :goto_0

    .line 408
    :pswitch_26
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->mCurrentState:Lcom/sonyericsson/android/camera/controller/State;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/State;->handleSelfTimerFinish(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    goto/16 :goto_0

    .line 412
    :pswitch_27
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->mCurrentState:Lcom/sonyericsson/android/camera/controller/State;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/State;->handleSelfTimerStart(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    goto/16 :goto_0

    .line 416
    :pswitch_28
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->mCurrentState:Lcom/sonyericsson/android/camera/controller/State;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/State;->handleShutterDone(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    goto/16 :goto_0

    .line 420
    :pswitch_29
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->mCurrentState:Lcom/sonyericsson/android/camera/controller/State;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/State;->handleSmileCapture(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    goto/16 :goto_0

    .line 424
    :pswitch_2a
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->mCurrentState:Lcom/sonyericsson/android/camera/controller/State;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/State;->handleStoreDone(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    goto/16 :goto_0

    .line 428
    :pswitch_2b
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->mCurrentState:Lcom/sonyericsson/android/camera/controller/State;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/State;->handleSurfaceChanged(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    goto/16 :goto_0

    .line 432
    :pswitch_2c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->mCurrentState:Lcom/sonyericsson/android/camera/controller/State;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/State;->handleSurfaceCreated(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    goto/16 :goto_0

    .line 436
    :pswitch_2d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->mCurrentState:Lcom/sonyericsson/android/camera/controller/State;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/State;->handleSurfaceDestroyed(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    goto/16 :goto_0

    .line 440
    :pswitch_2e
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->mCurrentState:Lcom/sonyericsson/android/camera/controller/State;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/State;->handleVideoInfo(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    goto/16 :goto_0

    .line 444
    :pswitch_2f
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->mCurrentState:Lcom/sonyericsson/android/camera/controller/State;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/State;->handleVideoProgress(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    goto/16 :goto_0

    .line 448
    :pswitch_30
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->mCurrentState:Lcom/sonyericsson/android/camera/controller/State;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/State;->handleVideoStartWaitDone(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    goto/16 :goto_0

    .line 452
    :pswitch_31
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->mCurrentState:Lcom/sonyericsson/android/camera/controller/State;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/State;->handleVideoFinished(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    goto/16 :goto_0

    .line 456
    :pswitch_32
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->mCurrentState:Lcom/sonyericsson/android/camera/controller/State;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/State;->handleZoomFinish(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    goto/16 :goto_0

    .line 460
    :pswitch_33
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->mCurrentState:Lcom/sonyericsson/android/camera/controller/State;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/State;->handleZoomPrepare(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    goto/16 :goto_0

    .line 464
    :pswitch_34
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->mCurrentState:Lcom/sonyericsson/android/camera/controller/State;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/State;->handleZoomProgress(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    goto/16 :goto_0

    .line 468
    :pswitch_35
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->mCurrentState:Lcom/sonyericsson/android/camera/controller/State;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/State;->handleZoomStart(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    goto/16 :goto_0

    .line 472
    :pswitch_36
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->mCurrentState:Lcom/sonyericsson/android/camera/controller/State;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/State;->handleZoomStop(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    goto/16 :goto_0

    .line 476
    :pswitch_37
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->mCurrentState:Lcom/sonyericsson/android/camera/controller/State;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/State;->handleClickContentProgress(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    goto/16 :goto_0

    .line 480
    :pswitch_38
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->mCurrentState:Lcom/sonyericsson/android/camera/controller/State;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/State;->handleVideoPauseResume(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    goto/16 :goto_0

    .line 484
    :pswitch_39
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->mCurrentState:Lcom/sonyericsson/android/camera/controller/State;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/State;->handleVideoPaused(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 254
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
    .end packed-switch
.end method

.method private isVideoRecordingEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)Z
    .locals 1
    .param p1, "eventId"    # Lcom/sonyericsson/android/camera/controller/ControllerEvent;
    .param p2, "source"    # Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    .prologue
    .line 89
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_CAPTURE:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->VIDEO_BUTTON:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    if-ne p2, v0, :cond_0

    .line 92
    const/4 v0, 0x1

    .line 95
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private queueHasThisEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)Z
    .locals 3
    .param p1, "eventId"    # Lcom/sonyericsson/android/camera/controller/ControllerEvent;
    .param p2, "source"    # Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    .prologue
    .line 102
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->mQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .line 103
    .local v1, "message":Lcom/sonyericsson/android/camera/controller/ControllerMessage;
    iget-object v2, v1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mEventId:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    if-ne p1, v2, :cond_0

    iget-object v2, v1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mSource:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    if-ne p2, v2, :cond_0

    .line 105
    const/4 v2, 0x1

    .line 109
    .end local v1    # "message":Lcom/sonyericsson/android/camera/controller/ControllerMessage;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized cancel(Lcom/sonyericsson/android/camera/controller/ControllerEvent;)V
    .locals 3
    .param p1, "eventId"    # Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    .prologue
    .line 221
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->mQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 222
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonyericsson/android/camera/controller/ControllerMessage;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 223
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .line 224
    .local v1, "message":Lcom/sonyericsson/android/camera/controller/ControllerMessage;
    iget-object v2, v1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mEventId:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    if-ne v2, p1, :cond_0

    .line 226
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 221
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonyericsson/android/camera/controller/ControllerMessage;>;"
    .end local v1    # "message":Lcom/sonyericsson/android/camera/controller/ControllerMessage;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 229
    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonyericsson/android/camera/controller/ControllerMessage;>;"
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 210
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    monitor-exit p0

    return-void

    .line 210
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearAutoDispatchEvent()V
    .locals 3

    .prologue
    .line 235
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->mQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 236
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonyericsson/android/camera/controller/ControllerMessage;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 237
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .line 238
    .local v1, "message":Lcom/sonyericsson/android/camera/controller/ControllerMessage;
    iget-object v2, v1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mExpectedState:Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 240
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 235
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonyericsson/android/camera/controller/ControllerMessage;>;"
    .end local v1    # "message":Lcom/sonyericsson/android/camera/controller/ControllerMessage;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 243
    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonyericsson/android/camera/controller/ControllerMessage;>;"
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized dispatchEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;ILjava/lang/Object;)V
    .locals 6
    .param p1, "eventId"    # Lcom/sonyericsson/android/camera/controller/ControllerEvent;
    .param p2, "source"    # Lcom/sonyericsson/android/camera/controller/ControllerEventSource;
    .param p3, "arg1"    # I
    .param p4, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 164
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/controller/ControllerMessage;-><init>(Lcom/sonyericsson/android/camera/controller/ControllerEvent;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;ILjava/lang/Object;Ljava/lang/Class;)V

    .line 165
    .local v0, "message":Lcom/sonyericsson/android/camera/controller/ControllerMessage;
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->dispatch(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    monitor-exit p0

    return-void

    .line 164
    .end local v0    # "message":Lcom/sonyericsson/android/camera/controller/ControllerMessage;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getState()Lcom/sonyericsson/android/camera/controller/State;
    .locals 1

    .prologue
    .line 54
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->mCurrentState:Lcom/sonyericsson/android/camera/controller/State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized run()V
    .locals 7

    .prologue
    .line 173
    monitor-enter p0

    const/4 v3, 0x0

    .line 174
    .local v3, "storedEvent":I
    const/4 v0, 0x0

    .line 175
    .local v0, "dispatchedEvent":I
    :try_start_0
    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->mQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 176
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonyericsson/android/camera/controller/ControllerMessage;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 177
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .line 178
    .local v2, "message":Lcom/sonyericsson/android/camera/controller/ControllerMessage;
    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->mQueue:Ljava/util/Queue;

    invoke-interface {v4, v2}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 179
    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->mCurrentState:Lcom/sonyericsson/android/camera/controller/State;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->isRunnable(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 181
    add-int/lit8 v0, v0, 0x1

    .line 185
    sget-object v4, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->HANDLE_EVENT:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const/4 v5, 0x1

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;ZLjava/lang/String;)V

    .line 187
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->dispatch(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    .line 188
    sget-object v4, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->HANDLE_EVENT:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V

    .line 191
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 173
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonyericsson/android/camera/controller/ControllerMessage;>;"
    .end local v2    # "message":Lcom/sonyericsson/android/camera/controller/ControllerMessage;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 194
    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonyericsson/android/camera/controller/ControllerMessage;>;"
    .restart local v2    # "message":Lcom/sonyericsson/android/camera/controller/ControllerMessage;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 201
    .end local v2    # "message":Lcom/sonyericsson/android/camera/controller/ControllerMessage;
    :cond_2
    if-lez v3, :cond_3

    if-lez v0, :cond_3

    .line 202
    :try_start_1
    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    :cond_3
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized sendEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;ILjava/lang/Object;Ljava/lang/Class;)V
    .locals 6
    .param p1, "eventId"    # Lcom/sonyericsson/android/camera/controller/ControllerEvent;
    .param p2, "source"    # Lcom/sonyericsson/android/camera/controller/ControllerEventSource;
    .param p3, "arg1"    # I
    .param p4, "arg2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/controller/ControllerEvent;",
            "Lcom/sonyericsson/android/camera/controller/ControllerEventSource;",
            "I",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/sonyericsson/android/camera/controller/State;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p5, "expectedState":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/sonyericsson/android/camera/controller/State;>;"
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->isVideoRecordingEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->queueHasThisEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    :goto_0
    monitor-exit p0

    return-void

    .line 137
    :cond_0
    :try_start_1
    new-instance v0, Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/controller/ControllerMessage;-><init>(Lcom/sonyericsson/android/camera/controller/ControllerEvent;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;ILjava/lang/Object;Ljava/lang/Class;)V

    .line 141
    .local v0, "message":Lcom/sonyericsson/android/camera/controller/ControllerMessage;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->mQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 142
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 130
    .end local v0    # "message":Lcom/sonyericsson/android/camera/controller/ControllerMessage;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setState(Lcom/sonyericsson/android/camera/controller/State;)V
    .locals 1
    .param p1, "state"    # Lcom/sonyericsson/android/camera/controller/State;

    .prologue
    .line 63
    monitor-enter p0

    if-nez p1, :cond_0

    .line 86
    :goto_0
    monitor-exit p0

    return-void

    .line 68
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->mCurrentState:Lcom/sonyericsson/android/camera/controller/State;

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->mCurrentState:Lcom/sonyericsson/android/camera/controller/State;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/State;->exit()V

    .line 82
    :cond_1
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->mCurrentState:Lcom/sonyericsson/android/camera/controller/State;

    .line 85
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ControllerMessageHandler;->mCurrentState:Lcom/sonyericsson/android/camera/controller/State;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/State;->entry()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
