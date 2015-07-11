.class Lcom/sonyericsson/android/camera/controller/BurstShooting$BestEffort;
.super Ljava/lang/Object;
.source "BurstShooting.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;
.implements Landroid/hardware/Camera$ShutterCallback;
.implements Lcom/sonyericsson/android/camera/controller/BurstShooting$BurstShotMethod;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/BurstShooting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BestEffort"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/BurstShooting;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/BurstShooting;)V
    .locals 0

    .prologue
    .line 395
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting$BestEffort;->this$0:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/BurstShooting;Lcom/sonyericsson/android/camera/controller/BurstShooting$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/controller/BurstShooting;
    .param p2, "x1"    # Lcom/sonyericsson/android/camera/controller/BurstShooting$1;

    .prologue
    .line 395
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/BurstShooting$BestEffort;-><init>(Lcom/sonyericsson/android/camera/controller/BurstShooting;)V

    return-void
.end method

.method private takePicture()V
    .locals 2

    .prologue
    .line 437
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting$BestEffort;->this$0:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    const/4 v1, 0x1

    # invokes: Lcom/sonyericsson/android/camera/controller/BurstShooting;->setIsCapturing(Z)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->access$1100(Lcom/sonyericsson/android/camera/controller/BurstShooting;Z)V

    .line 440
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting$BestEffort;->this$0:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    # getter for: Lcom/sonyericsson/android/camera/controller/BurstShooting;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->access$500(Lcom/sonyericsson/android/camera/controller/BurstShooting;)Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->commit()V

    .line 442
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting$BestEffort;->this$0:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    # getter for: Lcom/sonyericsson/android/camera/controller/BurstShooting;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->access$500(Lcom/sonyericsson/android/camera/controller/BurstShooting;)Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0, p0, p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 443
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting$BestEffort;->this$0:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    # operator++ for: Lcom/sonyericsson/android/camera/controller/BurstShooting;->mPictureCount:I
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->access$1208(Lcom/sonyericsson/android/camera/controller/BurstShooting;)I

    .line 444
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 434
    return-void
.end method

.method public getSavingRequest()Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    .locals 5

    .prologue
    .line 417
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting$BestEffort;->this$0:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    # invokes: Lcom/sonyericsson/android/camera/controller/BurstShooting;->getPath()Ljava/lang/String;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->access$700(Lcom/sonyericsson/android/camera/controller/BurstShooting;)Ljava/lang/String;

    move-result-object v0

    .line 418
    .local v0, "filePath":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting$BestEffort;->this$0:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting$BestEffort;->this$0:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    # getter for: Lcom/sonyericsson/android/camera/controller/BurstShooting;->mCallbackBestEffort:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest$StoreDataCallback;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->access$900(Lcom/sonyericsson/android/camera/controller/BurstShooting;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest$StoreDataCallback;

    move-result-object v3

    # invokes: Lcom/sonyericsson/android/camera/controller/BurstShooting;->createSavingRequest(Ljava/lang/String;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest$StoreDataCallback;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    invoke-static {v2, v0, v3}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->access$1000(Lcom/sonyericsson/android/camera/controller/BurstShooting;Ljava/lang/String;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest$StoreDataCallback;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    move-result-object v1

    .line 421
    .local v1, "request":Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting$BestEffort;->this$0:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    # getter for: Lcom/sonyericsson/android/camera/controller/BurstShooting;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->access$500(Lcom/sonyericsson/android/camera/controller/BurstShooting;)Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    move-result-object v2

    iget-object v3, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v3, v3, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->orientation:I

    iget-object v4, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v4, v4, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->setExifInfo(ILandroid/location/Location;)V

    .line 422
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->setExtraOutput(Landroid/net/Uri;)V

    .line 423
    return-object v1
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 428
    const/4 v0, 0x1

    return v0
.end method

.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 4
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v3, 0x0

    .line 453
    sget-object v1, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->STOT_TO_ON_PICT_TAKEN:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-static {v1, v3}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V

    .line 454
    sget-object v1, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->STOT_TO_SHOT:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-static {v1, v3}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V

    .line 455
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->outResult()V

    .line 456
    sget-object v1, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->STOT_TO_SHOT:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V

    .line 460
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting$BestEffort;->this$0:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    # invokes: Lcom/sonyericsson/android/camera/controller/BurstShooting;->getCopiedSavingRequest()Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->access$1300(Lcom/sonyericsson/android/camera/controller/BurstShooting;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    move-result-object v0

    .line 461
    .local v0, "request":Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->setImageData([B)V

    .line 462
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting$BestEffort;->this$0:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    # getter for: Lcom/sonyericsson/android/camera/controller/BurstShooting;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->access$500(Lcom/sonyericsson/android/camera/controller/BurstShooting;)Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    move-result-object v1

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mSavingTaskManager:Lcom/sonyericsson/android/camera/mediasaving/BurstSavingTaskManager;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/mediasaving/BurstSavingTaskManager;->storePicture(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)V

    .line 463
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting$BestEffort;->this$0:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    # invokes: Lcom/sonyericsson/android/camera/controller/BurstShooting;->setIsCapturing(Z)V
    invoke-static {v1, v3}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->access$1100(Lcom/sonyericsson/android/camera/controller/BurstShooting;Z)V

    .line 465
    sget-object v1, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_BURST_COMPRESSED_DATA:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting$BestEffort;->this$0:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    # getter for: Lcom/sonyericsson/android/camera/controller/BurstShooting;->mPictureCount:I
    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->access$1200(Lcom/sonyericsson/android/camera/controller/BurstShooting;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sonyericsson/android/camera/controller/Executor;->sendEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;ILjava/lang/Object;)V

    .line 467
    return-void
.end method

.method public onShutter()V
    .locals 3

    .prologue
    .line 448
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_SHUTTER_DONE:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting$BestEffort;->this$0:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    # getter for: Lcom/sonyericsson/android/camera/controller/BurstShooting;->mPictureCount:I
    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->access$1200(Lcom/sonyericsson/android/camera/controller/BurstShooting;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/Executor;->sendEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;ILjava/lang/Object;)V

    .line 449
    return-void
.end method

.method public requestContinue()V
    .locals 3

    .prologue
    .line 406
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting$BestEffort;->this$0:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    const/4 v1, 0x0

    # invokes: Lcom/sonyericsson/android/camera/controller/BurstShooting;->prepareNextShot(Z)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->access$600(Lcom/sonyericsson/android/camera/controller/BurstShooting;Z)V

    .line 407
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting$BestEffort;->this$0:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    # getter for: Lcom/sonyericsson/android/camera/controller/BurstShooting;->mCurrentSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->access$800(Lcom/sonyericsson/android/camera/controller/BurstShooting;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting$BestEffort;->this$0:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    # invokes: Lcom/sonyericsson/android/camera/controller/BurstShooting;->getPath()Ljava/lang/String;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->access$700(Lcom/sonyericsson/android/camera/controller/BurstShooting;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->setExtraOutput(Landroid/net/Uri;)V

    .line 410
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting$BestEffort;->this$0:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    # getter for: Lcom/sonyericsson/android/camera/controller/BurstShooting;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->access$500(Lcom/sonyericsson/android/camera/controller/BurstShooting;)Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->startPreview()V

    .line 412
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/BurstShooting$BestEffort;->takePicture()V

    .line 413
    return-void
.end method

.method public start()Z
    .locals 1

    .prologue
    .line 400
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/BurstShooting$BestEffort;->takePicture()V

    .line 401
    const/4 v0, 0x1

    return v0
.end method
