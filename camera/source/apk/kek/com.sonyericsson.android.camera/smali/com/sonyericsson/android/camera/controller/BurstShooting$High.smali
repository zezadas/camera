.class Lcom/sonyericsson/android/camera/controller/BurstShooting$High;
.super Ljava/lang/Object;
.source "BurstShooting.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/controller/BurstShooting$BurstShotMethod;
.implements Lcom/sonyericsson/cameraextension/CameraExtension$BurstShotCallback;
.implements Lcom/sonyericsson/cameraextension/CameraExtension$FilePathGenerator;
.implements Lcom/sonyericsson/cameraextension/CameraExtension$StorageFullDetector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/BurstShooting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "High"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/BurstShooting;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/BurstShooting;)V
    .locals 0

    .prologue
    .line 471
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting$High;->this$0:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/BurstShooting;Lcom/sonyericsson/android/camera/controller/BurstShooting$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/controller/BurstShooting;
    .param p2, "x1"    # Lcom/sonyericsson/android/camera/controller/BurstShooting$1;

    .prologue
    .line 471
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/BurstShooting$High;-><init>(Lcom/sonyericsson/android/camera/controller/BurstShooting;)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    .line 515
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting$High;->this$0:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    # getter for: Lcom/sonyericsson/android/camera/controller/BurstShooting;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->access$500(Lcom/sonyericsson/android/camera/controller/BurstShooting;)Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    move-result-object v1

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting$High;->this$0:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    # getter for: Lcom/sonyericsson/android/camera/controller/BurstShooting;->mBurstId:I
    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->access$1400(Lcom/sonyericsson/android/camera/controller/BurstShooting;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDevice;->stopBurstShot(I)I

    move-result v0

    .line 516
    .local v0, "result":I
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting$High;->this$0:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    # getter for: Lcom/sonyericsson/android/camera/controller/BurstShooting;->mBurstId:I
    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->access$1400(Lcom/sonyericsson/android/camera/controller/BurstShooting;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 517
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting$High;->this$0:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    # getter for: Lcom/sonyericsson/android/camera/controller/BurstShooting;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->access$500(Lcom/sonyericsson/android/camera/controller/BurstShooting;)Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->finishBurstShot()V

    .line 519
    :cond_0
    return-void
.end method

.method public getNextFilePathToStorePicture()Ljava/lang/String;
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting$High;->this$0:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    # invokes: Lcom/sonyericsson/android/camera/controller/BurstShooting;->getPath()Ljava/lang/String;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->access$700(Lcom/sonyericsson/android/camera/controller/BurstShooting;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSavingRequest()Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    .locals 4

    .prologue
    .line 503
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting$High;->this$0:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting$High;->this$0:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    # getter for: Lcom/sonyericsson/android/camera/controller/BurstShooting;->mCallbackHigh:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest$StoreDataCallback;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->access$1500(Lcom/sonyericsson/android/camera/controller/BurstShooting;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest$StoreDataCallback;

    move-result-object v3

    # invokes: Lcom/sonyericsson/android/camera/controller/BurstShooting;->createSavingRequest(Ljava/lang/String;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest$StoreDataCallback;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    invoke-static {v1, v2, v3}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->access$1000(Lcom/sonyericsson/android/camera/controller/BurstShooting;Ljava/lang/String;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest$StoreDataCallback;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    move-result-object v0

    .line 504
    .local v0, "request":Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting$High;->this$0:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    # getter for: Lcom/sonyericsson/android/camera/controller/BurstShooting;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->access$500(Lcom/sonyericsson/android/camera/controller/BurstShooting;)Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    move-result-object v1

    iget-object v2, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v2, v2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->orientation:I

    iget-object v3, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v3, v3, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->setExifInfo(ILandroid/location/Location;)V

    .line 505
    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 510
    const/4 v0, 0x1

    return v0
.end method

.method public isCurrentStorageFull()Z
    .locals 6

    .prologue
    .line 597
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting$High;->this$0:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    # getter for: Lcom/sonyericsson/android/camera/controller/BurstShooting;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->access$500(Lcom/sonyericsson/android/camera/controller/BurstShooting;)Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    move-result-object v2

    iget-object v2, v2, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/CameraActivity;->getStorageController()Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->getAvailableStorageSize()J

    move-result-wide v0

    .line 599
    .local v0, "available":J
    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    const-wide/32 v4, 0xf000

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 601
    const/4 v2, 0x1

    .line 604
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onBurstFrameDropped(Lcom/sonyericsson/cameraextension/CameraExtension$BurstShotResult;)V
    .locals 2
    .param p1, "result"    # Lcom/sonyericsson/cameraextension/CameraExtension$BurstShotResult;

    .prologue
    .line 558
    iget v0, p1, Lcom/sonyericsson/cameraextension/CameraExtension$BurstShotResult;->mErrorCode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 559
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_STORAGE_ERROR:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->sendEmptyEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;)V

    .line 561
    :cond_0
    return-void
.end method

.method public declared-synchronized onBurstGroupStoreCompleted(Lcom/sonyericsson/cameraextension/CameraExtension$BurstShotResult;)V
    .locals 3
    .param p1, "result"    # Lcom/sonyericsson/cameraextension/CameraExtension$BurstShotResult;

    .prologue
    .line 582
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting$High;->this$0:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting$High;->this$0:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    # getter for: Lcom/sonyericsson/android/camera/controller/BurstShooting;->mPictureCount:I
    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->access$1200(Lcom/sonyericsson/android/camera/controller/BurstShooting;)I

    move-result v1

    # setter for: Lcom/sonyericsson/android/camera/controller/BurstShooting;->mSavedPictureCount:I
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->access$1702(Lcom/sonyericsson/android/camera/controller/BurstShooting;I)I

    .line 584
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting$High;->this$0:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    # getter for: Lcom/sonyericsson/android/camera/controller/BurstShooting;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->access$500(Lcom/sonyericsson/android/camera/controller/BurstShooting;)Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mSavingTaskManager:Lcom/sonyericsson/android/camera/mediasaving/BurstSavingTaskManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/mediasaving/BurstSavingTaskManager;->getUpdator()Lcom/sonyericsson/android/camera/burst/BurstInfoUpdator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/burst/BurstInfoUpdator;->commitBulkInsert()Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    .line 586
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting$High;->this$0:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    # getter for: Lcom/sonyericsson/android/camera/controller/BurstShooting;->mCoverResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->access$400(Lcom/sonyericsson/android/camera/controller/BurstShooting;)Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting$High;->this$0:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    # getter for: Lcom/sonyericsson/android/camera/controller/BurstShooting;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->access$500(Lcom/sonyericsson/android/camera/controller/BurstShooting;)Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mSavingTaskManager:Lcom/sonyericsson/android/camera/mediasaving/BurstSavingTaskManager;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting$High;->this$0:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    # getter for: Lcom/sonyericsson/android/camera/controller/BurstShooting;->mCoverResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->access$400(Lcom/sonyericsson/android/camera/controller/BurstShooting;)Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/mediasaving/BurstSavingTaskManager;->notifyBurstShotGroupStoreComplete(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;Z)Z

    .line 589
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting$High;->this$0:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    # getter for: Lcom/sonyericsson/android/camera/controller/BurstShooting;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->access$500(Lcom/sonyericsson/android/camera/controller/BurstShooting;)Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting$High;->this$0:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    # getter for: Lcom/sonyericsson/android/camera/controller/BurstShooting;->mCoverResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->access$400(Lcom/sonyericsson/android/camera/controller/BurstShooting;)Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->onStoreComplete(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V

    .line 592
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting$High;->this$0:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    const/4 v1, 0x0

    # invokes: Lcom/sonyericsson/android/camera/controller/BurstShooting;->setIsCapturing(Z)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->access$1100(Lcom/sonyericsson/android/camera/controller/BurstShooting;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 593
    monitor-exit p0

    return-void

    .line 582
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onBurstPictureStoreCompleted(Lcom/sonyericsson/cameraextension/CameraExtension$BurstShotResult;)V
    .locals 3
    .param p1, "result"    # Lcom/sonyericsson/cameraextension/CameraExtension$BurstShotResult;

    .prologue
    .line 567
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting$High;->this$0:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    # operator++ for: Lcom/sonyericsson/android/camera/controller/BurstShooting;->mSavedPictureCount:I
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->access$1708(Lcom/sonyericsson/android/camera/controller/BurstShooting;)I

    .line 569
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting$High;->this$0:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->isStopRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/BurstShooting$High;->finish()V

    .line 573
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_BURST_COMPRESSED_DATA:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    iget v1, p1, Lcom/sonyericsson/cameraextension/CameraExtension$BurstShotResult;->mPictureCount:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/Executor;->sendEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;ILjava/lang/Object;)V

    .line 575
    return-void
