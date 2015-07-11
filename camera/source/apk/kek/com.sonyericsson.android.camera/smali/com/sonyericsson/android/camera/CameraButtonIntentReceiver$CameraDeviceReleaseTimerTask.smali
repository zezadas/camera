.class Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$CameraDeviceReleaseTimerTask;
.super Ljava/util/TimerTask;
.source "CameraButtonIntentReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CameraDeviceReleaseTimerTask"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 573
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 579
    # getter for: Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sReleaseTimerLock:Ljava/lang/Object;
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 580
    :try_start_0
    # getter for: Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sReleaseTimer:Ljava/util/Timer;
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->access$100()Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 581
    # getter for: Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sReleaseTimer:Ljava/util/Timer;
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->access$100()Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 582
    # getter for: Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sReleaseTimer:Ljava/util/Timer;
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->access$100()Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 583
    const/4 v0, 0x0

    # setter for: Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sReleaseTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->access$102(Ljava/util/Timer;)Ljava/util/Timer;

    .line 585
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 587
    sget-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->IDLE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    # setter for: Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sCurrentState:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->access$202(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    .line 590
    invoke-static {}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->staticCameraDevice()Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->releaseCameraInstance()V

    .line 591
    return-void

    .line 585
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
