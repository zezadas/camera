.class public Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;
.super Ljava/lang/Object;
.source "TouchMoveAndStopDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorTimerTask;,
        Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorListener;
    }
.end annotation


# static fields
.field private static final DIRECTION_TOLERANCE:F = 1.0471976f


# instance fields
.field private TOUCH_STOP_DETECTION_TIMER_INTERVAL:I

.field private mCurrentTouchPos:Landroid/graphics/Point;

.field private mDownPos:Landroid/graphics/Point;

.field private mIsFingerAlreadyMoved:Z

.field private mLatestCheckedPos:Landroid/graphics/Point;

.field private mLatestCheckedTrackVec:Landroid/graphics/Point;

.field private mListener:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorListener;

.field private mPreviousTouchPos:Landroid/graphics/Point;

.field private final mTouchSlop:I

.field private mTouchSlopAreaCenterPos:Landroid/graphics/Point;

.field private mTouchStopDetectorTimer:Ljava/util/Timer;

.field private mTouchStopDetectorTimerTask:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorTimerTask;

.field private mUiThreadHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "touchSlop"    # I

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/16 v0, 0xc8

    iput v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->TOUCH_STOP_DETECTION_TIMER_INTERVAL:I

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mUiThreadHandler:Landroid/os/Handler;

    .line 44
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mDownPos:Landroid/graphics/Point;

    .line 45
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mTouchSlopAreaCenterPos:Landroid/graphics/Point;

    .line 46
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mCurrentTouchPos:Landroid/graphics/Point;

    .line 47
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mPreviousTouchPos:Landroid/graphics/Point;

    .line 48
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mLatestCheckedPos:Landroid/graphics/Point;

    .line 49
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mLatestCheckedTrackVec:Landroid/graphics/Point;

    .line 55
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mIsFingerAlreadyMoved:Z

    .line 59
    iput p1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mTouchSlop:I

    .line 60
    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;)Landroid/graphics/Point;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mCurrentTouchPos:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;)Landroid/graphics/Point;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mDownPos:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;)Landroid/graphics/Point;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mLatestCheckedPos:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;)Landroid/graphics/Point;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mLatestCheckedTrackVec:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;IILandroid/graphics/Point;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/graphics/Point;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->updateLastCheckedParameters(IILandroid/graphics/Point;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mIsFingerAlreadyMoved:Z

    return v0
.end method

.method static synthetic access$600(Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->onTouchStopDetected()V

    return-void
.end method

.method static synthetic access$700(Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    .prologue
    .line 24
    iget v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mTouchSlop:I

    return v0
.end method

.method static synthetic access$800(Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;)Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mListener:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;)Landroid/graphics/Point;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mPreviousTouchPos:Landroid/graphics/Point;

    return-object v0
.end method

.method private killTimer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 139
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mTouchStopDetectorTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mTouchStopDetectorTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 141
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mTouchStopDetectorTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 142
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mTouchStopDetectorTimer:Ljava/util/Timer;

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mTouchStopDetectorTimerTask:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorTimerTask;

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mTouchStopDetectorTimerTask:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorTimerTask;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorTimerTask;->cancel()Z

    .line 146
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mTouchStopDetectorTimerTask:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorTimerTask;

    .line 148
    :cond_1
    return-void
.end method

.method private onTouchStopDetected()V
    .locals 3

    .prologue
    .line 201
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mIsFingerAlreadyMoved:Z

    .line 202
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mTouchSlopAreaCenterPos:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mCurrentTouchPos:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mCurrentTouchPos:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 205
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mUiThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$1;-><init>(Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 215
    return-void
.end method

.method private updateLastCheckedParameters(IILandroid/graphics/Point;)V
    .locals 3
    .param p1, "previousX"    # I
    .param p2, "previousY"    # I
    .param p3, "currentTrack"    # Landroid/graphics/Point;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mLatestCheckedPos:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 196
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mLatestCheckedTrackVec:Landroid/graphics/Point;

    iget v1, p3, Landroid/graphics/Point;->x:I

    iget v2, p3, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 197
    return-void
.end method


# virtual methods
.method release()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->killTimer()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mListener:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorListener;

    .line 65
    return-void
.end method

.method public setTouchStopDetectorListener(Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorListener;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mListener:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorListener;

    .line 76
    return-void
.end method

.method public declared-synchronized startTouchStopDetection(II)V
    .locals 6
    .param p1, "downX"    # I
    .param p2, "downY"    # I

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mDownPos:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 81
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mPreviousTouchPos:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 84
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mTouchSlopAreaCenterPos:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mIsFingerAlreadyMoved:Z

    .line 90
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->killTimer()V

    .line 91
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mTouchStopDetectorTimer:Ljava/util/Timer;

    .line 92
    new-instance v0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorTimerTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorTimerTask;-><init>(Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$1;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mTouchStopDetectorTimerTask:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorTimerTask;

    .line 95
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mTouchStopDetectorTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mTouchStopDetectorTimerTask:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorTimerTask;

    iget v2, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->TOUCH_STOP_DETECTION_TIMER_INTERVAL:I

    int-to-long v2, v2

    iget v4, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->TOUCH_STOP_DETECTION_TIMER_INTERVAL:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    monitor-exit p0

    return-void

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopTouchStopDetection()V
    .locals 3

    .prologue
    .line 128
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->killTimer()V

    .line 131
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mCurrentTouchPos:Landroid/graphics/Point;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 132
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mPreviousTouchPos:Landroid/graphics/Point;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 133
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mLatestCheckedPos:Landroid/graphics/Point;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 134
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mLatestCheckedTrackVec:Landroid/graphics/Point;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    monitor-exit p0

    return-void

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateCurrentAndLastPosition(II)V
    .locals 1
    .param p1, "curX"    # I
    .param p2, "curY"    # I

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mPreviousTouchPos:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 123
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mCurrentTouchPos:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 124
    return-void
.end method

.method public updateCurrentPosition(II)V
    .locals 6
    .param p1, "curX"    # I
    .param p2, "curY"    # I

    .prologue
    .line 103
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mPreviousTouchPos:Landroid/graphics/Point;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mCurrentTouchPos:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mCurrentTouchPos:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 105
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mCurrentTouchPos:Landroid/graphics/Point;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 108
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mCurrentTouchPos:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mTouchSlopAreaCenterPos:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int v0, v2, v3

    .line 109
    .local v0, "difX":I
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mCurrentTouchPos:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mTouchSlopAreaCenterPos:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int v1, v2, v3

    .line 110
    .local v1, "difY":I
    iget v2, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mTouchSlop:I

    iget v3, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mTouchSlop:I

    mul-int/2addr v2, v3

    mul-int v3, v0, v0

    mul-int v4, v1, v1

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_0

    .line 112
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mIsFingerAlreadyMoved:Z

    .line 115
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mListener:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorListener;

    if-eqz v2, :cond_0

    .line 116
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mListener:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorListener;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mCurrentTouchPos:Landroid/graphics/Point;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mPreviousTouchPos:Landroid/graphics/Point;

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mDownPos:Landroid/graphics/Point;

    invoke-interface {v2, v3, v4, v5}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorListener;->onSingleTouchMoveDetected(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 119
    :cond_0
    return-void
.end method