.end method

.method public onBurstShutterDone(Lcom/sonyericsson/cameraextension/CameraExtension$BurstShotResult;)V
    .locals 3
    .param p1, "result"    # Lcom/sonyericsson/cameraextension/CameraExtension$BurstShotResult;

    .prologue
    .line 532
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting$High;->this$0:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    # getter for: Lcom/sonyericsson/android/camera/controller/BurstShooting;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->access$500(Lcom/sonyericsson/android/camera/controller/BurstShooting;)Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting$High;->this$0:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    # getter for: Lcom/sonyericsson/android/camera/controller/BurstShooting;->mCurrentSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->access$800(Lcom/sonyericsson/android/camera/controller/BurstShooting;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->updateSavingRequest(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;Z)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    .line 534
    iget v0, p1, Lcom/sonyericsson/cameraextension/CameraExtension$BurstShotResult;->mErrorCode:I

    packed-switch v0, :pswitch_data_0

    .line 549
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting$High;->this$0:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->isStopRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/sonyericsson/cameraextension/CameraExtension$BurstShotResult;->mPictureCount:I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting$High;->this$0:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    # getter for: Lcom/sonyericsson/android/camera/controller/BurstShooting;->mMinimumPictureCount:I
    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->access$1600(Lcom/sonyericsson/android/camera/controller/BurstShooting;)I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 550
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/BurstShooting$High;->finish()V

    .line 552
    :cond_0
    return-void

    .line 536
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting$High;->this$0:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    iget v1, p1, Lcom/sonyericsson/cameraextension/CameraExtension$BurstShotResult;->mPictureCount:I

    # setter for: Lcom/sonyericsson/android/camera/controller/BurstShooting;->mPictureCount:I
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->access$1202(Lcom/sonyericsson/android/camera/controller/BurstShooting;I)I

    .line 537
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_SHUTTER_DONE:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    iget v1, p1, Lcom/sonyericsson/cameraextension/CameraExtension$BurstShotResult;->mPictureCount:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/Executor;->sendEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;ILjava/lang/Object;)V

    goto :goto_0

    .line 542
    :pswitch_2
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_STORAGE_ERROR:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->sendEmptyEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;)V

    goto :goto_0

    .line 534
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public requestContinue()V
    .locals 0

    .prologue
    .line 498
    return-void
