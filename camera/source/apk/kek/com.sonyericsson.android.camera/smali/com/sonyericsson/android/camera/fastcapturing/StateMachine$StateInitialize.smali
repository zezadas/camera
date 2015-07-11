.class Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateInitialize;
.super Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateInitialize"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V
    .locals 2

    .prologue
    .line 1015
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateInitialize;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    .line 1016
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_INITIALIZE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateInitialize;->mCaptureState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    .line 1019
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$5;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$CameraDeviceHandler$PreProcessState:[I

    iget-object v1, p1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getPreProcessState()Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1025
    :goto_0
    return-void

    .line 1022
    :pswitch_0
    iget-object v0, p1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->preCapture()V

    goto :goto_0

    .line 1019
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
    .line 1041
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateInitialize;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->preCapture()V

    .line 1042
    return-void
.end method

.method public varargs handleOnPreShutterDone([Ljava/lang/Object;)V
    .locals 4
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 1048
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$NotifyDelayedEventTask;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateInitialize;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    sget-object v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_ON_PRE_SHUTTER_DONE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$NotifyDelayedEventTask;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$1;)V

    .line 1052
    .local v0, "task":Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$NotifyDelayedEventTask;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateInitialize;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$700(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1053
    return-void
.end method

.method public varargs handleOnPreTakePictureDone([Ljava/lang/Object;)V
    .locals 4
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 1059
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$NotifyDelayedEventTask;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateInitialize;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    sget-object v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_ON_PRE_TAKE_PICTURE_DONE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$NotifyDelayedEventTask;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$1;)V

    .line 1063
    .local v0, "task":Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$NotifyDelayedEventTask;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateInitialize;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$700(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1064
    return-void
.end method

.method public varargs handlePause([Ljava/lang/Object;)V
    .locals 3
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateInitialize;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePause;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateInitialize;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePause;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    .line 1069
    return-void
.end method

.method public varargs handleResume([Ljava/lang/Object;)V
    .locals 4
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 1032
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateInitialize;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    new-instance v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateResume;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateInitialize;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    invoke-direct {v2, v3, v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateResume;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;)V

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v1, v2, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    .line 1034
    return-void
.end method
