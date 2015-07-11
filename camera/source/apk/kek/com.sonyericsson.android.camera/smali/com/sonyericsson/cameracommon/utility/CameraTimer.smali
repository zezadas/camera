.class public Lcom/sonyericsson/cameracommon/utility/CameraTimer;
.super Ljava/lang/Object;
.source "CameraTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/utility/CameraTimer$1;,
        Lcom/sonyericsson/cameracommon/utility/CameraTimer$SelfTimerTimerTask;
    }
.end annotation


# static fields
.field public static final MSG_CANCEL:I = 0x2

.field public static final MSG_INTERVAL:I = 0x0

.field public static final MSG_POST_TIMEOUT:I = 0x3

.field public static final MSG_TIMEOUT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SelfTimer"


# instance fields
.field private mCurTime:J

.field private mDelay:J

.field private mHandler:Landroid/os/Handler;

.field private mInterval:J

.field private mOptionName:Ljava/lang/String;

.field private mTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(JJLandroid/os/Handler;Ljava/lang/String;J)V
    .locals 5
    .param p1, "maxtime"    # J
    .param p3, "interval"    # J
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "optionName"    # Ljava/lang/String;
    .param p7, "delay"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-wide p1, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mCurTime:J

    .line 56
    iput-object p5, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mHandler:Landroid/os/Handler;

    .line 57
    iput-wide p3, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mInterval:J

    .line 58
    iput-object p6, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mOptionName:Ljava/lang/String;

    .line 59
    iput-wide p7, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mDelay:J

    .line 61
    cmp-long v0, p1, v2

    if-lez v0, :cond_0

    cmp-long v0, p3, v2

    if-lez v0, :cond_0

    if-eqz p5, :cond_0

    iget-wide v0, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mCurTime:J

    iget-wide v2, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mInterval:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mCurTime:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 64
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mTimer:Ljava/util/Timer;

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_1
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mTimer:Ljava/util/Timer;

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/sonyericsson/cameracommon/utility/CameraTimer;)J
    .locals 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/utility/CameraTimer;

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mCurTime:J

    return-wide v0
.end method

.method static synthetic access$122(Lcom/sonyericsson/cameracommon/utility/CameraTimer;J)J
    .locals 3
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/utility/CameraTimer;
    .param p1, "x1"    # J

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mCurTime:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mCurTime:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/cameracommon/utility/CameraTimer;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/utility/CameraTimer;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/cameracommon/utility/CameraTimer;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/utility/CameraTimer;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->terminateInnerTimer()V

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/cameracommon/utility/CameraTimer;)J
    .locals 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/utility/CameraTimer;

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mInterval:J

    return-wide v0
.end method

.method private declared-synchronized terminateInnerTimer()V
    .locals 1

    .prologue
    .line 101
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 103
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mTimer:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :cond_0
    monitor-exit p0

    return-void

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 4

    .prologue
    .line 82
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mTimer:Ljava/util/Timer;

    if-nez v1, :cond_0

    .line 97
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit p0

    return-void

    .line 88
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->terminateInnerTimer()V

    .line 90
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 92
    .local v0, "msg":Landroid/os/Message;
    iget-wide v2, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mCurTime:J

    long-to-int v1, v2

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 93
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 94
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 82
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized start()V
    .locals 6

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mTimer:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 79
    :goto_0
    monitor-exit p0

    return-void

    .line 77
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/sonyericsson/cameracommon/utility/CameraTimer$SelfTimerTimerTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/cameracommon/utility/CameraTimer$SelfTimerTimerTask;-><init>(Lcom/sonyericsson/cameracommon/utility/CameraTimer;Lcom/sonyericsson/cameracommon/utility/CameraTimer$1;)V

    iget-wide v2, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mDelay:J

    iget-wide v4, p0, Lcom/sonyericsson/cameracommon/utility/CameraTimer;->mInterval:J

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
