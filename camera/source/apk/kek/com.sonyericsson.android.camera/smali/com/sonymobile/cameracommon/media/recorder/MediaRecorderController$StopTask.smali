.class Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$StopTask;
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
    name = "StopTask"
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
    .line 279
    iput-object p1, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$StopTask;->this$0:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;
    .param p2, "x1"    # Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$1;

    .prologue
    .line 279
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$StopTask;-><init>(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 284
    const/4 v2, 0x0

    .line 286
    .local v2, "success":Z
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$StopTask;->this$0:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    # getter for: Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mRecordingTime:Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;
    invoke-static {v3}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->access$100(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;)Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->elapsedTimeMillis()J

    move-result-wide v0

    .line 287
    .local v0, "duration":J
    const-wide/16 v6, 0x3e8

    sub-long v4, v6, v0

    .line 288
    .local v4, "waitTime":J
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 289
    const/4 v3, 0x0

    invoke-static {v4, v5, v3}, Ljava/lang/Thread;->sleep(JI)V

    .line 292
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$StopTask;->this$0:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    # getter for: Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mPauseTask:Ljava/util/concurrent/Future;
    invoke-static {v3}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->access$200(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;)Ljava/util/concurrent/Future;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 293
    iget-object v3, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$StopTask;->this$0:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    # getter for: Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mPauseTask:Ljava/util/concurrent/Future;
    invoke-static {v3}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->access$200(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;)Ljava/util/concurrent/Future;

    move-result-object v3

    const/4 v6, 0x1

    invoke-interface {v3, v6}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 294
    iget-object v3, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$StopTask;->this$0:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    const/4 v6, 0x0

    # setter for: Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mPauseTask:Ljava/util/concurrent/Future;
    invoke-static {v3, v6}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->access$202(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;

    .line 300
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$StopTask;->this$0:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    # getter for: Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;
    invoke-static {v3}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->access$300(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;)Landroid/media/MediaRecorder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->stop()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 305
    const/4 v2, 0x1

    .line 318
    iget-object v3, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$StopTask;->this$0:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    # invokes: Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->releaseMediaRecorder()V
    invoke-static {v3}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->access$400(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;)V

    .line 319
    iget-object v3, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$StopTask;->this$0:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    # getter for: Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mStateLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->access$500(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 320
    :try_start_1
    iget-object v3, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$StopTask;->this$0:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    const/4 v7, 0x0

    # setter for: Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mStopTask:Ljava/util/concurrent/Future;
    invoke-static {v3, v7}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->access$602(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;

    .line 321
    iget-object v7, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$StopTask;->this$0:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    if-eqz v2, :cond_2

    sget-object v3, Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;->SUCCESS:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;

    :goto_0
    # invokes: Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->notifyFinishResult(Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;)V
    invoke-static {v7, v3}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->access$700(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;)V

    .line 322
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 324
    iget-object v3, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$StopTask;->this$0:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    # invokes: Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->playRecordingSoundIfNeeded()V
    invoke-static {v3}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->access$800(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;)V

    .line 326
    .end local v0    # "duration":J
    .end local v4    # "waitTime":J
    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3

    .line 321
    .restart local v0    # "duration":J
    .restart local v4    # "waitTime":J
    :cond_2
    :try_start_2
    sget-object v3, Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;->FAIL:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;

    goto :goto_0

    .line 322
    :catchall_0
    move-exception v3

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 308
    .end local v0    # "duration":J
    .end local v4    # "waitTime":J
    :catch_0
    move-exception v3

    .line 318
    iget-object v3, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$StopTask;->this$0:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    # invokes: Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->releaseMediaRecorder()V
    invoke-static {v3}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->access$400(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;)V

    .line 319
    iget-object v3, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$StopTask;->this$0:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    # getter for: Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mStateLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->access$500(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 320
    :try_start_3
    iget-object v3, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$StopTask;->this$0:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    const/4 v7, 0x0

    # setter for: Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mStopTask:Ljava/util/concurrent/Future;
    invoke-static {v3, v7}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->access$602(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;

    .line 321
    iget-object v7, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$StopTask;->this$0:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    if-eqz v2, :cond_3

    sget-object v3, Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;->SUCCESS:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;

    :goto_2
    # invokes: Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->notifyFinishResult(Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;)V
    invoke-static {v7, v3}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->access$700(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;)V

    .line 322
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 324
    iget-object v3, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$StopTask;->this$0:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    # invokes: Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->playRecordingSoundIfNeeded()V
    invoke-static {v3}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->access$800(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;)V

    goto :goto_1

    .line 321
    :cond_3
    :try_start_4
    sget-object v3, Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;->FAIL:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;

    goto :goto_2

    .line 322
    :catchall_1
    move-exception v3

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3

    .line 318
    :catchall_2
    move-exception v3

    iget-object v6, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$StopTask;->this$0:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    # invokes: Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->releaseMediaRecorder()V
    invoke-static {v6}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->access$400(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;)V

    .line 319
    iget-object v6, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$StopTask;->this$0:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    # getter for: Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mStateLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->access$500(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 320
    :try_start_5
    iget-object v6, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$StopTask;->this$0:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    const/4 v8, 0x0

    # setter for: Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mStopTask:Ljava/util/concurrent/Future;
    invoke-static {v6, v8}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->access$602(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;

    .line 321
    iget-object v8, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$StopTask;->this$0:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    if-eqz v2, :cond_4

    sget-object v6, Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;->SUCCESS:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;

    :goto_3
    # invokes: Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->notifyFinishResult(Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;)V
    invoke-static {v8, v6}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->access$700(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;)V

    .line 322
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 324
    iget-object v6, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$StopTask;->this$0:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    # invokes: Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->playRecordingSoundIfNeeded()V
    invoke-static {v6}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->access$800(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;)V

    throw v3

    .line 321
    :cond_4
    :try_start_6
    sget-object v6, Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;->FAIL:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;

    goto :goto_3

    .line 322
    :catchall_3
    move-exception v3

    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v3
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$StopTask;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
