.class public Lcom/sonyericsson/cameracommon/focusview/SmileGauge;
.super Landroid/widget/RelativeLayout;
.source "SmileGauge.java"


# static fields
.field public static final SMILE_LEVEL:I = 0x5

.field public static final SMILE_MAX:I = 0x64

.field public static final SMILE_MIN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SmileGauge"


# instance fields
.field protected mAlignBottom:Z

.field protected mAlignRight:Z

.field private mDisplayRect:Landroid/graphics/Rect;

.field private mFaceRectangleBottom:I

.field private mFaceRectangleLeft:I

.field private mFaceRectangleRight:I

.field private mFaceRectangleTop:I

.field private mGaugePositionLimitBottom:I

.field private mGaugePositionLimitLeft:I

.field private mGaugePositionLimitRight:I

.field private mGaugePositionLimitTop:I

.field private mIsForLandscape:Z

.field private mMargin:I

.field private mSmileScore:I

.field private mSurfaceHeight:I

.field private mSurfaceWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 120
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 124
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    iput v1, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mGaugePositionLimitTop:I

    .line 75
    iput v1, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mGaugePositionLimitLeft:I

    .line 76
    iput v1, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mGaugePositionLimitRight:I

    .line 77
    iput v1, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mGaugePositionLimitBottom:I

    .line 102
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mAlignBottom:Z

    .line 103
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mAlignRight:Z

    .line 109
    iput-boolean v2, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mIsForLandscape:Z

    .line 127
    sget-object v1, Lcom/sonyericsson/cameracommon/R$styleable;->SmileGauge:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 128
    .local v0, "array":Landroid/content/res/TypedArray;
    sget v1, Lcom/sonyericsson/cameracommon/R$styleable;->SmileGauge_forLandscape:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mIsForLandscape:Z

    .line 129
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 130
    return-void
.end method

.method private correctPositionHorizontalLandScape()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    .line 354
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 355
    .local v1, "dispW":I
    iget v7, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mSurfaceWidth:I

    sub-int v7, v1, v7

    div-int/lit8 v0, v7, 0x2

    .line 358
    .local v0, "blankAreaWidth":I
    iget v7, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mGaugePositionLimitLeft:I

    if-le v7, v0, :cond_1

    iget v5, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mGaugePositionLimitLeft:I

    .line 360
    .local v5, "limitLeft":I
    :goto_0
    iget v7, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mGaugePositionLimitRight:I

    if-le v7, v0, :cond_2

    iget v7, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mGaugePositionLimitRight:I

    sub-int v6, v1, v7

    .line 363
    .local v6, "limitRight":I
    :goto_1
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/sonyericsson/cameracommon/R$dimen;->smile_gauge_width:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 364
    .local v4, "gaugeWidth":I
    add-int/2addr v5, v4

    .line 365
    sub-int/2addr v6, v4

    .line 368
    sub-int v2, v5, v0

    .line 369
    .local v2, "edgeLeft":I
    sub-int v3, v6, v0

    .line 371
    .local v3, "edgeRight":I
    iget v7, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mFaceRectangleLeft:I

    if-ge v7, v2, :cond_3

    .line 372
    invoke-virtual {p0, v9}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->moveToRight(I)V

    .line 376
    :cond_0
    :goto_2
    return-void

    .end local v2    # "edgeLeft":I
    .end local v3    # "edgeRight":I
    .end local v4    # "gaugeWidth":I
    .end local v5    # "limitLeft":I
    .end local v6    # "limitRight":I
    :cond_1
    move v5, v0

    .line 358
    goto :goto_0

    .line 360
    .restart local v5    # "limitLeft":I
    :cond_2
    sub-int v6, v1, v0

    goto :goto_1

    .line 373
    .restart local v2    # "edgeLeft":I
    .restart local v3    # "edgeRight":I
    .restart local v4    # "gaugeWidth":I
    .restart local v6    # "limitRight":I
    :cond_3
    iget v7, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mFaceRectangleRight:I

    if-ge v3, v7, :cond_0

    .line 374
    invoke-virtual {p0, v9}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->moveToLeft(I)V

    goto :goto_2
.end method

