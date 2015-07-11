.class public Lcom/sonyericsson/android/camera/burst/BurstInfoUpdator;
.super Lcom/sonyericsson/android/camera/mediasaving/BurstMediaProviderUpdator;
.source "BurstInfoUpdator.java"

# interfaces
.implements Lcom/sonyericsson/cameraextension/CameraExtension$MediaProviderUpdator;


# instance fields
.field private final mSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)V
    .locals 1
    .param p1, "activity"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    .param p2, "savingRequest"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    .prologue
    .line 37
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->isOneShotPhoto()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/mediasaving/BurstMediaProviderUpdator;-><init>(Landroid/content/Context;Z)V

    .line 38
    iput-object p2, p0, Lcom/sonyericsson/android/camera/burst/BurstInfoUpdator;->mSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    .line 39
    return-void
.end method


# virtual methods
.method public insert(Ljava/lang/String;)V
    .locals 4
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sonyericsson/android/camera/burst/BurstInfoUpdator;->mSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->setFilePath(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/sonyericsson/android/camera/burst/BurstInfoUpdator;->mSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->setDateTaken(J)V

    .line 54
    iget-object v0, p0, Lcom/sonyericsson/android/camera/burst/BurstInfoUpdator;->mSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->getSomcType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 56
    iget-object v0, p0, Lcom/sonyericsson/android/camera/burst/BurstInfoUpdator;->mSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/burst/BurstInfoUpdator;->insertPictureAndSendIntent(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;Z)Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    .line 57
    iget-object v0, p0, Lcom/sonyericsson/android/camera/burst/BurstInfoUpdator;->mSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->setSomcType(I)V

    .line 67
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/burst/BurstInfoUpdator;->mSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/burst/BurstInfoUpdator;->addInsertPictureRequest(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)V

    goto :goto_0
.end method
