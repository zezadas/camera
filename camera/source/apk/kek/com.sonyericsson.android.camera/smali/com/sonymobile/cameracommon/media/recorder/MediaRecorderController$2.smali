.class Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$2;
.super Ljava/lang/Object;
.source "MediaRecorderController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->notifyPauseResult(Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;)V
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
    .line 665
    iput-object p1, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$2;->this$0:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    iput-object p2, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$2;->val$result:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 671
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$2;->this$0:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    # getter for: Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mListener:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$RecorderListener;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->access$1500(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;)Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$RecorderListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$2;->val$result:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;

    invoke-interface {v0, v1}, Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$RecorderListener;->onRecordPaused(Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;)V

    .line 673
    return-void
.end method
