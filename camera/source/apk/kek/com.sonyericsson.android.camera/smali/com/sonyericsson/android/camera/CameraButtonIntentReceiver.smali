.class public Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CameraButtonIntentReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$1;,
        Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReleaseStartUpNotifierTask;,
        Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$OnStartUpNotificationCompletedTask;,
        Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$StartUpNotifierTask;,
        Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$CameraDeviceReleaseTimerTask;,
        Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;,
        Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;
    }
.end annotation


# static fields
.field private static final CAMERA_DEVICE_AUTO_RELEASE_TIMER_DURATION:I = 0x1388

.field private static final NORMAL_LAUNCH_FAST_CAPTURE_START_SUBJECT:Ljava/lang/String; = "start"

.field private static final TAG:Ljava/lang/String;

.field private static mIsStartUpNotificationRequired:Z

.field private static mStartUpNotifier:Landroid/media/MediaPlayer;

.field private static final mStartUpNotifierLock:Ljava/lang/Object;

.field private static mStartUpNotifyerService:Ljava/util/concurrent/ExecutorService;

.field private static sCurrentState:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

.field private static sLatestIntent:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

.field private static sLaunchedBy:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$GALaunchedBy;

.field private static sReleaseTimer:Ljava/util/Timer;

.field private static final sReleaseTimerLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    const-class v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->TAG:Ljava/lang/String;

    .line 54
    sput-object v1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sReleaseTimer:Ljava/util/Timer;

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sReleaseTimerLock:Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->IDLE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    sput-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sCurrentState:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    .line 87
    sget-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->NULL:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    sput-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sLatestIntent:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    .line 89
    sget-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$GALaunchedBy;->OTHER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$GALaunchedBy;

    sput-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sLaunchedBy:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$GALaunchedBy;

    .line 597
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->mIsStartUpNotificationRequired:Z

    .line 600
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->mStartUpNotifyerService:Ljava/util/concurrent/ExecutorService;

    .line 603
    sput-object v1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->mStartUpNotifier:Landroid/media/MediaPlayer;

    .line 604
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->mStartUpNotifierLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 103
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sReleaseTimerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/Timer;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sReleaseTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$102(Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .param p0, "x0"    # Ljava/util/Timer;

    .prologue
    .line 41
    sput-object p0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sReleaseTimer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$202(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    .prologue
    .line 41
    sput-object p0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sCurrentState:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    return-object p0
.end method

.method static synthetic access$300()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->mStartUpNotifierLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400()Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->mStartUpNotifier:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$402(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 41
    sput-object p0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->mStartUpNotifier:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$700()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->mStartUpNotifyerService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method private static changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V
    .locals 0
    .param p0, "next"    # Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    .prologue
    .line 95
    sput-object p0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sCurrentState:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    .line 97
    return-void
.end method

.method public static clearLaunchedBy()V
    .locals 1

    .prologue
    .line 341
    sget-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$GALaunchedBy;->OTHER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$GALaunchedBy;

    sput-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sLaunchedBy:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$GALaunchedBy;

    .line 342
    return-void
.end method

.method public static enableStartUpNotificationFlag()V
    .locals 1

    .prologue
    .line 630
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->mIsStartUpNotificationRequired:Z

    .line 631
    return-void
.end method

.method public static getLaunchedBy()Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$GALaunchedBy;
    .locals 1

    .prologue
    .line 337
    sget-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sLaunchedBy:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$GALaunchedBy;

    return-object v0
.end method

.method public static killStartUpNotifierImmediately()V
    .locals 2

    .prologue
    .line 646
    sget-object v1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->mStartUpNotifierLock:Ljava/lang/Object;

    monitor-enter v1

    .line 647
    :try_start_0
    sget-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->mStartUpNotifier:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 648
    sget-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->mStartUpNotifier:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 649
    sget-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->mStartUpNotifier:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 650
    const/4 v0, 0x0

    sput-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->mStartUpNotifier:Landroid/media/MediaPlayer;

    .line 652
    :cond_0
    monitor-exit v1

    .line 655
    return-void

    .line 652
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static logPerformance(Ljava/lang/String;)V
    .locals 4
    .param p0, "event"    # Ljava/lang/String;

    .prologue
    .line 47
    const-string v0, "TraceLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PERFORMANCE] [TIME = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-void
.end method

.method public static notifyStartUpIfRequired(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 612
    sget-boolean v1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->mIsStartUpNotificationRequired:Z

    if-eqz v1, :cond_0

    .line 613
    const/4 v1, 0x0

    sput-boolean v1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->mIsStartUpNotificationRequired:Z

    .line 615
    sget-object v1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->mStartUpNotifier:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    .line 624
    :cond_0
    :goto_0
    return-void

    .line 618
    :cond_1
    new-instance v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$StartUpNotifierTask;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$StartUpNotifierTask;-><init>(Landroid/content/Context;)V

    .line 619
    .local v0, "notifier":Ljava/lang/Runnable;
    sget-object v1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->mStartUpNotifyerService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private onActivityPausedReceived(Landroid/content/Context;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isInterruptProcessingOccurred"    # Z

    .prologue
    .line 530
    if-eqz p2, :cond_0

    .line 532
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->releaseStartUpNotificationFlag()V

    .line 536
    :cond_0
    return-void
.end method

.method private onActivityResumedReceived(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 504
    return-void
.end method

.method private onCancelReceived(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 491
    invoke-static {}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->staticCameraDevice()Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->releaseCameraInstance()V

    .line 494
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->releaseCameraDeviceReleaseTimer()V

    .line 497
    return-void
.end method

.method private onDirectStartReceived(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subject"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 456
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->isInLockTaskMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 458
    sget-object v1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->IDLE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    .line 484
    :goto_0
    return-void

    .line 463
    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->staticCameraDevice()Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v3, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->startCameraOpen(Landroid/content/Context;ILcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;Z)V

    .line 470
    invoke-static {}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->requestReloadFastCaptureSetting()V

    .line 473
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 474
    .local v0, "i":Landroid/content/Intent;
    const-class v1, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 475
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 476
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 477
    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 478
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 481
    const/4 v1, 0x1

    sput-boolean v1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->mIsStartUpNotificationRequired:Z

    goto :goto_0
.end method

.method private onNullReceived(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 369
    invoke-static {}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->requestReloadFastCaptureSetting()V

    .line 372
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 373
    .local v0, "i":Landroid/content/Intent;
    const-class v1, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 374
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 376
    const-string v1, "android.intent.extra.SUBJECT"

    const-string v2, "start"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 377
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 380
    const/4 v1, 0x1

    sput-boolean v1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->mIsStartUpNotificationRequired:Z

    .line 383
    return-void
.end method

.method private onPrepareReceived(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 391
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->isInLockTaskMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    sget-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->IDLE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    .line 412
    :goto_0
    return-void

    .line 398
    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->staticCameraDevice()Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v2, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->startCameraOpen(Landroid/content/Context;ILcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;Z)V

    .line 409
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->startCameraDeviceReleaseTimer()V

    goto :goto_0
.end method

.method private onStartReceived(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subject"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 420
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->isInLockTaskMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 422
    sget-object v1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->IDLE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    .line 448
    :goto_0
    return-void

    .line 427
    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->staticCameraDevice()Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v3, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->startCameraOpen(Landroid/content/Context;ILcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;Z)V

    .line 434
    invoke-static {}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->requestReloadFastCaptureSetting()V

    .line 437
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 438
    .local v0, "i":Landroid/content/Intent;
    const-class v1, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 439
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 441
    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 442
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 445
    const/4 v1, 0x1

    sput-boolean v1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->mIsStartUpNotificationRequired:Z

    goto :goto_0
.end method

.method private static declared-synchronized releaseCameraDeviceReleaseTimer()V
    .locals 3

    .prologue
    .line 564
    const-class v1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sReleaseTimerLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 565
    :try_start_1
    sget-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sReleaseTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 566
    sget-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sReleaseTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 567
    sget-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sReleaseTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 568
    const/4 v0, 0x0

    sput-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sReleaseTimer:Ljava/util/Timer;

    .line 570
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 571
    monitor-exit v1

    return-void

    .line 570
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 564
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static releaseStartUpNotificationFlag()V
    .locals 1

    .prologue
    .line 637
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->mIsStartUpNotificationRequired:Z

    .line 638
    return-void
.end method

.method private static setLatestIntent(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V
    .locals 0
    .param p0, "kind"    # Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    .prologue
    .line 108
    sput-object p0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sLatestIntent:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    .line 109
    return-void
.end method

.method private setLaunchedBy(Landroid/content/Context;Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "latestIntent"    # Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    .prologue
    .line 315
    sget-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$1;->$SwitchMap$com$sonyericsson$android$camera$CameraButtonIntentReceiver$IntentKind:[I

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 331
    sget-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$GALaunchedBy;->OTHER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$GALaunchedBy;

    sput-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sLaunchedBy:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$GALaunchedBy;

    .line 334
    :goto_0
    return-void

    .line 317
    :pswitch_0
    sget-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$GALaunchedBy;->HW_CAMERA_KEY:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$GALaunchedBy;

    sput-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sLaunchedBy:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$GALaunchedBy;

    goto :goto_0

    .line 321
    :pswitch_1
    sget-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$GALaunchedBy;->HW_CAMERA_KEY_LOCK:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$GALaunchedBy;

    sput-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sLaunchedBy:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$GALaunchedBy;

    goto :goto_0

    .line 327
    :pswitch_2
    sget-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$GALaunchedBy;->LOCK_SCREEN:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$GALaunchedBy;

    sput-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sLaunchedBy:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$GALaunchedBy;

    goto :goto_0

    .line 315
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private showScreenPinnedToastMessage(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 346
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->isInLockTaskMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    const v0, 0x7f0901ce

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 350
    :cond_0
    return-void
.end method

.method private static declared-synchronized startCameraDeviceReleaseTimer()V
    .locals 6

    .prologue
    .line 545
    const-class v1, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sReleaseTimerLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 546
    :try_start_1
    sget-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sReleaseTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 548
    new-instance v0, Ljava/util/Timer;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Ljava/util/Timer;-><init>(Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sReleaseTimer:Ljava/util/Timer;

    .line 551
    sget-object v0, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sReleaseTimer:Ljava/util/Timer;

    new-instance v3, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$CameraDeviceReleaseTimerTask;

    invoke-direct {v3}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$CameraDeviceReleaseTimerTask;-><init>()V

    const-wide/16 v4, 0x1388

    invoke-virtual {v0, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 555
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 556
    monitor-exit v1

    return-void

    .line 555
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 545
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public isInLockTaskMode(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 355
    const/16 v1, 0x15

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v1, v2, :cond_0

    .line 356
    const-string v1, "activity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 359
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v1

    .line 361
    .end local v0    # "am":Landroid/app/ActivityManager;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final declared-synchronized onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 121
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->isOrderedBroadcast()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->abortBroadcast()V

    .line 127
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    .local v0, "i":Landroid/content/Intent;
    const-class v5, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v0, p1, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 129
    invoke-static {p1, v0}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isActivityAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    .line 131
    .local v1, "isActivityAvailable":Z
    if-nez v1, :cond_2

    .line 132
    sget-object v5, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->TAG:Ljava/lang/String;

    const-string v6, "FastCapturingActivity is disabled."

    invoke-static {v5, v6}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    :cond_1
    :goto_0
    :pswitch_0
    monitor-exit p0

    return-void

    .line 137
    :cond_2
    :try_start_1
    const-string v5, "android.intent.extra.SUBJECT"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 138
    .local v4, "subject":Ljava/lang/String;
    const-string v5, "prepare"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 139
    sget-object v5, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->PREPARE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-static {v5}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->setLatestIntent(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    .line 155
    :goto_1
    sget-object v5, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$1;->$SwitchMap$com$sonyericsson$android$camera$CameraButtonIntentReceiver$ReceiverState:[I

    sget-object v6, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sCurrentState:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 158
    :pswitch_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "key.fcc.status"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 162
    .local v3, "secure":Ljava/lang/String;
    const-string v5, "fcc.status.off"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 167
    sget-object v5, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$1;->$SwitchMap$com$sonyericsson$android$camera$CameraButtonIntentReceiver$IntentKind:[I

    sget-object v6, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sLatestIntent:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_1

    goto :goto_0

    .line 171
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->onNullReceived(Landroid/content/Context;)V

    .line 173
    sget-object v5, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sLatestIntent:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-direct {p0, p1, v5}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->setLaunchedBy(Landroid/content/Context;Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 121
    .end local v0    # "i":Landroid/content/Intent;
    .end local v1    # "isActivityAvailable":Z
    .end local v3    # "secure":Ljava/lang/String;
    .end local v4    # "subject":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 140
    .restart local v0    # "i":Landroid/content/Intent;
    .restart local v1    # "isActivityAvailable":Z
    .restart local v4    # "subject":Ljava/lang/String;
    :cond_3
    :try_start_2
    const-string v5, "start"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 141
    sget-object v5, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->START:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-static {v5}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->setLatestIntent(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    goto :goto_1

    .line 142
    :cond_4
    const-string v5, "start-secure"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 143
    sget-object v5, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->START_SECURE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-static {v5}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->setLatestIntent(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    goto :goto_1

    .line 144
    :cond_5
    const-string v5, "cancel"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 145
    sget-object v5, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->CANCEL:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-static {v5}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->setLatestIntent(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    goto :goto_1

    .line 146
    :cond_6
    const-string v5, "activity-resumed"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 147
    sget-object v5, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->ACTIVITY_RESUMED:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-static {v5}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->setLatestIntent(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    goto :goto_1

    .line 148
    :cond_7
    const-string v5, "activity-paused"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 149
    sget-object v5, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->ACTIVITY_PAUSED:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-static {v5}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->setLatestIntent(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    goto :goto_1

    .line 151
    :cond_8
    sget-object v5, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->NULL:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-static {v5}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->setLatestIntent(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    goto/16 :goto_1

    .line 178
    .restart local v3    # "secure":Ljava/lang/String;
    :pswitch_3
    sget-object v5, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->PREPARE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {v5}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    .line 179
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->onPrepareReceived(Landroid/content/Context;)V

    .line 181
    sget-object v5, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sLatestIntent:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-direct {p0, p1, v5}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->setLaunchedBy(Landroid/content/Context;Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    goto/16 :goto_0

    .line 186
    :pswitch_4
    sget-object v5, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->ACTIVE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {v5}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    .line 187
    invoke-direct {p0, p1, v4}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->onDirectStartReceived(Landroid/content/Context;Ljava/lang/String;)V

    .line 189
    sget-object v5, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sLatestIntent:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-direct {p0, p1, v5}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->setLaunchedBy(Landroid/content/Context;Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    .line 191
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->showScreenPinnedToastMessage(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 196
    :pswitch_5
    sget-object v5, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->ACTIVE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {v5}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    .line 197
    invoke-direct {p0, p1, v4}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->onDirectStartReceived(Landroid/content/Context;Ljava/lang/String;)V

    .line 199
    sget-object v5, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sLatestIntent:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-direct {p0, p1, v5}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->setLaunchedBy(Landroid/content/Context;Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;)V

    goto/16 :goto_0

    .line 208
    :pswitch_6
    sget-object v5, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->ACTIVE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {v5}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    .line 209
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->onActivityResumedReceived(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 223
    .end local v3    # "secure":Ljava/lang/String;
    :pswitch_7
    sget-object v5, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$1;->$SwitchMap$com$sonyericsson$android$camera$CameraButtonIntentReceiver$IntentKind:[I

    sget-object v6, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sLatestIntent:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_2

    goto/16 :goto_0

    .line 234
    :pswitch_8
    sget-object v5, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->ACTIVE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {v5}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    .line 235
    invoke-direct {p0, p1, v4}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->onStartReceived(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 240
    :pswitch_9
    sget-object v5, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->ACTIVE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {v5}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    .line 241
    invoke-direct {p0, p1, v4}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->onStartReceived(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 247
    :pswitch_a
    sget-object v5, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->IDLE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {v5}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    .line 248
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->onCancelReceived(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 266
    :pswitch_b
    sget-object v5, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$1;->$SwitchMap$com$sonyericsson$android$camera$CameraButtonIntentReceiver$IntentKind:[I

    sget-object v6, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->sLatestIntent:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$IntentKind;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_3

    goto/16 :goto_0

    .line 289
    :pswitch_c
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->releaseCameraDeviceReleaseTimer()V

    goto/16 :goto_0

    .line 294
    :pswitch_d
    sget-object v5, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;->IDLE:Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;

    invoke-static {v5}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->changeStateTo(Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver$ReceiverState;)V

    .line 296
    const-string v5, "com.sonymobile.android.camera.extra.IS_INTERRUPT_PROCESSING_OCCURRED"

    const/4 v6, 0x1

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 299
    .local v2, "isInterruptProcessingOccurred":Z
    invoke-direct {p0, p1, v2}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->onActivityPausedReceived(Landroid/content/Context;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 155
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_7
        :pswitch_b
    .end packed-switch

    .line 167
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
    .end packed-switch

    .line 223
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 266
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method
