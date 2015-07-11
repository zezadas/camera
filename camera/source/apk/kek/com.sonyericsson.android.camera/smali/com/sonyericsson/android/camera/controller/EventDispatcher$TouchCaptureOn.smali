.class Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchCaptureOn;
.super Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchCapturing;
.source "EventDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/EventDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TouchCaptureOn"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/EventDispatcher;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/controller/EventDispatcher;)V
    .locals 0

    .prologue
    .line 827
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchCaptureOn;->this$0:Lcom/sonyericsson/android/camera/controller/EventDispatcher;

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchCapturing;-><init>(Lcom/sonyericsson/android/camera/controller/EventDispatcher;)V

    return-void
.end method


# virtual methods
.method public capture(Lcom/sonyericsson/android/camera/controller/EventAction;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V
    .locals 1
    .param p1, "action"    # Lcom/sonyericsson/android/camera/controller/EventAction;
    .param p2, "source"    # Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    .prologue
    .line 830
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchCaptureOn;->this$0:Lcom/sonyericsson/android/camera/controller/EventDispatcher;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->sendCaptureEvent(Lcom/sonyericsson/android/camera/controller/EventAction;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V

    .line 831
    return-void
.end method

.method public consumeTouchEvent()Z
    .locals 1

    .prologue
    .line 841
    const/4 v0, 0x1

    return v0
.end method

.method public sendEventWithPosition(Lcom/sonyericsson/android/camera/controller/EventAction;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "action"    # Lcom/sonyericsson/android/camera/controller/EventAction;
    .param p2, "source"    # Lcom/sonyericsson/android/camera/controller/ControllerEventSource;
    .param p3, "position"    # Landroid/graphics/Rect;

    .prologue
    .line 836
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchCaptureOn;->this$0:Lcom/sonyericsson/android/camera/controller/EventDispatcher;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchCaptureOn;->mSender:Lcom/sonyericsson/android/camera/controller/EventDispatcher$ControllerEventSender;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->sendCaptureEventWithPosition(Lcom/sonyericsson/android/camera/controller/EventAction;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;Landroid/graphics/Rect;Lcom/sonyericsson/android/camera/controller/EventDispatcher$ControllerEventSender;)V

    .line 837
    return-void
.end method
