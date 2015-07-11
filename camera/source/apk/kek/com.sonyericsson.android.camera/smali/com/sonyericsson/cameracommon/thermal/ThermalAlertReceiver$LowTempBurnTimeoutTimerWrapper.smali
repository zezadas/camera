.class Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;
.super Ljava/lang/Object;
.source "ThermalAlertReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LowTempBurnTimeoutTimerWrapper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper$LowTempBurnTimerTask;
    }
.end annotation


# static fields
.field static final INVALID_TIMER_TIME:J = -0x1L


# instance fields
.field private mTimer:Ljava/util/Timer;

.field private mTimerToBeExpiredTimeMillis:J

.field final synthetic this$0:Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;)V
    .locals 2

    .prologue
    .line 505
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->this$0:Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 494
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->mTimer:Ljava/util/Timer;

    .line 500
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->mTimerToBeExpiredTimeMillis:J

    .line 507
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;
    .param p2, "x1"    # Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$1;

    .prologue
    .line 492
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;-><init>(Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;)V

    return-void
.end method

.method private getRemainedTimeMillis()J
    .locals 8

    .prologue
    const-wide/16 v2, -0x1

    .line 510
    iget-wide v4, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->mTimerToBeExpiredTimeMillis:J

    cmp-long v4, v4, v2

    if-nez v4, :cond_1

    move-wide v0, v2

    .line 523
    :cond_0
    :goto_0
    return-wide v0

    .line 515
    :cond_1
    iget-wide v4, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->mTimerToBeExpiredTimeMillis:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 518
    .local v0, "remainedTimeMillis":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gtz v4, :cond_0

    move-wide v0, v2

    .line 520
    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized cancel()V
    .locals 2

    .prologue
    .line 562
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 564
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 565
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->mTimer:Ljava/util/Timer;

    .line 567
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->mTimerToBeExpiredTimeMillis:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 571
    :cond_0
    monitor-exit p0

    return-void

    .line 562
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized requestTimeMillis(J)V
    .locals 5
    .param p1, "durationTimeMillis"    # J

    .prologue
    .line 535
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->getRemainedTimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 536
    .local v0, "remainedTimeMillis":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 538
    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    .line 554
    :goto_0
    monitor-exit p0

    return-void

    .line 546
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->cancel()V

    .line 549
    new-instance v2, Ljava/util/Timer;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/Timer;-><init>(Z)V

    iput-object v2, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->mTimer:Ljava/util/Timer;

    .line 551
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->mTimer:Ljava/util/Timer;

    new-instance v3, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper$LowTempBurnTimerTask;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper$LowTempBurnTimerTask;-><init>(Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$1;)V

    invoke-virtual {v2, v3, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 553
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p1

    iput-wide v2, p0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$LowTempBurnTimeoutTimerWrapper;->mTimerToBeExpiredTimeMillis:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 535
    .end local v0    # "remainedTimeMillis":J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
