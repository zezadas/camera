.class Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfSearchInTouch;
.super Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoBase;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StatePhotoAfSearchInTouch"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StateMachine.StatePhotoAfSearchInTouch"


# instance fields
.field private mIsAutoFocusAlreadyCanceled:Z

.field private mIsPreparePinchZoomAlreadyTimedout:Z

.field private mIsUseBurst:Z

.field final synthetic this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;ZZ)V
    .locals 4
    .param p2, "isAutoFocusAlreadyCanceled"    # Z
    .param p3, "isUseBurst"    # Z

    .prologue
    const/4 v0, 0x0

    .line 2113
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfSearchInTouch;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoBase;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    .line 2106
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfSearchInTouch;->mIsPreparePinchZoomAlreadyTimedout:Z

    .line 2109
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfSearchInTouch;->mIsUseBurst:Z

    .line 2114
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_PHOTO_AF_SEARCH_IN_TOUCH:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfSearchInTouch;->mCaptureState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    .line 2116
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfSearchInTouch;->mIsAutoFocusAlreadyCanceled:Z

    .line 2118
    iput-boolean p3, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfSearchInTouch;->mIsUseBurst:Z

    .line 2121
    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$700(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfSearchInTouch$1;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfSearchInTouch$1;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfSearchInTouch;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2127
    return-void
.end method


# virtual methods
.method public varargs handleCaptureButtonCancel([Ljava/lang/Object;)V
    .locals 4
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 2167
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfSearchInTouch;->mIsAutoFocusAlreadyCanceled:Z

    if-nez v0, :cond_0

    .line 2168
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfSearchInTouch;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    const/4 v1, 0x0

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->cancelAutoFocus(Z)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$000(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Z)V

    .line 2169
    iput-boolean v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfSearchInTouch;->mIsAutoFocusAlreadyCanceled:Z

    .line 2172
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfSearchInTouch;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateStandby;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfSearchInTouch;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateStandby;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Z)V

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    .line 2173
    return-void
.end method

.method public varargs handleCaptureButtonLongPress([Ljava/lang/Object;)V
    .locals 1
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 2131
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfSearchInTouch;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getBurstShotSetting()Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;->isBurstShotOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfSearchInTouch;->mIsUseBurst:Z

    .line 2135
    :cond_0
    return-void
.end method

.method public varargs handleCaptureButtonRelease([Ljava/lang/Object;)V
    .locals 4
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 2225
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfSearchInTouch;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureWaitForAfDone;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfSearchInTouch;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {v1, v2, v3, v3}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureWaitForAfDone;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;ZZ)V

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    .line 2228
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfSearchInTouch;->mIsAutoFocusAlreadyCanceled:Z

    if-eqz v0, :cond_0

    .line 2229
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfSearchInTouch;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->startAutoFocus()Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$1300(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)Z

    .line 2230
    iput-boolean v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfSearchInTouch;->mIsAutoFocusAlreadyCanceled:Z

    .line 2232
    :cond_0
    return-void
.end method

.method public varargs handleOnAutoFocusDone([Ljava/lang/Object;)V
    .locals 6
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2144
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfSearchInTouch;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    aget-object v0, p1, v4

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->requestPlayAutoFocusSuccessSound(Z)V
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$3500(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Z)V

    .line 2146
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfSearchInTouch;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfDoneInTouch;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfSearchInTouch;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfDoneInTouch;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    .line 2149
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfSearchInTouch;->mIsUseBurst:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfSearchInTouch;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->isBurstShotEnabled()Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$3600(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2150
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$5;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$BurstShot:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfSearchInTouch;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getBurstShotSetting()Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2163
    :cond_0
    :goto_0
    return-void

    .line 2152
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfSearchInTouch;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureBestEffortBurst;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfSearchInTouch;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {v1, v2, v4, v4}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureBestEffortBurst;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;ZZ)V

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    .line 2153
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfSearchInTouch;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->doCaptureBestEffortBurst(Z)V
    invoke-static {v0, v5}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$3700(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Z)V

    goto :goto_0

    .line 2157
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfSearchInTouch;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureHighSpeedBurst;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfSearchInTouch;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {v1, v2, v4, v4}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureHighSpeedBurst;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;ZZ)V

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->doStartHighSpeedBurst(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;Z)V
    invoke-static {v0, v1, v5}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$3800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;Z)V

    goto :goto_0

    .line 2150
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public varargs handleOnPrepareTouchZoomTimedOut([Ljava/lang/Object;)V
    .locals 1
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 2220
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfSearchInTouch;->mIsPreparePinchZoomAlreadyTimedout:Z

    .line 2221
    return-void
.end method

.method public varargs handlePause([Ljava/lang/Object;)V
    .locals 3
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    .line 2236
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfSearchInTouch;->mIsAutoFocusAlreadyCanceled:Z

    if-nez v0, :cond_0

    .line 2237
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfSearchInTouch;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->cancelAutoFocus(Z)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$000(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Z)V

    .line 2238
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfSearchInTouch;->mIsAutoFocusAlreadyCanceled:Z

    .line 2241
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfSearchInTouch;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePause;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfSearchInTouch;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePause;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    .line 2242
    return-void
.end method

.method public varargs handlePrepareTouchZoom([Ljava/lang/Object;)V
    .locals 3
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    .line 2199
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfSearchInTouch;->mIsPreparePinchZoomAlreadyTimedout:Z

    if-eqz v0, :cond_1

    .line 2215
    :cond_0
    :goto_0
    return-void

    .line 2204
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfSearchInTouch;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->isSmoothZoomEnabled()Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$1600(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2205
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfSearchInTouch;->mIsAutoFocusAlreadyCanceled:Z

    if-nez v0, :cond_2

    .line 2206
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfSearchInTouch;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->cancelAutoFocus(Z)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$000(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Z)V

    .line 2207
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfSearchInTouch;->mIsAutoFocusAlreadyCanceled:Z

    .line 2210
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfSearchInTouch;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoZoomingInTouch;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfSearchInTouch;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoZoomingInTouch;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public varargs handleScreenClear([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 2177
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfSearchInTouch;->handleCaptureButtonCancel([Ljava/lang/Object;)V

    .line 2178
    return-void
.end method

.method public varargs handleSetFocusPosition([Ljava/lang/Object;)V
    .locals 7
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2253
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfSearchInTouch;->mIsAutoFocusAlreadyCanceled:Z

    if-eqz v0, :cond_0

    .line 2254
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfSearchInTouch;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v1, v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    aget-object v0, p1, v5

    check-cast v0, Landroid/graphics/PointF;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->setFocusPosition(Landroid/graphics/PointF;)V

    .line 2258
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfSearchInTouch;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_ON_FOCUS_POSITION_SELECTED:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    new-array v2, v6, [Ljava/lang/Object;

    aget-object v3, p1, v4

    aput-object v3, v2, v4

    aget-object v3, p1, v6

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 2261
    return-void
.end method

.method public varargs handleStartAfSearchInTouch([Ljava/lang/Object;)V
    .locals 3
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 2182
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfSearchInTouch;->mIsAutoFocusAlreadyCanceled:Z

    if-nez v0, :cond_0

    .line 2183
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfSearchInTouch;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    const/4 v1, 0x0

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->cancelAutoFocus(Z)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$000(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Z)V

    .line 2184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfSearchInTouch;->mIsAutoFocusAlreadyCanceled:Z

    .line 2186
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfSearchInTouch;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfSearchInTouchDraggingFocusPosition;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfSearchInTouch;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfSearchInTouchDraggingFocusPosition;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    .line 2187
    return-void
.end method

.method public varargs handleStartAfSearchInTouchStop([Ljava/lang/Object;)V
    .locals 1
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 2191
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfSearchInTouch;->mIsAutoFocusAlreadyCanceled:Z

    if-eqz v0, :cond_0

    .line 2192
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfSearchInTouch;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->startAutoFocus()Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$1300(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)Z

    .line 2193
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfSearchInTouch;->mIsAutoFocusAlreadyCanceled:Z

    .line 2195
    :cond_0
    return-void
.end method
