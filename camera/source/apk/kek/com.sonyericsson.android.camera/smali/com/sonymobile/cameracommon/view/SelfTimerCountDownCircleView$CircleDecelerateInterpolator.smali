.class Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView$CircleDecelerateInterpolator;
.super Landroid/view/animation/DecelerateInterpolator;
.source "SelfTimerCountDownCircleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CircleDecelerateInterpolator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView$CircleDecelerateInterpolator;->this$0:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;

    invoke-direct {p0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;
    .param p2, "x1"    # Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView$1;

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView$CircleDecelerateInterpolator;-><init>(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownCircleView;)V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2
    .param p1, "input"    # F

    .prologue
    .line 158
    const v1, 0x3fd55555

    mul-float/2addr p1, v1

    .line 159
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v1, p1

    if-gtz v1, :cond_0

    .line 160
    const/high16 p1, 0x3f800000    # 1.0f

    .line 162
    :cond_0
    invoke-super {p0, p1}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v0

    .line 163
    .local v0, "f":F
    return v0
.end method
