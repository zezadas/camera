.class Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorTimerTask;
.super Ljava/util/TimerTask;
.source "TouchMoveAndStopDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchStopDetectorTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorTimerTask;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;
    .param p2, "x1"    # Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$1;

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorTimerTask;-><init>(Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 154
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorTimerTask;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    # getter for: Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mCurrentTouchPos:Landroid/graphics/Point;
    invoke-static {v4}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->access$100(Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;)Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorTimerTask;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    # getter for: Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mLatestCheckedPos:Landroid/graphics/Point;
    invoke-static {v5}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->access$200(Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;)Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->x:I

    sub-int v2, v4, v5

    .line 155
    .local v2, "difX":I
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorTimerTask;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    # getter for: Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mCurrentTouchPos:Landroid/graphics/Point;
    invoke-static {v4}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->access$100(Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;)Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorTimerTask;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    # getter for: Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mLatestCheckedPos:Landroid/graphics/Point;
    invoke-static {v5}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->access$200(Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;)Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->y:I

    sub-int v3, v4, v5

    .line 156
    .local v3, "difY":I
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 157
    .local v0, "currentTrack":Landroid/graphics/Point;
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v0}, Landroid/graphics/PointF;-><init>(Landroid/graphics/Point;)V

    new-instance v5, Landroid/graphics/PointF;

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorTimerTask;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    # getter for: Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mLatestCheckedTrackVec:Landroid/graphics/Point;
    invoke-static {v6}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->access$300(Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;)Landroid/graphics/Point;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/graphics/PointF;-><init>(Landroid/graphics/Point;)V

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/interaction/VectorCalculator;->getRadianFrom2Vector(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v1

    .line 161
    .local v1, "difRad":F
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorTimerTask;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorTimerTask;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    # getter for: Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mCurrentTouchPos:Landroid/graphics/Point;
    invoke-static {v5}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->access$100(Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;)Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorTimerTask;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    # getter for: Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mCurrentTouchPos:Landroid/graphics/Point;
    invoke-static {v6}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->access$100(Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;)Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->y:I

    # invokes: Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->updateLastCheckedParameters(IILandroid/graphics/Point;)V
    invoke-static {v4, v5, v6, v0}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->access$400(Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;IILandroid/graphics/Point;)V

    .line 164
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorTimerTask;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    # getter for: Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mIsFingerAlreadyMoved:Z
    invoke-static {v4}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->access$500(Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    if-nez v2, :cond_2

    if-nez v3, :cond_2

    .line 174
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorTimerTask;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    # invokes: Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->onTouchStopDetected()V
    invoke-static {v4}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->access$600(Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;)V

    goto :goto_0

    .line 179
    :cond_2
    mul-int v4, v2, v2

    mul-int v5, v3, v3

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorTimerTask;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    # getter for: Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mTouchSlop:I
    invoke-static {v5}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->access$700(Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;)I

    move-result v5

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorTimerTask;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    # getter for: Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->mTouchSlop:I
    invoke-static {v6}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->access$700(Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;)I

    move-result v6

    mul-int/2addr v5, v6

    if-ge v4, v5, :cond_0

    .line 182
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v5, 0x3f860a92

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_0

    .line 189
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector$TouchStopDetectorTimerTask;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;

    # invokes: Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->onTouchStopDetected()V
    invoke-static {v4}, Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;->access$600(Lcom/sonyericsson/cameracommon/interaction/TouchMoveAndStopDetector;)V

    goto :goto_0
.end method
