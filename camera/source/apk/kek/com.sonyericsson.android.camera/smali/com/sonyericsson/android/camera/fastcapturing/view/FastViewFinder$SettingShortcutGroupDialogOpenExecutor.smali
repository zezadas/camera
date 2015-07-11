.class Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$SettingShortcutGroupDialogOpenExecutor;
.super Ljava/lang/Object;
.source "FastViewFinder.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingShortcutGroupDialogOpenExecutor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface",
        "<",
        "Lcom/sonyericsson/android/camera/view/settings/SettingGroup;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)V
    .locals 0

    .prologue
    .line 1398
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$SettingShortcutGroupDialogOpenExecutor;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;
    .param p2, "x1"    # Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$1;

    .prologue
    .line 1398
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$SettingShortcutGroupDialogOpenExecutor;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)V

    return-void
.end method


# virtual methods
.method public onExecute(Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem",
            "<",
            "Lcom/sonyericsson/android/camera/view/settings/SettingGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1403
    .local p1, "item":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<Lcom/sonyericsson/android/camera/view/settings/SettingGroup;>;"
    iget-object v9, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$SettingShortcutGroupDialogOpenExecutor;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getActivity()Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    invoke-static {v9}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->access$2200(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->isMenuAvailable()Z

    move-result v9

    if-nez v9, :cond_1

    .line 1404
    iget-object v9, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$SettingShortcutGroupDialogOpenExecutor;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;
    invoke-static {v9}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->access$1100(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->clearShortcutSelected()V

    .line 1430
    :cond_0
    return-void

    .line 1408
    :cond_1
    new-instance v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    iget-object v9, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$SettingShortcutGroupDialogOpenExecutor;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;
    invoke-static {v9}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->access$1700(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    move-result-object v9

    iget-object v10, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$SettingShortcutGroupDialogOpenExecutor;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mDialogItemFactory:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;
    invoke-static {v10}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->access$1800(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;

    move-result-object v10

    invoke-direct {v0, v9, v10}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;)V

    .line 1409
    .local v0, "adapter":Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->getData()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/view/settings/SettingGroup;->getSettingItemList()[Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    move-result-object v1

    .local v1, "arr$":[Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v2    # "i$":I
    .local v3, "i$":I
    :goto_0
    if-ge v3, v6, :cond_0

    aget-object v5, v1, v3

    .line 1410
    .local v5, "key":Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->isSelectable()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1412
    iget-object v9, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$SettingShortcutGroupDialogOpenExecutor;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    iget-object v10, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$SettingShortcutGroupDialogOpenExecutor;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;
    invoke-static {v10}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->access$1700(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    move-result-object v10

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->generateChildrenSettinItem(Landroid/content/Context;Lcom/sonyericsson/android/camera/configuration/ParameterKey;)Ljava/util/List;
    invoke-static {v9, v10, v5}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->access$1900(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;Landroid/content/Context;Lcom/sonyericsson/android/camera/configuration/ParameterKey;)Ljava/util/List;

    move-result-object v7

    .line 1414
    .local v7, "options":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v3    # "i$":I
    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    .line 1415
    .local v8, "settingItem":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    invoke-virtual {v0, v8}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 1418
    .end local v8    # "settingItem":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    :cond_2
    iget-object v9, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$SettingShortcutGroupDialogOpenExecutor;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;
    invoke-static {v9}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->access$1100(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    move-result-object v9

    iget-object v10, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$SettingShortcutGroupDialogOpenExecutor;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    invoke-static {v10}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->access$2000(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->getTitleTextId(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)I

    move-result v10

    invoke-virtual {v9, v0, v10}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->openShortcutDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;I)Z

    move-result v4

    .line 1422
    .local v4, "isDialogOpen":Z
    if-nez v4, :cond_3

    .line 1423
    iget-object v9, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$SettingShortcutGroupDialogOpenExecutor;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;
    invoke-static {v9}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->access$1100(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeCurrentDialog()Z

    .line 1427
    :cond_3
    iget-object v9, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$SettingShortcutGroupDialogOpenExecutor;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->hideBalloonTips()V
    invoke-static {v9}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->access$2100(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)V

    .line 1409
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "isDialogOpen":Z
    .end local v7    # "options":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;>;"
    :cond_4
    add-int/lit8 v2, v3, 0x1

    .local v2, "i$":I
    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_0
.end method
