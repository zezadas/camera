.class public Lcom/sonyericsson/android/camera/mediasaving/BurstSavingTaskManager;
.super Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;
.source "BurstSavingTaskManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBurstInfoUpdator:Lcom/sonyericsson/android/camera/burst/BurstInfoUpdator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/sonyericsson/android/camera/mediasaving/BurstSavingTaskManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/mediasaving/BurstSavingTaskManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .prologue
    .line 25
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getStorageManager()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->isOneShotPhoto()Z

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;-><init>(Landroid/app/Activity;Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;Z)V

    .line 27
    return-void
.end method


# virtual methods
.method public getUpdator()Lcom/sonyericsson/android/camera/burst/BurstInfoUpdator;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sonyericsson/android/camera/mediasaving/BurstSavingTaskManager;->mBurstInfoUpdator:Lcom/sonyericsson/android/camera/burst/BurstInfoUpdator;

    return-object v0
.end method

.method public notifyBurstShotGroupStoreComplete(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;Z)Z
    .locals 2
    .param p1, "result"    # Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;
    .param p2, "isHighSpeedBurst"    # Z

    .prologue
    .line 42
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/sonyericsson/android/camera/mediasaving/BurstSavingTaskManager;->mActivity:Landroid/app/Activity;

    iget-object v1, p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->uri:Landroid/net/Uri;

    invoke-static {v0, v1, p2}, Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;->sendBroadcastCameraShot(Landroid/content/Context;Landroid/net/Uri;Z)V

    .line 46
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/mediasaving/BurstSavingTaskManager;->notifyStoreComplete(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V

    .line 48
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->isSuccess()Z

    move-result v0

    return v0
.end method

.method public prepareBulkInsert()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sonyericsson/android/camera/mediasaving/BurstSavingTaskManager;->mBurstInfoUpdator:Lcom/sonyericsson/android/camera/burst/BurstInfoUpdator;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/burst/BurstInfoUpdator;->prepareBulkInsert()V

    .line 56
    return-void
.end method

.method public releaseResource()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sonyericsson/android/camera/mediasaving/BurstSavingTaskManager;->mBurstInfoUpdator:Lcom/sonyericsson/android/camera/burst/BurstInfoUpdator;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/sonyericsson/android/camera/mediasaving/BurstSavingTaskManager;->mBurstInfoUpdator:Lcom/sonyericsson/android/camera/burst/BurstInfoUpdator;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/burst/BurstInfoUpdator;->commitBulkInsert()Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    .line 81
    :cond_0
    return-void
.end method

.method public setUpdator(Lcom/sonyericsson/android/camera/burst/BurstInfoUpdator;)V
    .locals 0
    .param p1, "updator"    # Lcom/sonyericsson/android/camera/burst/BurstInfoUpdator;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/sonyericsson/android/camera/mediasaving/BurstSavingTaskManager;->mBurstInfoUpdator:Lcom/sonyericsson/android/camera/burst/BurstInfoUpdator;

    .line 63
    return-void
.end method
