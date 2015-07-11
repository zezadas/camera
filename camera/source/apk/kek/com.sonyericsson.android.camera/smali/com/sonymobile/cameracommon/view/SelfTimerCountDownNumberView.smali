.class public Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;
.super Landroid/widget/ImageView;
.source "SelfTimerCountDownNumberView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$1;,
        Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AlphaAccelerateInterpolator;,
        Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AnimationEventHandler;,
        Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$ValueAnimationUpdater;
    }
.end annotation


# static fields
.field private static final ANIMATION_TIME_RATIO:F = 0.5f

.field private static final ANIMATION_VALUE:I = 0xff

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCurrentCount:I

.field private mValueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mCurrentCount:I

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mCurrentCount:I

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mCurrentCount:I

    .line 44
    return-void
.end method

.method static synthetic access$300(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mValueAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;
    .param p1, "x1"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mCurrentCount:I

    return p1
.end method

.method static synthetic access$410(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;)I
    .locals 2
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    .prologue
    .line 23
    iget v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mCurrentCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mCurrentCount:I

    return v0
.end method

.method static synthetic access$500(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setImage()V

    return-void
.end method

.method private getDuration(Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;)I
    .locals 3
    .param p1, "selfTimer"    # Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;

    .prologue
    .line 98
    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;->getDurationInMillisecond()I

    move-result v1

    const/16 v2, 0x3e8

    if-ge v1, v2, :cond_0

    .line 99
    const/16 v0, 0x1f4

    .line 103
    .local v0, "duration":I
    :goto_0
    return v0

    .line 101
    .end local v0    # "duration":I
    :cond_0
    const/16 v0, 0x3e8

    .restart local v0    # "duration":I
    goto :goto_0
.end method

.method private setAnimator(Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;)V
    .locals 5
    .param p1, "selfTimer"    # Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;

    .prologue
    const/4 v4, 0x0

    .line 120
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 121
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AlphaAccelerateInterpolator;

    invoke-direct {v1, p0, v4}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AlphaAccelerateInterpolator;-><init>(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$1;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 122
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;->getDurationInMillisecond()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 123
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mValueAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 124
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->getDuration(Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 125
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$ValueAnimationUpdater;

    invoke-direct {v1, p0, v4}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$ValueAnimationUpdater;-><init>(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$1;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 126
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AnimationEventHandler;

    invoke-direct {v1, p0, v4}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$AnimationEventHandler;-><init>(Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView$1;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 127
    return-void

    .line 120
    nop

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method private setImage()V
    .locals 3

    .prologue
    .line 58
    iget v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mCurrentCount:I

    packed-switch v0, :pswitch_data_0

    .line 90
    sget-object v0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setImage() [Irregal Value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :goto_0
    return-void

    .line 60
    :pswitch_0
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_selftimer_countdown_10_icn:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setImageResource(I)V

    goto :goto_0

    .line 63
    :pswitch_1
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_selftimer_countdown_9_icn:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setImageResource(I)V

    goto :goto_0

    .line 66
    :pswitch_2
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_selftimer_countdown_8_icn:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setImageResource(I)V

    goto :goto_0

    .line 69
    :pswitch_3
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_selftimer_countdown_7_icn:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setImageResource(I)V

    goto :goto_0

    .line 72
    :pswitch_4
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_selftimer_countdown_6_icn:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setImageResource(I)V

    goto :goto_0

    .line 75
    :pswitch_5
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_selftimer_countdown_5_icn:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setImageResource(I)V

    goto :goto_0

    .line 78
    :pswitch_6
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_selftimer_countdown_4_icn:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setImageResource(I)V

    goto :goto_0

    .line 81
    :pswitch_7
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_selftimer_countdown_3_icn:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setImageResource(I)V

    goto :goto_0

    .line 84
    :pswitch_8
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_selftimer_countdown_2_icn:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setImageResource(I)V

    goto :goto_0

    .line 87
    :pswitch_9
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_selftimer_countdown_1_icn:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setImageResource(I)V

    goto :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public cancelSelfTimerAnimation()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 112
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 49
    return-void
.end method

.method public setSelfTimer(Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;)V
    .locals 0
    .param p1, "selfTimer"    # Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->setAnimator(Lcom/sonyericsson/cameracommon/settings/SelfTimerInterface;)V

    .line 108
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 116
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 117
    return-void
.end method

.method public startAnimation()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/SelfTimerCountDownNumberView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 55
    :cond_0
    return-void
.end method
