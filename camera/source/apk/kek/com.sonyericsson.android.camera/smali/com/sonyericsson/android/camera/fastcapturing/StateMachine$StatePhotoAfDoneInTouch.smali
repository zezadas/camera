.class Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfDoneInTouch;
.super Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoBase;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StatePhotoAfDoneInTouch"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V
    .locals 1

    .prologue
    .line 2427
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfDoneInTouch;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoBase;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    .line 2428
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_PHOTO_AF_DONE_IN_TOUCH:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfDoneInTouch;->mCaptureState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    .line 2429
    return-void
.end method


# virtual methods
.method public varargs handleCaptureButtonCancel([Ljava/lang/Object;)V
    .locals 4
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 2439
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfDoneInTouch;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    const/4 v1, 0x0

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->cancelAutoFocus(Z)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$000(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Z)V

    .line 2440
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfDoneInTouch;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateStandby;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfDoneInTouch;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateStandby;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Z)V

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    .line 2441
    return-void
.end method

.method public varargs handleCaptureButtonLongPress([Ljava/lang/Object;)V
    .locals 6
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2462
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfDoneInTouch;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->isBurstShotEnabled()Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$3600(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2479
    :goto_0
    return-void

    .line 2466
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$5;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$BurstShot:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfDoneInTouch;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getBurstShotSetting()Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2468
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfDoneInTouch;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureBestEffortBurst;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfDoneInTouch;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {v1, v2, v4, v4}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureBestEffortBurst;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;ZZ)V

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    .line 2469
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfDoneInTouch;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->doCaptureBestEffortBurst(Z)V
    invoke-static {v0, v5}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$3700(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Z)V

    goto :goto_0

    .line 2473
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfDoneInTouch;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureHighSpeedBurst;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfDoneInTouch;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {v1, v2, v4, v4}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureHighSpeedBurst;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;ZZ)V

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->doStartHighSpeedBurst(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;Z)V
    invoke-static {v0, v1, v5}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$3800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;Z)V

    goto :goto_0

    .line 2466
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public varargs handleCaptureButtonRelease([Ljava/lang/Object;)V
    .locals 3
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 2433
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfDoneInTouch;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->doCapture()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$4000(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    .line 2434
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfDoneInTouch;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCapture;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfDoneInTouch;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCapture;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    .line 2435
    return-void
.end method

.method public varargs handlePause([Ljava/lang/Object;)V
    .locals 3
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 2456
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfDoneInTouch;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    const/4 v1, 0x1

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->cancelAutoFocus(Z)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$000(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Z)V

    .line 2457
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfDoneInTouch;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePause;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfDoneInTouch;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePause;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    .line 2458
    return-void
.end method

.method public varargs handleScreenClear([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 2445
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfDoneInTouch;->handleCaptureButtonCancel([Ljava/lang/Object;)V

    .line 2446
    return-void
.end method

.method public varargs handleStartAfSearchInTouch([Ljava/lang/Object;)V
    .locals 4
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 2450
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfDoneInTouch;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    const/4 v1, 0x0

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->cancelAutoFocus(Z)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$000(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Z)V

    .line 2451
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfDoneInTouch;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfSearchInTouch;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfDoneInTouch;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {v1, v2, v3, v3}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfSearchInTouch;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;ZZ)V

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    .line 2452
    return-void
.end method