.end method

.method public start()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 479
    new-instance v0, Lcom/sonyericsson/android/camera/burst/BurstInfoUpdator;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting$High;->this$0:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    # getter for: Lcom/sonyericsson/android/camera/controller/BurstShooting;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->access$500(Lcom/sonyericsson/android/camera/controller/BurstShooting;)Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    move-result-object v1

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting$High;->this$0:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    # getter for: Lcom/sonyericsson/android/camera/controller/BurstShooting;->mCurrentSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->access$800(Lcom/sonyericsson/android/camera/controller/BurstShooting;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/android/camera/burst/BurstInfoUpdator;-><init>(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)V

    .line 482
    .local v0, "burstInfoUpdator":Lcom/sonyericsson/android/camera/burst/BurstInfoUpdator;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting$High;->this$0:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    # getter for: Lcom/sonyericsson/android/camera/controller/BurstShooting;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->access$500(Lcom/sonyericsson/android/camera/controller/BurstShooting;)Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    move-result-object v1

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->getSavingTaskManager()Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/mediasaving/BurstSavingTaskManager;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/mediasaving/BurstSavingTaskManager;->setUpdator(Lcom/sonyericsson/android/camera/burst/BurstInfoUpdator;)V

    .line 484
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting$High;->this$0:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    # getter for: Lcom/sonyericsson/android/camera/controller/BurstShooting;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->access$500(Lcom/sonyericsson/android/camera/controller/BurstShooting;)Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->prepareBurstShot()V

    .line 485
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting$High;->this$0:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    # invokes: Lcom/sonyericsson/android/camera/controller/BurstShooting;->setIsCapturing(Z)V
    invoke-static {v1, v3}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->access$1100(Lcom/sonyericsson/android/camera/controller/BurstShooting;Z)V

    .line 486
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting$High;->this$0:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting$High;->this$0:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    # getter for: Lcom/sonyericsson/android/camera/controller/BurstShooting;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->access$500(Lcom/sonyericsson/android/camera/controller/BurstShooting;)Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    move-result-object v4

    iget-object v4, v4, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v4, p0, p0, p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->startBurstShot(Lcom/sonyericsson/cameraextension/CameraExtension$BurstShotCallback;Lcom/sonyericsson/cameraextension/CameraExtension$StorageFullDetector;Lcom/sonyericsson/cameraextension/CameraExtension$FilePathGenerator;Lcom/sonyericsson/cameraextension/CameraExtension$MediaProviderUpdator;)I

    move-result v4

    # setter for: Lcom/sonyericsson/android/camera/controller/BurstShooting;->mBurstId:I
    invoke-static {v1, v4}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->access$1402(Lcom/sonyericsson/android/camera/controller/BurstShooting;I)I

    .line 488
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting$High;->this$0:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    # getter for: Lcom/sonyericsson/android/camera/controller/BurstShooting;->mBurstId:I
    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->access$1400(Lcom/sonyericsson/android/camera/controller/BurstShooting;)I

    move-result v1

    if-gez v1, :cond_0

    .line 489
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting$High;->this$0:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    # invokes: Lcom/sonyericsson/android/camera/controller/BurstShooting;->setIsCapturing(Z)V
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->access$1100(Lcom/sonyericsson/android/camera/controller/BurstShooting;Z)V

    move v1, v2

    .line 492
    :goto_0
    return v1

    :cond_0
    move v1, v3

    goto :goto_0
.end method
