.class Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;
.super Ljava/lang/Object;
.source "MenuDialogRectCalculator.java"


# instance fields
.field private final mBounds:Landroid/graphics/Rect;

.field private final mContext:Landroid/content/Context;

.field private final mDividerHeight:I

.field private final mIsTablet:Z

.field private final mItemHeight:I

.field private final mMaxHeightMargin:I

.field private mMenuDialogRowCount:I

.field private mNumberOfTabs:I

.field private final mPadding:I

.field private final mTabHeight:I

.field private final mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Rect;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "containerBounds"    # Landroid/graphics/Rect;
    .param p3, "menuDialogRowCount"    # I
    .param p4, "numberOfTabs"    # I

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;->mContext:Landroid/content/Context;

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 40
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Lcom/sonyericsson/cameracommon/R$dimen;->menu_dialog_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;->mPadding:I

    .line 41
    sget v1, Lcom/sonyericsson/cameracommon/R$dimen;->divider_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;->mDividerHeight:I

    .line 42
    sget v1, Lcom/sonyericsson/cameracommon/R$dimen;->setting_group_tab_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;->mTabHeight:I

    .line 43
    sget v1, Lcom/sonyericsson/cameracommon/R$dimen;->setting_dialog_menu_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;->mWidth:I

    .line 44
    sget v1, Lcom/sonyericsson/cameracommon/R$dimen;->menu_dialog_item_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;->mItemHeight:I

    .line 45
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;->mBounds:Landroid/graphics/Rect;

    .line 46
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->isTablet(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;->mIsTablet:Z

    .line 48
    iget-boolean v1, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;->mIsTablet:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/sonyericsson/cameracommon/R$dimen;->setting_dialog_menu_max_height_margin_tablet:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_0
    iput v1, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;->mMaxHeightMargin:I

    .line 51
    iput p3, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;->mMenuDialogRowCount:I

    .line 52
    iput p4, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;->mNumberOfTabs:I

    .line 53
    return-void

    .line 48
    :cond_0
    sget v1, Lcom/sonyericsson/cameracommon/R$dimen;->setting_dialog_menu_max_height_margin_phone:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0
.end method

.method private computePositionForPhone(I)Landroid/graphics/Point;
    .locals 5
    .param p1, "orientation"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;->isPortrait(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;->computeWidth(I)I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 69
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;->computeHeight(I)I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_0
.end method

.method private computePositionForTablet(I)Landroid/graphics/Point;
    .locals 7
    .param p1, "orientation"    # I

    .prologue
    .line 78
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getLeftItemCount(Landroid/content/Context;)I

    move-result v1

    .line 79
    .local v1, "shortcutCount":I
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/sonyericsson/cameracommon/R$dimen;->shortcut_dialog_item_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 81
    .local v2, "shortcutSize":I
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/2addr v3, v1

    sub-int/2addr v3, v2

    div-int/lit8 v0, v3, 0x2

    .line 83
    .local v0, "marginBottom":I
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;->isPortrait(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 84
    new-instance v3, Landroid/graphics/Point;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;->mBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;->mBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;->computeWidth(I)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 88
    :goto_0
    return-object v3

    :cond_0
    new-instance v3, Landroid/graphics/Point;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;->mBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;->mBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;->computeHeight(I)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_0
.end method

.method private getNumRows(I)I
    .locals 4
    .param p1, "screenHeight"    # I

    .prologue
    .line 131
    iget v1, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;->mNumberOfTabs:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 132
    iget v1, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;->mMaxHeightMargin:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;->mPadding:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;->mDividerHeight:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;->mItemHeight:I

    iget v3, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;->mDividerHeight:I

    add-int/2addr v2, v3

    div-int v0, v1, v2

    .line 145
    .local v0, "numRows":I
    :goto_0
    iget v1, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;->mMenuDialogRowCount:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;->mMenuDialogRowCount:I

    if-ge v1, v0, :cond_0

    .line 146
    iget v0, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;->mMenuDialogRowCount:I

    .line 149
    :cond_0
    return v0

    .line 138
    .end local v0    # "numRows":I
    :cond_1
    iget v1, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;->mMaxHeightMargin:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;->mPadding:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;->mTabHeight:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;->mDividerHeight:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;->mItemHeight:I

    iget v3, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;->mDividerHeight:I

    add-int/2addr v2, v3

    div-int v0, v1, v2

    .restart local v0    # "numRows":I
    goto :goto_0
.end method

.method private isPortrait(I)Z
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    const/4 v0, 0x1

    .line 153
    if-ne p1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public computeHeight(I)I
    .locals 4
    .param p1, "orientation"    # I

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;->isPortrait(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 96
    .local v0, "height":I
    :goto_0
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;->getNumRows(I)I

    move-result v1

    .line 98
    .local v1, "numRows":I
    iget v2, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;->mNumberOfTabs:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 99
    iget v2, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;->mItemHeight:I

    mul-int/2addr v2, v1

    iget v3, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;->mPadding:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;->mDividerHeight:I

    mul-int/2addr v3, v1

    add-int/2addr v2, v3

    .line 103
    :goto_1
    return v2

    .line 95
    .end local v0    # "height":I
    .end local v1    # "numRows":I
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v0

    goto :goto_0

    .line 103
    .restart local v0    # "height":I
    .restart local v1    # "numRows":I
    :cond_1
    iget v2, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;->mItemHeight:I

    mul-int/2addr v2, v1

    iget v3, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;->mPadding:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;->mTabHeight:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;->mDividerHeight:I

    mul-int/2addr v3, v1

    add-int/2addr v2, v3

    goto :goto_1
.end method

.method public computePosition(I)Landroid/graphics/Point;
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;->mIsTablet:Z

    if-eqz v0, :cond_0

    .line 57
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;->computePositionForTablet(I)Landroid/graphics/Point;

    move-result-object v0

    .line 59
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;->computePositionForPhone(I)Landroid/graphics/Point;

    move-result-object v0

    goto :goto_0
.end method

.method public computeWidth(I)I
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 111
    iget v0, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;->mWidth:I

    return v0
.end method
