.class Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$LoadEvfFrameTask;
.super Ljava/lang/Object;
.source "EvfStreamController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadEvfFrameTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$LoadEvfFrameTask;->this$0:Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;
    .param p2, "x1"    # Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$1;

    .prologue
    .line 294
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$LoadEvfFrameTask;-><init>(Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 297
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$LoadEvfFrameTask;->this$0:Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;

    # getter for: Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mIsEvfLoading:Z
    invoke-static {v8}, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->access$600(Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 301
    const/16 v1, 0x8

    .line 306
    .local v1, "commonHeaderSize":I
    # getter for: Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->access$100()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$LoadEvfFrameTask;->this$0:Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;

    # getter for: Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mEvfStream:Ljava/io/InputStream;
    invoke-static {v9}, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->access$700(Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;)Ljava/io/InputStream;

    move-result-object v9

    invoke-static {v8, v9, v1}, Lcom/sonymobile/cameracommon/remotedevice/util/Util;->readInputStreamAsByteArray(Ljava/lang/String;Ljava/io/InputStream;I)[B

    move-result-object v0

    .line 310
    .local v0, "commonHeader":[B
    if-eqz v0, :cond_1

    array-length v8, v0

    if-eq v8, v1, :cond_3

    .line 311
    :cond_1
    # getter for: Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->access$100()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Failed to read Common Header."

    invoke-static {v8, v9}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-object v8, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$LoadEvfFrameTask;->this$0:Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;

    # getter for: Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mCallbackExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v8}, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->access$800(Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;)Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 313
    iget-object v8, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$LoadEvfFrameTask;->this$0:Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;

    # getter for: Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mCallbackExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v8}, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->access$800(Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;)Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    new-instance v9, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$NotifyEvfFrameTask;

    iget-object v10, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$LoadEvfFrameTask;->this$0:Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$LoadEvfFrameTask;->this$0:Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;

    # getter for: Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mCallback:Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamCallback;
    invoke-static {v12}, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->access$900(Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;)Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamCallback;

    move-result-object v12

    invoke-direct {v9, v10, v11, v12}, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$NotifyEvfFrameTask;-><init>(Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;[BLcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamCallback;)V

    invoke-interface {v8, v9}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 393
    .end local v0    # "commonHeader":[B
    .end local v1    # "commonHeaderSize":I
    :cond_2
    :goto_1
    return-void

    .line 317
    .restart local v0    # "commonHeader":[B
    .restart local v1    # "commonHeaderSize":I
    :cond_3
    const/4 v8, 0x0

    aget-byte v8, v0, v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_4

    .line 318
    # getter for: Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->access$100()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Invalid common header. (start byte)"

    invoke-static {v8, v9}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object v8, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$LoadEvfFrameTask;->this$0:Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;

    # getter for: Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mCallbackExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v8}, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->access$800(Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;)Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 320
    iget-object v8, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$LoadEvfFrameTask;->this$0:Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;

    # getter for: Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mCallbackExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v8}, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->access$800(Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;)Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    new-instance v9, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$NotifyEvfFrameTask;

    iget-object v10, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$LoadEvfFrameTask;->this$0:Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$LoadEvfFrameTask;->this$0:Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;

    # getter for: Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mCallback:Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamCallback;
    invoke-static {v12}, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->access$900(Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;)Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamCallback;

    move-result-object v12

    invoke-direct {v9, v10, v11, v12}, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$NotifyEvfFrameTask;-><init>(Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;[BLcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamCallback;)V

    invoke-interface {v8, v9}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 324
    :cond_4
    const/4 v8, 0x1

    aget-byte v8, v0, v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_5

    .line 325
    # getter for: Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->access$100()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Invalid common header. (payload type)"

    invoke-static {v8, v9}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-object v8, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$LoadEvfFrameTask;->this$0:Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;

    # getter for: Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mCallbackExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v8}, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->access$800(Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;)Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 327
    iget-object v8, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$LoadEvfFrameTask;->this$0:Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;

    # getter for: Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mCallbackExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v8}, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->access$800(Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;)Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    new-instance v9, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$NotifyEvfFrameTask;

    iget-object v10, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$LoadEvfFrameTask;->this$0:Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$LoadEvfFrameTask;->this$0:Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;

    # getter for: Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mCallback:Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamCallback;
    invoke-static {v12}, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->access$900(Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;)Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamCallback;

    move-result-object v12

    invoke-direct {v9, v10, v11, v12}, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$NotifyEvfFrameTask;-><init>(Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;[BLcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamCallback;)V

    invoke-interface {v8, v9}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 333
    :cond_5
    const/16 v7, 0x80

    .line 340
    .local v7, "payloadHeaderSize":I
    # getter for: Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->access$100()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$LoadEvfFrameTask;->this$0:Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;

    # getter for: Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mEvfStream:Ljava/io/InputStream;
    invoke-static {v9}, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->access$700(Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;)Ljava/io/InputStream;

    move-result-object v9

    invoke-static {v8, v9, v7}, Lcom/sonymobile/cameracommon/remotedevice/util/Util;->readInputStreamAsByteArray(Ljava/lang/String;Ljava/io/InputStream;I)[B

    move-result-object v6

    .line 344
    .local v6, "payloadHeader":[B
    if-eqz v6, :cond_6

    array-length v8, v6

    if-eq v8, v7, :cond_7

    .line 345
    :cond_6
    # getter for: Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->access$100()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Failed to read Payload Header."

    invoke-static {v8, v9}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    iget-object v8, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$LoadEvfFrameTask;->this$0:Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;

    # getter for: Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mCallbackExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v8}, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->access$800(Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;)Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 347
    iget-object v8, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$LoadEvfFrameTask;->this$0:Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;

    # getter for: Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mCallbackExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v8}, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->access$800(Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;)Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    new-instance v9, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$NotifyEvfFrameTask;

    iget-object v10, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$LoadEvfFrameTask;->this$0:Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$LoadEvfFrameTask;->this$0:Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;

    # getter for: Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mCallback:Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamCallback;
    invoke-static {v12}, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->access$900(Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;)Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamCallback;

    move-result-object v12

    invoke-direct {v9, v10, v11, v12}, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$NotifyEvfFrameTask;-><init>(Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;[BLcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamCallback;)V

    invoke-interface {v8, v9}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 351
    :cond_7
    const/4 v8, 0x0

    aget-byte v8, v6, v8

    const/16 v9, 0x24

    if-ne v8, v9, :cond_8

    const/4 v8, 0x1

    aget-byte v8, v6, v8

    const/16 v9, 0x35

    if-ne v8, v9, :cond_8

    const/4 v8, 0x2

    aget-byte v8, v6, v8

    const/16 v9, 0x68

    if-ne v8, v9, :cond_8

    const/4 v8, 0x3

    aget-byte v8, v6, v8

    const/16 v9, 0x79

    if-eq v8, v9, :cond_9

    .line 355
    :cond_8
    # getter for: Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->access$100()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Invalid payload header. (start byte)"

    invoke-static {v8, v9}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    iget-object v8, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$LoadEvfFrameTask;->this$0:Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;

    # getter for: Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mCallbackExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v8}, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->access$800(Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;)Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 357
    iget-object v8, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$LoadEvfFrameTask;->this$0:Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;

    # getter for: Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mCallbackExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v8}, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->access$800(Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;)Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    new-instance v9, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$NotifyEvfFrameTask;

    iget-object v10, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$LoadEvfFrameTask;->this$0:Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$LoadEvfFrameTask;->this$0:Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;

    # getter for: Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mCallback:Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamCallback;
    invoke-static {v12}, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->access$900(Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;)Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamCallback;

    move-result-object v12

    invoke-direct {v9, v10, v11, v12}, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$NotifyEvfFrameTask;-><init>(Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;[BLcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamCallback;)V

    invoke-interface {v8, v9}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 363
    :cond_9
    const/4 v8, 0x4

    const/4 v9, 0x3

    invoke-static {v6, v8, v9}, Lcom/sonymobile/cameracommon/remotedevice/util/Util;->byteArray2Integer([BII)I

    move-result v3

    .line 367
    .local v3, "jpegSize":I
    # getter for: Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->access$100()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$LoadEvfFrameTask;->this$0:Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;

    # getter for: Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mEvfStream:Ljava/io/InputStream;
    invoke-static {v9}, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->access$700(Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;)Ljava/io/InputStream;

    move-result-object v9

    invoke-static {v8, v9, v3}, Lcom/sonymobile/cameracommon/remotedevice/util/Util;->readInputStreamAsByteArray(Ljava/lang/String;Ljava/io/InputStream;I)[B

    move-result-object v2

    .line 373
    .local v2, "jpegData":[B
    const/4 v8, 0x7

    const/4 v9, 0x1

    invoke-static {v6, v8, v9}, Lcom/sonymobile/cameracommon/remotedevice/util/Util;->byteArray2Integer([BII)I

    move-result v5

    .line 377
    .local v5, "paddingSize":I
    # getter for: Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->access$100()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$LoadEvfFrameTask;->this$0:Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;

    # getter for: Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mEvfStream:Ljava/io/InputStream;
    invoke-static {v9}, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->access$700(Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;)Ljava/io/InputStream;

    move-result-object v9

    invoke-static {v8, v9, v5}, Lcom/sonymobile/cameracommon/remotedevice/util/Util;->readInputStreamAsByteArray(Ljava/lang/String;Ljava/io/InputStream;I)[B

    move-result-object v4

    .line 381
    .local v4, "paddingData":[B
    if-eqz v4, :cond_a

    .line 387
    :cond_a
    iget-object v8, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$LoadEvfFrameTask;->this$0:Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;

    # getter for: Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mCallbackExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v8}, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->access$800(Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;)Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 388
    iget-object v8, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$LoadEvfFrameTask;->this$0:Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;

    # getter for: Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mCallbackExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v8}, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->access$800(Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;)Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    new-instance v9, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$NotifyEvfFrameTask;

    iget-object v10, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$LoadEvfFrameTask;->this$0:Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;

    iget-object v11, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$LoadEvfFrameTask;->this$0:Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;

    # getter for: Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mCallback:Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamCallback;
    invoke-static {v11}, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->access$900(Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;)Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamCallback;

    move-result-object v11

    invoke-direct {v9, v10, v2, v11}, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$NotifyEvfFrameTask;-><init>(Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;[BLcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamCallback;)V

    invoke-interface {v8, v9}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method