.method private correctPositionHorizontalPortrait()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 379
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 380
    .local v1, "dispW":I
    iget v5, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mSurfaceWidth:I

    sub-int v5, v1, v5

    div-int/lit8 v0, v5, 0x2

    .line 383
    .local v0, "blankAreaWidth":I
    iget v5, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mGaugePositionLimitLeft:I

    if-le v5, v0, :cond_1

    iget v3, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mGaugePositionLimitLeft:I

    .line 385
    .local v3, "limitLeft":I
    :goto_0
    sub-int v4, v1, v0

    .line 387
    .local v4, "limitRight":I
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/sonyericsson/cameracommon/R$dimen;->smile_gauge_height:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 389
    .local v2, "gaugeHeight":I
    iget v5, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mFaceRectangleLeft:I

    if-ge v5, v3, :cond_2

    .line 390
    invoke-virtual {p0, v7}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->moveToRight(I)V

    .line 394
    :cond_0
    :goto_1
    return-void

    .end local v2    # "gaugeHeight":I
    .end local v3    # "limitLeft":I
    .end local v4    # "limitRight":I
    :cond_1
    move v3, v0

    .line 383
    goto :goto_0

    .line 391
    .restart local v2    # "gaugeHeight":I
    .restart local v3    # "limitLeft":I
    .restart local v4    # "limitRight":I
    :cond_2
    iget v5, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mFaceRectangleLeft:I

    add-int/2addr v5, v2

    if-ge v4, v5, :cond_0

    .line 392
    invoke-virtual {p0, v7}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->moveToLeft(I)V

    goto :goto_1
.end method

.method private correctPositionVerticalLandScape()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    .line 334
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 335
    .local v1, "dispH":I
    iget v5, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mSurfaceHeight:I

    sub-int v5, v1, v5

    div-int/lit8 v0, v5, 0x2

    .line 338
    .local v0, "blankAreaHeight":I
    iget v5, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mGaugePositionLimitTop:I

    if-le v5, v0, :cond_1

    iget v4, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mGaugePositionLimitTop:I

    .line 340
    .local v4, "limitTop":I
    :goto_0
    iget v5, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mGaugePositionLimitBottom:I

    if-le v5, v0, :cond_2

    iget v5, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mGaugePositionLimitBottom:I

    sub-int v3, v1, v5

    .line 343
    .local v3, "limitBottom":I
    :goto_1
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/sonyericsson/cameracommon/R$dimen;->smile_gauge_height:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 346
    .local v2, "gaugeHeight":I
    iget v5, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mFaceRectangleTop:I

    add-int/2addr v5, v2

    if-ge v3, v5, :cond_3

    .line 347
    invoke-virtual {p0, v7}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->moveToTop(I)V

    .line 351
    :cond_0
    :goto_2
    return-void

    .end local v2    # "gaugeHeight":I
    .end local v3    # "limitBottom":I
    .end local v4    # "limitTop":I
    :cond_1
    move v4, v0

    .line 338
    goto :goto_0

    .line 340
    .restart local v4    # "limitTop":I
    :cond_2
    sub-int v3, v1, v0

    goto :goto_1

    .line 348
    .restart local v2    # "gaugeHeight":I
    .restart local v3    # "limitBottom":I
    :cond_3
    iget v5, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mFaceRectangleTop:I

    if-ge v5, v4, :cond_0

    .line 349
    invoke-virtual {p0, v7}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->moveToBottom(I)V

    goto :goto_2
.end method

.method private correctPositionVerticalPortrait()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 304
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 305
    .local v1, "dispH":I
    iget v7, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mSurfaceHeight:I

    sub-int v7, v1, v7

    div-int/lit8 v0, v7, 0x2

    .line 308
    .local v0, "blankAreaHeight":I
    iget v7, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mGaugePositionLimitTop:I

    if-le v7, v0, :cond_1

    iget v6, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mGaugePositionLimitTop:I

    .line 310
    .local v6, "limitTop":I
    :goto_0
    iget v7, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mGaugePositionLimitBottom:I

    if-le v7, v0, :cond_2

    iget v7, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mGaugePositionLimitBottom:I

    sub-int v5, v1, v7

    .line 313
    .local v5, "limitBottom":I
    :goto_1
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/sonyericsson/cameracommon/R$dimen;->smile_gauge_width:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 314
    .local v4, "gaugeWidth":I
    add-int/2addr v6, v4

    .line 315
    sub-int/2addr v5, v4

    .line 318
    sub-int v3, v6, v0

    .line 319
    .local v3, "edgeTop":I
    sub-int v2, v5, v0

    .line 322
    .local v2, "edgeBottom":I
    iget v7, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mFaceRectangleBottom:I

    if-ge v2, v7, :cond_3

    .line 323
    invoke-virtual {p0, v9}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->moveToTop(I)V

    .line 324
    iget v7, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mFaceRectangleTop:I

    if-ge v7, v3, :cond_0

    .line 325
    const/4 v7, 0x4

    invoke-virtual {p0, v7}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->setVisibility(I)V

    .line 330
    :cond_0
    :goto_2
    return-void

    .end local v2    # "edgeBottom":I
    .end local v3    # "edgeTop":I
    .end local v4    # "gaugeWidth":I
    .end local v5    # "limitBottom":I
    .end local v6    # "limitTop":I
    :cond_1
    move v6, v0

    .line 308
    goto :goto_0

    .line 310
    .restart local v6    # "limitTop":I
    :cond_2
    sub-int v5, v1, v0

    goto :goto_1

    .line 327
    .restart local v2    # "edgeBottom":I
    .restart local v3    # "edgeTop":I
    .restart local v4    # "gaugeWidth":I
    .restart local v5    # "limitBottom":I
    :cond_3
    iget v7, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mFaceRectangleTop:I

    if-ge v7, v3, :cond_0

    .line 328
    invoke-virtual {p0, v9}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->moveToBottom(I)V

    goto :goto_2
