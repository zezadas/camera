.class Lcom/sonyericsson/android/camera/controller/TouchFocusDetector$TouchStopDetectorTimerTask;
.super Ljava/util/TimerTask;
.source "TouchFocusDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchStopDetectorTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector$TouchStopDetectorTimerTask;->this$0:Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;Lcom/sonyericsson/android/camera/controller/TouchFocusDetector$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;
    .param p2, "x1"    # Lcom/sonyericsson/android/camera/controller/TouchFocusDetector$1;

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector$TouchStopDetectorTimerTask;-><init>(Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 146
    iget-object v5, p0, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector$TouchStopDetectorTimerTask;->this$0:Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;

    # getter for: Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->mCurrentTouchPos:Landroid/graphics/Point;
    invoke-static {v5}, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->access$100(Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;)Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector$TouchStopDetectorTimerTask;->this$0:Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;

    # getter for: Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->mLastCheckedPos:Landroid/graphics/Point;
    invoke-static {v6}, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->access$200(Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;)Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->x:I

    sub-int v3, v5, v6

    .line 147
    .local v3, "difX":I
    iget-object v5, p0, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector$TouchStopDetectorTimerTask;->this$0:Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;

    # getter for: Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->mCurrentTouchPos:Landroid/graphics/Point;
    invoke-static {v5}, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->access$100(Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;)Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->y:I

    iget-object v6, p0, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector$TouchStopDetectorTimerTask;->this$0:Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;

    # getter for: Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->mLastCheckedPos:Landroid/graphics/Point;
    invoke-static {v6}, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->access$200(Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;)Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->y:I

    sub-int v4, v5, v6

    .line 148
    .local v4, "difY":I
    int-to-double v6, v4

    int-to-double v8, v3

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    double-to-float v0, v6

    .line 149
    .local v0, "curRad":F
    iget-object v5, p0, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector$TouchStopDetectorTimerTask;->this$0:Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;

    # getter for: Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->mLastCheckedRad:F
    invoke-static {v5}, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->access$300(Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;)F

    move-result v5

    sub-float v1, v0, v5

    .line 152
    .local v1, "difRad":F
    iget-object v5, p0, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector$TouchStopDetectorTimerTask;->this$0:Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector$TouchStopDetectorTimerTask;->this$0:Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;

    # getter for: Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->mCurrentTouchPos:Landroid/graphics/Point;
    invoke-static {v6}, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->access$100(Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;)Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->x:I

    iget-object v7, p0, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector$TouchStopDetectorTimerTask;->this$0:Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;

    # getter for: Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->mCurrentTouchPos:Landroid/graphics/Point;
    invoke-static {v7}, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->access$100(Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;)Landroid/graphics/Point;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Point;->y:I

    # invokes: Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->updateLastCheckedParameters(IIF)V
    invoke-static {v5, v6, v7, v0}, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->access$400(Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;IIF)V

    .line 155
    iget-object v5, p0, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector$TouchStopDetectorTimerTask;->this$0:Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;

    # getter for: Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->mIsFingerAlreadyMoved:Z
    invoke-static {v5}, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->access$500(Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    if-nez v3, :cond_2

    if-nez v4, :cond_2

    .line 165
    iget-object v5, p0, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector$TouchStopDetectorTimerTask;->this$0:Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;

    # invokes: Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->onTouchStopDetected()V
    invoke-static {v5}, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->access$600(Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;)V

    goto :goto_0

    .line 170
    :cond_2
    mul-int v5, v3, v3

    mul-int v6, v4, v4

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector$TouchStopDetectorTimerTask;->this$0:Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;

    # getter for: Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->mTouchSlop:I
    invoke-static {v6}, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->access$700(Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;)I

    move-result v6

    iget-object v7, p0, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector$TouchStopDetectorTimerTask;->this$0:Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;

    # getter for: Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->mTouchSlop:I
    invoke-static {v7}, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->access$700(Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;)I

    move-result v7

    mul-int/2addr v6, v7

    if-ge v5, v6, :cond_0

    .line 172
    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v5, v1

    float-to-int v2, v5

    .line 173
    .local v2, "difRadx100":I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const/16 v6, 0x68

    if-lt v5, v6, :cond_0

    .line 179
    iget-object v5, p0, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector$TouchStopDetectorTimerTask;->this$0:Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;

    # invokes: Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->onTouchStopDetected()V
    invoke-static {v5}, Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;->access$600(Lcom/sonyericsson/android/camera/controller/TouchFocusDetector;)V

    goto :goto_0
.end method
