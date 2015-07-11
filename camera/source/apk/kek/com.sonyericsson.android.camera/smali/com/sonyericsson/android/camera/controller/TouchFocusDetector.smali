.class public Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;
.super Ljava/lang/Object;
.source "TouchFocusDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/controller/TouchFocusDetector$TouchStopDetectorTimerTask;,
        Lcom/sonyericsson/android/camera/controller/TouchFocusDetector$MotionEventDetectorListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TouchFocusDetector"

.field private static final TOUCH_STOP_DETECTION_TIMER_INTERVAL:I = 0x12c


# instance fields
.field private final mCurrentTouchPos:Landroid/graphics/Point;

.field private mIsFingerAlreadyMoved:Z

.field private final mLastCheckedPos:Landroid/graphics/Point;

.field private mLastCheckedRad:F

.field private mListener:Lcom/sonyericsson/android/camera/controller/TouchFocusDetector$MotionEventDetectorListener;

.field private final mTouchSlop:I

.field private final mTouchSlopAreaCenterPos:Landroid/graphics/Point;

.field private mTouchStopDetectorTimer:Ljava/util/Timer;

.field private mTouchStopDetectorTimerTask:Lcom/sonyericsson/android/camera/controller/TouchFocusDetector$TouchStopDetectorTimerTask;

.field private final mUiThreadHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "touchSlop"    # I

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->mUiThreadHandler:Landroid/os/Handler;

    .line 40
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->mTouchSlopAreaCenterPos:Landroid/graphics/Point;

    .line 41
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->mCurrentTouchPos:Landroid/graphics/Point;

    .line 42
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->mLastCheckedPos:Landroid/graphics/Point;

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->mLastCheckedRad:F

    .line 49
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->mIsFingerAlreadyMoved:Z

    .line 53
    iput p1, p0, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->mTouchSlop:I

    .line 54
    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;)Landroid/graphics/Point;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->mCurrentTouchPos:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;)Landroid/graphics/Point;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->mLastCheckedPos:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;)F
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;

    .prologue
    .line 21
    iget v0, p0, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->mLastCheckedRad:F

    return v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;IIF)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # F

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->updateLastCheckedParameters(IIF)V

    return-void
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->mIsFingerAlreadyMoved:Z

    return v0
.end method

