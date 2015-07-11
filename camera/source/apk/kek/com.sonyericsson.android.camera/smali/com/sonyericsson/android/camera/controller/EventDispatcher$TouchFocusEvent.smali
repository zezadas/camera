.class Lcom/sonyericsson/android/camera/controller/EventDispatcher$TouchFocusEvent;
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
    name = "TouchFocusEvent"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 856
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public send(Lcom/sonyericsson/android/camera/controller/EventAction;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "action"    # Lcom/sonyericsson/android/camera/controller/EventAction;
    .param p2, "source"    # Lcom/sonyericsson/android/camera/controller/ControllerEventSource;
    .param p3, "position"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    .line 859
    sget-object v0, Lcom/sonyericsson/android/camera/controller/EventDispatcher$1;->$SwitchMap$com$sonyericsson$android$camera$controller$EventAction:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/EventAction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 884
    :goto_0
    return-void

    .line 861
    :pswitch_0
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_FOCUS_POSITION_START:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    invoke-static {v0, p2, v2, p3}, Lcom/sonyericsson/android/camera/controller/Executor;->sendEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;ILjava/lang/Object;)V

    goto :goto_0

    .line 866
    :pswitch_1
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_FOCUS_POSITION_CHANGE:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    invoke-static {v0, p2, v2, p3}, Lcom/sonyericsson/android/camera/controller/Executor;->sendEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;ILjava/lang/Object;)V

    goto :goto_0

    .line 871
    :pswitch_2
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_FOCUS_POSITION_CONTINUE:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    invoke-static {v0, p2, v2, p3}, Lcom/sonyericsson/android/camera/controller/Executor;->sendEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;ILjava/lang/Object;)V

    goto :goto_0

    .line 876
    :pswitch_3
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_FOCUS_POSITION_FINISH:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    invoke-static {v0, p2, v2, p3}, Lcom/sonyericsson/android/camera/controller/Executor;->sendEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;ILjava/lang/Object;)V

    goto :goto_0

    .line 881
    :pswitch_4
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_FOCUS_POSITION_CANCEL:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    invoke-static {v0, p2}, Lcom/sonyericsson/android/camera/controller/Executor;->sendEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V

    goto :goto_0

    .line 859
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
