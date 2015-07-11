.class Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingVideoTask;
.super Ljava/lang/Object;
.source "SavingTaskManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SavingVideoTask"
.end annotation


# instance fields
.field final mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;

.field final synthetic this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;)V
    .locals 0
    .param p2, "request"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;

    .prologue
    .line 605
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingVideoTask;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 606
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingVideoTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;

    .line 607
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 611
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->FAIL:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    .line 612
    .local v1, "result":Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;
    const/4 v2, 0x0

    .line 634
    .local v2, "uri":Landroid/net/Uri;
    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingVideoTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;->getExtraOutput()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingVideoTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;

    iget-object v3, v3, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-boolean v3, v3, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->addToMediaStore:Z

    if-nez v3, :cond_0

    .line 637
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingVideoTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;->getExtraOutput()Landroid/net/Uri;

    move-result-object v2

    .line 641
    :goto_0
    if-eqz v2, :cond_1

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->SUCCESS:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    .line 649
    :goto_1
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingVideoTask;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    new-instance v4, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingVideoTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;

    invoke-direct {v4, v1, v2, v5}, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;)V

    invoke-virtual {v3, v4}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->notifyStoreComplete(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V

    .line 651
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingVideoTask;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    const/4 v4, 0x0

    # setter for: Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mStoreVideoThread:Ljava/lang/Thread;
    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->access$702(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 652
    return-void

    .line 639
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingVideoTask;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    # getter for: Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mUpdator:Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;
    invoke-static {v3}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->access$200(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;)Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingVideoTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;

    const-string v5, ""

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;->insertVideoAndSendIntent(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0

    .line 641
    :cond_1
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->FAIL:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 642
    :catch_0
    move-exception v0

    .line 643
    .local v0, "ex":Landroid/database/sqlite/SQLiteFullException;
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->FAIL_MEMORY_FULL:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    goto :goto_1
.end method
