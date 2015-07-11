.class Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$3;
.super Ljava/lang/Object;
.source "MediaEncoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;


# direct methods
.method constructor <init>(Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$3;->this$0:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 208
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$3;->this$0:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    # getter for: Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->mRequestFinishSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v1}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->access$600(Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :try_start_1
    iget-object v1, p0, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder$3;->this$0:Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/media/encoder/MediaEncoder;->stopInputDataSource()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 221
    :goto_0
    return-void

    .line 209
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 218
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method
