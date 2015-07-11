.class public Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;
.super Landroid/widget/RelativeLayout;
.source "RecordingIndicator.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mConstraintIndicator:Landroid/widget/LinearLayout;

.field private mConstraintRecordingTimeText:Landroid/widget/TextView;

.field private mDisplayOrientation:I

.field private mDuration:I

.field private mIsConstraint:Z

.field private mIsRecording:Z

.field private mIsSequence:Z

.field private mIsThumbnailReady:Z

.field private mMaxDurationText:Landroid/widget/TextView;

.field private mMaxTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

.field private mPivotForRotationConstraint:I

.field private mPivotForRotationSequence:I

.field private mPivotForRotationUnConstraint:I

.field private mProgressBar:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;

.field private final mRadius:F

.field private mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

.field private mSequenceIndicator:Landroid/widget/LinearLayout;

.field private mSequenceRec:Landroid/widget/TextView;

.field private mSequenceRecordingTimeText:Landroid/widget/TextView;

.field private mStringFormatRecordingTime:Ljava/lang/String;

.field private mStringFormatRemainConstraintTime:Ljava/lang/String;

.field private mThumbnailCnt:I

.field private mThumbnailContainer:Landroid/widget/LinearLayout;

.field private final mThumbnailMaxNum:I

.field private final mThumbnailPadding:I

.field private final mThumbnailParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private final mThumbnailSize:I

