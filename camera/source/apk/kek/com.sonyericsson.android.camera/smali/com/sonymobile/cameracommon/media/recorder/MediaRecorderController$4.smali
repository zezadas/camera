.class Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$4;
.super Ljava/lang/Object;
.source "MediaRecorderController.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/media/utility/ReferenceClock$TickCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;
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
    .line 702
    iput-object p1, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$4;->this$0:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTick(J)V
    .locals 1
    .param p1, "elapsedTimeMillis"    # J

    .prologue
    .line 706
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$4;->this$0:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    # getter for: Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mIsWaitingStopFinished:Z
    invoke-static {v0}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->access$1400(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 710
    :goto_0
    return-void

    .line 709
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$4;->this$0:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    # getter for: Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mListener:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$RecorderListener;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->access$1500(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;)Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$RecorderListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$RecorderListener;->onRecordProgress(J)V

    goto :goto_0
.end method
