.class abstract Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchCapturing;
.super Ljava/lang/Object;
.source "EventDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/EventDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "TouchCapturing"
.end annotation


# instance fields
.field public mSender:Lcom/sonyericsson/android/camera/controller/EventDispatcher$ControllerEventSender;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/EventDispatcher;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/controller/EventDispatcher;)V
    .locals 1

    .prologue
    .line 802
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchCapturing;->this$0:Lcom/sonyericsson/android/camera/controller/EventDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 803
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchCapturing;->this$0:Lcom/sonyericsson/android/camera/controller/EventDispatcher;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mNoEvent:Lcom/sonyericsson/android/camera/controller/EventDispatcher$ControllerEventSender;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchCapturing;->mSender:Lcom/sonyericsson/android/camera/controller/EventDispatcher$ControllerEventSender;

    return-void
.end method


# virtual methods
.method public capture(Lcom/sonyericsson/android/camera/controller/EventAction;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V
    .locals 0
    .param p1, "action"    # Lcom/sonyericsson/android/camera/controller/EventAction;
    .param p2, "source"    # Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    .prologue
    .line 807
    return-void
.end method

.method public consumeTouchEvent()Z
    .locals 1

    .prologue
    .line 820
    const/4 v0, 0x0

    return v0
.end method

.method public sendEventWithPosition(Lcom/sonyericsson/android/camera/controller/EventAction;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "action"    # Lcom/sonyericsson/android/camera/controller/EventAction;
    .param p2, "source"    # Lcom/sonyericsson/android/camera/controller/ControllerEventSource;
    .param p3, "position"    # Landroid/graphics/Rect;

    .prologue
    .line 811
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchCapturing;->this$0:Lcom/sonyericsson/android/camera/controller/EventDispatcher;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->isSelfTimerRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 817
    :goto_0
    return-void

    .line 816
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchCapturing;->mSender:Lcom/sonyericsson/android/camera/controller/EventDispatcher$ControllerEventSender;

    invoke-interface {v0, p1, p2, p3}, Lcom/sonyericsson/android/camera/controller/EventDispatcher$ControllerEventSender;->send(Lcom/sonyericsson/android/camera/controller/EventAction;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;Landroid/graphics/Rect;)V

    goto :goto_0
.end method