.end method


# virtual methods
.method protected alignBottom()V
    .locals 1

    .prologue
    .line 538
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mAlignBottom:Z

    .line 539
    return-void
.end method

.method protected alignLeft()V
    .locals 3

    .prologue
    .line 546
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 547
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    if-nez v0, :cond_0

    .line 552
    :goto_0
    return-void

    .line 550
    :cond_0
    const/4 v1, 0x5

    sget v2, Lcom/sonyericsson/cameracommon/R$id;->rect:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 551
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method protected alignRight()V
    .locals 1

    .prologue
    .line 559
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mAlignRight:Z

    .line 560
    return-void
.end method

.method protected alignTop()V
    .locals 3

    .prologue
    .line 525
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 526
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    if-nez v0, :cond_0

    .line 531
    :goto_0
    return-void

    .line 529
    :cond_0
    const/4 v1, 0x6

    sget v2, Lcom/sonyericsson/cameracommon/R$id;->rect:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 530
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method protected centerHorizontal()V
    .locals 4

    .prologue
    .line 506
    iget v2, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mFaceRectangleRight:I

    iget v3, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mFaceRectangleLeft:I

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->getWidth()I

    move-result v3

    sub-int v0, v2, v3

    .line 508
    .local v0, "margin":I
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 509
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    if-nez v1, :cond_0

    .line 518
    :goto_0
    return-void

    .line 512
    :cond_0
    if-lez v0, :cond_1

    .line 513
    div-int/lit8 v2, v0, 0x2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 517
    :goto_1
    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 515
    :cond_1
    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_1
.end method

.method protected centerVertical()V
    .locals 4

    .prologue
    .line 486
    iget v2, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mFaceRectangleBottom:I

    iget v3, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mFaceRectangleTop:I

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->getHeight()I

    move-result v3

    sub-int v0, v2, v3

    .line 488
    .local v0, "margin":I
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 489
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    if-nez v1, :cond_0

    .line 498
    :goto_0
    return-void

    .line 492
    :cond_0
    if-lez v0, :cond_1

    .line 493
    div-int/lit8 v2, v0, 0x2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 497
    :goto_1
    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 495
    :cond_1
    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_1
.end method

.method protected clearLayoutParams()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 467
    iput-boolean v2, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mAlignBottom:Z

    .line 468
    iput-boolean v2, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mAlignRight:Z

    .line 470
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 471
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    if-nez v0, :cond_0

    .line 479
    :goto_0
    return-void

    .line 474
    :cond_0
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 475
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 476
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 477
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 478
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method protected drawThreshold()V
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 197
    sget v2, Lcom/sonyericsson/cameracommon/R$id;->smile_gauge_threshold:I

    invoke-virtual {p0, v2}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 199
    .local v1, "threshold":Landroid/widget/ImageView;
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 202
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->isForLandscape()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 203
    iget v2, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mMargin:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 204
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 209
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    return-void

    .line 206
    :cond_0
    iget v2, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mMargin:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 207
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0
.end method

.method public getSmileScore()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mSmileScore:I

    return v0
.end method

.method public isForLandscape()Z
    .locals 1

    .prologue
    .line 574
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mIsForLandscape:Z

    return v0
.end method

