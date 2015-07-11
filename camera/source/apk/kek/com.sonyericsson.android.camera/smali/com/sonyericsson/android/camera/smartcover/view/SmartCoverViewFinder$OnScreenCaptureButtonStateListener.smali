.class Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$OnScreenCaptureButtonStateListener;
.super Ljava/lang/Object;
.source "SmartCoverViewFinder.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnScreenCaptureButtonStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;)V
    .locals 0

    .prologue
    .line 979
    iput-object p1, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$OnScreenCaptureButtonStateListener;->this$0:Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;
    .param p2, "x1"    # Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$1;

    .prologue
    .line 979
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$OnScreenCaptureButtonStateListener;-><init>(Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;)V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "sender"    # Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$OnScreenCaptureButtonStateListener;->this$0:Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;

    # getter for: Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->access$100(Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;)Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1004
    iget-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$OnScreenCaptureButtonStateListener;->this$0:Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;

    # getter for: Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->access$100(Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;)Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_CAPTURE_BUTTON_CANCEL:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1006
    :cond_0
    return-void
.end method

.method public onDispatchDraw(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "sender"    # Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1012
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->STARTUP_TIME:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V

    .line 1013
    return-void
.end method

.method public onDown(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "sender"    # Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 984
    iget-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$OnScreenCaptureButtonStateListener;->this$0:Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;

    # getter for: Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->access$100(Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;)Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_CAPTURE_BUTTON_TOUCH:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 986
    return-void
.end method

.method public onMove(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "sender"    # Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 998
    return-void
.end method

.method public onUp(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "sender"    # Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 991
    iget-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$OnScreenCaptureButtonStateListener;->this$0:Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;

    # getter for: Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->access$100(Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;)Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_CAPTURE_BUTTON_RELEASE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TouchEventSource;->PHOTO_BUTTON:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TouchEventSource;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 993
    return-void
.end method
