.class Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$MyOnInfoListener;
.super Ljava/lang/Object;
.source "MediaRecorderController.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOnInfoListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;)V
    .locals 0

    .prologue
    .line 605
    iput-object p1, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$MyOnInfoListener;->this$0:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;
    .param p2, "x1"    # Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$1;

    .prologue
    .line 605
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$MyOnInfoListener;-><init>(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;)V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 2
    .param p1, "mr"    # Landroid/media/MediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 611
    packed-switch p2, :pswitch_data_0

    .line 621
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$MyOnInfoListener;->this$0:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    # getter for: Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mInfoReadyForStopSound:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->access$1800(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$MyOnInfoListener;->this$0:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    # getter for: Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mInfoReadyForStopSound:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->access$1800(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p2, :cond_1

    .line 622
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$MyOnInfoListener;->this$0:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    # invokes: Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->notifyReadyForSound()V
    invoke-static {v0}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->access$1900(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;)V

    .line 630
    :cond_0
    :goto_0
    return-void

    .line 613
    :pswitch_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$MyOnInfoListener;->this$0:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    sget-object v1, Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;->MAX_DURATION_REACHED:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;

    # invokes: Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->notifyFinishResult(Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;)V
    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->access$700(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;)V

    goto :goto_0

    .line 617
    :pswitch_1
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$MyOnInfoListener;->this$0:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    sget-object v1, Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;->MAX_FILESIZE_REACHED:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;

    # invokes: Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->notifyFinishResult(Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;)V
    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->access$700(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;)V

    goto :goto_0

    .line 624
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$MyOnInfoListener;->this$0:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    # getter for: Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mInfoDuration:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->access$2000(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$MyOnInfoListener;->this$0:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    # getter for: Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->mInfoDuration:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->access$2000(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 625
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$MyOnInfoListener;->this$0:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;

    # invokes: Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->notifyDuration(I)V
    invoke-static {v0, p3}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;->access$2100(Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;I)V

    goto :goto_0

    .line 611
    nop

    :pswitch_data_0
    .packed-switch 0x320
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
