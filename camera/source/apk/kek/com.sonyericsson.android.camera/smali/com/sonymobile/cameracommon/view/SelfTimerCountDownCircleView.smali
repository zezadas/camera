.class public Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;
.super Landroid/view/View;
.source "SelfTimerCountDownCircleView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView$1;,
        Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView$CircleDecelerateInterpolator;,
        Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView$AnimationEventHandler;,
        Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView$ValueAnimationUpdater;
    }
.end annotation


# static fields
.field private static final ANIMATION_TIME_RATIO:F = 0.6f

.field private static final ANIMATION_VALUE:F = 360.0f

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private final COUNTDOWN_CIRCLE_RADIUS:I

.field private final COUNTDOWN_CIRCLE_STROKE_WIDTH:I

.field private mPaint:Landroid/graphics/Paint;

.field private mValueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sonyericsson/cameracommon/R$dimen;->viewfinder_countdown_outside_diameter:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->COUNTDOWN_CIRCLE_RADIUS:I

    .line 38
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sonyericsson/cameracommon/R$dimen;->viewfinder_countdown_outside_diameter:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sonyericsson/cameracommon/R$dimen;->viewfinder_countdown_inside_diameter:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->COUNTDOWN_CIRCLE_STROKE_WIDTH:I

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 52
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->init(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sonyericsson/cameracommon/R$dimen;->viewfinder_countdown_outside_diameter:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->COUNTDOWN_CIRCLE_RADIUS:I

    .line 38
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sonyericsson/cameracommon/R$dimen;->viewfinder_countdown_outside_diameter:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sonyericsson/cameracommon/R$dimen;->viewfinder_countdown_inside_diameter:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->COUNTDOWN_CIRCLE_STROKE_WIDTH:I

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 47
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->init(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sonyericsson/cameracommon/R$dimen;->viewfinder_countdown_outside_diameter:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->COUNTDOWN_CIRCLE_RADIUS:I

    .line 38
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sonyericsson/cameracommon/R$dimen;->viewfinder_countdown_outside_diameter:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sonyericsson/cameracommon/R$dimen;->viewfinder_countdown_inside_diameter:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->COUNTDOWN_CIRCLE_STROKE_WIDTH:I

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 57
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->init(Landroid/content/Context;)V

    .line 58
    return-void
.end method

.method private drawArc(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 95
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->COUNTDOWN_CIRCLE_RADIUS:I

    iget v2, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->COUNTDOWN_CIRCLE_STROKE_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    int-to-float v8, v0

    .line 99
    .local v8, "radius":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v6, v0, v4

    .line 100
    .local v6, "centerX":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v7, v0, v4

    .line 101
    .local v7, "centerY":F
    new-instance v1, Landroid/graphics/RectF;

    sub-float v0, v6, v8

    sub-float v2, v7, v8

    add-float v4, v6, v8

    add-float v5, v7, v8

    invoke-direct {v1, v0, v2, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 106
    .local v1, "rect":Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 107
    .local v3, "endArc":F
    const/high16 v2, -0x3d4c0000    # -90.0f

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 109
    .end local v1    # "rect":Landroid/graphics/RectF;
    .end local v3    # "endArc":F
    .end local v6    # "centerX":F
    .end local v7    # "centerY":F
    .end local v8    # "radius":F
    :cond_0
    return-void
.end method

.method private getRotateDuration(Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;)I
    .locals 3
    .param p1, "selftimer"    # Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;

    .prologue
    .line 86
    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;->getDurationInMillisecond()I

    move-result v1

    const/16 v2, 0x3e8

    if-ge v1, v2, :cond_0

    .line 87
    const/16 v0, 0x1f4

    .line 91
    .local v0, "rotateDurationMillisecond":I
    :goto_0
    return v0

    .line 89
    .end local v0    # "rotateDurationMillisecond":I
    :cond_0
    const/16 v0, 0x3e8

    .restart local v0    # "rotateDurationMillisecond":I
    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->mPaint:Landroid/graphics/Paint;

    .line 62
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 63
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->COUNTDOWN_CIRCLE_STROKE_WIDTH:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 64
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 65
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sonyericsson/cameracommon/R$color;->viewfinder_countdown_circle_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    return-void
.end method

.method private setAnimator(Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;)V
    .locals 5
    .param p1, "selftimer"    # Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;

    .prologue
    const/4 v4, 0x0

    .line 69
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 70
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView$CircleDecelerateInterpolator;

    invoke-direct {v1, p0, v4}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView$CircleDecelerateInterpolator;-><init>(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView$1;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 71
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->mValueAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 72
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->getRotateDuration(Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 73
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;->getDurationInMillisecond()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 74
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView$ValueAnimationUpdater;

    invoke-direct {v1, p0, v4}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView$ValueAnimationUpdater;-><init>(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView$1;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 75
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView$AnimationEventHandler;

    invoke-direct {v1, p0, v4}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView$AnimationEventHandler;-><init>(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView$1;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 76
    return-void

    .line 69
    nop

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method


# virtual methods
.method public cancelSelfTimerAnimation()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 117
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 81
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->drawArc(Landroid/graphics/Canvas;)V

    .line 82
    return-void
.end method

.method public setSelfTimer(Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;)V
    .locals 0
    .param p1, "selfTimer"    # Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->setAnimator(Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;)V

    .line 113
    return-void
.end method

.method public startAnimation()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 123
    :cond_0
    return-void
.end method
