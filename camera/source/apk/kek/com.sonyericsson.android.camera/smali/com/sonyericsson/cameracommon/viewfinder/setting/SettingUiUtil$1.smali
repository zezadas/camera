.class Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil$1;
.super Ljava/lang/Object;
.source "SettingUiUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil;->openMenuDialogAndSelectItem(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;Ljava/lang/Object;[Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil;

.field final synthetic val$requestToSelect:Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil;Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil$1;->this$0:Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil;

    iput-object p2, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil$1;->val$requestToSelect:Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil$1;->this$0:Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil;

    # getter for: Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil;->mUi:Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil;->access$100(Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil;)Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil$1;->this$0:Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil;

    # getter for: Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil;->mMenuShortcutTag:Ljava/lang/Object;
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil;->access$000(Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->isOpened(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUiUtil$1;->val$requestToSelect:Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;->select()V

    .line 63
    :cond_0
    return-void
.end method
