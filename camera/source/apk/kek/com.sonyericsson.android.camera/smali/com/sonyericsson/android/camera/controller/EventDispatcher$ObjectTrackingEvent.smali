.class Lcom/sonyericsson/android/camera/controller/EventDispatcher$ObjectTrackingEvent;
.super Ljava/lang/Object;
.source "EventDispatcher.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/controller/EventDispatcher$ControllerEventSender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/EventDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ObjectTrackingEvent"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 887
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public send(Lcom/sonyericsson/android/camera/controller/EventAction;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "action"    # Lcom/sonyericsson/android/camera/controller/EventAction;
    .param p2, "source"    # Lcom/sonyericsson/android/camera/controller/ControllerEventSource;
    .param p3, "position"    # Landroid/graphics/Rect;

    .prologue
    .line 890
    sget-object v0, Lcom/sonyericsson/android/camera/controller/EventDispatcher$1;->$SwitchMap$com$sonyericsson$android$camera$controller$EventAction:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/EventAction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    .line 900
    :goto_0
    return-void

    .line 892
    :sswitch_0
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_OBJECT_TRACKING_START:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    const/4 v1, 0x0

    invoke-static {v0, p2, v1, p3}, Lcom/sonyericsson/android/camera/controller/Executor;->sendEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;ILjava/lang/Object;)V

    goto :goto_0

    .line 897
    :sswitch_1
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_OBJECT_TRACKING_LOST:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    invoke-static {v0, p2}, Lcom/sonyericsson/android/camera/controller/Executor;->sendEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V

    goto :goto_0

    .line 890
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method
