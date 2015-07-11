.class Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$2;
.super Ljava/lang/Object;
.source "StateMachine.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$RecorderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V
    .locals 0

    .prologue
    .line 5099
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$2;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRecordError(II)V
    .locals 3
    .param p1, "what"    # I
    .param p2, "extra"    # I

    .prologue
    .line 5110
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$2;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_ON_RECORDING_ERROR:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 5111
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$2;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->releaseVideo()V

    .line 5112
    return-void
.end method

.method public onRecordFinished(Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;)V
    .locals 3
    .param p1, "result"    # Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;

    .prologue
    .line 5116
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$5;->$SwitchMap$com$sonymobile$cameracommon$media$recorder$RecorderInterface$Result:[I

    invoke-virtual {p1}, Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 5144
    :goto_0
    return-void

    .line 5119
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$2;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$4200(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5120
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$2;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$4200(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->enableClick()V

    .line 5124
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$2;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->finalizeRecording()V

    .line 5125
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$2;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->restoreSettingAfterRecording()V

    goto :goto_0

    .line 5132
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$2;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->doStopRecording()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$5100(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    goto :goto_0

    .line 5136
    :pswitch_2
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_DEVICE_ERROR:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/Executor;->postEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;ILjava/lang/Object;)V

    goto :goto_0

    .line 5116
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onRecordPaused(Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;)V
    .locals 0
    .param p1, "result"    # Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;

    .prologue
    .line 5153
    return-void
.end method

.method public onRecordProgress(J)V
    .locals 3
    .param p1, "progressMs"    # J

    .prologue
    .line 5103
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$2;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    long-to-int v1, p1

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->updateRecordingProgress(I)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$6400(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;I)V

    .line 5104
    return-void
.end method
