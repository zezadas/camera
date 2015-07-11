.class public Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;
.super Ljava/lang/Object;
.source "TouchScaleAndRotateDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector$ScaleAndRotateDetectorListener;
    }
.end annotation


# static fields
.field private static final ROTATE_DETECTION_THRESHOLD_DEGREE:I = 0x1


# instance fields
.field private mAxisRotateDeg:F

.field private mCurrentAxisVec:Landroid/graphics/PointF;

.field private mCurrentTouchPos0:Landroid/graphics/PointF;

.field private mCurrentTouchPos1:Landroid/graphics/PointF;

.field private mListener:Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector$ScaleAndRotateDetectorListener;

.field private mOriginalAxisLen:F

.field private mPreviousAxisVec:Landroid/graphics/PointF;

.field private mPreviousTouchPos0:Landroid/graphics/PointF;

.field private mPreviousTouchPos1:Landroid/graphics/PointF;

.field private mTouchVec0:Landroid/graphics/PointF;

.field private mTouchVec1:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentTouchPos0:Landroid/graphics/PointF;

    .line 25
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentTouchPos1:Landroid/graphics/PointF;

    .line 30
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mTouchVec0:Landroid/graphics/PointF;

    .line 31
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mTouchVec1:Landroid/graphics/PointF;

    .line 35
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentAxisVec:Landroid/graphics/PointF;

    .line 38
    iput v1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mAxisRotateDeg:F

    .line 41
    iput v1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mOriginalAxisLen:F

    .line 54
    return-void
.end method


# virtual methods
.method release()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mListener:Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector$ScaleAndRotateDetectorListener;

    .line 58
    return-void
.end method

