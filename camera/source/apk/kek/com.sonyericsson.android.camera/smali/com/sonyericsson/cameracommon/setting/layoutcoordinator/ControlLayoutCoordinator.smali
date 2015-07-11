.class public Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ControlLayoutCoordinator;
.super Ljava/lang/Object;
.source "ControlLayoutCoordinator.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/LayoutCoordinator;


# instance fields
.field private final mAnchorRect:Landroid/graphics/Rect;

.field private final mContainerRect:Landroid/graphics/Rect;

.field private final mDialogHeight:I

.field public mDialogRect:Landroid/graphics/Rect;

.field private final mDialogWidth:I

.field private final mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "view"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;
    .param p2, "containerRect"    # Landroid/graphics/Rect;
    .param p3, "anchorRect"    # Landroid/graphics/Rect;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ControlLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    .line 31
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ControlLayoutCoordinator;->mContainerRect:Landroid/graphics/Rect;

    .line 32
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ControlLayoutCoordinator;->mAnchorRect:Landroid/graphics/Rect;

    .line 34
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 35
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Lcom/sonyericsson/cameracommon/R$dimen;->control_setting_dialog_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ControlLayoutCoordinator;->mDialogWidth:I

    .line 36
    sget v1, Lcom/sonyericsson/cameracommon/R$dimen;->control_setting_dialog_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ControlLayoutCoordinator;->mDialogHeight:I

    .line 37
    return-void
.end method

.method private coordinatePositionPhone(I)V
    .locals 6
    .param p1, "orientation"    # I

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ControlLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ControlLayoutCoordinator;->mContainerRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;->setX(F)V

    .line 50
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ControlLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ControlLayoutCoordinator;->mContainerRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ControlLayoutCoordinator;->mContainerRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ControlLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;->setY(F)V

    .line 53
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ControlLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;->getX()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ControlLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;->getY()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ControlLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;->getX()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ControlLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ControlLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;->getY()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ControlLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ControlLayoutCoordinator;->mDialogRect:Landroid/graphics/Rect;

    .line 58
    return-void
.end method

.method private coordinatePositionTablet(I)V
    .locals 6
    .param p1, "orientation"    # I

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ControlLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ControlLayoutCoordinator;->mContainerRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;->setX(F)V

    .line 62
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ControlLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ControlLayoutCoordinator;->mContainerRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ControlLayoutCoordinator;->mAnchorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ControlLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;->setY(F)V

    .line 65
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ControlLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;->getX()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ControlLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;->getY()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ControlLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;->getX()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ControlLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ControlLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;->getY()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ControlLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ControlLayoutCoordinator;->mDialogRect:Landroid/graphics/Rect;

    .line 70
    return-void
.end method


# virtual methods
.method public coordinatePosition(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ControlLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ControlLayoutCoordinator;->coordinatePositionTablet(I)V

    .line 46
    :goto_0
    return-void

    .line 44
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ControlLayoutCoordinator;->coordinatePositionPhone(I)V

    goto :goto_0
.end method

.method public coordinateSize(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ControlLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ControlLayoutCoordinator;->mDialogWidth:I

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ControlLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ControlLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 77
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ControlLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ControlLayoutCoordinator;->mDialogHeight:I

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ControlLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ControlLayoutCoordinator;->mView:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 80
    return-void
.end method

.method public getDialogRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/ControlLayoutCoordinator;->mDialogRect:Landroid/graphics/Rect;

    return-object v0
.end method
