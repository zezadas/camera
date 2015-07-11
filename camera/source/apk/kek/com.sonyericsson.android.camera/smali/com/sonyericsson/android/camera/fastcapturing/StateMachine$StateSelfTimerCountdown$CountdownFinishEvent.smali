.class Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown$CountdownFinishEvent;
.super Ljava/lang/Object;
.source "StateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CountdownFinishEvent"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown;)V
    .locals 0

    .prologue
    .line 1807
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown$CountdownFinishEvent;->this$1:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown;
    .param p2, "x1"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$1;

    .prologue
    .line 1807
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown$CountdownFinishEvent;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1811
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown$CountdownFinishEvent;->this$1:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown;->recoverFlash()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown;->access$3200(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown;)V

    .line 1812
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown$CountdownFinishEvent;->this$1:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->startAutoFocus()Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$1300(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1813
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown$CountdownFinishEvent;->this$1:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureWaitForAfDone;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown$CountdownFinishEvent;->this$1:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v4, v3}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureWaitForAfDone;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;ZZ)V

    new-array v2, v4, [Ljava/lang/Object;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->access$800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    .line 1815
    :cond_0
    return-void
.end method