.field private final mThumbnails:[Landroid/graphics/Bitmap;

.field private mTimeContainer:Landroid/widget/LinearLayout;

.field private mUnConstraintIndicator:Landroid/widget/LinearLayout;

.field private mUnConstraintRecordingTimeText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 103
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    iput-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintIndicator:Landroid/widget/LinearLayout;

    .line 44
    iput-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintRecordingTimeText:Landroid/widget/TextView;

    .line 47
    iput-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintIndicator:Landroid/widget/LinearLayout;

    .line 48
    iput-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintRecordingTimeText:Landroid/widget/TextView;

    .line 49
    iput-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mMaxDurationText:Landroid/widget/TextView;

    .line 52
    iput-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceIndicator:Landroid/widget/LinearLayout;

    .line 53
    iput-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceRecordingTimeText:Landroid/widget/TextView;

    .line 54
    iput-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailContainer:Landroid/widget/LinearLayout;

    .line 55
    iput-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mTimeContainer:Landroid/widget/LinearLayout;

    .line 56
    iput-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceRec:Landroid/widget/TextView;

    .line 58
    iput-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mProgressBar:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;

    .line 61
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sonyericsson/cameracommon/R$integer;->rec_sequence_thumbnail_max_num:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailMaxNum:I

    .line 63
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sonyericsson/cameracommon/R$dimen;->rec_sequence_thumbnail_width_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailSize:I

    .line 65
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sonyericsson/cameracommon/R$dimen;->rec_sequence_thumbnail_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRadius:F

    .line 67
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    iget v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailSize:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 69
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sonyericsson/cameracommon/R$dimen;->rec_sequence_thumbnail_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailPadding:I

    .line 73
    iput-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mStringFormatRemainConstraintTime:Ljava/lang/String;

    .line 74
    iput-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mStringFormatRecordingTime:Ljava/lang/String;

    .line 77
    iput-boolean v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsConstraint:Z

    .line 79
    iput-boolean v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsSequence:Z

    .line 82
    iput-boolean v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsThumbnailReady:Z

    .line 84
    iput-boolean v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsRecording:Z

    .line 87
    iput v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailCnt:I

    .line 88
    iget v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailMaxNum:I

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnails:[Landroid/graphics/Bitmap;

    .line 91
    iput v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mDuration:I

    .line 92
    iput-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mMaxTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    .line 93
    iput-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sonyericsson/cameracommon/R$dimen;->rec_unconstraint_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mPivotForRotationUnConstraint:I

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sonyericsson/cameracommon/R$dimen;->rec_constraint_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mPivotForRotationConstraint:I

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sonyericsson/cameracommon/R$dimen;->rec_sequence_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mPivotForRotationSequence:I

    .line 110
    return-void
.end method

.method private addEmptyThumbnails()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 449
    iget v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailSize:I

    iget v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailSize:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 451
    .local v0, "emptyThumbnail":Landroid/graphics/Bitmap;
    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 453
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->createRoundRectImageView(Landroid/graphics/Bitmap;)Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;

    move-result-object v1

    .line 454
    .local v1, "thumbnail":Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;
    iget v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRadius:F

    iget v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRadius:F

    invoke-virtual {v1, v2, v5, v5, v3}, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->setRadius(FFFF)V

    .line 456
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 457
    return-void
.end method

.method private createRoundRectImageView(Landroid/graphics/Bitmap;)Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;
    .locals 3
    .param p1, "image"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 384
    new-instance v0, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;-><init>(Landroid/content/Context;)V

    .line 385
    .local v0, "thumbnail":Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 386
    invoke-virtual {v0, p1}, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 387
    invoke-virtual {v0, v2}, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->setClickable(Z)V

    .line 388
    invoke-virtual {v0, v2}, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->setFocusable(Z)V

    .line 389
    invoke-virtual {v0, v2}, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->setFocusableInTouchMode(Z)V

    .line 391
    return-object v0
.end method

.method private resetThumbnails()V
    .locals 1

    .prologue
    .line 439
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailCnt:I

    .line 441
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 445
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->addEmptyThumbnails()V

    .line 446
    return-void
.end method

.method private updateLayout()V
    .locals 3

    .prologue
    .line 474
    iget v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mDisplayOrientation:I

    invoke-static {v1}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result v0

    .line 476
    .local v0, "rotation":F
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintIndicator:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 477
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setRotation(F)V

    .line 478
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintIndicator:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mPivotForRotationUnConstraint:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setPivotX(F)V

    .line 479
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintIndicator:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mPivotForRotationUnConstraint:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setPivotY(F)V

    .line 481
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintIndicator:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    .line 482
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setRotation(F)V

    .line 483
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintIndicator:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mPivotForRotationConstraint:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setPivotX(F)V

    .line 484
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintIndicator:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mPivotForRotationConstraint:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setPivotY(F)V

    .line 486
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceIndicator:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    .line 487
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setRotation(F)V

    .line 488
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceIndicator:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mPivotForRotationSequence:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setPivotX(F)V

    .line 489
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceIndicator:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mPivotForRotationSequence:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setPivotY(F)V

    .line 491
    :cond_2
    return-void
.end method

.method private updateProgressbar(I)V
    .locals 2
    .param p1, "msec"    # I

    .prologue
    .line 239
    iget v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mDuration:I

    if-le p1, v0, :cond_0

    .line 245
    :goto_0
    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mProgressBar:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;

    iget v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mDuration:I

    invoke-virtual {v0, p1, v1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->setProgress(II)V

    goto :goto_0
.end method

.method private updateThumbnails(Landroid/graphics/Bitmap;)V
    .locals 8
    .param p1, "thumbnailImg"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 337
    iput-boolean v7, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsThumbnailReady:Z

    .line 338
    iget-boolean v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsRecording:Z

    invoke-virtual {p0, v3}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->setIndicator(Z)V

    .line 340
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->createRoundRectImageView(Landroid/graphics/Bitmap;)Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;

    move-result-object v2

    .line 342
    .local v2, "thumbnail":Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;
    iget v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailCnt:I

    if-nez v3, :cond_0

    .line 344
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 346
    iget v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRadius:F

    iget v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRadius:F

    invoke-virtual {v2, v3, v6, v6, v4}, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->setRadius(FFFF)V

    .line 347
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnails:[Landroid/graphics/Bitmap;

    aput-object p1, v3, v5

    .line 374
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 375
    iget v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailCnt:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailCnt:I

    .line 379
    return-void

    .line 349
    :cond_0
    iget v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailPadding:I

    invoke-virtual {v2, v3, v5, v5, v5}, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->setPadding(IIII)V

    .line 351
    iget v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailCnt:I

    if-ne v3, v7, :cond_2

    .line 352
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnails:[Landroid/graphics/Bitmap;

    aput-object p1, v3, v7

    .line 370
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnails:[Landroid/graphics/Bitmap;

    iget v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailMaxNum:I

    add-int/lit8 v4, v4, -0x1

    aput-object p1, v3, v4

    goto :goto_0

    .line 353
    :cond_2
    iget v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailCnt:I

    iget v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailMaxNum:I

    if-lt v3, v4, :cond_1

    .line 355
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 358
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnails:[Landroid/graphics/Bitmap;

    aget-object v3, v3, v7

    invoke-direct {p0, v3}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->createRoundRectImageView(Landroid/graphics/Bitmap;)Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;

    move-result-object v1

    .line 359
    .local v1, "replaceView":Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;
    iget v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRadius:F

    iget v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRadius:F

    invoke-virtual {v1, v3, v6, v6, v4}, Lcom/sonymobile/cameracommon/extendedview/RoundRectImageView;->setRadius(FFFF)V

    .line 362
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 363
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 365
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailMaxNum:I

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_1

    .line 366
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnails:[Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnails:[Landroid/graphics/Bitmap;

    add-int/lit8 v5, v0, 0x1

    aget-object v4, v4, v5

    aput-object v4, v3, v0

    .line 365
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public addChapter([BI)V
    .locals 8
    .param p1, "imageData"    # [B
    .param p2, "orientation"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 294
    iget-boolean v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsSequence:Z

    if-nez v4, :cond_0

    .line 326
    :goto_0
    return-void

    .line 298
    :cond_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 301
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v7, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 302
    array-length v4, p1

    invoke-static {p1, v6, v4, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 303
    iget v1, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 304
    .local v1, "height":I
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 307
    .local v3, "width":I
    if-ge v1, v3, :cond_2

    .line 308
    int-to-float v4, v1

    iget v5, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailSize:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 314
    :cond_1
    :goto_1
    iput-boolean v6, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 315
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v4, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 316
    iput-boolean v7, v2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 318
    array-length v4, p1

    invoke-static {p1, v6, v4, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 321
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailSize:I

    iget v5, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailSize:I

    invoke-static {v0, v4, v5}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 322
    invoke-static {v0, p2}, Lcom/sonyericsson/cameracommon/contentsview/ThumbnailUtil;->rotateThumbnail(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 325
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->updateThumbnails(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 309
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    if-ge v3, v1, :cond_1

    .line 310
    int-to-float v4, v3

    iget v5, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailSize:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_1
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 114
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 118
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->unconstraint:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintIndicator:Landroid/widget/LinearLayout;

    .line 119
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintIndicator:Landroid/widget/LinearLayout;

    sget v1, Lcom/sonyericsson/cameracommon/R$id;->recording_time:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintRecordingTimeText:Landroid/widget/TextView;

    .line 121
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintRecordingTimeText:Landroid/widget/TextView;

    sget-object v1, Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;->BOLD:Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/font/SstFontUtil;->setSstFont(Landroid/widget/TextView;Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;)Z

    .line 122
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintIndicator:Landroid/widget/LinearLayout;

    sget v1, Lcom/sonyericsson/cameracommon/R$id;->recording_indicator_rec:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;->BOLD:Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/font/SstFontUtil;->setSstFont(Landroid/widget/TextView;Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;)Z

    .line 126
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->constraint:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintIndicator:Landroid/widget/LinearLayout;

    .line 127
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintIndicator:Landroid/widget/LinearLayout;

    sget v1, Lcom/sonyericsson/cameracommon/R$id;->recording_time:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintRecordingTimeText:Landroid/widget/TextView;

    .line 129
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintRecordingTimeText:Landroid/widget/TextView;

    sget-object v1, Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;->BOLD:Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/font/SstFontUtil;->setSstFont(Landroid/widget/TextView;Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;)Z

    .line 130
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintIndicator:Landroid/widget/LinearLayout;

    sget v1, Lcom/sonyericsson/cameracommon/R$id;->recording_indicator_rec:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;->BOLD:Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/font/SstFontUtil;->setSstFont(Landroid/widget/TextView;Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;)Z

    .line 132
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintIndicator:Landroid/widget/LinearLayout;

    sget v1, Lcom/sonyericsson/cameracommon/R$id;->recording_devider:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;->BOLD:Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/font/SstFontUtil;->setSstFont(Landroid/widget/TextView;Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;)Z

    .line 134
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintIndicator:Landroid/widget/LinearLayout;

    sget v1, Lcom/sonyericsson/cameracommon/R$id;->remain_time:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mMaxDurationText:Landroid/widget/TextView;

    .line 135
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mMaxDurationText:Landroid/widget/TextView;

    sget-object v1, Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;->BOLD:Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/font/SstFontUtil;->setSstFont(Landroid/widget/TextView;Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;)Z

    .line 136
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->progressbar:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mProgressBar:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;

    .line 139
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->sequence_video:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceIndicator:Landroid/widget/LinearLayout;

    .line 140
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceIndicator:Landroid/widget/LinearLayout;

    sget v1, Lcom/sonyericsson/cameracommon/R$id;->recording_time:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceRecordingTimeText:Landroid/widget/TextView;

    .line 142
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceRecordingTimeText:Landroid/widget/TextView;

    sget-object v1, Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;->BOLD:Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/font/SstFontUtil;->setSstFont(Landroid/widget/TextView;Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;)Z

    .line 143
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceIndicator:Landroid/widget/LinearLayout;

    sget v1, Lcom/sonyericsson/cameracommon/R$id;->recording_indicator_rec:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceRec:Landroid/widget/TextView;

    .line 144
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceRec:Landroid/widget/TextView;

    sget-object v1, Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;->BOLD:Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/font/SstFontUtil;->setSstFont(Landroid/widget/TextView;Lcom/sonymobile/cameracommon/font/SstFontUtil$SstFontType;)Z

    .line 145
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceIndicator:Landroid/widget/LinearLayout;

    sget v1, Lcom/sonyericsson/cameracommon/R$id;->thumbnail_container:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mThumbnailContainer:Landroid/widget/LinearLayout;

    .line 147
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceIndicator:Landroid/widget/LinearLayout;

    sget v1, Lcom/sonyericsson/cameracommon/R$id;->time_container:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mTimeContainer:Landroid/widget/LinearLayout;

    .line 149
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mMaxTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    .line 150
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    .line 151
    return-void
.end method

.method public prepareBeforeRecording(IZ)V
    .locals 10
    .param p1, "duration"    # I
    .param p2, "isVideoHdrUsed"    # Z

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 170
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    invoke-virtual {v1, v6}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->update(I)V

    .line 172
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sonyericsson/cameracommon/R$dimen;->rec_record_time_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 175
    .local v0, "recordingTimeWidth":I
    iget-boolean v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsConstraint:Z

    if-eqz v1, :cond_0

    .line 177
    iput p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mDuration:I

    .line 178
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mMaxTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mDuration:I

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->update(I)V

    .line 181
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mProgressBar:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;

    invoke-virtual {v1, v6, v6}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->setProgress(II)V

    .line 184
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_status_recoding_time_format_txt:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mStringFormatRemainConstraintTime:Ljava/lang/String;

    .line 186
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mMaxDurationText:Landroid/widget/TextView;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mStringFormatRemainConstraintTime:Ljava/lang/String;

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mMaxTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v5, v5, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->min:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mMaxTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v5, v5, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->sec:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_status_recoding_time_format_txt:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mStringFormatRecordingTime:Ljava/lang/String;

    .line 191
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintRecordingTimeText:Landroid/widget/TextView;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mStringFormatRecordingTime:Ljava/lang/String;

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v5, v5, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->min:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v5, v5, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->sec:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintRecordingTimeText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 220
    :goto_0
    iget-boolean v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsConstraint:Z

    if-eqz v1, :cond_2

    .line 221
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 222
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 223
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 234
    :goto_1
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->updateLayout()V

    .line 235
    return-void

    .line 196
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_status_recoding_time_format_txt:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mStringFormatRecordingTime:Ljava/lang/String;

    .line 199
    iget-boolean v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsSequence:Z

    if-eqz v1, :cond_1

    .line 200
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->resetThumbnails()V

    .line 203
    iget-boolean v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsRecording:Z

    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->setIndicator(Z)V

    .line 205
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceRecordingTimeText:Landroid/widget/TextView;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mStringFormatRecordingTime:Ljava/lang/String;

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v5, v5, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->min:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v5, v5, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->sec:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceRecordingTimeText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 211
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintRecordingTimeText:Landroid/widget/TextView;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mStringFormatRecordingTime:Ljava/lang/String;

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v5, v5, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->min:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v5, v5, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->sec:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintRecordingTimeText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_0

    .line 224
    :cond_2
    iget-boolean v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsSequence:Z

    if-eqz v1, :cond_3

    .line 225
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 226
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 227
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 229
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 230
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 231
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public release()V
    .locals 0

    .prologue
    .line 163
    return-void
.end method

.method public setConstraint(Z)V
    .locals 0
    .param p1, "isConstraint"    # Z

    .prologue
    .line 154
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsConstraint:Z

    .line 155
    return-void
.end method

.method public setIndicator(Z)V
    .locals 8
    .param p1, "isOnRecording"    # Z

    .prologue
    const/4 v7, 0x0

    .line 397
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsRecording:Z

    .line 399
    iget-boolean v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsSequence:Z

    if-nez v3, :cond_1

    .line 434
    :cond_0
    :goto_0
    return-void

    .line 403
    :cond_1
    if-eqz p1, :cond_2

    .line 404
    iget-boolean v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsThumbnailReady:Z

    if-eqz v3, :cond_0

    .line 415
    :goto_1
    if-eqz p1, :cond_3

    .line 416
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_sequential_video_rec_bg_rec_icn:I

    .line 417
    .local v0, "backgroundResource":I
    const/4 v2, 0x0

    .line 423
    .local v2, "visibility":I
    :goto_2
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mTimeContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 424
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mTimeContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/sonyericsson/cameracommon/R$dimen;->rec_sequence_text_margin_width:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/sonyericsson/cameracommon/R$dimen;->rec_sequence_text_margin_width:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v3, v4, v7, v5, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 429
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mTimeContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 431
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, -0x2

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 432
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mTimeContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 433
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceRec:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 410
    .end local v0    # "backgroundResource":I
    .end local v1    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v2    # "visibility":I
    :cond_2
    iput-boolean v7, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsThumbnailReady:Z

    goto :goto_1

    .line 419
    :cond_3
    sget v0, Lcom/sonyericsson/cameracommon/R$drawable;->cam_sequential_video_rec_bg_pause_right_icn:I

    .line 420
    .restart local v0    # "backgroundResource":I
    const/16 v2, 0x8

    .restart local v2    # "visibility":I
    goto :goto_2
.end method

.method public setOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 469
    iput p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mDisplayOrientation:I

    .line 470
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->updateLayout()V

    .line 471
    return-void
.end method

.method public setSequenceMode(Z)V
    .locals 0
    .param p1, "isSequence"    # Z

    .prologue
    .line 158
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsSequence:Z

    .line 159
    return-void
.end method

.method public setVisible(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 494
    if-eqz p1, :cond_2

    .line 495
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsConstraint:Z

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 497
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 498
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 513
    :goto_0
    return-void

    .line 499
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsSequence:Z

    if-eqz v0, :cond_1

    .line 500
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 501
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 502
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 504
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 505
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 506
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 509
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 510
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 511
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateRecordingTime(I)V
    .locals 9
    .param p1, "msec"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 255
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->update(I)V

    .line 257
    const/4 v1, 0x0

    .line 259
    .local v1, "recordingTimeWidth":I
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v2, v2, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->hour:I

    if-ge v2, v6, :cond_0

    .line 260
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/sonyericsson/cameracommon/R$string;->cam_status_recoding_time_format_txt:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mStringFormatRecordingTime:Ljava/lang/String;

    .line 262
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mStringFormatRecordingTime:Ljava/lang/String;

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v5, v5, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->min:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v5, v5, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->sec:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "recording":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/sonyericsson/cameracommon/R$dimen;->rec_record_time_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 276
    :goto_0
    iget-boolean v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsConstraint:Z

    if-eqz v2, :cond_1

    .line 277
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintRecordingTimeText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintRecordingTimeText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 279
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->updateProgressbar(I)V

    .line 289
    :goto_1
    return-void

    .line 267
    .end local v0    # "recording":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/sonyericsson/cameracommon/R$string;->cam_status_recoding_hours_time_format_txt:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mStringFormatRecordingTime:Ljava/lang/String;

    .line 269
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mStringFormatRecordingTime:Ljava/lang/String;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v5, v5, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->hour:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v5, v5, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->min:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v5, v5, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->sec:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 272
    .restart local v0    # "recording":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/sonyericsson/cameracommon/R$dimen;->rec_record_hours_time_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    .line 281
    :cond_1
    iget-boolean v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsSequence:Z

    if-eqz v2, :cond_2

    .line 282
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceRecordingTimeText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mSequenceRecordingTimeText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1

    .line 285
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintRecordingTimeText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintRecordingTimeText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1
.end method
