.class public Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;
.super Landroid/widget/RelativeLayout;
.source "OnScreenButtonGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;
    }
.end annotation


# static fields
.field private static final DUMMY_CLICK_LISTENER:Landroid/view/View$OnClickListener;

.field public static final EMPTY_RESOURCE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBackground:Landroid/view/View;

.field private mBackgroundResource:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

.field private mContainer:Landroid/view/View;

.field private mIsRotatable:Z

.field private final mListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;",
            "Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMain:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

.field private mOrientation:I

.field private mStaticOrientation:I

.field private mSub:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 41
    const-class v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->TAG:Ljava/lang/String;

    .line 56
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    invoke-direct {v0, v1, v1, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;-><init>(III)V

    sput-object v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->EMPTY_RESOURCE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    .line 520
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$1;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$1;-><init>()V

    sput-object v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->DUMMY_CLICK_LISTENER:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 315
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->EMPTY_RESOURCE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mBackgroundResource:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mStaticOrientation:I

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mIsRotatable:Z

    .line 316
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mListeners:Ljava/util/HashMap;

    .line 317
    return-void
.end method

.method private adjustBackground(IIII)V
    .locals 0
    .param p1, "backgroundTop"    # I
    .param p2, "containerTop"    # I
    .param p3, "containerButtonSpace"    # I
    .param p4, "containerGravity"    # I

    .prologue
    .line 365
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setBackgroundMarginTop(I)V

    .line 366
    invoke-direct {p0, p2}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setContainerMarginTop(I)V

    .line 367
    invoke-direct {p0, p4}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setBackgroundAndContainerGravity(I)V

    .line 368
    invoke-direct {p0, p3}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setSubButtonMarginTop(I)V

    .line 369
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->requestLayout()V

    .line 370
    return-void
.end method

.method private restartAnimation(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 422
    instance-of v0, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 423
    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 425
    :cond_0
    return-void
.end method

.method private setBackgroundAndContainerGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 388
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 389
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 390
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 391
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 392
    return-void
.end method

.method private setBackgroundMarginTop(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 376
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 377
    .local v0, "topMargin":I
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mBackground:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 378
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mBackground:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 379
    return-void

    .line 376
    .end local v0    # "topMargin":I
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mBackground:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0
.end method

.method private setContainerMarginTop(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 382
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 383
    .local v0, "topMargin":I
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 384
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 385
    return-void

    .line 382
    .end local v0    # "topMargin":I
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0
.end method

.method private setSubButtonMarginTop(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 395
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 396
    .local v0, "topMargin":I
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mSub:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 397
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mSub:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->requestLayout()V

    .line 398
    return-void

    .line 395
    .end local v0    # "topMargin":I
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0
.end method

.method private setupBackgroundDual()V
    .locals 4

    .prologue
    .line 344
    sget v0, Lcom/sonyericsson/cameracommon/R$dimen;->on_screen_button_background_dual_background_top_margin:I

    sget v1, Lcom/sonyericsson/cameracommon/R$dimen;->on_screen_button_background_dual_container_top_margin:I

    sget v2, Lcom/sonyericsson/cameracommon/R$dimen;->on_screen_button_background_dual_container_space:I

    const/16 v3, 0x31

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->adjustBackground(IIII)V

    .line 349
    return-void
.end method

.method private setupBackgroundPhotoAndSwitch()V
    .locals 4

    .prologue
    .line 353
    sget v0, Lcom/sonyericsson/cameracommon/R$dimen;->on_screen_button_photo_video_switch_background_top_margin:I

    sget v1, Lcom/sonyericsson/cameracommon/R$dimen;->on_screen_button_photo_video_switch_container_top_margin:I

    sget v2, Lcom/sonyericsson/cameracommon/R$dimen;->on_screen_button_photo_video_switch_container_space:I

    const/16 v3, 0x31

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->adjustBackground(IIII)V

    .line 358
    return-void
.end method

.method private setupBackgroundSingle()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 335
    const/16 v0, 0x11

    invoke-direct {p0, v1, v1, v1, v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->adjustBackground(IIII)V

    .line 340
    return-void
.end method

.method private updateBackground()V
    .locals 3

    .prologue
    .line 511
    iget v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mBackgroundResource:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    iget v0, v1, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;->landscape:I

    .line 513
    .local v0, "res":I
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 514
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mBackground:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 515
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mBackground:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 518
    :cond_0
    return-void

    .line 511
    .end local v0    # "res":I
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mBackgroundResource:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    iget v0, v1, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;->portrait:I

    goto :goto_0
.end method


# virtual methods
.method public changeRotatability(IZ)V
    .locals 0
    .param p1, "orientation"    # I
    .param p2, "isRotatable"    # Z

    .prologue
    .line 528
    iput-boolean p2, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mIsRotatable:Z

    .line 529
    if-nez p2, :cond_0

    .line 530
    iput p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mStaticOrientation:I

    .line 532
    :cond_0
    return-void
.end method

.method public clearTouched()V
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mMain:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->clearTouched()V

    .line 402
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mSub:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->clearTouched()V

    .line 403
    return-void
.end method

.method public isTouched()Z
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mMain:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->isTouched()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mSub:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->isTouched()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 321
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 323
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->main_button:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mMain:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    .line 324
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mMain:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setVisibility(I)V

    .line 326
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->sub_button:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mSub:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    .line 327
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mSub:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setVisibility(I)V

    .line 329
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->background:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mBackground:Landroid/view/View;

    .line 330
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->container:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mContainer:Landroid/view/View;

    .line 331
    return-void
.end method

.method public restartAnimation()V
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mMain:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->restartAnimation(Landroid/graphics/drawable/Drawable;)V

    .line 418
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mSub:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->restartAnimation(Landroid/graphics/drawable/Drawable;)V

    .line 419
    return-void
.end method

.method public setBackground(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;)V
    .locals 1
    .param p1, "resource"    # Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    .prologue
    .line 502
    if-nez p1, :cond_0

    .line 503
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->EMPTY_RESOURCE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mBackgroundResource:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    .line 507
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->updateBackground()V

    .line 508
    return-void

    .line 505
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mBackgroundResource:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    goto :goto_0
.end method

.method public setListener(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;)V
    .locals 1
    .param p1, "type"    # Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;
    .param p2, "listener"    # Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;

    .prologue
    .line 410
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    return-void
.end method

.method public setMain(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;)V
    .locals 2
    .param p1, "type"    # Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    .prologue
    .line 430
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mMain:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    iget-object v1, p1, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->mainButtonResource:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->set(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;)V

    .line 431
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mMain:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setListener(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;)V

    .line 433
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->NONE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    if-ne p1, v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mMain:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setVisibility(I)V

    .line 438
    :goto_0
    return-void

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mMain:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public setMain(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;IZ)V
    .locals 1
    .param p1, "type"    # Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;
    .param p2, "orientation"    # I
    .param p3, "isRotatable"    # Z

    .prologue
    .line 444
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setMain(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;)V

    .line 445
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mMain:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    invoke-virtual {v0, p2, p3}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->changeRotatability(IZ)V

    .line 446
    return-void
.end method

.method public setSub(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;)V
    .locals 4
    .param p1, "type"    # Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 451
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->NONE:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    if-ne p1, v0, :cond_0

    .line 452
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->backgroundResource:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setBackground(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;)V

    .line 453
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setupBackgroundSingle()V

    .line 454
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mSub:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    iget-object v1, p1, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->subButtonResource:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->set(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;)V

    .line 455
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mSub:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setListener(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;)V

    .line 456
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mSub:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setVisibility(I)V

    .line 457
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mSub:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 484
    :goto_0
    return-void

    .line 459
    :cond_0
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->HIDDEN:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    if-ne p1, v0, :cond_1

    .line 460
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->backgroundResource:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setBackground(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;)V

    .line 461
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setupBackgroundPhotoAndSwitch()V

    .line 463
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mSub:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setListener(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;)V

    .line 464
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mSub:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setVisibility(I)V

    .line 465
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mSub:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 467
    :cond_1
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->PHOTO_TO_VIDEO:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->VIDEO_TO_PHOTO:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;

    if-ne p1, v0, :cond_3

    .line 468
    :cond_2
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->backgroundResource:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setBackground(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;)V

    .line 469
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setupBackgroundPhotoAndSwitch()V

    .line 470
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mSub:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    iget-object v1, p1, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->subButtonResource:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->set(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;)V

    .line 471
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mSub:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setListener(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;)V

    .line 472
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mSub:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setVisibility(I)V

    .line 474
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mSub:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->DUMMY_CLICK_LISTENER:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 477
    :cond_3
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->backgroundResource:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setBackground(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;)V

    .line 478
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setupBackgroundDual()V

    .line 479
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mSub:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    iget-object v1, p1, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;->subButtonResource:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->set(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton$Resource;)V

    .line 480
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mSub:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setListener(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonListener;)V

    .line 481
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mSub:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setVisibility(I)V

    .line 482
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mSub:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setSub(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;IZ)V
    .locals 1
    .param p1, "type"    # Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;
    .param p2, "orientation"    # I
    .param p3, "isRotatable"    # Z

    .prologue
    .line 490
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->setSub(Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup$ButtonType;)V

    .line 491
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mSub:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    invoke-virtual {v0, p2, p3}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->changeRotatability(IZ)V

    .line 492
    return-void
.end method

.method public setUiOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 495
    iput p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mOrientation:I

    .line 496
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mMain:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setUiOrientation(I)V

    .line 497
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->mSub:Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButton;->setUiOrientation(I)V

    .line 498
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->updateBackground()V

    .line 499
    return-void
.end method
