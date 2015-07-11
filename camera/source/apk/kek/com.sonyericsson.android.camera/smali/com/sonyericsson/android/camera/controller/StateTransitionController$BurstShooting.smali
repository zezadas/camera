.class Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstShooting;
.super Lcom/sonyericsson/android/camera/controller/StateTransitionController$ActiveState;
.source "StateTransitionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateTransitionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BurstShooting"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstShooting$UpdateRemainTask;
    }
.end annotation


# static fields
.field private static final TIMEOUT_UPDATE_REMAIN:I = 0xbb8


# instance fields
.field private mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mShouldOpenReviewWindow:Z

.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;)V
    .locals 1

    .prologue
    .line 2384
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstShooting;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ActiveState;-><init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;)V

    .line 2533
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/controller/StateTransitionController;
    .param p2, "x1"    # Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;

    .prologue
    .line 2384
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstShooting;-><init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;)V

    return-void
.end method

.method private updateRemain()Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstStorageStatus;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2509
    const/4 v2, 0x0

    .line 2511
    .local v2, "success":Z
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstShooting;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstShooting$UpdateRemainTask;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstShooting;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v5, v5, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {v4, p0, v5}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstShooting$UpdateRemainTask;-><init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstShooting;Lcom/sonyericsson/android/camera/CameraActivity;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 2517
    .local v1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;"
    const-wide/16 v4, 0xbb8

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v4, v5, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2528
    invoke-interface {v1, v6}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 2530
    if-eqz v2, :cond_0

    sget-object v3, Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstStorageStatus;->STORAGE_READY:Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstStorageStatus;

    :goto_0
    return-object v3

    .line 2518
    :catch_0
    move-exception v0

    .line 2519
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    :try_start_1
    # getter for: Lcom/sonyericsson/android/camera/controller/StateTransitionController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->access$2800()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TimeoutException occurs in checking memory status."

    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2520
    sget-object v3, Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstStorageStatus;->UNKNOWN:Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstStorageStatus;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2528
    invoke-interface {v1, v6}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    .line 2521
    .end local v0    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v0

    .line 2522
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    # getter for: Lcom/sonyericsson/android/camera/controller/StateTransitionController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->access$2800()Ljava/lang/String;

    move-result-object v3

    const-string v4, "InterruptedException occurs in checking memory status."

    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2523
    sget-object v3, Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstStorageStatus;->UNKNOWN:Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstStorageStatus;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2528
    invoke-interface {v1, v6}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    .line 2524
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v0

    .line 2525
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    :try_start_3
    # getter for: Lcom/sonyericsson/android/camera/controller/StateTransitionController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->access$2800()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ExecutionException occurs in checking memory status."

    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2526
    sget-object v3, Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstStorageStatus;->UNKNOWN:Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstStorageStatus;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2528
    invoke-interface {v1, v6}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :catchall_0
    move-exception v3

    invoke-interface {v1, v6}, Ljava/util/concurrent/Future;->cancel(Z)Z

    throw v3

    .line 2530
    :cond_0
    sget-object v3, Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstStorageStatus;->STORAGE_FULL:Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstStorageStatus;

    goto :goto_0
.end method


