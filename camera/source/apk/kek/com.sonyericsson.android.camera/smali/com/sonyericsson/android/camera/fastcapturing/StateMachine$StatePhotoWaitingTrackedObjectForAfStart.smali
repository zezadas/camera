.class Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;
.super Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StatePhotoWaitingTrackedObjectForAfStart"
.end annotation


# instance fields
.field mIsAutoFocusStarted:Z

.field mIsFirstCallback:Z

.field mIsImmediateCaptureRequired:Z

.field final synthetic this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1984
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    .line 1979
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->mIsAutoFocusStarted:Z

    .line 1980
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->mIsImmediateCaptureRequired:Z

    .line 1981
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->mIsFirstCallback:Z

    .line 1985
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_PHOTO_WAITING_TRACKED_OBJECT_FOR_AF_START:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->mCaptureState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    .line 1986
    return-void
.end method


# virtual methods
.method public varargs handleCaptureButtonCancel([Ljava/lang/Object;)V
    .locals 4
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 2036
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->mIsAutoFocusStarted:Z

    if-eqz v0, :cond_0

    .line 2037
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->cancelAutoFocus(Z)V
    invoke-static {v0, v3}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$000(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Z)V

    .line 2039
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateStandby;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateStandby;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Z)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    .line 2040
    return-void
.end method

.method public varargs handleCaptureButtonRelease([Ljava/lang/Object;)V
    .locals 1
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 2049
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->mIsImmediateCaptureRequired:Z

    .line 2050
    return-void
.end method

.method public varargs handleOnObjectTracked([Ljava/lang/Object;)V
    .locals 7
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1993
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    sget-object v2, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_ON_TRACKED_OBJECT_STATE_UPDATED:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    new-array v3, v6, [Ljava/lang/Object;

    aget-object v4, p1, v5

    aput-object v4, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 1997
    aget-object v0, p1, v5

    check-cast v0, Lcom/sonyericsson/cameraextension/CameraExtension$ObjectTrackingResult;

    .line 1998
    .local v0, "result":Lcom/sonyericsson/cameraextension/CameraExtension$ObjectTrackingResult;
    iget-boolean v1, v0, Lcom/sonyericsson/cameraextension/CameraExtension$ObjectTrackingResult;->mIsLost:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->mIsFirstCallback:Z

    if-eqz v1, :cond_1

    .line 1999
    :cond_0
    iput-boolean v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->mIsFirstCallback:Z

    .line 2012
    :goto_0
    return-void

    .line 2004
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->startAutoFocus()Z
    invoke-static {v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$1300(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)Z

    .line 2005
    iput-boolean v6, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->mIsAutoFocusStarted:Z

    .line 2007
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->mIsImmediateCaptureRequired:Z

    if-eqz v1, :cond_2

    .line 2008
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    new-instance v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureWaitForAfDone;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {v2, v3, v5, v5}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureWaitForAfDone;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;ZZ)V

    new-array v3, v5, [Ljava/lang/Object;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v1, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2010
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    new-instance v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfSearchInTouch;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {v2, v3, v5, v5}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfSearchInTouch;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;ZZ)V

    new-array v3, v5, [Ljava/lang/Object;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v1, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public varargs handlePause([Ljava/lang/Object;)V
    .locals 3
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 2054
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->mIsAutoFocusStarted:Z

    if-eqz v0, :cond_0

    .line 2055
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    const/4 v1, 0x1

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->cancelAutoFocus(Z)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$000(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Z)V

    .line 2057
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePause;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePause;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    .line 2058
    return-void
.end method

.method public varargs handleScreenClear([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 2044
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->handleCaptureButtonCancel([Ljava/lang/Object;)V

    .line 2045
    return-void
.end method

.method public varargs handleStartAfAfterObjectTracked([Ljava/lang/Object;)V
    .locals 3
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 2016
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->mIsAutoFocusStarted:Z

    if-eqz v1, :cond_0

    .line 2032
    :goto_0
    return-void

    .line 2023
    :cond_0
    const/4 v1, 0x1

    aget-object v0, p1, v1

    check-cast v0, Landroid/graphics/PointF;

    .line 2026
    .local v0, "pointF":Landroid/graphics/PointF;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->doDeselectObject()V
    invoke-static {v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$2400(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    .line 2027
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->doSelectObject(Landroid/graphics/PointF;)V
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$2300(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Landroid/graphics/PointF;)V

    .line 2030
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->mIsAutoFocusStarted:Z

    .line 2031
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;->mIsImmediateCaptureRequired:Z

    goto :goto_0
.end method
