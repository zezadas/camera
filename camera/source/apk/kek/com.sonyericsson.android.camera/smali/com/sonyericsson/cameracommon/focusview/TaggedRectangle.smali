.class public Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
.super Landroid/widget/RelativeLayout;
.source "TaggedRectangle.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/focusview/NameTag$NameTagOnClickListener;
.implements Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;


# static fields
.field public static final FACEDETECT_CAPTURE:I = 0x1

.field public static final FACERECOGNITION_REVIEW:I = 0x2

.field public static final OBJECT_TRACKING:I = 0x3

.field private static final RECT_SIZE_LIFE_TIME_MILLIS:I = 0x12c

.field public static final SMILE_DETECTION_CAPTURE:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCurrentType:I

.field private mFaceUuid:Ljava/lang/String;

.field private mIsAbleToTouch:Z

.field private mIsUpdate:Z

.field private mLastSizeUpdatedTimestamp:J

.field private mNameTagOnClickListener:Lcom/sonyericsson/cameracommon/focusview/NameTag$NameTagOnClickListener;

.field private mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

.field private mRectangleOnTouchListener:Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;

.field private mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

.field private mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mIsUpdate:Z

    .line 83
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mLastSizeUpdatedTimestamp:J

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mIsAbleToTouch:Z

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 112
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mIsUpdate:Z

    .line 83
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mLastSizeUpdatedTimestamp:J

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mIsAbleToTouch:Z

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 129
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mIsUpdate:Z

    .line 83
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mLastSizeUpdatedTimestamp:J

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mIsAbleToTouch:Z

    .line 130
    return-void
.end method

