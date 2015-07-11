.class Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector$TouchStopDetectorTimerTask;
.super Ljava/util/TimerTask;
.source "TouchMoveAndStopDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchStopDetectorTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector$TouchStopDetectorTimerTask;->this$0:Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;
    .param p2, "x1"    # Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector$1;

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector$TouchStopDetectorTimerTask;-><init>(Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 124
    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector$TouchStopDetectorTimerTask;->this$0:Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;

    # getter for: Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->mCurrentTouchPos:Landroid/graphics/Point;
    invoke-static {v5}, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->access$100(Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;)Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector$TouchStopDetectorTimerTask;->this$0:Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;

    # getter for: Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->mLastCheckedPos:Landroid/graphics/Point;
    invoke-static {v6}, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->access$200(Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;)Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->x:I

    sub-int v3, v5, v6

    .line 125
    .local v3, "difX":I
    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector$TouchStopDetectorTimerTask;->this$0:Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;

    # getter for: Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->mCurrentTouchPos:Landroid/graphics/Point;
    invoke-static {v5}, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->access$100(Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;)Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->y:I

    iget-object v6, p0, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector$TouchStopDetectorTimerTask;->this$0:Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;

    # getter for: Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->mLastCheckedPos:Landroid/graphics/Point;
    invoke-static {v6}, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->access$200(Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;)Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->y:I

    sub-int v4, v5, v6

    .line 126
    .local v4, "difY":I
    int-to-double v6, v4

    int-to-double v8, v3

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    double-to-float v0, v6

    .line 127
    .local v0, "curRad":F
    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector$TouchStopDetectorTimerTask;->this$0:Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;

    # getter for: Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->mLastCheckedRad:F
    invoke-static {v5}, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->access$300(Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;)F

    move-result v5

    sub-float v1, v0, v5

    .line 130
    .local v1, "difRad":F
    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector$TouchStopDetectorTimerTask;->this$0:Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector$TouchStopDetectorTimerTask;->this$0:Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;

    # getter for: Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->mCurrentTouchPos:Landroid/graphics/Point;
    invoke-static {v6}, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->access$100(Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;)Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->x:I

    iget-object v7, p0, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector$TouchStopDetectorTimerTask;->this$0:Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;

    # getter for: Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->mCurrentTouchPos:Landroid/graphics/Point;
    invoke-static {v7}, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->access$100(Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;)Landroid/graphics/Point;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Point;->y:I

    # invokes: Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->updateLastCheckedParameters(IIF)V
    invoke-static {v5, v6, v7, v0}, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->access$400(Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;IIF)V

    .line 133
    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector$TouchStopDetectorTimerTask;->this$0:Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;

    # getter for: Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->mIsFingerAlreadyMoved:Z
    invoke-static {v5}, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->access$500(Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    if-nez v3, :cond_2

    if-nez v4, :cond_2

    .line 143
    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector$TouchStopDetectorTimerTask;->this$0:Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;

    # invokes: Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->onTouchStopDetected()V
    invoke-static {v5}, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->access$600(Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;)V

    goto :goto_0

    .line 148
    :cond_2
    mul-int v5, v3, v3

    mul-int v6, v4, v4

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector$TouchStopDetectorTimerTask;->this$0:Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;

    # getter for: Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->mTouchSlop:I
    invoke-static {v6}, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->access$700(Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;)I

    move-result v6

    iget-object v7, p0, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector$TouchStopDetectorTimerTask;->this$0:Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;

    # getter for: Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->mTouchSlop:I
    invoke-static {v7}, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->access$700(Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;)I

    move-result v7

    mul-int/2addr v6, v7

    if-ge v5, v6, :cond_0

    .line 150
    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v5, v1

    float-to-int v2, v5

    .line 151
    .local v2, "difRadx100":I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const/16 v6, 0x68

    if-lt v5, v6, :cond_0

    .line 157
    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector$TouchStopDetectorTimerTask;->this$0:Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;

    # invokes: Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->onTouchStopDetected()V
    invoke-static {v5}, Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;->access$600(Lcom/sonyericsson/android/camera/view/TouchMoveAndStopDetector;)V

    goto :goto_0
.end method
