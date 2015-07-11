.class public Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil;
.super Ljava/lang/Object;
.source "SettingUiUtil.java"


# instance fields
.field private final mMenuShortcutTag:Ljava/lang/Object;

.field private final mUi:Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;Ljava/lang/Object;)V
    .locals 0
    .param p1, "ui"    # Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;
    .param p2, "menuShortcutTag"    # Ljava/lang/Object;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil;->mUi:Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;

    .line 25
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil;->mMenuShortcutTag:Ljava/lang/Object;

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil;->mMenuShortcutTag:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil;)Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil;->mUi:Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;

    return-object v0
.end method


# virtual methods
.method public openMenuDialogAndSelectItem(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;Ljava/lang/Object;[Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;I)V
    .locals 9
    .param p1, "adapter"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    .param p2, "selectItemData"    # Ljava/lang/Object;
    .param p3, "tabs"    # [Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;
    .param p4, "selectedTab"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;
    .param p5, "menuDialogRowCount"    # I

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil;->mUi:Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil;->mMenuShortcutTag:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->selectShortcut(Ljava/lang/Object;)V

    .line 41
    const/4 v8, 0x0

    .line 42
    .local v8, "selectItem":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getCount()I

    move-result v0

    if-ge v6, v0, :cond_0

    .line 43
    invoke-virtual {p1, v6}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    invoke-interface {v0, p2}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->compareData(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 44
    invoke-virtual {p1, v6}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "selectItem":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    check-cast v8, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    .line 45
    .restart local v8    # "selectItem":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->setSelected(Z)V

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil;->mUi:Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil;->mMenuShortcutTag:Ljava/lang/Object;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->openMenuDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;[Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;Ljava/lang/Object;I)V

    .line 53
    if-eqz v8, :cond_1

    .line 54
    move-object v7, v8

    .line 56
    .local v7, "requestToSelect":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil$1;

    invoke-direct {v1, p0, v7}, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil$1;-><init>(Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil;Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 66
    .end local v7    # "requestToSelect":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    :cond_1
    return-void

    .line 42
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method
