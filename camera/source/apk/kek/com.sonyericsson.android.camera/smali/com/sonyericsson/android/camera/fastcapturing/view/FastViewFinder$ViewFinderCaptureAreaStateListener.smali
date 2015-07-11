.class Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$ViewFinderCaptureAreaStateListener;
.super Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$ViewFinderTouchActionStateListener;
.source "FastViewFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewFinderCaptureAreaStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;I)V
    .locals 0
    .param p2, "cameraType"    # I

    .prologue
    .line 3206
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$ViewFinderCaptureAreaStateListener;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    .line 3207
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$ViewFinderTouchActionStateListener;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;I)V

    .line 3208
    return-void
.end method


# virtual methods
.method public onCaptureAreaLongPressed(Landroid/graphics/Point;)V
    .locals 5
    .param p1, "holdPoint"    # Landroid/graphics/Point;

    .prologue
    .line 3256
    sget-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;->FIRST:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$ViewFinderCaptureAreaStateListener;->setFocusPositionToDeviceAndViewFinder(Landroid/graphics/Point;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V

    .line 3259
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$ViewFinderCaptureAreaStateListener;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

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

    .line 3261
    return-void
.end method

.method public onCaptureAreaMoved(Landroid/graphics/Point;)V
    .locals 0
    .param p1, "movingPoint"    # Landroid/graphics/Point;

    .prologue
    .line 3266
    return-void
.end method

.method public onCaptureAreaReleased(Landroid/graphics/Point;)V
    .locals 5
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 3280
    iget v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$ViewFinderCaptureAreaStateListener;->mCameraType:I

    packed-switch v0, :pswitch_data_0

    .line 3304
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$ViewFinderCaptureAreaStateListener;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->access$600(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_CANCEL_TOUCH_ZOOM:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 3306
    return-void

    .line 3282
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$ViewFinderCaptureAreaStateListener;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->access$600(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_CAPTURE_BUTTON_RELEASE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TouchEventSource;->CAPTURE_AREA:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TouchEventSource;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_0

    .line 3292
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$ViewFinderCaptureAreaStateListener;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->access$600(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->isInModeLessRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3293
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$ViewFinderCaptureAreaStateListener;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->access$600(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_CAPTURE_BUTTON_RELEASE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TouchEventSource;->CAPTURE_AREA:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TouchEventSource;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_0

    .line 3297
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$ViewFinderCaptureAreaStateListener;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->access$600(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_CAMCORD_BUTTON_RELEASE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_0

    .line 3280
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCaptureAreaSingleTapUp(Landroid/graphics/Point;)V
    .locals 6
    .param p1, "tapUpPoint"    # Landroid/graphics/Point;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3232
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$ViewFinderCaptureAreaStateListener;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->convertTouchPointToDevicePreviewPositionRatio(Landroid/graphics/Point;)Landroid/graphics/PointF;
    invoke-static {v1, p1}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->access$2600(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;Landroid/graphics/Point;)Landroid/graphics/PointF;

    move-result-object v0

    .line 3235
    .local v0, "positionRatio":Landroid/graphics/PointF;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$ViewFinderCaptureAreaStateListener;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->access$600(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_START_AF_AFTER_OBJECT_TRACKED:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 3240
    iget v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$ViewFinderCaptureAreaStateListener;->mCameraType:I

    packed-switch v1, :pswitch_data_0

    .line 3251
    :goto_0
    return-void

    .line 3242
    :pswitch_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$ViewFinderCaptureAreaStateListener;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->access$600(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_CAPTURE_BUTTON_RELEASE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    new-array v3, v4, [Ljava/lang/Object;

    sget-object v4, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TouchEventSource;->CAPTURE_AREA:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TouchEventSource;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_0

    .line 3240
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCaptureAreaStopped()V
    .locals 5

    .prologue
    .line 3270
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$ViewFinderCaptureAreaStateListener;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mTouchCapture:Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->access$2700(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;->ON:Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3272
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$ViewFinderCaptureAreaStateListener;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

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

    .line 3275
    :cond_0
    return-void
.end method

.method public onCaptureAreaTouched(Landroid/graphics/Point;)V
    .locals 2
    .param p1, "touchPoint"    # Landroid/graphics/Point;

    .prologue
    .line 3213
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$ViewFinderCaptureAreaStateListener;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->hideBalloonTips()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->access$2100(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)V

    .line 3215
    iget v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$ViewFinderCaptureAreaStateListener;->mCameraType:I

    packed-switch v0, :pswitch_data_0

    .line 3227
    :goto_0
    :pswitch_0
    return-void

    .line 3220
    :pswitch_1
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$FocusMode:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$ViewFinderCaptureAreaStateListener;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mVideoFocusMode:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->access$2500(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 3223
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$ViewFinderCaptureAreaStateListener;->setSelectedObjectPositionToDeviceAndViewFinder(Landroid/graphics/Point;)V

    goto :goto_0

    .line 3215
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 3220
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method