.method static synthetic access$600(Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->onTouchStopDetected()V

    return-void
.end method

.method static synthetic access$700(Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;

    .prologue
    .line 21
    iget v0, p0, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->mTouchSlop:I

    return v0
.end method

.method static synthetic access$800(Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;)Lcom/sonyericsson/android/camera/controller/TouchFocusDetector$MotionEventDetectorListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->mListener:Lcom/sonyericsson/android/camera/controller/TouchFocusDetector$MotionEventDetectorListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;)Landroid/graphics/Point;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->mTouchSlopAreaCenterPos:Landroid/graphics/Point;

    return-object v0
.end method

.method private onTouchStopDetected()V
    .locals 3

    .prologue
    .line 191
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->mIsFingerAlreadyMoved:Z

    .line 192
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->mTouchSlopAreaCenterPos:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->mCurrentTouchPos:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->mCurrentTouchPos:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 195
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->mUiThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector$1;-><init>(Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 204
    return-void
.end method

.method private release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 211
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->mTouchStopDetectorTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->mTouchStopDetectorTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 213
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->mTouchStopDetectorTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 215
    :cond_0
    iput-object v1, p0, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->mTouchStopDetectorTimer:Ljava/util/Timer;

    .line 216
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->mTouchStopDetectorTimerTask:Lcom/sonyericsson/android/camera/controller/TouchFocusDetector$TouchStopDetectorTimerTask;

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->mTouchStopDetectorTimerTask:Lcom/sonyericsson/android/camera/controller/TouchFocusDetector$TouchStopDetectorTimerTask;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector$TouchStopDetectorTimerTask;->cancel()Z

    .line 219
    :cond_1
    iput-object v1, p0, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->mTouchStopDetectorTimerTask:Lcom/sonyericsson/android/camera/controller/TouchFocusDetector$TouchStopDetectorTimerTask;

    .line 220
    return-void
.end method

.method private updateLastCheckedParameters(IIF)V
    .locals 1
    .param p1, "lastX"    # I
    .param p2, "lastY"    # I
    .param p3, "lastRad"    # F

    .prologue
    .line 185
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->mLastCheckedPos:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 186
    iput p3, p0, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->mLastCheckedRad:F

    .line 187
    return-void
.end method


# virtual methods
.method public isDragging()Z
    .locals 1

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->mIsFingerAlreadyMoved:Z

    return v0
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "motion"    # Landroid/view/MotionEvent;

    .prologue
    .line 62
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 82
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 64
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->start(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 68
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->update(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 72
    :pswitch_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->stop()V

    goto :goto_0

    .line 76
    :pswitch_3
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->stop()V

    goto :goto_0

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setMotionEventDetectorListener(Lcom/sonyericsson/android/camera/controller/TouchFocusDetector$MotionEventDetectorListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/android/camera/controller/TouchFocusDetector$MotionEventDetectorListener;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->mListener:Lcom/sonyericsson/android/camera/controller/TouchFocusDetector$MotionEventDetectorListener;

    .line 87
    return-void
.end method

.method public declared-synchronized start(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "motion"    # Landroid/view/MotionEvent;

    .prologue
    .line 91
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v6, v0

    .line 92
    .local v6, "downX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v7, v0

    .line 95
    .local v7, "downY":I
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->mTouchSlopAreaCenterPos:Landroid/graphics/Point;

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Point;->set(II)V

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->mIsFingerAlreadyMoved:Z

    .line 101
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->release()V

    .line 102
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->mTouchStopDetectorTimer:Ljava/util/Timer;

    .line 103
    new-instance v0, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector$TouchStopDetectorTimerTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector$TouchStopDetectorTimerTask;-><init>(Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;Lcom/sonyericsson/android/camera/controller/TouchFocusDetector$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->mTouchStopDetectorTimerTask:Lcom/sonyericsson/android/camera/controller/TouchFocusDetector$TouchStopDetectorTimerTask;

    .line 105
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->mTouchStopDetectorTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->mTouchStopDetectorTimerTask:Lcom/sonyericsson/android/camera/controller/TouchFocusDetector$TouchStopDetectorTimerTask;

    const-wide/16 v2, 0x12c

    const-wide/16 v4, 0x12c

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    monitor-exit p0

    return-void

    .line 91
    .end local v6    # "downX":I
    .end local v7    # "downY":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 3

    .prologue
    .line 130
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->mIsFingerAlreadyMoved:Z

    .line 133
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->release()V

    .line 136
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->mCurrentTouchPos:Landroid/graphics/Point;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 137
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->mLastCheckedPos:Landroid/graphics/Point;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 138
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->mLastCheckedRad:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    monitor-exit p0

    return-void

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public update(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "motion"    # Landroid/view/MotionEvent;

    .prologue
    .line 112
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->mCurrentTouchPos:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 115
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->mCurrentTouchPos:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->mTouchSlopAreaCenterPos:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int v0, v2, v3

    .line 116
    .local v0, "difX":I
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->mCurrentTouchPos:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->mTouchSlopAreaCenterPos:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int v1, v2, v3

    .line 117
    .local v1, "difY":I
    iget v2, p0, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->mTouchSlop:I

    iget v3, p0, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->mTouchSlop:I

    mul-int/2addr v2, v3

    mul-int v3, v0, v0

    mul-int v4, v1, v1

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_0

    .line 119
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->mIsFingerAlreadyMoved:Z

    .line 122
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->mListener:Lcom/sonyericsson/android/camera/controller/TouchFocusDetector$MotionEventDetectorListener;

    if-eqz v2, :cond_0

    .line 123
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->mListener:Lcom/sonyericsson/android/camera/controller/TouchFocusDetector$MotionEventDetectorListener;

    invoke-interface {v2, p1}, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector$MotionEventDetectorListener;->onTouchMoveDetected(Landroid/view/MotionEvent;)V

    .line 126
    :cond_0
    return-void
.end method
