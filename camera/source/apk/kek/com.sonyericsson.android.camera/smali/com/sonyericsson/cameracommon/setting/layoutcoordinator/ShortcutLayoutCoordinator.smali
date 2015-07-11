.class public Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;
.super Ljava/lang/Object;
.source "ShortcutLayoutCoordinator.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/LayoutCoordinator;


# instance fields
.field private final mAnchorRect:Landroid/graphics/Rect;

.field private final mContainerRect:Landroid/graphics/Rect;

.field private mDialogHeight:I

.field public mDialogRect:Landroid/graphics/Rect;

.field private mDialogWidth:I

.field private final mIsTablet:Z

.field private final mMaxHeightMargin:I

.field private final mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "view"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;
    .param p2, "containerRect"    # Landroid/graphics/Rect;
    .param p3, "anchorRect"    # Landroid/graphics/Rect;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    .line 49
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mContainerRect:Landroid/graphics/Rect;

    .line 50
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mAnchorRect:Landroid/graphics/Rect;

    .line 52
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->isTablet(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mIsTablet:Z

    .line 54
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 55
    .local v0, "res":Landroid/content/res/Resources;
    iget-boolean v1, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mIsTablet:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/sonyericsson/cameracommon/R$dimen;->setting_dialog_menu_max_height_margin_tablet:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_0
    iput v1, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mMaxHeightMargin:I

    .line 58
    return-void

    .line 55
    :cond_0
    sget v1, Lcom/sonyericsson/cameracommon/R$dimen;->setting_dialog_menu_max_height_margin_phone:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0
.end method

.method private coordinatePositionPhone(I)V
    .locals 8
    .param p1, "orientation"    # I

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v3, 0x0

    .line 73
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->setPivotX(F)V

    .line 74
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->setPivotY(F)V

    .line 75
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-static {p1}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->setRotation(F)V

    .line 77
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->isPortrait(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mContainerRect:Landroid/graphics/Rect;

    iget v0, v2, Landroid/graphics/Rect;->left:I

    .line 79
    .local v0, "left":I
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mContainerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mDialogWidth:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mContainerRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget v4, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mDialogWidth:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    float-to-int v1, v2

    .line 81
    .local v1, "top":I
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->setLeft(I)V

    .line 82
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    iget v3, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mDialogWidth:I

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->setRight(I)V

    .line 83
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->setTop(I)V

    .line 84
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    iget v3, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mDialogHeight:I

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->setBottom(I)V

    .line 85
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getX()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getY()F

    move-result v4

    float-to-int v4, v4

    iget v5, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mDialogWidth:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getX()F

    move-result v5

    float-to-int v5, v5

    iget v6, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mDialogHeight:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mDialogRect:Landroid/graphics/Rect;

    .line 103
    :goto_0
    return-void

    .line 91
    .end local v0    # "left":I
    .end local v1    # "top":I
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mContainerRect:Landroid/graphics/Rect;

    iget v0, v2, Landroid/graphics/Rect;->left:I

    .line 92
    .restart local v0    # "left":I
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mContainerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mContainerRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget v4, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mDialogHeight:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    float-to-int v1, v2

    .line 93
    .restart local v1    # "top":I
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->setLeft(I)V

    .line 94
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    iget v3, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mDialogWidth:I

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->setRight(I)V

    .line 95
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->setTop(I)V

    .line 96
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    iget v3, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mDialogHeight:I

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->setBottom(I)V

    .line 97
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getX()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getY()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getX()F

    move-result v5

    float-to-int v5, v5

    iget v6, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mDialogWidth:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getY()F

    move-result v6

    float-to-int v6, v6

    iget v7, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mDialogHeight:I

    add-int/2addr v6, v7

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mDialogRect:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method private coordinatePositionTablet(I)V
    .locals 11
    .param p1, "orientation"    # I

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/4 v7, 0x0

    .line 107
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getLeftItemCount(Landroid/content/Context;)I

    move-result v2

    .line 108
    .local v2, "shortcutCount":I
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/sonyericsson/cameracommon/R$dimen;->shortcut_dialog_item_height:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 110
    .local v3, "shortcutSize":I
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mContainerRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    div-int/2addr v5, v2

    sub-int/2addr v5, v3

    div-int/lit8 v1, v5, 0x2

    .line 112
    .local v1, "marginVertical":I
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v5, v7}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->setPivotX(F)V

    .line 113
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v5, v7}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->setPivotY(F)V

    .line 115
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->isPortrait(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 116
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mContainerRect:Landroid/graphics/Rect;

    iget v0, v5, Landroid/graphics/Rect;->left:I

    .line 117
    .local v0, "left":I
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mContainerRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mAnchorRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mDialogWidth:I

    int-to-float v6, v6

    div-float/2addr v6, v8

    add-float/2addr v5, v6

    float-to-int v4, v5

    .line 119
    .local v4, "top":I
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mContainerRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v1

    iget v6, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mDialogWidth:I

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_1

    .line 120
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mContainerRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v1

    iget v6, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mDialogWidth:I

    add-int v4, v5, v6

    .line 125
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v5, v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->setLeft(I)V

    .line 126
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    iget v6, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mDialogWidth:I

    add-int/2addr v6, v0

    invoke-virtual {v5, v6}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->setRight(I)V

    .line 127
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v5, v4}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->setTop(I)V

    .line 128
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    iget v6, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mDialogHeight:I

    add-int/2addr v6, v4

    invoke-virtual {v5, v6}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->setBottom(I)V

    .line 129
    new-instance v5, Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getX()F

    move-result v6

    float-to-int v6, v6

    iget-object v7, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v7}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getY()F

    move-result v7

    float-to-int v7, v7

    iget v8, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mDialogWidth:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v8}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getX()F

    move-result v8

    float-to-int v8, v8

    iget v9, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mDialogHeight:I

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v9}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getY()F

    move-result v9

    float-to-int v9, v9

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v5, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mDialogRect:Landroid/graphics/Rect;

    .line 153
    :goto_1
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-static {p1}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->setRotation(F)V

    .line 154
    return-void

    .line 121
    :cond_1
    iget v5, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mDialogWidth:I

    add-int/2addr v5, v4

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mContainerRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v1

    iget v7, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mDialogWidth:I

    add-int/2addr v6, v7

    if-le v5, v6, :cond_0

    .line 122
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mContainerRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v1

    iget v6, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mDialogWidth:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mDialogWidth:I

    add-int v4, v5, v6

    goto :goto_0

    .line 135
    .end local v0    # "left":I
    .end local v4    # "top":I
    :cond_2
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mContainerRect:Landroid/graphics/Rect;

    iget v0, v5, Landroid/graphics/Rect;->left:I

    .line 136
    .restart local v0    # "left":I
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mContainerRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mAnchorRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mDialogHeight:I

    int-to-float v6, v6

    div-float/2addr v6, v8

    sub-float/2addr v5, v6

    float-to-int v4, v5

    .line 137
    .restart local v4    # "top":I
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mContainerRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v1

    if-ge v4, v5, :cond_4

    .line 138
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mContainerRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int v4, v5, v1

    .line 143
    :cond_3
    :goto_2
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v5, v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->setLeft(I)V

    .line 144
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    iget v6, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mDialogWidth:I

    add-int/2addr v6, v0

    invoke-virtual {v5, v6}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->setRight(I)V

    .line 145
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v5, v4}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->setTop(I)V

    .line 146
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    iget v6, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mDialogHeight:I

    add-int/2addr v6, v4

    invoke-virtual {v5, v6}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->setBottom(I)V

    .line 147
    new-instance v5, Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getX()F

    move-result v6

    float-to-int v6, v6

    iget-object v7, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v7}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getY()F

    move-result v7

    float-to-int v7, v7

    iget-object v8, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v8}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getX()F

    move-result v8

    float-to-int v8, v8

    iget v9, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mDialogWidth:I

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v9}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getY()F

    move-result v9

    float-to-int v9, v9

    iget v10, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mDialogHeight:I

    add-int/2addr v9, v10

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v5, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mDialogRect:Landroid/graphics/Rect;

    goto/16 :goto_1

    .line 139
    :cond_4
    iget v5, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mDialogHeight:I

    add-int/2addr v5, v4

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mContainerRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v1

    if-le v5, v6, :cond_3

    .line 140
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mContainerRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v1

    iget v6, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mDialogHeight:I

    sub-int v4, v5, v6

    goto :goto_2
