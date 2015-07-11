.class public Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuLayoutCoordinator;
.super Ljava/lang/Object;
.source "MenuLayoutCoordinator.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/LayoutCoordinator;


# instance fields
.field public mDialogRect:Landroid/graphics/Rect;

.field private final mMenuDialogRectCalculator:Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;

.field private final mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;Landroid/graphics/Rect;I)V
    .locals 3
    .param p1, "view"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;
    .param p2, "containerRect"    # Landroid/graphics/Rect;
    .param p3, "menuDialogRowCount"    # I

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    .line 27
    new-instance v0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->numberOfTabs()I

    move-result v2

    invoke-direct {v0, v1, p2, p3, v2}, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;-><init>(Landroid/content/Context;Landroid/graphics/Rect;II)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuLayoutCoordinator;->mMenuDialogRectCalculator:Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;

    .line 30
    return-void
.end method


# virtual methods
.method public coordinatePosition(I)V
    .locals 4
    .param p1, "orientation"    # I

    .prologue
    const/4 v3, 0x0

    .line 39
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 45
    .local v0, "targetRect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuLayoutCoordinator;->mMenuDialogRectCalculator:Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;->computePosition(I)Landroid/graphics/Point;

    move-result-object v2

    invoke-static {p1, v1, v0, v0, v2}, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/LayoutCoordinateUtil;->coodinatePosition(ILandroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Point;)Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuLayoutCoordinator;->mDialogRect:Landroid/graphics/Rect;

    .line 51
    return-void
.end method

.method public coordinateSize(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->setNumColumns(I)V

    .line 56
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuLayoutCoordinator;->mMenuDialogRectCalculator:Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;->computeWidth(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 57
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuLayoutCoordinator;->mMenuDialogRectCalculator:Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuDialogRectCalculator;->computeHeight(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 58
    return-void
.end method

.method public getDialogRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/MenuLayoutCoordinator;->mDialogRect:Landroid/graphics/Rect;

    return-object v0
.end method