.method private adjustNamePosition(Landroid/view/View;I)V
    .locals 1
    .param p1, "parentView"    # Landroid/view/View;
    .param p2, "orientation"    # I

    .prologue
    .line 597
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->clearAllLayoutRules(Landroid/view/View;)V

    .line 600
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->defaultAllMargins(Landroid/view/View;)V

    .line 602
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 603
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->adjustNamePositionPortrait(Landroid/view/View;I)V

    .line 607
    :goto_0
    return-void

    .line 605
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->adjustNamePositionLandScape(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private adjustNamePositionLandScape(Landroid/view/View;I)V
    .locals 9
    .param p1, "parentView"    # Landroid/view/View;
    .param p2, "orientation"    # I

    .prologue
    const/4 v8, 0x0

    .line 618
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->rotateNameTagLandScape()V

    .line 621
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getFaceRect()Landroid/graphics/Rect;

    move-result-object v4

    .line 624
    .local v4, "faceRect":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 625
    .local v5, "parentViewRect":Landroid/graphics/Rect;
    invoke-virtual {p1, v5}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 630
    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v7, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    invoke-virtual {v7}, Lcom/sonyericsson/cameracommon/focusview/TagFrame;->getHeight()I

    move-result v7

    add-int v0, v6, v7

    .line 631
    .local v0, "NameTagBottom":I
    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    if-le v0, v6, :cond_1

    .line 633
    iget v6, v4, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    invoke-virtual {v7}, Lcom/sonyericsson/cameracommon/focusview/TagFrame;->getHeight()I

    move-result v7

    sub-int v3, v6, v7

    .line 634
    .local v3, "NameTagTop":I
    iget v6, v5, Landroid/graphics/Rect;->top:I

    if-ge v3, v6, :cond_0

    .line 636
    iget-object v6, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/sonyericsson/cameracommon/focusview/TagFrame;->setVisibility(I)V

    .line 666
    .end local v3    # "NameTagTop":I
    :goto_0
    return-void

    .line 642
    .restart local v3    # "NameTagTop":I
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->moveNameTagAboveLandScape()V

    .line 643
    iget-object v6, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    invoke-virtual {v6, v8}, Lcom/sonyericsson/cameracommon/focusview/TagFrame;->setVisibility(I)V

    .line 654
    .end local v3    # "NameTagTop":I
    :goto_1
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    iget-object v7, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    invoke-virtual {v7}, Lcom/sonyericsson/cameracommon/focusview/TagFrame;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int v1, v6, v7

    .line 655
    .local v1, "NameTagLeft":I
    iget v6, v5, Landroid/graphics/Rect;->left:I

    if-ge v1, v6, :cond_2

    .line 656
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->moveNameTagRightLandScape()V

    goto :goto_0

    .line 648
    .end local v1    # "NameTagLeft":I
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->moveNameTagBelowLandScape()V

    .line 649
    iget-object v6, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    invoke-virtual {v6, v8}, Lcom/sonyericsson/cameracommon/focusview/TagFrame;->setVisibility(I)V

    goto :goto_1

    .line 659
    .restart local v1    # "NameTagLeft":I
    :cond_2
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    iget-object v7, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    invoke-virtual {v7}, Lcom/sonyericsson/cameracommon/focusview/TagFrame;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v2, v6, v7

    .line 660
    .local v2, "NameTagRight":I
    iget v6, v5, Landroid/graphics/Rect;->right:I

    if-le v2, v6, :cond_3

    .line 661
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->moveNameTagLeftLandScape()V

    goto :goto_0

    .line 663
    :cond_3
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->moveNameTagCenterLandScape()V

    goto :goto_0
.end method

.method private adjustNamePositionPortrait(Landroid/view/View;I)V
    .locals 9
    .param p1, "parentView"    # Landroid/view/View;
    .param p2, "orientation"    # I

    .prologue
    const/4 v8, 0x0

    .line 712
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->rotateNameTagPortrait()V

    .line 715
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getFaceRect()Landroid/graphics/Rect;

    move-result-object v4

    .line 718
    .local v4, "faceRect":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 719
    .local v5, "parentViewRect":Landroid/graphics/Rect;
    invoke-virtual {p1, v5}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 723
    iget v6, v4, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    invoke-virtual {v7}, Lcom/sonyericsson/cameracommon/focusview/TagFrame;->getHeight()I

    move-result v7

    add-int v0, v6, v7

    .line 724
    .local v0, "NameTagBottom":I
    iget v6, v5, Landroid/graphics/Rect;->right:I

    if-le v0, v6, :cond_1

    .line 726
    iget v6, v4, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    invoke-virtual {v7}, Lcom/sonyericsson/cameracommon/focusview/TagFrame;->getHeight()I

    move-result v7

    sub-int v3, v6, v7

    .line 727
    .local v3, "NameTagTop":I
    iget v6, v5, Landroid/graphics/Rect;->left:I

    if-ge v3, v6, :cond_0

    .line 729
    iget-object v6, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/sonyericsson/cameracommon/focusview/TagFrame;->setVisibility(I)V

    .line 757
    .end local v3    # "NameTagTop":I
    :goto_0
    return-void

    .line 734
    .restart local v3    # "NameTagTop":I
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->moveNameTagAbovePortrait()V

    .line 735
    iget-object v6, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    invoke-virtual {v6, v8}, Lcom/sonyericsson/cameracommon/focusview/TagFrame;->setVisibility(I)V

    .line 745
    .end local v3    # "NameTagTop":I
    :goto_1
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    iget-object v7, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    invoke-virtual {v7}, Lcom/sonyericsson/cameracommon/focusview/TagFrame;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 746
    .local v1, "NameTagLeft":I
    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    if-le v1, v6, :cond_2

    .line 747
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->moveNameTagRightPortrait()V

    goto :goto_0

    .line 739
    .end local v1    # "NameTagLeft":I
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->moveNameTagBelowPortrait()V

    .line 740
    iget-object v6, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    invoke-virtual {v6, v8}, Lcom/sonyericsson/cameracommon/focusview/TagFrame;->setVisibility(I)V

    goto :goto_1

    .line 750
    .restart local v1    # "NameTagLeft":I
    :cond_2
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    iget-object v7, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    invoke-virtual {v7}, Lcom/sonyericsson/cameracommon/focusview/TagFrame;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int v2, v6, v7

    .line 751
    .local v2, "NameTagRight":I
    iget v6, v5, Landroid/graphics/Rect;->top:I

    if-ge v2, v6, :cond_3

    .line 752
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->moveNameTagLeftPortrait()V

    goto :goto_0

    .line 754
    :cond_3
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->moveNameTagToCenterPortrait()V

    goto :goto_0
.end method

.method private adjustSmileGaugesForNameTag(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 1081
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1083
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->isNameTagBelow(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1085
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->moveSmileGaugeForBelowNameTagPortrait()V

    .line 1100
    :goto_0
    return-void

    .line 1088
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->moveSmileGaugeForAboveNameTagPortrait()V

    goto :goto_0

    .line 1092
    :cond_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->isNameTagBelow(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1094
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->moveSmileGaugeForBelowNameTagLandscape()V

    goto :goto_0

    .line 1097
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->moveSmileGaugeForAboveNameTagLandscape()V

    goto :goto_0
.end method

.method private adjustSmileGaugesForScreenEdge()V
    .locals 1

    .prologue
    .line 1106
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->alignBottom()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1107
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setAlignBottom()V

    .line 1112
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->alignRight()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1113
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setAlignRight()V

    .line 1117
    :goto_1
    return-void

    .line 1109
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->clearAlignBottom()V

    goto :goto_0

    .line 1115
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->clearAlignRight()V

    goto :goto_1
.end method

.method private adjustSmileGaugesPosition(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 1032
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->isSmileGaugeVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1044
    :goto_0
    return-void

    .line 1037
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->isRefugeSmileGaugeForNameTag(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1039
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->adjustSmileGaugesForNameTag(I)V

    goto :goto_0

    .line 1042
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->adjustSmileGaugesForScreenEdge()V

    goto :goto_0
.end method

.method private alignBottom()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1178
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    aget-object v2, v2, v0

    iget-boolean v2, v2, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mAlignBottom:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    aget-object v2, v2, v1

    iget-boolean v2, v2, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mAlignBottom:Z

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 1183
    :cond_1
    return v0
.end method

.method private alignRight()Z
    .locals 2

    .prologue
    .line 1188
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget-boolean v0, v0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mAlignRight:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget-boolean v0, v0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->mAlignRight:Z

    if-eqz v0, :cond_1

    .line 1190
    :cond_0
    const/4 v0, 0x1

    .line 1193
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private clearAllLayoutRules(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 869
    if-eqz p1, :cond_1

    .line 871
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 872
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v2

    .line 874
    .local v2, "rules":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 875
    const/4 v3, 0x0

    aput v3, v2, v0

    .line 874
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 877
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->requestLayout()V

    .line 879
    .end local v0    # "i":I
    .end local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2    # "rules":[I
    :cond_1
    return-void
.end method

.method private defaultAllMargins(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 885
    if-eqz p1, :cond_0

    .line 887
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 889
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 891
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 892
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->requestLayout()V

    .line 894
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method private isNameTagBelow(I)Z
    .locals 4
    .param p1, "orientation"    # I

    .prologue
    const/4 v2, 0x1

    .line 829
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/focusview/TagFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 832
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v1

    .line 834
    .local v1, "rules":[I
    if-ne p1, v2, :cond_1

    .line 835
    aget v3, v1, v2

    if-eqz v3, :cond_2

    .line 843
    :cond_0
    :goto_0
    return v2

    .line 839
    :cond_1
    const/4 v3, 0x3

    aget v3, v1, v3

    if-nez v3, :cond_0

    .line 843
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isRectSizeAlreadyInvalid()Z
    .locals 6

    .prologue
    .line 275
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mLastSizeUpdatedTimestamp:J

    sub-long v0, v2, v4

    .line 276
    .local v0, "lifeTime":J
    const-wide/16 v2, 0x12c

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isRefugeSmileGaugeForNameTag(I)Z
    .locals 4
    .param p1, "orientation"    # I

    .prologue
    .line 1050
    const/4 v0, 0x0

    .line 1052
    .local v0, "checkValue":Z
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/focusview/TagFrame;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 1053
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 1058
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/focusview/TagFrame;->getWidth()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1060
    const/4 v0, 0x1

    .line 1074
    :cond_0
    :goto_0
    return v0

    .line 1067
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->getWidth()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/focusview/TagFrame;->getWidth()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1069
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isSmileGaugeVisible()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 989
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 995
    :cond_1
    return v0
.end method

.method private moveNameTagAboveLandScape()V
    .locals 4

    .prologue
    .line 763
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    if-eqz v0, :cond_0

    .line 764
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    const/4 v1, 0x3

    const/4 v2, 0x2

    sget v3, Lcom/sonyericsson/cameracommon/R$id;->rect:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->switchRule(Landroid/view/View;III)V

    .line 769
    :cond_0
    return-void
.end method

.method private moveNameTagAbovePortrait()V
    .locals 6

    .prologue
    .line 788
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    if-eqz v2, :cond_0

    .line 790
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    const/4 v3, 0x1

    const/4 v4, 0x0

    sget v5, Lcom/sonyericsson/cameracommon/R$id;->rect:I

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->switchRule(Landroid/view/View;III)V

    .line 795
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/focusview/TagFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 799
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/focusview/TagFrame;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/focusview/TagFrame;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    neg-int v1, v2

    .line 802
    .local v1, "topMargins":I
    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int/2addr v4, v1

    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 808
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/cameracommon/focusview/TagFrame;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 809
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->requestLayout()V

    .line 811
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1    # "topMargins":I
    :cond_0
    return-void
.end method

.method private moveNameTagBelowLandScape()V
    .locals 4

    .prologue
    .line 775
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    if-eqz v0, :cond_0

    .line 776
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    const/4 v1, 0x2

    const/4 v2, 0x3

    sget v3, Lcom/sonyericsson/cameracommon/R$id;->rect:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->switchRule(Landroid/view/View;III)V

    .line 781
    :cond_0
    return-void
.end method

.method private moveNameTagBelowPortrait()V
    .locals 4

    .prologue
    .line 817
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    if-eqz v0, :cond_0

    .line 818
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    const/4 v1, 0x0

    const/4 v2, 0x1

    sget v3, Lcom/sonyericsson/cameracommon/R$id;->rect:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->switchRule(Landroid/view/View;III)V

    .line 823
    :cond_0
    return-void
.end method

.method private moveNameTagCenterLandScape()V
    .locals 5

    .prologue
    .line 900
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    if-eqz v2, :cond_0

    .line 902
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->moveNameTagRightLandScape()V

    .line 904
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/focusview/TagFrame;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    .line 907
    .local v0, "forCenterLeftMargins":I
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/focusview/TagFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 910
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 916
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/cameracommon/focusview/TagFrame;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 917
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->requestLayout()V

    .line 919
    .end local v0    # "forCenterLeftMargins":I
    .end local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method private moveNameTagLeftLandScape()V
    .locals 5

    .prologue
    .line 515
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    if-eqz v1, :cond_0

    .line 517
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/focusview/TagFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 519
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, 0x0

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 526
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    const/4 v2, 0x5

    const/4 v3, 0x7

    sget v4, Lcom/sonyericsson/cameracommon/R$id;->rect:I

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->switchRule(Landroid/view/View;III)V

    .line 531
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method private moveNameTagLeftPortrait()V
    .locals 6

    .prologue
    .line 561
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    if-eqz v2, :cond_0

    .line 564
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    const/16 v3, 0x8

    const/4 v4, 0x6

    sget v5, Lcom/sonyericsson/cameracommon/R$id;->rect:I

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->switchRule(Landroid/view/View;III)V

    .line 569
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/focusview/TagFrame;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/focusview/TagFrame;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    .line 574
    .local v0, "forAlignTopMargins":I
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/focusview/TagFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 577
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 583
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/cameracommon/focusview/TagFrame;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 585
    .end local v0    # "forAlignTopMargins":I
    .end local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method private moveNameTagRightLandScape()V
    .locals 5

    .prologue
    .line 496
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    if-eqz v1, :cond_0

    .line 498
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/focusview/TagFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 500
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, 0x0

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 507
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    const/4 v2, 0x7

    const/4 v3, 0x5

    sget v4, Lcom/sonyericsson/cameracommon/R$id;->rect:I

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->switchRule(Landroid/view/View;III)V

    .line 512
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method private moveNameTagRightPortrait()V
    .locals 6

    .prologue
    .line 534
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    if-eqz v2, :cond_0

    .line 537
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    const/4 v3, 0x6

    const/16 v4, 0x8

    sget v5, Lcom/sonyericsson/cameracommon/R$id;->rect:I

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->switchRule(Landroid/view/View;III)V

    .line 542
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/focusview/TagFrame;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/focusview/TagFrame;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    .line 547
    .local v0, "forAlignBottomMargins":I
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/focusview/TagFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 550
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 556
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/cameracommon/focusview/TagFrame;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 558
    .end local v0    # "forAlignBottomMargins":I
    .end local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method private moveNameTagToCenterPortrait()V
    .locals 6

    .prologue
    .line 925
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    if-eqz v2, :cond_0

    .line 927
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    const/4 v3, 0x6

    const/16 v4, 0x8

    sget v5, Lcom/sonyericsson/cameracommon/R$id;->rect:I

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->switchRule(Landroid/view/View;III)V

    .line 933
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/focusview/TagFrame;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/focusview/TagFrame;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    .line 936
    .local v0, "forAlignCenterMargins":I
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/focusview/TagFrame;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 939
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/focusview/TagFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 942
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 948
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/cameracommon/focusview/TagFrame;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 949
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->requestLayout()V

    .line 951
    .end local v0    # "forAlignCenterMargins":I
    .end local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method private moveSmileGaugeForAboveNameTagLandscape()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1160
    const/4 v0, 0x0

    .line 1162
    .local v0, "targetSmileGauge":Lcom/sonyericsson/cameracommon/focusview/SmileGauge;
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 1163
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    aget-object v0, v1, v2

    .line 1168
    :goto_0
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->moveToBottom(I)V

    .line 1170
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->clearAlignBottom()V

    .line 1171
    return-void

    .line 1165
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    const/4 v2, 0x1

    aget-object v0, v1, v2

    goto :goto_0
.end method

.method private moveSmileGaugeForAboveNameTagPortrait()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 1133
    const/4 v0, 0x0

    .line 1135
    .local v0, "targetSmileGauge":Lcom/sonyericsson/cameracommon/focusview/SmileGauge;
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 1136
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    aget-object v0, v1, v2

    .line 1140
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->moveToRight(I)V

    .line 1142
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->clearAlignRight()V

    .line 1143
    return-void

    .line 1138
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    const/4 v2, 0x3

    aget-object v0, v1, v2

    goto :goto_0
.end method

.method private moveSmileGaugeForBelowNameTagLandscape()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1146
    const/4 v0, 0x0

    .line 1148
    .local v0, "targetSmileGauge":Lcom/sonyericsson/cameracommon/focusview/SmileGauge;
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 1149
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    aget-object v0, v1, v2

    .line 1154
    :goto_0
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->clearLayoutParams()V

    .line 1156
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setAlignBottom()V

    .line 1157
    return-void

    .line 1151
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    const/4 v2, 0x1

    aget-object v0, v1, v2

    goto :goto_0
.end method

.method private moveSmileGaugeForBelowNameTagPortrait()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 1120
    const/4 v0, 0x0

    .line 1122
    .local v0, "targetSmileGauge":Lcom/sonyericsson/cameracommon/focusview/SmileGauge;
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 1123
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    aget-object v0, v1, v2

    .line 1127
    :goto_0
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->clearLayoutParams()V

    .line 1129
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setAlignRight()V

    .line 1130
    return-void

    .line 1125
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    const/4 v2, 0x3

    aget-object v0, v1, v2

    goto :goto_0
.end method

.method private prepare()V
    .locals 3

    .prologue
    .line 145
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->tag_frame:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    .line 146
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/focusview/TagFrame;->setOnTagClickListener(Lcom/sonyericsson/cameracommon/focusview/NameTag$NameTagOnClickListener;)V

    .line 147
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->rect:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    .line 148
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    .line 149
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    const/4 v2, 0x0

    sget v0, Lcom/sonyericsson/cameracommon/R$id;->smile_gauge_left:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    aput-object v0, v1, v2

    .line 150
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    const/4 v2, 0x1

    sget v0, Lcom/sonyericsson/cameracommon/R$id;->smile_gauge_right:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    aput-object v0, v1, v2

    .line 151
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    const/4 v2, 0x2

    sget v0, Lcom/sonyericsson/cameracommon/R$id;->smile_gauge_top:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    aput-object v0, v1, v2

    .line 152
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    const/4 v2, 0x3

    sget v0, Lcom/sonyericsson/cameracommon/R$id;->smile_gauge_bottom:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    aput-object v0, v1, v2

    .line 153
    return-void
.end method

.method private rotateNameTagLandScape()V
    .locals 5

    .prologue
    .line 670
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/focusview/TagFrame;->setRotation(F)V

    .line 673
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/focusview/TagFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 676
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, 0x0

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 681
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/focusview/TagFrame;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 682
    return-void
.end method

.method private rotateNameTagPortrait()V
    .locals 5

    .prologue
    .line 686
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    const/high16 v3, -0x3d4c0000    # -90.0f

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/focusview/TagFrame;->setRotation(F)V

    .line 688
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/focusview/TagFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 691
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/focusview/TagFrame;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    neg-int v2, v2

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/focusview/TagFrame;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v0, v2, v3

    .line 693
    .local v0, "marginsPoint":I
    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 698
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/cameracommon/focusview/TagFrame;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 699
    return-void
.end method

.method private setAlignBottom()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1202
    const/4 v0, 0x0

    .line 1203
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, 0x0

    .line 1205
    .local v1, "targetSmileGauge":Lcom/sonyericsson/cameracommon/focusview/SmileGauge;
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 1206
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    aget-object v1, v2, v3

    .line 1211
    :goto_0
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1213
    .restart local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    if-nez v0, :cond_1

    .line 1219
    :goto_1
    return-void

    .line 1208
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    const/4 v3, 0x1

    aget-object v1, v2, v3

    goto :goto_0

    .line 1217
    :cond_1
    const/16 v2, 0x8

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->getId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1218
    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method private setAlignRight()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 1226
    const/4 v0, 0x0

    .line 1227
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, 0x0

    .line 1229
    .local v1, "targetSmileGauge":Lcom/sonyericsson/cameracommon/focusview/SmileGauge;
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 1230
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    aget-object v1, v2, v3

    .line 1235
    :goto_0
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1237
    .restart local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    if-nez v0, :cond_1

    .line 1243
    :goto_1
    return-void

    .line 1232
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    const/4 v3, 0x3

    aget-object v1, v2, v3

    goto :goto_0

    .line 1241
    :cond_1
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->getId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1242
    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method private setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1332
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/focusview/TagFrame;->setName(Ljava/lang/String;)V

    .line 1333
    return-void
.end method

.method private setUuid(Ljava/lang/String;)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 1350
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mFaceUuid:Ljava/lang/String;

    .line 1351
    return-void
.end method

.method private startNameTagAnimation(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 1411
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/sonyericsson/cameracommon/R$anim;->tagged_nametag_show:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    check-cast v0, Landroid/view/animation/AnimationSet;

    .line 1415
    .local v0, "animationSet":Landroid/view/animation/AnimationSet;
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/focusview/TagFrame;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1416
    return-void
.end method

.method private switchRule(Landroid/view/View;III)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "srcRuleID"    # I
    .param p3, "destRuleID"    # I
    .param p4, "anchor"    # I

    .prologue
    .line 850
    if-eqz p1, :cond_0

    .line 852
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 853
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v1

    .line 856
    .local v1, "rules":[I
    aput p4, v1, p3

    .line 857
    const/4 v2, 0x0

    aput v2, v1, p2

    .line 859
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 861
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->requestLayout()V

    .line 863
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1    # "rules":[I
    :cond_0
    return-void
.end method


# virtual methods
.method public final changeRectangleResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 368
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->changeChildBackgroundResource(I)V

    .line 369
    return-void
.end method

.method public clearAlignBottom()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1250
    const/4 v0, 0x0

    .line 1251
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, 0x0

    .line 1253
    .local v1, "tempSmileGauge":Lcom/sonyericsson/cameracommon/focusview/SmileGauge;
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 1254
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    aget-object v1, v2, v4

    .line 1259
    :goto_0
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1261
    .restart local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    if-nez v0, :cond_1

    .line 1267
    :goto_1
    return-void

    .line 1256
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    const/4 v3, 0x1

    aget-object v1, v2, v3

    goto :goto_0

    .line 1265
    :cond_1
    const/16 v2, 0x8

    invoke-virtual {v0, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1266
    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method public clearAlignRight()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 1274
    const/4 v0, 0x0

    .line 1275
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, 0x0

    .line 1277
    .local v1, "tempSmileGauge":Lcom/sonyericsson/cameracommon/focusview/SmileGauge;
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 1278
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    aget-object v1, v2, v3

    .line 1283
    :goto_0
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1285
    .restart local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    if-nez v0, :cond_1

    .line 1291
    :goto_1
    return-void

    .line 1280
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    const/4 v3, 0x3

    aget-object v1, v2, v3

    goto :goto_0

    .line 1289
    :cond_1
    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1290
    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method public clearUpdated()V
    .locals 1

    .prologue
    .line 1444
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mIsUpdate:Z

    .line 1445
    return-void
.end method

.method public getFaceRect()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 1318
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1319
    .local v0, "tag":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1320
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1342
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/TagFrame;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getNameRect()Landroid/graphics/Rect;
    .locals 3

    .prologue
    .line 1300
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1301
    .local v0, "tag":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/focusview/TagFrame;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1304
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/focusview/TagFrame;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->getLeft()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1305
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/focusview/TagFrame;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->getBottom()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1306
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/focusview/TagFrame;->getRight()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->getLeft()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1307
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/focusview/TagFrame;->getBottom()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->getBottom()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1309
    :cond_0
    return-object v0
.end method

.method public getRectangleHeight()I
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->getHeight()I

    move-result v0

    return v0
.end method

.method public getRectangleLeft()I
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->getLeft()I

    move-result v0

    return v0
.end method

.method public getRectangleTop()I
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->getTop()I

    move-result v0

    return v0
.end method

.method public getRectangleWidth()I
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->getWidth()I

    move-result v0

    return v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1346
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mFaceUuid:Ljava/lang/String;

    return-object v0
.end method

.method public hide()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 1452
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1453
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->hideNameTag()V

    .line 1455
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->isSmileGaugeVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1456
    invoke-virtual {p0, v2}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setSmileGaugeVisibility(I)V

    .line 1458
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getVisibility()I

    move-result v1

    if-eq v1, v2, :cond_3

    .line 1462
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1463
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_2

    .line 1464
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1465
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1466
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1468
    :cond_2
    invoke-virtual {p0, v2}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setVisibility(I)V

    .line 1470
    .end local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    return-void
.end method

.method public hideNameTag()V
    .locals 1

    .prologue
    .line 1473
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setName(Ljava/lang/String;)V

    .line 1474
    return-void
.end method

.method public isUpdate()Z
    .locals 1

    .prologue
    .line 1448
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mIsUpdate:Z

    return v0
.end method

.method public moveRectTopLeft(II)V
    .locals 2
    .param p1, "dX"    # I
    .param p2, "dY"    # I

    .prologue
    .line 359
    neg-int v0, p1

    neg-int v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->scrollBy(II)V

    .line 360
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 384
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangleOnTouchListener:Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;

    .line 385
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->setRectangleOnTouchListener(Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;)V

    .line 386
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 387
    return-void
.end method

.method public onRectTouchCancel(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 429
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangleOnTouchListener:Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mIsAbleToTouch:Z

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangleOnTouchListener:Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;

    invoke-interface {v0, p0, p2}, Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;->onRectTouchCancel(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 432
    :cond_0
    return-void
.end method

.method public onRectTouchDown(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 399
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangleOnTouchListener:Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mIsAbleToTouch:Z

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangleOnTouchListener:Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;

    invoke-interface {v0, p0, p2}, Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;->onRectTouchDown(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 402
    :cond_0
    return-void
.end method

.method public onRectTouchLongPress(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1478
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangleOnTouchListener:Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mIsAbleToTouch:Z

    if-eqz v0, :cond_0

    .line 1479
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangleOnTouchListener:Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;

    invoke-interface {v0, p1}, Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;->onRectTouchLongPress(Landroid/view/MotionEvent;)V

    .line 1481
    :cond_0
    return-void
.end method

.method public onRectTouchUp(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 414
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangleOnTouchListener:Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mIsAbleToTouch:Z

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangleOnTouchListener:Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;

    invoke-interface {v0, p0, p2}, Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;->onRectTouchUp(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 417
    :cond_0
    return-void
.end method

.method public onTagClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 454
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mNameTagOnClickListener:Lcom/sonyericsson/cameracommon/focusview/NameTag$NameTagOnClickListener;

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mNameTagOnClickListener:Lcom/sonyericsson/cameracommon/focusview/NameTag$NameTagOnClickListener;

    invoke-interface {v0, p0}, Lcom/sonyericsson/cameracommon/focusview/NameTag$NameTagOnClickListener;->onTagClick(Landroid/view/View;)V

    .line 457
    :cond_0
    return-void
.end method

.method public prepare(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    const/4 v1, 0x4

    .line 165
    iput p1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mCurrentType:I

    .line 166
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->prepare()V

    .line 167
    packed-switch p1, :pswitch_data_0

    .line 184
    :goto_0
    return-void

    .line 169
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/TagFrame;->setVisibility(I)V

    goto :goto_0

    .line 172
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->setVisibility(I)V

    goto :goto_0

    .line 175
    :pswitch_2
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/TagFrame;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->setRectangleOnTouchListener(Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;)V

    goto :goto_0

    .line 179
    :pswitch_3
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/TagFrame;->setVisibility(I)V

    goto :goto_0

    .line 167
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public prepare(ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->prepare()V

    .line 198
    invoke-direct {p0, p2}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setName(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->prepare(I)V

    .line 200
    return-void
.end method

.method public prepare(ILjava/lang/String;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 215
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->prepare(ILjava/lang/String;)V

    .line 216
    invoke-virtual {p0, p3}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setRawPosition(Landroid/graphics/Rect;)V

    .line 217
    return-void
.end method

.method public final setDisplayRect(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 954
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    .local v0, "arr$":[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 955
    .local v1, "gauge":Lcom/sonyericsson/cameracommon/focusview/SmileGauge;
    invoke-virtual {v1, p1}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->setDisplayRect(Landroid/graphics/Rect;)V

    .line 954
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 957
    .end local v1    # "gauge":Lcom/sonyericsson/cameracommon/focusview/SmileGauge;
    :cond_0
    return-void
.end method

.method public setIsAbleToTouch(Z)V
    .locals 0
    .param p1, "isAble"    # Z

    .prologue
    .line 1484
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mIsAbleToTouch:Z

    .line 1485
    return-void
.end method

.method public setNameTagOnClickListener(Lcom/sonyericsson/cameracommon/focusview/NameTag$NameTagOnClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/cameracommon/focusview/NameTag$NameTagOnClickListener;

    .prologue
    .line 446
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mNameTagOnClickListener:Lcom/sonyericsson/cameracommon/focusview/NameTag$NameTagOnClickListener;

    .line 447
    return-void
.end method

.method public setRawPosition(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 238
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setRectSize(II)V

    .line 239
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setRectCenter(II)V

    .line 240
    return-void
.end method

.method public setRectCenter(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 320
    const/4 v0, 0x0

    .line 321
    .local v0, "offsetX":I
    const/4 v1, 0x0

    .line 323
    .local v1, "offsetY":I
    iget v2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mCurrentType:I

    packed-switch v2, :pswitch_data_0

    .line 342
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->getWidth()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 343
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->getHeight()I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    .line 347
    :goto_0
    neg-int v2, p1

    add-int/2addr v2, v0

    neg-int v3, p2

    add-int/2addr v3, v1

    invoke-virtual {p0, v2, v3}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->scrollTo(II)V

    .line 348
    return-void

    .line 332
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getWidth()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 333
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getHeight()I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    .line 334
    goto :goto_0

    .line 323
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setRectImageSize(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 280
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    sget v3, Lcom/sonyericsson/cameracommon/R$id;->rect_image:I

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 281
    .local v0, "image":Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 282
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v1, :cond_0

    .line 283
    iput p2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 284
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 285
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 286
    invoke-virtual {v0}, Landroid/widget/ImageView;->requestLayout()V

    .line 288
    :cond_0
    return-void
.end method

.method public setRectName(Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 226
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setRectSize(II)V

    .line 227
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setRectCenter(II)V

    .line 228
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setName(Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method public setRectOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 1432
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1433
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    const/high16 v1, -0x3d4c0000    # -90.0f

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->setRotation(F)V

    .line 1437
    :goto_0
    return-void

    .line 1435
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->setRotation(F)V

    goto :goto_0
.end method

.method public setRectSize(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->isRectSizeAlreadyInvalid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 257
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 258
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_0

    .line 259
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 260
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 261
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mLastSizeUpdatedTimestamp:J

    .line 267
    .end local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void
.end method

.method public setRectangleOnTouchListener(Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;

    .prologue
    .line 378
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangleOnTouchListener:Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;

    .line 379
    return-void
.end method

.method public setSize(IIZ)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "alignParentLeft"    # Z

    .prologue
    .line 300
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 301
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz p3, :cond_0

    .line 302
    const/16 v1, 0x13

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 306
    :goto_0
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 307
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 308
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    return-void

    .line 304
    :cond_0
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0
.end method

.method public setSmileGaugeVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->setVisibility(I)V

    .line 1005
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->setVisibility(I)V

    .line 1006
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->setVisibility(I)V

    .line 1007
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->setVisibility(I)V

    .line 1008
    return-void
.end method

.method public setSmileGaugesPosition(IIIII)V
    .locals 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "orientation"    # I

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->setPosition(IIIII)V

    .line 1021
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->setPosition(IIIII)V

    .line 1022
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->setPosition(IIIII)V

    .line 1023
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->setPosition(IIIII)V

    .line 1024
    invoke-direct {p0, p5}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->adjustSmileGaugesPosition(I)V

    .line 1025
    return-void
.end method

.method public final setSmileLevel(I)V
    .locals 4
    .param p1, "dimenId"    # I

    .prologue
    .line 960
    if-gez p1, :cond_1

    .line 967
    :cond_0
    return-void

    .line 964
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    .local v0, "arr$":[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 965
    .local v1, "gauge":Lcom/sonyericsson/cameracommon/focusview/SmileGauge;
    invoke-virtual {v1, p1}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->setSmileLevel(I)V

    .line 964
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setSmileScore(I)V
    .locals 2
    .param p1, "score"    # I

    .prologue
    .line 976
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->setSmileScore(I)V

    .line 977
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->setSmileScore(I)V

    .line 978
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->setSmileScore(I)V

    .line 979
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mSmileGauges:[Lcom/sonyericsson/cameracommon/focusview/SmileGauge;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/focusview/SmileGauge;->setSmileScore(I)V

    .line 980
    return-void
.end method

.method public setUpdated()V
    .locals 1

    .prologue
    .line 1440
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mIsUpdate:Z

    .line 1441
    return-void
.end method

.method public startRectangleAnimation(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 1402
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/sonyericsson/cameracommon/R$anim;->tagged_rectangle_show:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    check-cast v0, Landroid/view/animation/AnimationSet;

    .line 1406
    .local v0, "animationSet":Landroid/view/animation/AnimationSet;
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1407
    return-void
.end method

.method public startRectanglePressAnimation()V
    .locals 3

    .prologue
    .line 1420
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/sonyericsson/cameracommon/R$anim;->tagged_rectangle_press:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    check-cast v0, Landroid/view/animation/AnimationSet;

    .line 1424
    .local v0, "animationSet":Landroid/view/animation/AnimationSet;
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1425
    return-void
.end method

.method public stopAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1389
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1390
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->clearAnimation()V

    .line 1391
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mRectangle:Lcom/sonyericsson/cameracommon/focusview/Rectangle;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/Rectangle;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1394
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/TagFrame;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1395
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/TagFrame;->clearAnimation()V

    .line 1396
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->mTagFrame:Lcom/sonyericsson/cameracommon/focusview/TagFrame;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/TagFrame;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1398
    :cond_1
    return-void
.end method

.method public updateNameTag(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uuid"    # Ljava/lang/String;
    .param p3, "parentView"    # Landroid/view/View;
    .param p4, "orientation"    # I

    .prologue
    .line 1358
    const/4 v0, 0x0

    .line 1360
    .local v0, "isUpdateName":Z
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1362
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->hideNameTag()V

    .line 1365
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1367
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setName(Ljava/lang/String;)V

    .line 1368
    const/4 v0, 0x1

    .line 1372
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1373
    invoke-direct {p0, p3, p4}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->adjustNamePosition(Landroid/view/View;I)V

    .line 1377
    :cond_2
    invoke-direct {p0, p4}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->adjustSmileGaugesPosition(I)V

    .line 1380
    if-eqz v0, :cond_3

    .line 1381
    invoke-direct {p0, p4}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->startNameTagAnimation(I)V

    .line 1385
    :cond_3
    invoke-direct {p0, p2}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setUuid(Ljava/lang/String;)V

    .line 1386
    return-void
.end method
