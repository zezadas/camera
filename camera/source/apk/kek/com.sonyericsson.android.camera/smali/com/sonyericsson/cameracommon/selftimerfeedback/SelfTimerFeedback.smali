.class public Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;
.super Ljava/lang/Object;
.source "SelfTimerFeedback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;
    }
.end annotation


# static fields
.field private static final SELF_TIMER_BLINK_DURATION:I = 0x64

.field private static final SELF_TIMER_INTERVALS:[I

.field private static final SELF_TIMER_LEVELS:[I

.field private static final SELF_TIMER_LIGHT_MIN_INTERVAL:I = 0xfa

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mDuration:I

.field private final mHandler:Landroid/os/Handler;

.field private final mLedLight:Lcom/sonyericsson/cameracommon/selftimerfeedback/LedLight;

.field private final mLedOffTask:Ljava/lang/Runnable;

.field private final mOnTickEvent:Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent$TickEvent;

.field private final mPeriodicEvent:Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 18
    const-class v0, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;->TAG:Ljava/lang/String;

    .line 20
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;->SELF_TIMER_LEVELS:[I

    .line 21
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;->SELF_TIMER_INTERVALS:[I

    return-void

    .line 20
    :array_0
    .array-data 4
        0x7d0
        0xfa0
        0x2710
    .end array-data

    .line 21
    :array_1
    .array-data 4
        0xfa
        0x1f4
        0x3e8
    .end array-data
.end method

.method public constructor <init>(ILcom/sonyericsson/cameracommon/selftimerfeedback/LedLight;)V
    .locals 6
    .param p1, "duration"    # I
    .param p2, "ledLight"    # Lcom/sonyericsson/cameracommon/selftimerfeedback/LedLight;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$1;-><init>(Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;->mOnTickEvent:Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent$TickEvent;

    .line 87
    new-instance v0, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$2;-><init>(Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;->mLedOffTask:Ljava/lang/Runnable;

    .line 33
    iput p1, p0, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;->mDuration:I

    .line 34
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;->mLedLight:Lcom/sonyericsson/cameracommon/selftimerfeedback/LedLight;

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;->mHandler:Landroid/os/Handler;

    .line 36
    new-instance v0, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;->mOnTickEvent:Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent$TickEvent;

    const-wide/16 v4, 0xfa

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;-><init>(Landroid/os/Handler;Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent$TickEvent;J)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;->mPeriodicEvent:Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;

    .prologue
    .line 16
    iget v0, p0, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;->mDuration:I

    return v0
.end method

.method static synthetic access$100()[I
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;->SELF_TIMER_LEVELS:[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;->blink()V

    return-void
.end method

.method static synthetic access$300()[I
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;->SELF_TIMER_INTERVALS:[I

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;)Lcom/sonyericsson/cameracommon/selftimerfeedback/LedLight;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;->mLedLight:Lcom/sonyericsson/cameracommon/selftimerfeedback/LedLight;

    return-object v0
.end method

.method private blink()V
    .locals 4

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;->mLedLight:Lcom/sonyericsson/cameracommon/selftimerfeedback/LedLight;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/selftimerfeedback/LedLight;->turnOn()V

    .line 56
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;->mLedOffTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 57
    return-void
.end method


# virtual methods
.method public start(I)V
    .locals 4
    .param p1, "delay"    # I

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;->mPeriodicEvent:Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->start(J)V

    .line 41
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;->mPeriodicEvent:Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback$PeriodicEvent;->stop()V

    .line 49
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;->mLedOffTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/selftimerfeedback/SelfTimerFeedback;->mLedOffTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 52
    :cond_0
    return-void
.end method
