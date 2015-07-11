.class Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$MyOnErrorListener$1;
.super Ljava/lang/Object;
.source "MediaRecorderController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$MyOnErrorListener;->onError(Landroid/media/MediaRecorder;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$MyOnErrorListener;

.field final synthetic val$postExtra:I

.field final synthetic val$postWhat:I


# direct methods
.method constructor <init>(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$MyOnErrorListener;II)V
    .locals 0

    .prologue
    .line 586
    iput-object p1, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$MyOnErrorListener$1;->this$1:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$MyOnErrorListener;

    iput p2, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$MyOnErrorListener$1;->val$postWhat:I

    iput p3, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$MyOnErrorListener$1;->val$postExtra:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 591
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$MyOnErrorListener$1;->this$1:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$MyOnErrorListener;

    iget-object v0, v0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$MyOnErrorListener;->this$0:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    # getter for: Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mIsWaitingStopFinished:Z
    invoke-static {v0}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->access$1400(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 598
    :goto_0
    return-void

    .line 595
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$MyOnErrorListener$1;->this$1:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$MyOnErrorListener;

    iget-object v0, v0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$MyOnErrorListener;->this$0:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    # invokes: Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->playRecordingSoundIfNeeded()V
    invoke-static {v0}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->access$800(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;)V

    .line 596
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$MyOnErrorListener$1;->this$1:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$MyOnErrorListener;

    iget-object v0, v0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$MyOnErrorListener;->this$0:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    # getter for: Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mListener:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$RecorderListener;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->access$1500(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;)Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$RecorderListener;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$MyOnErrorListener$1;->val$postWhat:I

    iget v2, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$MyOnErrorListener$1;->val$postExtra:I

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$RecorderListener;->onRecordError(II)V

    goto :goto_0
.end method