.method public moveToBottom(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 440
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 441
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->clearLayoutParams()V

    .line 442
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->alignTop()V

    .line 446
    :goto_0
    return-void

    .line 444
    :cond_0
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->smile_gauge_bottom:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->moveToId(I)V

    goto :goto_0
.end method

.method protected moveToId(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 453
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->getId()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 454
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->setVisibility(I)V

    .line 458
    :goto_0
    return-void

    .line 456
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->setVisibility(I)V

    goto :goto_0
.end method

.method protected moveToLeft(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 414
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 415
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->smile_gauge_left:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->moveToId(I)V

    .line 420
    :goto_0
    return-void

    .line 417
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->clearLayoutParams()V

    .line 418
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->alignRight()V

    goto :goto_0
.end method

.method protected moveToRight(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 401
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 402
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->smile_gauge_right:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->moveToId(I)V

    .line 407
    :goto_0
    return-void

    .line 404
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->clearLayoutParams()V

    .line 405
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->alignLeft()V

    goto :goto_0
.end method

.method protected moveToTop(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 427
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 428
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->clearLayoutParams()V

    .line 429
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->alignBottom()V

    .line 433
    :goto_0
    return-void

    .line 431
    :cond_0
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->smile_gauge_top:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->moveToId(I)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 567
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 568
    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 138
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 140
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mSmileScore:I

    .line 143
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sonyericsson/cameracommon/R$dimen;->smile_gauge_position_limit_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mGaugePositionLimitTop:I

    .line 145
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sonyericsson/cameracommon/R$dimen;->smile_gauge_position_limit_left:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mGaugePositionLimitLeft:I

    .line 147
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sonyericsson/cameracommon/R$dimen;->smile_gauge_position_limit_right:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mGaugePositionLimitRight:I

    .line 149
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sonyericsson/cameracommon/R$dimen;->smile_gauge_position_limit_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mGaugePositionLimitBottom:I

    .line 151
    return-void
.end method

.method public setDisplayRect(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mDisplayRect:Landroid/graphics/Rect;

    .line 189
    return-void
.end method

.method public setPosition(IIIII)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "orientation"    # I

    .prologue
    .line 259
    iput p1, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mFaceRectangleLeft:I

    .line 260
    iput p2, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mFaceRectangleTop:I

    .line 261
    iput p3, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mFaceRectangleRight:I

    .line 262
    iput p4, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mFaceRectangleBottom:I

    .line 263
    iget v0, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mFaceRectangleLeft:I

    iget v1, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mFaceRectangleRight:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mFaceRectangleTop:I

    iget v1, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mFaceRectangleBottom:I

    if-ne v0, v1, :cond_1

    .line 265
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->setVisibility(I)V

    .line 269
    :goto_0
    return-void

    .line 267
    :cond_1
    invoke-virtual {p0, p5}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->update(I)V

    goto :goto_0
.end method

.method public setSmileLevel(I)V
    .locals 1
    .param p1, "dimenId"    # I

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mMargin:I

    .line 185
    return-void
.end method

.method public setSmileScore(I)V
    .locals 2
    .param p1, "score"    # I

    .prologue
    .line 161
    if-gez p1, :cond_1

    .line 162
    const/4 p1, 0x0

    .line 166
    :cond_0
    :goto_0
    iput p1, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mSmileScore:I

    .line 167
    sget v1, Lcom/sonyericsson/cameracommon/R$id;->smile_gauge_score:I

    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/focusview/SmileScore;

    .line 168
    .local v0, "smileScore":Lcom/sonyericsson/cameracommon/focusview/SmileScore;
    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->setSmileScore(I)V

    .line 170
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/SmileScore;->invalidate()V

    .line 172
    return-void

    .line 163
    .end local v0    # "smileScore":Lcom/sonyericsson/cameracommon/focusview/SmileScore;
    :cond_1
    const/16 v1, 0x64

    if-le p1, v1, :cond_0

    .line 164
    const/16 p1, 0x64

    goto :goto_0
.end method

.method public setSurfaceSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 243
    iput p1, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mSurfaceWidth:I

    .line 244
    iput p2, p0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mSurfaceHeight:I

    .line 245
    return-void
.end method

.method public setVisibility(I)V
    .locals 4
    .param p1, "visibility"    # I

    .prologue
    .line 221
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 222
    if-nez p1, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->drawThreshold()V

    .line 226
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 229
    .local v1, "parent":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 231
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p0, v2, v3}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->setSurfaceSize(II)V

    .line 233
    .end local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .end local v1    # "parent":Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    :cond_0
    return-void
.end method

.method protected update(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    const/4 v1, 0x2

    .line 280
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->isForLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    if-ne p1, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->isForLandscape()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    .line 282
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->clearLayoutParams()V

    .line 283
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->setVisibility(I)V

    .line 301
    :goto_0
    return-void

    .line 288
    :cond_2
    if-ne p1, v1, :cond_3

    .line 289
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->moveToLeft(I)V

    .line 290
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->moveToBottom(I)V

    .line 291
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->correctPositionVerticalLandScape()V

    .line 292
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->correctPositionHorizontalLandScape()V

    .line 300
    :goto_1
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->postInvalidate()V

    goto :goto_0

    .line 294
    :cond_3
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->moveToBottom(I)V

    .line 295
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->moveToRight(I)V

    .line 296
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->correctPositionVerticalPortrait()V

    .line 297
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->correctPositionHorizontalPortrait()V

    goto :goto_1
.end method