.method public setScaleAndRotateDetectorListener(Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector$ScaleAndRotateDetectorListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector$ScaleAndRotateDetectorListener;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mListener:Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector$ScaleAndRotateDetectorListener;

    .line 62
    return-void
.end method

.method public startScaleAndRotateDetection(Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 4
    .param p1, "point0"    # Landroid/graphics/PointF;
    .param p2, "point1"    # Landroid/graphics/PointF;

    .prologue
    .line 65
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mPreviousTouchPos0:Landroid/graphics/PointF;

    .line 66
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p2, Landroid/graphics/PointF;->x:F

    iget v2, p2, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mPreviousTouchPos1:Landroid/graphics/PointF;

    .line 67
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p2, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    iget v2, p2, Landroid/graphics/PointF;->y:F

    iget v3, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mPreviousAxisVec:Landroid/graphics/PointF;

    .line 68
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mPreviousAxisVec:Landroid/graphics/PointF;

    invoke-virtual {v0}, Landroid/graphics/PointF;->length()F

    move-result v0

    iput v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mOriginalAxisLen:F

    .line 69
    return-void
.end method

.method public stopScaleAndRotateDetection()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 136
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentTouchPos0:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 137
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentTouchPos1:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 138
    iput-object v2, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mPreviousTouchPos0:Landroid/graphics/PointF;

    .line 139
    iput-object v2, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mPreviousTouchPos1:Landroid/graphics/PointF;

    .line 141
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mTouchVec0:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 142
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mTouchVec1:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 144
    iput-object v2, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mPreviousAxisVec:Landroid/graphics/PointF;

    .line 145
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentAxisVec:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 147
    iput v1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mAxisRotateDeg:F

    .line 149
    iput v1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mOriginalAxisLen:F

    .line 150
    return-void
.end method

.method public updateCurrentPosition(Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 12
    .param p1, "point0"    # Landroid/graphics/PointF;
    .param p2, "point1"    # Landroid/graphics/PointF;

    .prologue
    .line 73
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentTouchPos0:Landroid/graphics/PointF;

    invoke-virtual {v7, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 74
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentTouchPos1:Landroid/graphics/PointF;

    invoke-virtual {v7, p2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 77
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mTouchVec0:Landroid/graphics/PointF;

    iget-object v8, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentTouchPos0:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    iget-object v9, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mPreviousTouchPos0:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    sub-float/2addr v8, v9

    iget-object v9, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentTouchPos0:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    iget-object v10, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mPreviousTouchPos0:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->y:F

    sub-float/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/graphics/PointF;->set(FF)V

    .line 80
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mTouchVec1:Landroid/graphics/PointF;

    iget-object v8, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentTouchPos1:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    iget-object v9, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mPreviousTouchPos1:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    sub-float/2addr v8, v9

    iget-object v9, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentTouchPos1:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    iget-object v10, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mPreviousTouchPos1:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->y:F

    sub-float/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/graphics/PointF;->set(FF)V

    .line 85
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentAxisVec:Landroid/graphics/PointF;

    iget-object v8, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentTouchPos1:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    iget-object v9, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentTouchPos0:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    sub-float/2addr v8, v9

    iget-object v9, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentTouchPos1:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    iget-object v10, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentTouchPos0:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->y:F

    sub-float/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/graphics/PointF;->set(FF)V

    .line 90
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentAxisVec:Landroid/graphics/PointF;

    iget-object v8, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mTouchVec0:Landroid/graphics/PointF;

    invoke-static {v7, v8}, Lcom/sonyericsson/cameracommon/interaction/VectorCalculator;->isSquare(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentAxisVec:Landroid/graphics/PointF;

    iget-object v8, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mTouchVec1:Landroid/graphics/PointF;

    invoke-static {v7, v8}, Lcom/sonyericsson/cameracommon/interaction/VectorCalculator;->isSquare(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 93
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mPreviousAxisVec:Landroid/graphics/PointF;

    iget-object v8, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentAxisVec:Landroid/graphics/PointF;

    invoke-static {v7, v8}, Lcom/sonyericsson/cameracommon/interaction/VectorCalculator;->getRadianFrom2Vector(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v2

    .line 98
    .local v2, "difRad":F
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mPreviousAxisVec:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    iget-object v8, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentAxisVec:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    mul-float/2addr v7, v8

    iget-object v8, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentAxisVec:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    iget-object v9, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mPreviousAxisVec:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->y:F

    mul-float/2addr v8, v9

    sub-float v4, v7, v8

    .line 100
    .local v4, "outerProduct":F
    const/4 v7, 0x0

    cmpg-float v7, v7, v4

    if-gtz v7, :cond_2

    .line 101
    const/high16 v3, 0x3f800000    # 1.0f

    .line 107
    .local v3, "direction":F
    :goto_0
    const/high16 v7, 0x43b40000    # 360.0f

    mul-float/2addr v7, v2

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    float-to-double v8, v7

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v8, v10

    float-to-double v10, v3

    mul-double/2addr v8, v10

    double-to-float v1, v8

    .line 108
    .local v1, "difDeg":F
    iget v5, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mAxisRotateDeg:F

    .line 109
    .local v5, "previousDeg":F
    iget v7, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mAxisRotateDeg:F

    add-float/2addr v7, v1

    iput v7, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mAxisRotateDeg:F

    .line 110
    const/high16 v7, 0x3f800000    # 1.0f

    iget v8, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mAxisRotateDeg:F

    sub-float/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_0

    .line 112
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mListener:Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector$ScaleAndRotateDetectorListener;

    iget v8, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mAxisRotateDeg:F

    iget v9, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mAxisRotateDeg:F

    sub-float/2addr v9, v5

    invoke-interface {v7, v8, v9}, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector$ScaleAndRotateDetectorListener;->onDoubleTouchRotateDetected(FF)V

    .line 118
    .end local v1    # "difDeg":F
    .end local v2    # "difRad":F
    .end local v3    # "direction":F
    .end local v4    # "outerProduct":F
    .end local v5    # "previousDeg":F
    :cond_0
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentAxisVec:Landroid/graphics/PointF;

    iget-object v8, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mTouchVec0:Landroid/graphics/PointF;

    invoke-static {v7, v8}, Lcom/sonyericsson/cameracommon/interaction/VectorCalculator;->isParallel(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentAxisVec:Landroid/graphics/PointF;

    iget-object v8, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mTouchVec1:Landroid/graphics/PointF;

    invoke-static {v7, v8}, Lcom/sonyericsson/cameracommon/interaction/VectorCalculator;->isParallel(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 121
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentAxisVec:Landroid/graphics/PointF;

    invoke-virtual {v7}, Landroid/graphics/PointF;->length()F

    move-result v0

    .line 122
    .local v0, "currentLen":F
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mPreviousAxisVec:Landroid/graphics/PointF;

    invoke-virtual {v7}, Landroid/graphics/PointF;->length()F

    move-result v6

    .line 125
    .local v6, "previousLen":F
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mListener:Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector$ScaleAndRotateDetectorListener;

    iget v8, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mOriginalAxisLen:F

    invoke-interface {v7, v0, v6, v8}, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector$ScaleAndRotateDetectorListener;->onDoubleTouchScaleDetected(FFF)V

    .line 129
    .end local v0    # "currentLen":F
    .end local v6    # "previousLen":F
    :cond_1
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mPreviousAxisVec:Landroid/graphics/PointF;

    iget-object v8, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentAxisVec:Landroid/graphics/PointF;

    invoke-virtual {v7, v8}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 130
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mPreviousTouchPos0:Landroid/graphics/PointF;

    iget-object v8, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentTouchPos0:Landroid/graphics/PointF;

    invoke-virtual {v7, v8}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 131
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mPreviousTouchPos1:Landroid/graphics/PointF;

    iget-object v8, p0, Lcom/sonyericsson/cameracommon/interaction/TouchScaleAndRotateDetector;->mCurrentTouchPos1:Landroid/graphics/PointF;

    invoke-virtual {v7, v8}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 132
    return-void

    .line 103
    .restart local v2    # "difRad":F
    .restart local v4    # "outerProduct":F
    :cond_2
    const/high16 v3, -0x40800000    # -1.0f

    .restart local v3    # "direction":F
    goto :goto_0
.end method
