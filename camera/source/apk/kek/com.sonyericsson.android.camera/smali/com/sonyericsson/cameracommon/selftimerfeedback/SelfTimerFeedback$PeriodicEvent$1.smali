.class Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent$1;
.super Ljava/lang/Object;
.source "SelfTimerFeedback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent$1;->this$0:Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent$1;->this$0:Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;

    # getter for: Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->mCallback:Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent$TickEvent;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->access$700(Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;)Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent$TickEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent$1;->this$0:Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;

    # getter for: Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->mCounter:J
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->access$500(Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent$1;->this$0:Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;

    # getter for: Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->mInterval:J
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->access$600(Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;)J

    move-result-wide v4

    mul-long/2addr v2, v4

    invoke-interface {v0, v2, v3}, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent$TickEvent;->onTick(J)V

    .line 132
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent$1;->this$0:Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;

    # ++operator for: Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->mCounter:J
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->access$504(Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;)J

    .line 133
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent$1;->this$0:Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;

    # invokes: Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->scheduleNextTick()V
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->access$800(Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;)V

    .line 134
    return-void
.end method
