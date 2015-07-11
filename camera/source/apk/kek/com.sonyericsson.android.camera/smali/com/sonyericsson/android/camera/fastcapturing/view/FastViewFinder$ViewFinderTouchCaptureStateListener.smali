.class Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$ViewFinderTouchCaptureStateListener;
.super Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$ViewFinderStateListener;
.source "FastViewFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewFinderTouchCaptureStateListener"
.end annotation


# instance fields
.field protected final mCameraType:I

.field final synthetic this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;I)V
    .locals 0
    .param p2, "cameraType"    # I

    .prologue
    .line 3019
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$ViewFinderTouchCaptureStateListener;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$ViewFinderStateListener;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)V

    .line 3020
    iput p2, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$ViewFinderTouchCaptureStateListener;->mCameraType:I

    .line 3021
    return-void
.end method


# virtual methods
.method public onCaptureAreaLongPressed(Landroid/graphics/Point;)V
    .locals 5
    .param p1, "holdPoint"    # Landroid/graphics/Point;

    .prologue
    .line 3036
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$ViewFinderTouchCaptureStateListener;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

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

    .line 3038
    return-void
.end method

.method public onCaptureAreaReleased(Landroid/graphics/Point;)V
    .locals 5
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 3043
    iget v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$ViewFinderTouchCaptureStateListener;->mCameraType:I

    packed-switch v0, :pswitch_data_0

    .line 3061
    :goto_0
    return-void

    .line 3045
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$ViewFinderTouchCaptureStateListener;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->access$600(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_CAPTURE_BUTTON_RELEASE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TouchEventSource;->CAPTURE_AREA:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TouchEventSource;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_0

    .line 3051
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$ViewFinderTouchCaptureStateListener;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->access$600(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->isInModeLessRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3052
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$ViewFinderTouchCaptureStateListener;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->access$600(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_CAPTURE_BUTTON_RELEASE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TouchEventSource;->CAPTURE_AREA:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TouchEventSource;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_0

    .line 3056
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$ViewFinderTouchCaptureStateListener;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->access$600(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_CAMCORD_BUTTON_RELEASE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_0

    .line 3043
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCaptureAreaTouched(Landroid/graphics/Point;)V
    .locals 5
    .param p1, "touchPoint"    # Landroid/graphics/Point;

    .prologue
    .line 3026
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$ViewFinderTouchCaptureStateListener;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->hideBalloonTips()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->access$2100(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)V

    .line 3029
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$ViewFinderTouchCaptureStateListener;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

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

    .line 3031
    return-void
.end method
