.class Lcom/sonyericsson/android/camera/controller/Selftimer$SelfTimerHandler;
.super Landroid/os/Handler;
.source "Selftimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/Selftimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SelfTimerHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/Selftimer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/controller/Selftimer$1;

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/Selftimer$SelfTimerHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 166
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 187
    :goto_0
    :pswitch_0
    return-void

    .line 168
    :pswitch_1
    sget-object v1, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_SELFTIMER_COUNTDOWN:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v2, v3}, Lcom/sonyericsson/android/camera/controller/Executor;->sendEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;ILjava/lang/Object;)V

    goto :goto_0

    .line 172
    :pswitch_2
    sget-object v1, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_SELFTIMER_FINISH:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v2, v3}, Lcom/sonyericsson/android/camera/controller/Executor;->sendEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;ILjava/lang/Object;)V

    goto :goto_0

    .line 180
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    .line 181
    .local v0, "source":Lcom/sonyericsson/android/camera/controller/ControllerEventSource;
    sget-object v1, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_SELFTIMER_CAPTURE:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/controller/Executor;->sendEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V

    goto :goto_0

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
