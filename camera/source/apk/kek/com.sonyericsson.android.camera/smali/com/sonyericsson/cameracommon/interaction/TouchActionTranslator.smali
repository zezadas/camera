.class public Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;
.super Ljava/lang/Object;
.source "TouchActionTranslator.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorListener;
.implements Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector$ScaleAndRotateDetectorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$1;,
        Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$OverTriple;,
        Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$DoubleMove;,
        Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$DoubleDown;,
        Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$SingleStop;,
        Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$SingleMove;,
        Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$SingleDown;,
        Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$Idle;,
        Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;,
        Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$NullInteractionListener;,
        Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;
    }
.end annotation


# static fields
.field private static final NULL_LISTENER:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;

.field static final TAG:Ljava/lang/String; = "TouchActionTranslator"


# instance fields
.field private mAndroidGestureDetector:Landroid/view/GestureDetector;

.field private mClientListener:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;

.field private mContext:Landroid/content/Context;

.field private mCurrentInteractionState:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;

.field private mDoubleTouchScaleAndRotateDetector:Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;

.field private mIsAllTouchEventInTargetArea:Z

.field private final mMargin:I

.field private mSingleTouchMoveAndStopDetector:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

.field private mTargetView:Landroid/view/View;

.field private final mTouchSlop:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 60
    new-instance v0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$NullInteractionListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$NullInteractionListener;-><init>(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$1;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->NULL_LISTENER:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "targetView"    # Landroid/view/View;

    .prologue
    .line 196
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    .line 197
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "targetView"    # Landroid/view/View;
    .param p3, "margin"    # I

    .prologue
    .line 203
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;-><init>(Landroid/content/Context;Landroid/view/View;II)V

    .line 204
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "targetView"    # Landroid/view/View;
    .param p3, "margin"    # I
    .param p4, "touchSlop"    # I

    .prologue
    const/4 v1, 0x0

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mIsAllTouchEventInTargetArea:Z

    .line 63
    sget-object v0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->NULL_LISTENER:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mClientListener:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;

    .line 251
    new-instance v0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$Idle;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$Idle;-><init>(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$1;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mCurrentInteractionState:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;

    .line 212
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mContext:Landroid/content/Context;

    .line 213
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mTargetView:Landroid/view/View;

    .line 214
    iput p3, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mMargin:I

    .line 215
    iput p4, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mTouchSlop:I

    .line 218
    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->setInteractionListener(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;)V

    .line 221
    new-instance v0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mDoubleTouchScaleAndRotateDetector:Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;

    .line 222
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mDoubleTouchScaleAndRotateDetector:Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->setScaleAndRotateDetectorListener(Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector$ScaleAndRotateDetectorListener;)V

    .line 223
    return-void
.end method

.method static synthetic access$1000(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;)Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mDoubleTouchScaleAndRotateDetector:Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;)Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mClientListener:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;
    .param p1, "x1"    # Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->changeTo(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;)V

    return-void
.end method

.method static synthetic access$900(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;)Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->getSingleTouchMoveAndStopDetector()Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized changeTo(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;)V
    .locals 1
    .param p1, "next"    # Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;

    .prologue
    .line 254
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mCurrentInteractionState:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    monitor-exit p0

    return-void

    .line 254
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getAndroidGestureDetector()Landroid/view/GestureDetector;
    .locals 4

    .prologue
    .line 786
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mAndroidGestureDetector:Landroid/view/GestureDetector;

    if-nez v0, :cond_0

    .line 787
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    const/4 v3, 0x1

    invoke-direct {v0, v1, p0, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mAndroidGestureDetector:Landroid/view/GestureDetector;

    .line 793
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mAndroidGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method private getSingleTouchMoveAndStopDetector()Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;
    .locals 2

    .prologue
    .line 777
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mSingleTouchMoveAndStopDetector:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    if-nez v0, :cond_0

    .line 778
    new-instance v0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    iget v1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mTouchSlop:I

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mSingleTouchMoveAndStopDetector:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    .line 779
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mSingleTouchMoveAndStopDetector:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->setTouchStopDetectorListener(Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorListener;)V

    .line 781
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mSingleTouchMoveAndStopDetector:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    return-object v0
.end method

.method private hitTest(Landroid/view/View;III)Z
    .locals 3
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "margin"    # I
    .param p3, "xOnView"    # I
    .param p4, "yOnView"    # I

    .prologue
    .line 702
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v1, p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v2, p2

    invoke-direct {v0, p2, p2, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 708
    .local v0, "hitRect":Landroid/graphics/Rect;
    invoke-virtual {v0, p3, p4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 797
    new-instance v0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$Idle;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$Idle;-><init>(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$1;)V

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->changeTo(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;)V

    .line 798
    return-void
.end method

.method public declared-synchronized onDoubleTouchRotateDetected(FF)V
    .locals 1
    .param p1, "degreeVsOrigin"    # F
    .param p2, "degreeVsLast"    # F

    .prologue
    .line 735
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mCurrentInteractionState:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;

    invoke-interface {v0, p1, p2}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;->handleTouchRotateEvent(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 737
    monitor-exit p0

    return-void

    .line 735
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onDoubleTouchScaleDetected(FFF)V
    .locals 1
    .param p1, "currentLength"    # F
    .param p2, "previousLength"    # F
    .param p3, "originalLength"    # F

    .prologue
    .line 728
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mCurrentInteractionState:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;

    invoke-interface {v0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;->handleTouchScaleEvent(FFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 730
    monitor-exit p0

    return-void

    .line 728
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 742
    monitor-enter p0

    const/4 v0, 0x1

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "event1"    # Landroid/view/MotionEvent;
    .param p2, "event2"    # Landroid/view/MotionEvent;
    .param p3, "velocX"    # F
    .param p4, "velocY"    # F

    .prologue
    .line 748
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mClientListener:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 749
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 748
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onLongPress(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 754
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mClientListener:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;

    invoke-interface {v0, p1}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;->onLongPress(Landroid/view/MotionEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 755
    monitor-exit p0

    return-void

    .line 754
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "event1"    # Landroid/view/MotionEvent;
    .param p2, "event2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 761
    monitor-enter p0

    const/4 v0, 0x1

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized onShowPress(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 766
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mClientListener:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;

    invoke-interface {v0, p1}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;->onShowPress(Landroid/view/MotionEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 767
    monitor-exit p0

    return-void

    .line 766
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 771
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mClientListener:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;

    invoke-interface {v0, p1}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;->onSingleTapUp(Landroid/view/MotionEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 772
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 771
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onSingleTouchMoveDetected(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 1
    .param p1, "currentPoint"    # Landroid/graphics/Point;
    .param p2, "lastPoint"    # Landroid/graphics/Point;
    .param p3, "downPoint"    # Landroid/graphics/Point;

    .prologue
    .line 714
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mCurrentInteractionState:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;

    invoke-interface {v0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;->handleSingleTouchMoveEvent(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 716
    monitor-exit p0

    return-void

    .line 714
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onSingleTouchStopDetected(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 1
    .param p1, "currentPoint"    # Landroid/graphics/Point;
    .param p2, "lastPoint"    # Landroid/graphics/Point;
    .param p3, "downPoint"    # Landroid/graphics/Point;

    .prologue
    .line 721
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mCurrentInteractionState:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;

    invoke-interface {v0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;->handleSingleTouchStopEvent(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 723
    monitor-exit p0

    return-void

    .line 721
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "motion"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    .line 655
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mTargetView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 656
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 657
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mTargetView:Landroid/view/View;

    iget v2, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mMargin:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->hitTest(Landroid/view/View;III)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 658
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mIsAllTouchEventInTargetArea:Z

    .line 656
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 661
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mIsAllTouchEventInTargetArea:Z

    .line 668
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 692
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mCurrentInteractionState:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;

    invoke-interface {v1, p1}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;->handleMotionEvent(Landroid/view/MotionEvent;)V

    .line 695
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->getAndroidGestureDetector()Landroid/view/GestureDetector;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 697
    iget-boolean v1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mIsAllTouchEventInTargetArea:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    .line 671
    :pswitch_0
    :try_start_1
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->getSingleTouchMoveAndStopDetector()Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->startTouchStopDetection(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 655
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 676
    :pswitch_1
    :try_start_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ne v5, v1, :cond_2

    .line 678
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->getSingleTouchMoveAndStopDetector()Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->updateCurrentPosition(II)V

    goto :goto_1

    .line 687
    :pswitch_2
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->getSingleTouchMoveAndStopDetector()Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->stopTouchStopDetection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 668
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public declared-synchronized release()V
    .locals 1

    .prologue
    .line 226
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mContext:Landroid/content/Context;

    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mTargetView:Landroid/view/View;

    .line 229
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mSingleTouchMoveAndStopDetector:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mSingleTouchMoveAndStopDetector:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->release()V

    .line 231
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mSingleTouchMoveAndStopDetector:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mDoubleTouchScaleAndRotateDetector:Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->release()V

    .line 234
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mDoubleTouchScaleAndRotateDetector:Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;

    .line 235
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mAndroidGestureDetector:Landroid/view/GestureDetector;

    .line 237
    sget-object v0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->NULL_LISTENER:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mClientListener:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    monitor-exit p0

    return-void

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setInteractionListener(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;

    .prologue
    .line 66
    if-eqz p1, :cond_0

    .line 67
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mClientListener:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    sget-object v0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->NULL_LISTENER:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->mClientListener:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;

    goto :goto_0
.end method
