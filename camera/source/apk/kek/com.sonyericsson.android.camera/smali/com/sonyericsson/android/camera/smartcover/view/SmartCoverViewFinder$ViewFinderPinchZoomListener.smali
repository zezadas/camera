.class Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$ViewFinderPinchZoomListener;
.super Ljava/lang/Object;
.source "SmartCoverViewFinder.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/fastcapturing/view/CaptureArea$CaptureAreaStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewFinderPinchZoomListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;I)V
    .locals 0
    .param p2, "cameraType"    # I

    .prologue
    .line 1020
    iput-object p1, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$ViewFinderPinchZoomListener;->this$0:Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1022
    return-void
.end method


# virtual methods
.method public onCaptureAreaCanceled()V
    .locals 3

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$ViewFinderPinchZoomListener;->this$0:Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;

    # getter for: Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->access$100(Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;)Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1058
    iget-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$ViewFinderPinchZoomListener;->this$0:Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;

    # getter for: Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->access$100(Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;)Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_CANCEL_TOUCH_ZOOM:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1061
    :cond_0
    return-void
.end method

.method public onCaptureAreaIsReadyToScale()V
    .locals 3

    .prologue
    .line 1066
    iget-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$ViewFinderPinchZoomListener;->this$0:Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;

    # getter for: Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->access$100(Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;)Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_PREPARE_TOUCH_ZOOM:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1068
    return-void
.end method

.method public onCaptureAreaLongPressed(Landroid/graphics/Point;)V
    .locals 0
    .param p1, "holdPoint"    # Landroid/graphics/Point;

    .prologue
    .line 1037
    return-void
.end method

.method public onCaptureAreaMoved(Landroid/graphics/Point;)V
    .locals 0
    .param p1, "movingPoint"    # Landroid/graphics/Point;

    .prologue
    .line 1042
    return-void
.end method

.method public onCaptureAreaReleased(Landroid/graphics/Point;)V
    .locals 3
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$ViewFinderPinchZoomListener;->this$0:Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;

    # getter for: Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->access$100(Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;)Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_CANCEL_TOUCH_ZOOM:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1053
    return-void
.end method

.method public onCaptureAreaScaled(F)V
    .locals 5
    .param p1, "scaleLength"    # F

    .prologue
    const/4 v4, 0x0

    .line 1073
    iget-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$ViewFinderPinchZoomListener;->this$0:Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;

    # getter for: Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->access$100(Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;)Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_START_TOUCH_ZOOM:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1076
    iget-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$ViewFinderPinchZoomListener;->this$0:Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;

    # getter for: Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->access$100(Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;)Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_STOP_TOUCH_ZOOM:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1077
    return-void
.end method

.method public onCaptureAreaSingleTapUp(Landroid/graphics/Point;)V
    .locals 0
    .param p1, "tapUpPoint"    # Landroid/graphics/Point;

    .prologue
    .line 1032
    return-void
.end method

.method public onCaptureAreaStopped()V
    .locals 0

    .prologue
    .line 1047
    return-void
.end method

.method public onCaptureAreaTouched(Landroid/graphics/Point;)V
    .locals 0
    .param p1, "touchPoint"    # Landroid/graphics/Point;

    .prologue
    .line 1027
    return-void
.end method
