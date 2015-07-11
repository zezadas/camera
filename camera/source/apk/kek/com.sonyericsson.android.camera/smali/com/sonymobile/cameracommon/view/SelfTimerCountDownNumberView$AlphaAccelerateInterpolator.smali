.class Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AlphaAccelerateInterpolator;
.super Landroid/view/animation/AccelerateInterpolator;
.source "SelfTimerCountDownNumberView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlphaAccelerateInterpolator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AlphaAccelerateInterpolator;->this$0:Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    invoke-direct {p0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;
    .param p2, "x1"    # Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$1;

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AlphaAccelerateInterpolator;-><init>(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;)V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2
    .param p1, "input"    # F

    .prologue
    .line 169
    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr p1, v1

    .line 170
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v1, p1

    if-gtz v1, :cond_0

    .line 171
    const/high16 p1, 0x3f800000    # 1.0f

    .line 173
    :cond_0
    invoke-super {p0, p1}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v0

    .line 174
    .local v0, "f":F
    return v0
.end method
