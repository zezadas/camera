.class public abstract Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;
.super Ljava/lang/Object;
.source "SavingTaskManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "SavingTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask$Result;
    }
.end annotation


# instance fields
.field private final mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

.field private mResult:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask$Result;

.field final synthetic this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;)V
    .locals 1
    .param p2, "request"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;->mResult:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask$Result;

    .line 103
    return-void
.end method


# virtual methods
.method protected assignOutput()Landroid/net/Uri;
    .locals 4

    .prologue
    .line 113
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->getExtraOutput()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 114
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->getExtraOutput()Landroid/net/Uri;

    move-result-object v2

    .line 123
    :goto_0
    return-object v2

    .line 117
    :cond_0
    invoke-static {}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->getInstance()Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    iget-object v3, v3, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->getPhotoPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "path":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 119
    const/4 v2, 0x0

    goto :goto_0

    .line 122
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 123
    .local v0, "outputFile":Ljava/io/File;
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0
.end method

.method protected abstract getExpectedFileSize()I
.end method

.method protected getResult()Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask$Result;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;->mResult:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask$Result;

    return-object v0
.end method

.method protected final notifyResult(Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Landroid/net/Uri;)V
    .locals 3
    .param p1, "result"    # Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    new-instance v1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    invoke-direct {v1, p1, p2, v2}, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->notifyStoreComplete(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V

    .line 133
    return-void
.end method

.method protected abstract preProccess()Z
.end method

.method protected abstract register(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask$Result;)V
.end method

.method public final run()V
    .locals 4

    .prologue
    .line 137
    new-instance v1, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask$Result;

    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->FAIL:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-direct {v1, p0, v2, v3}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask$Result;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Landroid/net/Uri;)V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;->mResult:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask$Result;

    .line 138
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;->preProccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;->assignOutput()Landroid/net/Uri;

    move-result-object v0

    .line 140
    .local v0, "output":Landroid/net/Uri;
    if-eqz v0, :cond_1

    .line 141
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;->store(Landroid/net/Uri;)Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask$Result;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;->mResult:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask$Result;

    .line 154
    .end local v0    # "output":Landroid/net/Uri;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;->mResult:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask$Result;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;->register(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask$Result;)V

    .line 156
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    # invokes: Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->popPhotoSavingTask(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;)V
    invoke-static {v1, p0}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->access$100(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;)V

    .line 157
    return-void

    .line 144
    .restart local v0    # "output":Landroid/net/Uri;
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask$1;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected abstract store(Landroid/net/Uri;)Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask$Result;
.end method

.method protected writeToStorage([BLandroid/net/Uri;)Z
    .locals 2
    .param p1, "data"    # [B
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 128
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavingTask;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    invoke-direct {v0, v1, p1, p2}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;[BLandroid/net/Uri;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->storeData(Ljava/lang/Exception;)Z

    move-result v0

    return v0
.end method
