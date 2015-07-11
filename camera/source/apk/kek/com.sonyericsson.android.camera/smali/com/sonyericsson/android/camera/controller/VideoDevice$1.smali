.class Lcom/sonyericsson/android/camera/controller/VideoDevice$1;
.super Ljava/lang/Object;
.source "VideoDevice.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$RecorderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/VideoDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/VideoDevice;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/controller/VideoDevice;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/VideoDevice$1;->this$0:Lcom/sonyericsson/android/camera/controller/VideoDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRecordError(II)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "extra"    # I

    .prologue
    .line 83
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_DEVICE_ERROR:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sonyericsson/android/camera/controller/Executor;->postEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;ILjava/lang/Object;)V

    .line 84
    return-void
.end method

.method public onRecordFinished(Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;)V
    .locals 3
    .param p1, "result"    # Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;

    .prologue
    const/4 v2, 0x0

    .line 90
    sget-object v0, Lcom/sonyericsson/android/camera/controller/VideoDevice$2;->$SwitchMap$com$sonymobile$cameracommon$media$recorder$RecorderInterface$Result:[I

    invoke-virtual {p1}, Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 114
    :goto_0
    return-void

    .line 92
    :pswitch_0
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_VIDEO_FINISHED:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/sonyericsson/android/camera/controller/Executor;->postEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;ILjava/lang/Object;)V

    goto :goto_0

    .line 96
    :pswitch_1
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_DEVICE_ERROR:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    const/4 v1, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/Executor;->postEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;ILjava/lang/Object;)V

    goto :goto_0

    .line 101
    :pswitch_2
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_VIDEO_INFO:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    const/16 v1, 0x320

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/Executor;->postEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;ILjava/lang/Object;)V

    goto :goto_0

    .line 106
    :pswitch_3
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_VIDEO_INFO:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    const/16 v1, 0x321

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/Executor;->postEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;ILjava/lang/Object;)V

    goto :goto_0

    .line 90
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onRecordPaused(Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;)V
    .locals 3
    .param p1, "result"    # Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$Result;

    .prologue
    const/4 v2, 0x0

    .line 120
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_VIDEO_PAUSED:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/sonyericsson/android/camera/controller/Executor;->postEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;ILjava/lang/Object;)V

    .line 121
    return-void
.end method

.method public onRecordProgress(J)V
    .locals 3
    .param p1, "progressMs"    # J

    .prologue
    .line 76
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_VIDEO_PROGRESS:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    long-to-int v1, p1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/Executor;->postEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;ILjava/lang/Object;)V

    .line 77
    return-void
.end method
