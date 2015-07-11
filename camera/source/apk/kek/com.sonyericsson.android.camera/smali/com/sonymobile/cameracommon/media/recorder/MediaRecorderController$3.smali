.class Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$3;
.super Ljava/lang/Object;
.source "MediaRecorderController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->notifyReadyForSound()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;


# direct methods
.method constructor <init>(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;)V
    .locals 0

    .prologue
    .line 678
    iput-object p1, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$3;->this$0:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$3;->this$0:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    # getter for: Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mIsManualRecordingSoundNeeded:Z
    invoke-static {v0}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->access$2200(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$3;->this$0:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    # getter for: Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mIsWaitingStopFinished:Z
    invoke-static {v0}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->access$1400(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 689
    :goto_0
    return-void

    .line 687
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$3;->this$0:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    # invokes: Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->playRecordingSoundIfNeeded()V
    invoke-static {v0}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->access$800(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;)V

    goto :goto_0
.end method
