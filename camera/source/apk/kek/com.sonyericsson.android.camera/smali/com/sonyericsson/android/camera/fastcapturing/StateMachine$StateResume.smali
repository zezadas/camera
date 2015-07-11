.class Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateResume;
.super Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateCameraSwitching;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateResume"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;)V
    .locals 4
    .param p2, "fastCap"    # Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    .prologue
    .line 1154
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateResume;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    .line 1155
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateCameraSwitching;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;)V

    .line 1156
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_RESUME:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateResume;->mCaptureState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    .line 1159
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$5;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$CameraDeviceHandler$PreProcessState:[I

    iget-object v1, p1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getPreProcessState()Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1166
    :goto_0
    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$700(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)Landroid/os/Handler;

    move-result-object v0

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mNotifyResumeTimeoutTask:Ljava/lang/Runnable;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$1000(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1167
    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$700(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)Landroid/os/Handler;

    move-result-object v0

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mNotifyResumeTimeoutTask:Ljava/lang/Runnable;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$1000(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1168
    return-void

    .line 1162
    :pswitch_0
    iget-object v0, p1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->preCapture()V

    goto :goto_0

    .line 1159
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public varargs handleOnInitialAutoFocusDone([Ljava/lang/Object;)V
    .locals 1
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateResume;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->preCapture()V

    .line 1176
    return-void
.end method

.method public varargs handleOnPreShutterDone([Ljava/lang/Object;)V
    .locals 4
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 1182
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$NotifyDelayedEventTask;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateResume;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    sget-object v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_ON_PRE_SHUTTER_DONE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$NotifyDelayedEventTask;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$1;)V

    .line 1186
    .local v0, "task":Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$NotifyDelayedEventTask;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateResume;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$700(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1187
    return-void
.end method

.method public varargs handleOnPreTakePictureDone([Ljava/lang/Object;)V
    .locals 4
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 1193
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$NotifyDelayedEventTask;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateResume;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    sget-object v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_ON_PRE_TAKE_PICTURE_DONE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$NotifyDelayedEventTask;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$1;)V

    .line 1197
    .local v0, "task":Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$NotifyDelayedEventTask;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateResume;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$700(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1198
    return-void
.end method
