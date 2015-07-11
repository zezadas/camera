.class Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogFactory;
.super Ljava/lang/Object;
.source "SettingDialogFactory.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createControl(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;)Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "coordinateData"    # Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;

    .prologue
    .line 97
    sget v2, Lcom/sonyericsson/cameracommon/R$layout;->setting_dialog_control:I

    invoke-static {p0, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogFactory;->inflate(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    .line 101
    .local v1, "dialog":Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;
    invoke-static {v1, p1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory;->createControlLayoutCoordinator(Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;)Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/LayoutCoordinator;

    move-result-object v0

    .line 105
    .local v0, "coordinator":Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/LayoutCoordinator;
    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;->setLayoutCoordinator(Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/LayoutCoordinator;)V

    .line 107
    return-object v1
.end method

.method public static createMenu(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;II)Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "coordinateData"    # Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;
    .param p2, "menuDialogRowCount"    # I
    .param p3, "numberOfTabs"    # I

    .prologue
    .line 79
    sget v2, Lcom/sonyericsson/cameracommon/R$layout;->setting_dialog_menu:I

    invoke-static {p0, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogFactory;->inflate(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    .line 82
    .local v1, "dialog":Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;
    invoke-virtual {v1, p3}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->setNumberOfTabs(I)V

    .line 83
    invoke-static {v1, p1, p2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory;->createMenuLayoutCoordinator(Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;I)Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/LayoutCoordinator;

    move-result-object v0

    .line 88
    .local v0, "coordinator":Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/LayoutCoordinator;
    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->setLayoutCoordinator(Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/LayoutCoordinator;)V

    .line 90
    return-object v1
.end method

.method public static createSecondLayerDialog(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;II)Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "coordinateData"    # Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;
    .param p2, "menuDialogRowCount"    # I
    .param p3, "numberOfTabs"    # I

    .prologue
    .line 55
    sget v2, Lcom/sonyericsson/cameracommon/R$layout;->setting_dialog_basic:I

    invoke-static {p0, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogFactory;->inflate(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    .line 59
    .local v1, "dialog":Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;
    sget-object v2, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;->SECOND_LAYER_DIALOG_SINGLE_ITEM_PARAMS:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->setSettingDialogParams(Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;)V

    .line 62
    invoke-static {v1, p1, p2, p3}, Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory;->createSecondLayerLayoutCoordinator(Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;II)Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/LayoutCoordinator;

    move-result-object v0

    .line 68
    .local v0, "coordinator":Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/LayoutCoordinator;
    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->setLayoutCoordinator(Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/LayoutCoordinator;)V

    .line 70
    return-object v1
.end method

.method public static createShortcutDialog(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;I)Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "coordinateData"    # Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;
    .param p2, "dialogTitleId"    # I

    .prologue
    .line 30
    sget v2, Lcom/sonyericsson/cameracommon/R$layout;->setting_dialog_basic:I

    invoke-static {p0, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogFactory;->inflate(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    .line 34
    .local v1, "dialog":Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;
    sget-object v2, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;->SHORTCUT_DIALOG_PARAMS:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->setSettingDialogParams(Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasicParams;)V

    .line 36
    invoke-static {v1, p1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory;->createShortcutLayoutCoordinator(Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;)Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/LayoutCoordinator;

    move-result-object v0

    .line 40
    .local v0, "coordinator":Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/LayoutCoordinator;
    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->setLayoutCoordinator(Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/LayoutCoordinator;)V

    .line 42
    if-eqz p2, :cond_0

    .line 43
    invoke-virtual {v1, p2}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->setTitle(I)V

    .line 46
    :cond_0
    return-object v1
.end method

.method private static inflate(Landroid/content/Context;I)Landroid/view/View;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 111
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 114
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method
