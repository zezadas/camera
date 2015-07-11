.class public Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;
.super Ljava/lang/Object;
.source "ReferenceClock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/media/utility/ReferenceClock$1;,
        Lcom/sonymobile/cameracommon/media/utility/ReferenceClock$TickEvent;,
        Lcom/sonymobile/cameracommon/media/utility/ReferenceClock$TickCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mElapsedTimeOffsetMillis:J

.field private mInitialUptimeMillis:J

.field private mIsMeasuring:Z

.field private final mTickCallback:Lcom/sonymobile/cameracommon/media/utility/ReferenceClock$TickCallback;

.field private final mTickEvent:Lcom/sonymobile/cameracommon/media/utility/ReferenceClock$TickEvent;

.field private final mTickHandler:Landroid/os/Handler;

.field private final mTickInterval:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    new-instance v0, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock$TickEvent;

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock$TickEvent;-><init>(Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;Lcom/sonymobile/cameracommon/media/utility/ReferenceClock$1;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->mTickEvent:Lcom/sonymobile/cameracommon/media/utility/ReferenceClock$TickEvent;

    .line 42
    iput-wide v2, p0, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->mElapsedTimeOffsetMillis:J

    .line 43
    iput-wide v2, p0, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->mInitialUptimeMillis:J

    .line 44
    iput-object v1, p0, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->mTickHandler:Landroid/os/Handler;

    .line 45
    iput-object v1, p0, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->mTickCallback:Lcom/sonymobile/cameracommon/media/utility/ReferenceClock$TickCallback;

    .line 46
    iput-wide v2, p0, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->mTickInterval:J

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->mIsMeasuring:Z

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/sonymobile/cameracommon/media/utility/ReferenceClock$TickCallback;J)V
    .locals 5
    .param p1, "tickHandler"    # Landroid/os/Handler;
    .param p2, "tickEvent"    # Lcom/sonymobile/cameracommon/media/utility/ReferenceClock$TickCallback;
    .param p3, "tickIntervalMillis"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    new-instance v0, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock$TickEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock$TickEvent;-><init>(Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;Lcom/sonymobile/cameracommon/media/utility/ReferenceClock$1;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->mTickEvent:Lcom/sonymobile/cameracommon/media/utility/ReferenceClock$TickEvent;

    .line 51
    iput-wide v2, p0, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->mElapsedTimeOffsetMillis:J

    .line 52
    iput-wide v2, p0, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->mInitialUptimeMillis:J

    .line 53
    iput-object p1, p0, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->mTickHandler:Landroid/os/Handler;

    .line 54
    iput-object p2, p0, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->mTickCallback:Lcom/sonymobile/cameracommon/media/utility/ReferenceClock$TickCallback;

    .line 55
    iput-wide p3, p0, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->mTickInterval:J

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->mIsMeasuring:Z

    .line 57
    iget-wide v0, p0, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->mTickInterval:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "tickIntervalMillis must be lager that 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;)Lcom/sonymobile/cameracommon/media/utility/ReferenceClock$TickCallback;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->mTickCallback:Lcom/sonymobile/cameracommon/media/utility/ReferenceClock$TickCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;)J
    .locals 2
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->now()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300(Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;J)V
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;
    .param p1, "x1"    # J

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->scheduleNextTickEvent(J)V

    return-void
.end method

.method private cancelTickEvent()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->mTickHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->mTickHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->mTickEvent:Lcom/sonymobile/cameracommon/media/utility/ReferenceClock$TickEvent;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 167
    :cond_0
    return-void
.end method

.method private computeElapsedTime(J)J
    .locals 5
    .param p1, "now"    # J

    .prologue
    .line 132
    monitor-enter p0

    .line 133
    :try_start_0
    iget-wide v0, p0, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->mElapsedTimeOffsetMillis:J

    invoke-direct {p0, p1, p2}, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->computeElapsedTimeSinceInitialTime(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    monitor-exit p0

    return-wide v0

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private computeElapsedTimeSinceInitialTime(J)J
    .locals 3
    .param p1, "now"    # J

    .prologue
    .line 138
    monitor-enter p0

    .line 139
    :try_start_0
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->mIsMeasuring:Z

    if-eqz v0, :cond_0

    .line 140
    iget-wide v0, p0, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->mInitialUptimeMillis:J

    sub-long v0, p1, v0

    monitor-exit p0

    .line 142
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    monitor-exit p0

    goto :goto_0

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private now()J
    .locals 2

    .prologue
    .line 128
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private scheduleNextTickEvent(J)V
    .locals 11
    .param p1, "now"    # J

    .prologue
    .line 148
    iget-object v4, p0, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->mTickHandler:Landroid/os/Handler;

    if-eqz v4, :cond_1

    .line 149
    monitor-enter p0

    .line 150
    :try_start_0
    iget-boolean v4, p0, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->mIsMeasuring:Z

    if-eqz v4, :cond_0

    .line 151
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->computeElapsedTime(J)J

    move-result-wide v4

    iget-wide v6, p0, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->mTickInterval:J

    div-long v2, v4, v6

    .line 152
    .local v2, "tickCount":J
    iget-object v4, p0, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->mTickEvent:Lcom/sonymobile/cameracommon/media/utility/ReferenceClock$TickEvent;

    const-wide/16 v6, 0x1

    add-long/2addr v6, v2

    iget-wide v8, p0, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->mTickInterval:J

    mul-long/2addr v6, v8

    iput-wide v6, v4, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock$TickEvent;->requestElapsedTime:J

    .line 153
    iget-object v4, p0, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->mTickEvent:Lcom/sonymobile/cameracommon/media/utility/ReferenceClock$TickEvent;

    iget-wide v4, v4, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock$TickEvent;->requestElapsedTime:J

    iget-wide v6, p0, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->mElapsedTimeOffsetMillis:J

    sub-long v0, v4, v6

    .line 155
    .local v0, "targetElapsedTimeSinceResume":J
    iget-object v4, p0, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->mTickHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->mTickEvent:Lcom/sonymobile/cameracommon/media/utility/ReferenceClock$TickEvent;

    iget-wide v6, p0, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->mInitialUptimeMillis:J

    add-long/2addr v6, v0

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 159
    .end local v0    # "targetElapsedTimeSinceResume":J
    .end local v2    # "tickCount":J
    :cond_0
    monitor-exit p0

    .line 161
    :cond_1
    return-void

    .line 159
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method


# virtual methods
.method public elapsedTimeMillis()J
    .locals 4

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->now()J

    move-result-wide v0

    .line 116
    .local v0, "now":J
    monitor-enter p0

    .line 117
    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->computeElapsedTime(J)J

    move-result-wide v2

    monitor-exit p0

    return-wide v2

    .line 118
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public isMeasuring()Z
    .locals 1

    .prologue
    .line 122
    monitor-enter p0

    .line 123
    :try_start_0
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->mIsMeasuring:Z

    monitor-exit p0

    return v0

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reset(J)V
    .locals 3
    .param p1, "elapsedTimeMillis"    # J

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->now()J

    move-result-wide v0

    .line 107
    .local v0, "now":J
    monitor-enter p0

    .line 108
    :try_start_0
    iput-wide p1, p0, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->mElapsedTimeOffsetMillis:J

    .line 109
    iput-wide v0, p0, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->mInitialUptimeMillis:J

    .line 110
    monitor-exit p0

    .line 111
    return-void

    .line 110
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->now()J

    move-result-wide v0

    .line 92
    .local v0, "now":J
    monitor-enter p0

    .line 93
    :try_start_0
    iget-boolean v2, p0, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->mIsMeasuring:Z

    if-eqz v2, :cond_0

    .line 101
    :goto_0
    monitor-exit p0

    .line 102
    return-void

    .line 97
    :cond_0
    iput-wide v0, p0, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->mInitialUptimeMillis:J

    .line 98
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->mIsMeasuring:Z

    .line 99
    invoke-direct {p0, v0, v1}, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->scheduleNextTickEvent(J)V

    goto :goto_0

    .line 101
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public start()V
    .locals 4

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->now()J

    move-result-wide v0

    .line 65
    .local v0, "now":J
    monitor-enter p0

    .line 66
    const-wide/16 v2, 0x0

    :try_start_0
    iput-wide v2, p0, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->mElapsedTimeOffsetMillis:J

    .line 67
    iput-wide v0, p0, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->mInitialUptimeMillis:J

    .line 68
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->mIsMeasuring:Z

    .line 69
    invoke-direct {p0, v0, v1}, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->scheduleNextTickEvent(J)V

    .line 70
    monitor-exit p0

    .line 71
    return-void

    .line 70
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public stop()V
    .locals 6

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->now()J

    move-result-wide v0

    .line 76
    .local v0, "now":J
    monitor-enter p0

    .line 77
    :try_start_0
    iget-boolean v2, p0, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->mIsMeasuring:Z

    if-eqz v2, :cond_0

    .line 78
    iget-wide v2, p0, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->mElapsedTimeOffsetMillis:J

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->computeElapsedTimeSinceInitialTime(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->mElapsedTimeOffsetMillis:J

    .line 79
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->mInitialUptimeMillis:J

    .line 80
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->mIsMeasuring:Z

    .line 81
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/media/utility/ReferenceClock;->cancelTickEvent()V

    .line 86
    :cond_0
    monitor-exit p0

    .line 87
    return-void

    .line 86
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
