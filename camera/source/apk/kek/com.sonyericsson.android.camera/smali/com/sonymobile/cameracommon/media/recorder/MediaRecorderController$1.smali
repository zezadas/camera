.class Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$1;
.super Ljava/lang/Object;
.source "MediaRecorderController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->notifyFinishResult(Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

.field final synthetic val$result:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;


# direct methods
.method constructor <init>(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;)V
    .locals 0

    .prologue
    .line 643
    iput-object p1, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$1;->this$0:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    iput-object p2, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$1;->val$result:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 649
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$1;->this$0:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    # getter for: Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mIsWaitingStopFinished:Z
    invoke-static {v0}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->access$1400(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 650
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$1;->this$0:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    # getter for: Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mListener:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$RecorderListener;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->access$1500(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;)Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$RecorderListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$1;->val$result:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;

    invoke-interface {v0, v1}, Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$RecorderListener;->onRecordFinished(Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;)V

    .line 653
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$1;->val$result:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;

    sget-object v1, Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;->SUCCESS:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$1;->val$result:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;

    sget-object v1, Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;->FAIL:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;

    if-ne v0, v1, :cond_2

    .line 654
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$1;->this$0:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    # getter for: Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mStateLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->access$500(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 655
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$1;->this$0:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    sget-object v2, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;->IDLE:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;

    # setter for: Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mState:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;
    invoke-static {v0, v2}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->access$1102(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;)Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;

    .line 656
    monitor-exit v1

    .line 660
    :cond_2
    return-void

    .line 656
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
