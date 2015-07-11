.class Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$ViewFinderCaptureAreaNonObjectTrackingStateListener;
.super Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$ViewFinderCaptureAreaStateListener;
.source "FastViewFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewFinderCaptureAreaNonObjectTrackingStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;I)V
    .locals 0
    .param p2, "cameraType"    # I

    .prologue
    .line 3312
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$ViewFinderCaptureAreaNonObjectTrackingStateListener;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    .line 3313
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$ViewFinderCaptureAreaStateListener;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;I)V

    .line 3314
    return-void
.end method


# virtual methods
.method public onCaptureAreaMoved(Landroid/graphics/Point;)V
    .locals 3
    .param p1, "movingPoint"    # Landroid/graphics/Point;

    .prologue
    .line 3332
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$ViewFinderCaptureAreaNonObjectTrackingStateListener;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->access$600(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_START_AF_SEARCH_IN_TOUCH:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 3336
    sget-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;->MOVE:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$ViewFinderCaptureAreaNonObjectTrackingStateListener;->setFocusPositionToDeviceAndViewFinder(Landroid/graphics/Point;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V

    .line 3337
    return-void
.end method

.method public onCaptureAreaTouched(Landroid/graphics/Point;)V
    .locals 5
    .param p1, "touchPoint"    # Landroid/graphics/Point;

    .prologue
    .line 3319
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$ViewFinderCaptureAreaNonObjectTrackingStateListener;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->hideBalloonTips()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->access$2100(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)V

    .line 3322
    sget-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;->FIRST:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$ViewFinderCaptureAreaNonObjectTrackingStateListener;->setFocusPositionToDeviceAndViewFinder(Landroid/graphics/Point;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V

    .line 3325
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$ViewFinderCaptureAreaNonObjectTrackingStateListener;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->access$600(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_CAPTURE_BUTTON_TOUCH:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 3327
    return-void
.end method
