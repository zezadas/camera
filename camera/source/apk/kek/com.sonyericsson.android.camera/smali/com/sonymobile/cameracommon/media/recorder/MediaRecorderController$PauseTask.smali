.class Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$PauseTask;
.super Ljava/lang/Object;
.source "MediaRecorderController.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PauseTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;)V
    .locals 0

    .prologue
    .line 349
    iput-object p1, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$PauseTask;->this$0:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;
    .param p2, "x1"    # Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$1;

    .prologue
    .line 349
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$PauseTask;-><init>(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 353
    const/4 v3, 0x0

    .line 356
    .local v3, "success":Z
    :try_start_0
    iget-object v6, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$PauseTask;->this$0:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    # getter for: Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mRecordingTime:Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;
    invoke-static {v6}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->access$100(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;)Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->elapsedTimeMillis()J

    move-result-wide v0

    .line 357
    .local v0, "duration":J
    const-wide/16 v6, 0x7d0

    sub-long v4, v6, v0

    .line 358
    .local v4, "waitTime":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_0

    .line 359
    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Ljava/lang/Thread;->sleep(JI)V

    .line 362
    :cond_0
    iget-object v6, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$PauseTask;->this$0:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    # getter for: Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mRecordingTime:Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;
    invoke-static {v6}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->access$100(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;)Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->stop()V

    .line 366
    iget-object v6, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$PauseTask;->this$0:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    # getter for: Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mMethodPause:Ljava/lang/reflect/Method;
    invoke-static {v6}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->access$1000(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;)Ljava/lang/reflect/Method;

    move-result-object v6

    iget-object v7, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$PauseTask;->this$0:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    # getter for: Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;
    invoke-static {v7}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->access$300(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;)Landroid/media/MediaRecorder;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 370
    const/4 v3, 0x1

    .line 394
    iget-object v6, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$PauseTask;->this$0:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    # getter for: Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mStateLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->access$500(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 395
    :try_start_1
    iget-object v6, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$PauseTask;->this$0:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    sget-object v8, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;->PAUSED:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;

    # setter for: Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mState:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;
    invoke-static {v6, v8}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->access$1102(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;)Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;

    .line 396
    iget-object v6, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$PauseTask;->this$0:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    const/4 v8, 0x0

    # setter for: Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mPauseTask:Ljava/util/concurrent/Future;
    invoke-static {v6, v8}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->access$202(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;

    .line 397
    iget-object v8, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$PauseTask;->this$0:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    if-eqz v3, :cond_1

    sget-object v6, Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;->SUCCESS:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;

    :goto_0
    # invokes: Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->notifyPauseResult(Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;)V
    invoke-static {v8, v6}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->access$1200(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;)V

    .line 398
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 401
    .end local v0    # "duration":J
    .end local v4    # "waitTime":J
    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    return-object v6

    .line 397
    .restart local v0    # "duration":J
    .restart local v4    # "waitTime":J
    :cond_1
    :try_start_2
    sget-object v6, Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;->FAIL:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;

    goto :goto_0

    .line 398
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 372
    .end local v0    # "duration":J
    .end local v4    # "waitTime":J
    :catch_0
    move-exception v2

    .line 375
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    :try_start_3
    new-instance v6, Lcom/sonymobile/cameracommon/media/recorder/RecorderException;

    invoke-direct {v6, v2}, Lcom/sonymobile/cameracommon/media/recorder/RecorderException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 394
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_1
    move-exception v6

    iget-object v7, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$PauseTask;->this$0:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    # getter for: Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mStateLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->access$500(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 395
    :try_start_4
    iget-object v7, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$PauseTask;->this$0:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    sget-object v9, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;->PAUSED:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;

    # setter for: Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mState:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;
    invoke-static {v7, v9}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->access$1102(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;)Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;

    .line 396
    iget-object v7, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$PauseTask;->this$0:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    const/4 v9, 0x0

    # setter for: Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mPauseTask:Ljava/util/concurrent/Future;
    invoke-static {v7, v9}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->access$202(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;

    .line 397
    iget-object v9, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$PauseTask;->this$0:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    if-eqz v3, :cond_3

    sget-object v7, Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;->SUCCESS:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;

    :goto_2
    # invokes: Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->notifyPauseResult(Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;)V
    invoke-static {v9, v7}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->access$1200(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;)V

    .line 398
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v6

    .line 376
    :catch_1
    move-exception v2

    .line 379
    .local v2, "e":Ljava/lang/IllegalAccessException;
    :try_start_5
    new-instance v6, Lcom/sonymobile/cameracommon/media/recorder/RecorderException;

    invoke-direct {v6, v2}, Lcom/sonymobile/cameracommon/media/recorder/RecorderException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 380
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    .line 383
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v6, Lcom/sonymobile/cameracommon/media/recorder/RecorderException;

    invoke-direct {v6, v2}, Lcom/sonymobile/cameracommon/media/recorder/RecorderException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 384
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v6

    .line 394
    iget-object v6, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$PauseTask;->this$0:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    # getter for: Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mStateLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->access$500(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 395
    :try_start_6
    iget-object v6, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$PauseTask;->this$0:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    sget-object v8, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;->PAUSED:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;

    # setter for: Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mState:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;
    invoke-static {v6, v8}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->access$1102(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;)Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;

    .line 396
    iget-object v6, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$PauseTask;->this$0:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    const/4 v8, 0x0

    # setter for: Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mPauseTask:Ljava/util/concurrent/Future;
    invoke-static {v6, v8}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->access$202(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;

    .line 397
    iget-object v8, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$PauseTask;->this$0:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    if-eqz v3, :cond_2

    sget-object v6, Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;->SUCCESS:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;

    :goto_3
    # invokes: Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->notifyPauseResult(Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;)V
    invoke-static {v8, v6}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->access$1200(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;)V

    .line 398
    monitor-exit v7

    goto :goto_1

    :catchall_2
    move-exception v6

    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v6

    .line 397
    :cond_2
    :try_start_7
    sget-object v6, Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;->FAIL:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_3

    :cond_3
    :try_start_8
    sget-object v7, Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;->FAIL:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;

    goto :goto_2

    .line 398
    :catchall_3
    move-exception v6

    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v6
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$PauseTask;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