# virtual methods
.method public emergencyExit(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 2424
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ActiveState;->emergencyExit(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    .line 2426
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstShooting;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mBurstShooting:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->finish()V

    .line 2427
    return-void
.end method

.method public entry()V
    .locals 2

    .prologue
    .line 2391
    invoke-super {p0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ActiveState;->entry()V

    .line 2394
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstShooting;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 2397
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstShooting;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShot()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstShooting;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->getParams()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getAutoReview()Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    if-eq v0, v1, :cond_0

    .line 2398
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstShooting;->mShouldOpenReviewWindow:Z

    .line 2403
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstShooting;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->showBurstShootingView()V

    .line 2404
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstShooting;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->disableClickOnThumbnail()V

    .line 2405
    return-void

    .line 2400
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstShooting;->mShouldOpenReviewWindow:Z

    goto :goto_0
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 2409
    invoke-super {p0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ActiveState;->exit()V

    .line 2411
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstShooting;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 2413
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstShooting;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mShooting:Lcom/sonyericsson/android/camera/controller/Shooting;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/Shooting;->clearCaptureRequest()V

    .line 2414
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstShooting;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->exitFromShooting()V

    .line 2415
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstShooting;->mShouldOpenReviewWindow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstShooting;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mBurstShooting:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->getPictureCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2420
    :goto_0
    return-void

    .line 2418
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstShooting;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->startPreview()V

    goto :goto_0
.end method

.method public handleAfCancel(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 2437
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;->$SwitchMap$com$sonyericsson$android$camera$controller$ControllerEventSource:[I

    iget-object v1, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mSource:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2460
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2443
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstShooting;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v1, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mSource:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->stopBurstAndGoToViewFinder(Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V

    goto :goto_0

    .line 2447
    :pswitch_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstShooting;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->getEventAction(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)Lcom/sonyericsson/android/camera/controller/EventAction;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/controller/EventAction;->CANCEL:Lcom/sonyericsson/android/camera/controller/EventAction;

    if-ne v0, v1, :cond_0

    .line 2449
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstShooting;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v1, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mSource:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->stopBurstAndGoToViewFinder(Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V

    goto :goto_0

    .line 2454
    :pswitch_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstShooting;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->getEventAction(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)Lcom/sonyericsson/android/camera/controller/EventAction;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/controller/EventAction;->CANCEL:Lcom/sonyericsson/android/camera/controller/EventAction;

    if-ne v0, v1, :cond_0

    .line 2456
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstShooting;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v1, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mSource:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->stopBurstAndGoToViewFinder(Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V

    goto :goto_0

    .line 2437
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public handleBurstCompressedData(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 3
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 2482
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;->$SwitchMap$com$sonyericsson$android$camera$controller$StateTransitionController$BurstStorageStatus:[I

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstShooting;->updateRemain()Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstStorageStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstStorageStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2503
    :cond_0
    :goto_0
    return-void

    .line 2484
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstShooting;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mBurstShooting:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->isStopRequested()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2485
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstShooting;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mBurstShooting:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->requestContinue()V

    goto :goto_0

    .line 2490
    :pswitch_1
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_STORAGE_ERROR:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->sendEmptyEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;)V

    goto :goto_0

    .line 2494
    :pswitch_2
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_STORAGE_ERROR:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->sendEmptyEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;)V

    .line 2496
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstShooting;->emergencyExit(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    .line 2497
    const-class v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$Error;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->setState(Ljava/lang/Class;)V

    .line 2498
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstShooting;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getMessagePopup()Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    move-result-object v0

    const v1, 0x7f09009b

    const v2, 0x7f090092

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showMemoryErrorAndAbort(II)V

    goto :goto_0

    .line 2482
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public handleBurstStop(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 2470
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstShooting;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mBurstShooting:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->getStartedBy()Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    move-result-object v0

    iget-object v1, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mSource:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    if-ne v0, v1, :cond_0

    .line 2471
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstShooting;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mBurstShooting:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->stop(I)V

    .line 2473
    :cond_0
    return-void
.end method

.method public handleCapture(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 2477
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstShooting;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v1, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mSource:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->stopBurst(Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)Z

    .line 2478
    return-void
.end method

.method public handleControllerPause(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 2572
    iget-object v0, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mArg2:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 2573
    iget-object v0, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mArg2:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2575
    const-class v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$Pause;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->setState(Ljava/lang/Class;)V

    .line 2578
    :cond_0
    return-void
.end method

.method public handleShutterDone(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 2548
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstShooting;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    iget v1, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mArg1:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->countUp(I)V

    .line 2549
    return-void
.end method

.method public handleStoreDone(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 4
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 2556
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstShooting;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->onCaptureDone()V

    .line 2558
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstShooting;->mShouldOpenReviewWindow:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstShooting;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mBurstShooting:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->getPictureCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 2559
    iget-object v0, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mArg2:Ljava/lang/Object;

    check-cast v0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    .line 2560
    .local v0, "result":Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstShooting;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->getParams()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getAutoReview()Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->EDIT:Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    if-ne v1, v2, :cond_0

    .line 2561
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstShooting;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateTransitionController;->launchEditor(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->access$2700(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V

    .line 2568
    .end local v0    # "result":Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;
    :goto_0
    return-void

    .line 2563
    .restart local v0    # "result":Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstShooting;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    iget-object v2, v0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->uri:Landroid/net/Uri;

    iget-object v3, v0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/camera/view/CameraWindow;->openReviewWindow(Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;)V

    goto :goto_0

    .line 2566
    .end local v0    # "result":Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstShooting;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->getViewFinderState()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/Executor;->setState(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public isBackKeyValid()Z
    .locals 1

    .prologue
    .line 2432
    const/4 v0, 0x0

    return v0
.end method
