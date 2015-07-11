.class Lcom/sonyericsson/android/camera/controller/BurstShooting$StoreDataCallbackBestEffort;
.super Ljava/lang/Object;
.source "BurstShooting.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest$StoreDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/BurstShooting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StoreDataCallbackBestEffort"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/BurstShooting;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/controller/BurstShooting;)V
    .locals 0

    .prologue
    .line 640
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting$StoreDataCallbackBestEffort;->this$0:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStoreComplete(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V
    .locals 2
    .param p1, "result"    # Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    .prologue
    .line 647
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting$StoreDataCallbackBestEffort;->this$0:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    # operator++ for: Lcom/sonyericsson/android/camera/controller/BurstShooting;->mSavedPictureCount:I
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->access$1708(Lcom/sonyericsson/android/camera/controller/BurstShooting;)I

    .line 650
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->getSomcType()I

    move-result v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/mediasaving/MediaSavingUtil;->isCoverPicture(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting$StoreDataCallbackBestEffort;->this$0:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    # invokes: Lcom/sonyericsson/android/camera/controller/BurstShooting;->storeCoverResult(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V
    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->access$1800(Lcom/sonyericsson/android/camera/controller/BurstShooting;Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V

    .line 661
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting$StoreDataCallbackBestEffort;->this$0:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->isStopRequested()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting$StoreDataCallbackBestEffort;->this$0:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->isCapturing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting$StoreDataCallbackBestEffort;->this$0:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->isBurstGroupStoreCompleted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 662
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting$StoreDataCallbackBestEffort;->this$0:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    # getter for: Lcom/sonyericsson/android/camera/controller/BurstShooting;->mCoverResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->access$400(Lcom/sonyericsson/android/camera/controller/BurstShooting;)Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 663
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting$StoreDataCallbackBestEffort;->this$0:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    # getter for: Lcom/sonyericsson/android/camera/controller/BurstShooting;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->access$500(Lcom/sonyericsson/android/camera/controller/BurstShooting;)Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting$StoreDataCallbackBestEffort;->this$0:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    # getter for: Lcom/sonyericsson/android/camera/controller/BurstShooting;->mCoverResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->access$400(Lcom/sonyericsson/android/camera/controller/BurstShooting;)Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->onStoreComplete(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V

    .line 666
    :cond_1
    return-void
.end method