.end method

.method private isPortrait(I)Z
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    const/4 v0, 0x1

    .line 193
    if-ne p1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public coordinatePosition(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mIsTablet:Z

    if-eqz v0, :cond_0

    .line 66
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->coordinatePositionTablet(I)V

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->coordinatePositionPhone(I)V

    goto :goto_0
.end method

.method public coordinateSize(I)V
    .locals 8
    .param p1, "orientation"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 161
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 163
    .local v3, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->isPortrait(I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mContainerRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 166
    .local v0, "containerHeight":I
    :goto_0
    iget v4, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mMaxHeightMargin:I

    sub-int v1, v0, v4

    .line 168
    .local v1, "maxHeight":I
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v4, v6}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->computeHeight(I)I

    move-result v4

    if-le v4, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->isPortrait(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 169
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v4, v7}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->setNumColumns(I)V

    .line 171
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v4, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getNumRows(I)I

    move-result v2

    .line 172
    .local v2, "numRows":I
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v4, v2}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->computeMaxHeight(I)I

    move-result v4

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v5, v7}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->computeHeight(I)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 173
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v4, v7}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->computeWidth(I)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 183
    :goto_1
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v4, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mDialogWidth:I

    .line 184
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v4, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mDialogHeight:I

    .line 185
    return-void

    .line 163
    .end local v0    # "containerHeight":I
    .end local v1    # "maxHeight":I
    .end local v2    # "numRows":I
    :cond_0
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mContainerRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v0

    goto :goto_0

    .line 176
    .restart local v0    # "containerHeight":I
    .restart local v1    # "maxHeight":I
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v4, v6}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->setNumColumns(I)V

    .line 178
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v4, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getNumRows(I)I

    move-result v2

    .line 179
    .restart local v2    # "numRows":I
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v4, v2}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->computeMaxHeight(I)I

    move-result v4

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v5, v6}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->computeHeight(I)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 180
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v4, v6}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->computeWidth(I)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1
.end method

.method public getDialogRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ShortcutLayoutCoordinator;->mDialogRect:Landroid/graphics/Rect;

    return-object v0
.end method
