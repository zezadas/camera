.class Lcom/sonyericsson/android/camera/controller/BurstShooting$StoreDataCallbackHigh;
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
    name = "StoreDataCallbackHigh"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/BurstShooting;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/controller/BurstShooting;)V
    .locals 0

    .prologue
    .line 669
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting$StoreDataCallbackHigh;->this$0:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStoreComplete(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V
    .locals 1
    .param p1, "result"    # Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    .prologue
    .line 676
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->getSomcType()I

    move-result v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/mediasaving/MediaSavingUtil;->isCoverPicture(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting$StoreDataCallbackHigh;->this$0:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    # invokes: Lcom/sonyericsson/android/camera/controller/BurstShooting;->storeCoverResult(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V
    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->access$1800(Lcom/sonyericsson/android/camera/controller/BurstShooting;Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V

    .line 679
    :cond_0
    return-void
.end method
