.class public Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;
.super Ljava/lang/Object;
.source "TouchMoveAndStopDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector$TouchStopDetectorTimerTask;,
        Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector$TouchStopDetectorListener;
    }
.end annotation


# instance fields
.field private TOUCH_STOP_DETECTION_TIMER_INTERVAL:I

.field private mCurrentTouchPos:Landroid/graphics/Point;

.field private mIsFingerAlreadyMoved:Z

.field private mLastCheckedPos:Landroid/graphics/Point;

.field private mLastCheckedRad:F

.field private mListener:Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector$TouchStopDetectorListener;

.field private final mTouchSlop:I

.field private mTouchSlopAreaCenterPos:Landroid/graphics/Point;

.field private mTouchStopDetectorTimer:Ljava/util/Timer;

.field private mTouchStopDetectorTimerTask:Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector$TouchStopDetectorTimerTask;

.field private mUiThreadHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "touchSlop"    # I

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/16 v0, 0x12c

    iput v0, p0, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->TOUCH_STOP_DETECTION_TIMER_INTERVAL:I

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->mUiThreadHandler:Landroid/os/Handler;

    .line 49
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->mTouchSlopAreaCenterPos:Landroid/graphics/Point;

    .line 50
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->mCurrentTouchPos:Landroid/graphics/Point;

    .line 51
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->mLastCheckedPos:Landroid/graphics/Point;

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->mLastCheckedRad:F

    .line 58
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->mIsFingerAlreadyMoved:Z

    .line 62
    iput p1, p0, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->mTouchSlop:I

    .line 63
    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;)Landroid/graphics/Point;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->mCurrentTouchPos:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;)Landroid/graphics/Point;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->mLastCheckedPos:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;)F
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;

    .prologue
    .line 31
    iget v0, p0, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->mLastCheckedRad:F

    return v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;IIF)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # F

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->updateLastCheckedParameters(IIF)V

    return-void
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->mIsFingerAlreadyMoved:Z

    return v0
.end method

.method static synthetic access$600(Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->onTouchStopDetected()V

    return-void
.end method

.method static synthetic access$700(Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;

    .prologue
    .line 31
    iget v0, p0, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->mTouchSlop:I

    return v0
.end method

.method static synthetic access$800(Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;)Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector$TouchStopDetectorListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->mListener:Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector$TouchStopDetectorListener;

    return-object v0
.end method

.method private onTouchStopDetected()V
    .locals 3

    .prologue
    .line 169
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->mIsFingerAlreadyMoved:Z

    .line 170
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->mTouchSlopAreaCenterPos:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->mCurrentTouchPos:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->mCurrentTouchPos:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 173
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->mUiThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector$1;-><init>(Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 181
    return-void
.end method

.method private release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 188
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->mTouchStopDetectorTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->mTouchStopDetectorTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 190
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->mTouchStopDetectorTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 192
    :cond_0
    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->mTouchStopDetectorTimer:Ljava/util/Timer;

    .line 193
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->mTouchStopDetectorTimerTask:Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector$TouchStopDetectorTimerTask;

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->mTouchStopDetectorTimerTask:Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector$TouchStopDetectorTimerTask;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector$TouchStopDetectorTimerTask;->cancel()Z

    .line 196
    :cond_1
    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->mTouchStopDetectorTimerTask:Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector$TouchStopDetectorTimerTask;

    .line 197
    return-void
.end method

.method private updateLastCheckedParameters(IIF)V
    .locals 1
    .param p1, "lastX"    # I
    .param p2, "lastY"    # I
    .param p3, "lastRad"    # F

    .prologue
    .line 163
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->mLastCheckedPos:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 164
    iput p3, p0, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->mLastCheckedRad:F

    .line 165
    return-void
.end method


# virtual methods
.method public setTouchStopDetectorListener(Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector$TouchStopDetectorListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector$TouchStopDetectorListener;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->mListener:Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector$TouchStopDetectorListener;

    .line 72
    return-void
.end method

.method public declared-synchronized startTouchStopDetection(II)V
    .locals 6
    .param p1, "downX"    # I
    .param p2, "downY"    # I

    .prologue
    .line 76
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->mTouchSlopAreaCenterPos:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->mIsFingerAlreadyMoved:Z

    .line 82
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->release()V

    .line 83
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->mTouchStopDetectorTimer:Ljava/util/Timer;

    .line 84
    new-instance v0, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector$TouchStopDetectorTimerTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector$TouchStopDetectorTimerTask;-><init>(Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->mTouchStopDetectorTimerTask:Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector$TouchStopDetectorTimerTask;

    .line 86
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->mTouchStopDetectorTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->mTouchStopDetectorTimerTask:Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector$TouchStopDetectorTimerTask;

    iget v2, p0, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->TOUCH_STOP_DETECTION_TIMER_INTERVAL:I

    int-to-long v2, v2

    iget v4, p0, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->TOUCH_STOP_DETECTION_TIMER_INTERVAL:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    monitor-exit p0

    return-void

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopTouchStopDetection()V
    .locals 3

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->release()V

    .line 114
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->mCurrentTouchPos:Landroid/graphics/Point;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 115
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->mLastCheckedPos:Landroid/graphics/Point;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 116
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->mLastCheckedRad:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    monitor-exit p0

    return-void

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateCurrentPosition(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "motion"    # Landroid/view/MotionEvent;

    .prologue
    .line 93
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->mCurrentTouchPos:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 96
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->mCurrentTouchPos:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->mTouchSlopAreaCenterPos:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int v0, v2, v3

    .line 97
    .local v0, "difX":I
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->mCurrentTouchPos:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->mTouchSlopAreaCenterPos:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int v1, v2, v3

    .line 98
    .local v1, "difY":I
    iget v2, p0, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->mTouchSlop:I

    iget v3, p0, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->mTouchSlop:I

    mul-int/2addr v2, v3

    mul-int v3, v0, v0

    mul-int v4, v1, v1

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_0

    .line 100
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->mIsFingerAlreadyMoved:Z

    .line 103
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->mListener:Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector$TouchStopDetectorListener;

    if-eqz v2, :cond_0

    .line 104
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->mListener:Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector$TouchStopDetectorListener;

    invoke-interface {v2, p1}, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector$TouchStopDetectorListener;->onTouchMoveDetected(Landroid/view/MotionEvent;)V

    .line 107
    :cond_0
    return-void
.end method
