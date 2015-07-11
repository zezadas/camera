.class public Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;
.super Landroid/widget/FrameLayout;
.source "RotatableToast.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$2;,
        Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;,
        Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;
    }
.end annotation


# static fields
.field private static final FADEOUT_OFFSET_LONG:J = 0x1194L

.field private static final FADEOUT_OFFSET_SHORT:J = 0x9c4L

.field public static final LENGTH_LONG:I = 0x1

.field public static final LENGTH_SHORT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "RotatableToast"

.field private static mLayoutParamsLandscape:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;

.field private static mLayoutParamsPortrait:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;


# instance fields
.field private mBackgroundView:Landroid/view/ViewGroup;

.field private mBaseView:Landroid/view/ViewGroup;

.field private mDuration:I

.field private mFadeoutAnimation:Landroid/view/animation/Animation;

.field mHandler:Landroid/os/Handler;

.field private mLayoutRoot:Landroid/view/ViewGroup;

.field private mSensorOrientation:I

.field private final mStartAnimation:Ljava/lang/Runnable;

.field private mTextView:Landroid/widget/TextView;

.field private mToastPosition:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    sput-object v0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mLayoutParamsLandscape:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;

    .line 60
    sput-object v0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mLayoutParamsPortrait:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 118
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mBaseView:Landroid/view/ViewGroup;

    .line 81
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mBackgroundView:Landroid/view/ViewGroup;

    .line 84
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mTextView:Landroid/widget/TextView;

    .line 87
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mSensorOrientation:I

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mDuration:I

    .line 93
    sget-object v0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;->CENTER:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mToastPosition:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    .line 102
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mHandler:Landroid/os/Handler;

    .line 271
    new-instance v0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$1;-><init>(Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mStartAnimation:Ljava/lang/Runnable;

    .line 119
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mFadeoutAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mBaseView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private addToWindow()V
    .locals 1

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mLayoutRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mLayoutRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 331
    return-void
.end method

.method private getContainerRect()Landroid/graphics/Rect;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 221
    iget v2, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mSensorOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    sget-object v0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mLayoutParamsPortrait:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;

    .line 225
    .local v0, "params":Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;
    :goto_0
    if-nez v0, :cond_1

    .line 239
    :goto_1
    return-object v1

    .line 221
    .end local v0    # "params":Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;
    :cond_0
    sget-object v0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mLayoutParamsLandscape:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;

    goto :goto_0

    .line 229
    .restart local v0    # "params":Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;
    :cond_1
    sget-object v2, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$2;->$SwitchMap$com$sonyericsson$cameracommon$rotatableview$RotatableToast$ToastPosition:[I

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mToastPosition:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 231
    :pswitch_0
    iget-object v1, v0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;->topContainer:Landroid/graphics/Rect;

    goto :goto_1

    .line 234
    :pswitch_1
    iget-object v1, v0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;->bottomContainer:Landroid/graphics/Rect;

    goto :goto_1

    .line 229
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static inflate(Landroid/app/Activity;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 391
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 392
    .local v0, "inflater":Landroid/view/LayoutInflater;
    if-nez v0, :cond_0

    .line 393
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "LayoutInflater not found."

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 395
    :cond_0
    sget v1, Lcom/sonyericsson/cameracommon/R$layout;->rotatable_toast:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    return-object v1
.end method

.method private removeFromWindow()V
    .locals 1

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mLayoutRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 343
    :cond_0
    return-void
.end method

.method public static setToastLayoutParams(Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;)V
    .locals 0
    .param p0, "landscape"    # Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;
    .param p1, "portrait"    # Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;

    .prologue
    .line 65
    sput-object p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mLayoutParamsLandscape:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;

    .line 66
    sput-object p1, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mLayoutParamsPortrait:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastLayoutParams;

    .line 67
    return-void
.end method

.method private updatePosition()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 208
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mBackgroundView:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mSensorOrientation:I

    invoke-static {v2}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setRotation(F)V

    .line 209
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->getContainerRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 210
    .local v0, "container":Landroid/graphics/Rect;
    if-eqz v0, :cond_0

    .line 211
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mBackgroundView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 212
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mBackgroundView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 218
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mBackgroundView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 216
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mBackgroundView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setTranslationY(F)V

    goto :goto_0
.end method

.method private updateTextMaxWidth()V
    .locals 3

    .prologue
    .line 195
    iget v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mSensorOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 196
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sonyericsson/cameracommon/R$dimen;->rotatable_toast_max_width_for_port:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 202
    :goto_0
    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sonyericsson/cameracommon/R$dimen;->rotatable_toast_max_width_for_land:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_0
.end method


# virtual methods
.method public getDuration()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mDuration:I

    return v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 287
    return-void
.end method

.method public hideImmediately()V
    .locals 3

    .prologue
    .line 293
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mBaseView:Landroid/view/ViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 295
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 296
    .local v0, "currentAnimation":Landroid/view/animation/Animation;
    if-eqz v0, :cond_1

    .line 300
    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 301
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 306
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->removeFromWindow()V

    .line 317
    :goto_0
    return-void

    .line 308
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->clearAnimation()V

    goto :goto_0

    .line 312
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mStartAnimation:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 315
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->removeFromWindow()V

    goto :goto_0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 348
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->removeFromWindow()V

    .line 349
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 354
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 360
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 124
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 127
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mLayoutRoot:Landroid/view/ViewGroup;

    .line 128
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->rotatable_toast_base:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mBaseView:Landroid/view/ViewGroup;

    .line 130
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->rotatable_toast_text_background:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mBackgroundView:Landroid/view/ViewGroup;

    .line 132
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->rotatable_toast_text:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mTextView:Landroid/widget/TextView;

    .line 136
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/sonyericsson/cameracommon/R$anim;->rotatable_toast_anime:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mFadeoutAnimation:Landroid/view/animation/Animation;

    .line 138
    return-void
.end method

.method public requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 367
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_0

    .line 372
    const/4 v0, 0x0

    .line 387
    :goto_0
    return v0

    .line 379
    :cond_0
    const/16 v1, 0x40

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 382
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 385
    .local v0, "reult":Z
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mBaseView:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 168
    iput p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mDuration:I

    .line 169
    return-void
.end method

.method public setSensorOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 157
    iput p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mSensorOrientation:I

    .line 158
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->updateTextMaxWidth()V

    .line 159
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->updatePosition()V

    .line 160
    return-void
.end method

.method public setTextResId(I)V
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 145
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 146
    return-void
.end method

.method public setToastPosition(Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;)V
    .locals 0
    .param p1, "position"    # Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mToastPosition:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    .line 187
    return-void
.end method

.method public show()V
    .locals 5

    .prologue
    .line 250
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mBaseView:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 253
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->addToWindow()V

    .line 254
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->updateTextMaxWidth()V

    .line 255
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->updatePosition()V

    .line 259
    iget v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mDuration:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    .line 260
    const-wide/16 v2, 0x1194

    .line 265
    .local v2, "durationTime":J
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mFadeoutAnimation:Landroid/view/animation/Animation;

    .line 266
    .local v0, "animation":Landroid/view/animation/Animation;
    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 268
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->mStartAnimation:Ljava/lang/Runnable;

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 269
    return-void

    .line 262
    .end local v0    # "animation":Landroid/view/animation/Animation;
    .end local v2    # "durationTime":J
    :cond_0
    const-wide/16 v2, 0x9c4

    .restart local v2    # "durationTime":J
    goto :goto_0
.end method
