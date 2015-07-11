.class Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown;
.super Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateStandby;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateSelfTimerCountdown"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown$CountdownFinishEvent;,
        Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown$LedLightImpl;
    }
.end annotation


# instance fields
.field private final mCountdownFinishEvent:Ljava/lang/Runnable;

.field private mFeedback:Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;

.field private final mLedLight:Lcom/sonyericsson/cameracommon/selftimerfeedback/LedLight;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1689
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateStandby;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    .line 1690
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_PHOTO_SELFTIMER_COUNTDOWN:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown;->mCaptureState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    .line 1691
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown$LedLightImpl;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown$LedLightImpl;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown;->mLedLight:Lcom/sonyericsson/cameracommon/selftimerfeedback/LedLight;

    .line 1692
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown$CountdownFinishEvent;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown$CountdownFinishEvent;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown;->mCountdownFinishEvent:Ljava/lang/Runnable;

    .line 1693
    return-void
.end method

.method static synthetic access$3200(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown;

    .prologue
    .line 1682
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown;->recoverFlash()V

    return-void
.end method

.method private recoverFlash()V
    .locals 1

    .prologue
    .line 1705
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->resumePhotoLight()V

    .line 1706
    return-void
.end method

.method private startSelfTimer(Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;)V
    .locals 4
    .param p1, "selfTimer"    # Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    .prologue
    .line 1696
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$700(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown;->mCountdownFinishEvent:Ljava/lang/Runnable;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->getDurationInMillisecond()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1697
    new-instance v0, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->getDurationInMillisecond()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown;->mLedLight:Lcom/sonyericsson/cameracommon/selftimerfeedback/LedLight;

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;-><init>(ILcom/sonyericsson/cameracommon/selftimerfeedback/LedLight;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown;->mFeedback:Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;

    .line 1698
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown;->mFeedback:Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;->start(I)V

    .line 1699
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->isShutterSoundOff()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1700
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->playSound(Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;)V

    .line 1702
    :cond_0
    return-void
.end method


# virtual methods
.method public entry()V
    .locals 1

    .prologue
    .line 1710
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->getPhotoSelfTimerSetting()Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown;->startSelfTimer(Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;)V

    .line 1711
    return-void
.end method

.method public exit()V
    .locals 3

    .prologue
    .line 1715
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->stopPlaySound()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$3100(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    .line 1716
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown;->mFeedback:Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;->stop()V

    .line 1717
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$700(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown;->mCountdownFinishEvent:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1718
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_ON_SELFTIMER_FINISHED:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 1719
    return-void
.end method

.method public varargs handleCaptureButtonCancel([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 1749
    return-void
.end method

.method public varargs handleCaptureButtonRelease([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 1754
    return-void
.end method

.method public varargs handleCaptureButtonTouch([Ljava/lang/Object;)V
    .locals 5
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 1740
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown;->recoverFlash()V

    .line 1741
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->startAutoFocus()Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$1300(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1742
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    new-instance v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfSearchInTouch;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    aget-object v0, p1, v4

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {v2, v3, v4, v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfSearchInTouch;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;ZZ)V

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v1, v2, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    .line 1744
    :cond_0
    return-void
.end method

.method public varargs handleKeyBack([Ljava/lang/Object;)V
    .locals 4
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 1773
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown;->recoverFlash()V

    .line 1774
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateStandby;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateStandby;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Z)V

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    .line 1775
    return-void
.end method

.method public varargs handleKeyCaptureDown([Ljava/lang/Object;)V
    .locals 5
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 1731
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown;->recoverFlash()V

    .line 1732
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->startAutoFocus()Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$1300(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1733
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureWaitForAfDone;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v4, v3}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureWaitForAfDone;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;ZZ)V

    new-array v2, v4, [Ljava/lang/Object;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    .line 1735
    :cond_0
    return-void
.end method

.method public varargs handleKeyFocusDown([Ljava/lang/Object;)V
    .locals 3
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 1723
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown;->recoverFlash()V

    .line 1724
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->startAutoFocus()Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$1300(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1725
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfSearch;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfSearch;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    .line 1727
    :cond_0
    return-void
.end method

.method public varargs handleKeyZoomInDown([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 1764
    return-void
.end method

.method public varargs handleKeyZoomOutDown([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 1769
    return-void
.end method

.method public varargs handlePause([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 1779
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown;->recoverFlash()V

    .line 1780
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateStandby;->handlePause([Ljava/lang/Object;)V

    .line 1781
    return-void
.end method

.method public varargs handleSetFocusPosition([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 1792
    return-void
.end method

.method public varargs handleStorageError([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 1785
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown;->recoverFlash()V

    .line 1786
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateStandby;->handleStorageError([Ljava/lang/Object;)V

    .line 1787
    return-void
.end method

.method public varargs handleSubCamcordButtonRelease([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 1759
    return-void
.end method
