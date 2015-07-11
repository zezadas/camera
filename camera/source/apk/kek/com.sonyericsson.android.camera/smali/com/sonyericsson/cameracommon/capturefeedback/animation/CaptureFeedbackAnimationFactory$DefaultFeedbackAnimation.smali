.class Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimationFactory$DefaultFeedbackAnimation;
.super Ljava/lang/Object;
.source "CaptureFeedbackAnimationFactory.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimationFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultFeedbackAnimation"
.end annotation


# static fields
.field private static final BLUE:F = 0.0f

.field private static final DURATION_MILLIS:J = 0xc8L

.field private static final END_ALPHA:F = 0.0f

.field private static final GREEN:F = 0.0f

.field private static final RED:F = 0.0f

.field private static final START_ALPHA:F = 1.0f


# instance fields
.field private final mInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimationFactory$DefaultFeedbackAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimationFactory$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimationFactory$1;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimationFactory$DefaultFeedbackAnimation;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimationCanvas;J)Z
    .locals 8
    .param p1, "canvas"    # Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimationCanvas;
    .param p2, "elapsedTimeMillis"    # J

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 36
    long-to-float v2, p2

    const/high16 v3, 0x43480000    # 200.0f

    div-float v1, v2, v3

    .line 37
    .local v1, "progress":F
    const/high16 v2, -0x40800000    # -1.0f

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimationFactory$DefaultFeedbackAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    mul-float/2addr v2, v3

    add-float v0, v4, v2

    .line 46
    .local v0, "alpha":F
    float-to-double v2, v1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 47
    const/4 v2, 0x0

    .line 50
    :goto_0
    return v2

    .line 49
    :cond_0
    invoke-interface {p1, v0, v6, v6, v6}, Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimationCanvas;->drawColor(FFFF)V

    .line 50
    const/4 v2, 0x1

    goto :goto_0
.end method
