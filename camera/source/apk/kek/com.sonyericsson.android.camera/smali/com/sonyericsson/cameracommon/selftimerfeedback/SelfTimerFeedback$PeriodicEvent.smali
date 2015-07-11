.class Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;
.super Ljava/lang/Object;
.source "SelfTimerFeedback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PeriodicEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent$TickEvent;
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent$TickEvent;

.field private mCounter:J

.field private final mHandler:Landroid/os/Handler;

.field private final mInterval:J

.field private mStartTime:J

.field private final mTickEvent:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent$TickEvent;J)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "callback"    # Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent$TickEvent;
    .param p3, "interval"    # J

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    new-instance v0, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent$1;-><init>(Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->mTickEvent:Ljava/lang/Runnable;

    .line 108
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->mHandler:Landroid/os/Handler;

    .line 109
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->mCallback:Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent$TickEvent;

    .line 110
    iput-wide p3, p0, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->mInterval:J

    .line 111
    return-void
.end method

.method static synthetic access$500(Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;)J
    .locals 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->mCounter:J

    return-wide v0
.end method

.method static synthetic access$504(Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;)J
    .locals 4
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->mCounter:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->mCounter:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;)J
    .locals 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->mInterval:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;)Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent$TickEvent;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->mCallback:Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent$TickEvent;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->scheduleNextTick()V

    return-void
.end method

.method private scheduleNextTick()V
    .locals 8

    .prologue
    .line 124
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->mTickEvent:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->mStartTime:J

    iget-wide v4, p0, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->mCounter:J

    iget-wide v6, p0, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->mInterval:J

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 125
    return-void
.end method


# virtual methods
.method public start(J)V
    .locals 3
    .param p1, "delay"    # J

    .prologue
    .line 114
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->mStartTime:J

    .line 115
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->mCounter:J

    .line 116
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->scheduleNextTick()V

    .line 117
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->mTickEvent:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 121
    return-void
.end method
