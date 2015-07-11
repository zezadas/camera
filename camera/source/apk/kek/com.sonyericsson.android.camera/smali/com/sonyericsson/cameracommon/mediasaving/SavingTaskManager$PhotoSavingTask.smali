.class public Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$PhotoSavingTask;
.super Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;
.source "SavingTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PhotoSavingTask"
.end annotation


# instance fields
.field final mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

.field final synthetic this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)V
    .locals 0
    .param p2, "request"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$PhotoSavingTask;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    .line 195
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;)V

    .line 196
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    .line 197
    return-void
.end method


# virtual methods
.method protected getExpectedFileSize()I
    .locals 1

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$PhotoSavingTask;->getResult()Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask$Result;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 203
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->getImageData()[B

    move-result-object v0

    array-length v0, v0

    goto :goto_0
.end method

.method protected preProccess()Z
    .locals 6

    .prologue
    .line 210
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    iget-object v3, v3, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-boolean v3, v3, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->doPostProcessing:Z

    if-eqz v3, :cond_0

    .line 212
    invoke-static {}, Lcom/sonymobile/imageprocessor/superresolution/SuperResolutionProcessor;->create()Lcom/sonymobile/imageprocessor/superresolution/SuperResolutionProcessor;

    move-result-object v1

    .line 214
    .local v1, "processor":Lcom/sonymobile/imageprocessor/superresolution/SuperResolutionProcessor;
    if-eqz v1, :cond_0

    .line 218
    new-instance v0, Lcom/sonymobile/imageprocessor/superresolution/SuperResolutionProcessor$Parameters;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    iget-object v3, v3, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v3, v3, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->width:I

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    iget-object v4, v4, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v4, v4, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->height:I

    const/16 v5, 0x100

    invoke-direct {v0, v3, v4, v5}, Lcom/sonymobile/imageprocessor/superresolution/SuperResolutionProcessor$Parameters;-><init>(III)V

    .line 224
    .local v0, "params":Lcom/sonymobile/imageprocessor/superresolution/SuperResolutionProcessor$Parameters;
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->getImageData()[B

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcom/sonymobile/imageprocessor/superresolution/SuperResolutionProcessor;->process([BLcom/sonymobile/imageprocessor/superresolution/SuperResolutionProcessor$Parameters;)Lcom/sonymobile/imageprocessor/superresolution/SuperResolutionProcessor$Results;

    move-result-object v2

    .line 227
    .local v2, "results":Lcom/sonymobile/imageprocessor/superresolution/SuperResolutionProcessor$Results;
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    iget-object v4, v2, Lcom/sonymobile/imageprocessor/superresolution/SuperResolutionProcessor$Results;->imageBuffer:[B

    invoke-virtual {v3, v4}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->setImageData([B)V

    .line 231
    invoke-virtual {v1}, Lcom/sonymobile/imageprocessor/superresolution/SuperResolutionProcessor;->release()V

    .line 240
    .end local v0    # "params":Lcom/sonymobile/imageprocessor/superresolution/SuperResolutionProcessor$Parameters;
    .end local v1    # "processor":Lcom/sonymobile/imageprocessor/superresolution/SuperResolutionProcessor;
    .end local v2    # "results":Lcom/sonymobile/imageprocessor/superresolution/SuperResolutionProcessor$Results;
    :cond_0
    const/4 v3, 0x1

    return v3
.end method

.method protected register(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask$Result;)V
    .locals 5
    .param p1, "result"    # Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask$Result;

    .prologue
    .line 291
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask$Result;->result:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->SUCCESS:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    if-ne v0, v1, :cond_1

    .line 305
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$PhotoSavingTask;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    # getter for: Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mIsOneShotPhoto:Z
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->access$300(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$PhotoSavingTask;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mActivity:Landroid/app/Activity;

    iget-object v1, p1, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask$Result;->uri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;->sendBroadcastCameraShot(Landroid/content/Context;Landroid/net/Uri;Z)V

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$PhotoSavingTask;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    new-instance v1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    iget-object v2, p1, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask$Result;->result:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    iget-object v3, p1, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask$Result;->uri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    invoke-direct {v1, v2, v3, v4}, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->notifyStoreComplete(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V

    .line 319
    :goto_0
    return-void

    .line 315
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$PhotoSavingTask;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    new-instance v1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    iget-object v2, p1, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask$Result;->result:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    invoke-direct {v1, v2, v3, v4}, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->notifyStoreComplete(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V

    goto :goto_0
.end method

.method protected store(Landroid/net/Uri;)Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask$Result;
    .locals 7
    .param p1, "output"    # Landroid/net/Uri;

    .prologue
    .line 247
    const-string v4, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 250
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->setFilePath(Ljava/lang/String;)V

    .line 253
    :cond_0
    const/4 v3, 0x0

    .line 254
    .local v3, "uri":Landroid/net/Uri;
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->FAIL:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    .line 256
    .local v2, "result":Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->getImageData()[B

    move-result-object v4

    invoke-virtual {p0, v4, p1}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$PhotoSavingTask;->writeToStorage([BLandroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 259
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->getExtraOutput()Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_2

    .line 261
    const/4 v1, 0x1

    .line 267
    .local v1, "needToinsert":Z
    :goto_0
    if-eqz v1, :cond_4

    .line 269
    :try_start_0
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$PhotoSavingTask;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    # getter for: Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mUpdator:Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;
    invoke-static {v4}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->access$200(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;)Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;->insertPictureContentManager(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 270
    if-eqz v3, :cond_3

    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->SUCCESS:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    .end local v1    # "needToinsert":Z
    :cond_1
    :goto_1
    new-instance v4, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask$Result;

    invoke-direct {v4, p0, v2, v3}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask$Result;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Landroid/net/Uri;)V

    return-object v4

    .line 264
    :cond_2
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    iget-object v4, v4, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-boolean v1, v4, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->addToMediaStore:Z

    .restart local v1    # "needToinsert":Z
    goto :goto_0

    .line 270
    :cond_3
    :try_start_1
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->FAIL:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 274
    :catch_0
    move-exception v0

    .line 275
    .local v0, "ex":Landroid/database/sqlite/SQLiteFullException;
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->FAIL_MEMORY_FULL:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    .line 276
    goto :goto_1

    .line 278
    .end local v0    # "ex":Landroid/database/sqlite/SQLiteFullException;
    :cond_4
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$PhotoSavingTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->getExtraOutput()Landroid/net/Uri;

    move-result-object v3

    .line 279
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->SUCCESS:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    goto :goto_1
.end method
