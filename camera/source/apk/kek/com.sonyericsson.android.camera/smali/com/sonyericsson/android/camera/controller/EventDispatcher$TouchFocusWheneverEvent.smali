.class Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchFocusWheneverEvent;
.super Ljava/lang/Object;
.source "EventDispatcher.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/controller/EventDispatcher$ControllerEventSender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/EventDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TouchFocusWheneverEvent"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/EventDispatcher;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/controller/EventDispatcher;)V
    .locals 0

    .prologue
    .line 903
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchFocusWheneverEvent;->this$0:Lcom/sonyericsson/android/camera/controller/EventDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public send(Lcom/sonyericsson/android/camera/controller/EventAction;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "action"    # Lcom/sonyericsson/android/camera/controller/EventAction;
    .param p2, "source"    # Lcom/sonyericsson/android/camera/controller/ControllerEventSource;
    .param p3, "position"    # Landroid/graphics/Rect;

    .prologue
    .line 907
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->TOUCH:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    if-ne p2, v0, :cond_0

    .line 908
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchFocusWheneverEvent;->this$0:Lcom/sonyericsson/android/camera/controller/EventDispatcher;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->mTouchFocus:Lcom/sonyericsson/android/camera/controller/EventDispatcher$ControllerEventSender;

    invoke-interface {v0, p1, p2, p3}, Lcom/sonyericsson/android/camera/controller/EventDispatcher$ControllerEventSender;->send(Lcom/sonyericsson/android/camera/controller/EventAction;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;Landroid/graphics/Rect;)V

    .line 910
    :cond_0
    return-void
.end method
