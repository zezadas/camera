.class Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$SettingShortcutDialogOpenExecutor;
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
    name = "SettingShortcutDialogOpenExecutor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface",
        "<",
        "Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)V
    .locals 0

    .prologue
    .line 1357
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$SettingShortcutDialogOpenExecutor;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;
    .param p2, "x1"    # Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$1;

    .prologue
    .line 1357
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$SettingShortcutDialogOpenExecutor;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)V

    return-void
.end method


# virtual methods
.method public onExecute(Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem",
            "<",
            "Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1362
    .local p1, "item":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;>;"
    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$SettingShortcutDialogOpenExecutor;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->getActivity()Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->access$1600(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->isMenuAvailable()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1363
    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$SettingShortcutDialogOpenExecutor;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->access$1100(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->clearShortcutSelected()V

    .line 1391
    :goto_0
    return-void

    .line 1367
    :cond_0
    new-instance v0, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$SettingShortcutDialogOpenExecutor;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->access$1700(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$SettingShortcutDialogOpenExecutor;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mDialogItemFactory:Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->access$1800(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/dialogitem/SettingDialogItemFactory;)V

    .line 1370
    .local v0, "adapter":Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    sget-object v4, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$view$settings$SettingList$Shortcut:[I

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 1372
    :pswitch_0
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->SELF_TIMER:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    .line 1380
    .local v2, "key":Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$SettingShortcutDialogOpenExecutor;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$SettingShortcutDialogOpenExecutor;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->access$1700(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    move-result-object v4

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->generateChildrenSettinItem(Landroid/content/Context;Lcom/sonyericsson/android/camera/configuration/ParameterKey;)Ljava/util/List;
    invoke-static {v3, v4, v2}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->access$1900(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;Landroid/content/Context;Lcom/sonyericsson/android/camera/configuration/ParameterKey;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;->addAll(Ljava/util/Collection;)V

    .line 1381
    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$SettingShortcutDialogOpenExecutor;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->access$1100(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$SettingShortcutDialogOpenExecutor;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->access$2000(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->getTitleTextId(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)I

    move-result v4

    invoke-virtual {v3, v0, v4}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->openShortcutDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;I)Z

    move-result v1

    .line 1385
    .local v1, "isDialogOpen":Z
    if-nez v1, :cond_1

    .line 1386
    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$SettingShortcutDialogOpenExecutor;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->access$1100(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeCurrentDialog()Z

    .line 1390
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$SettingShortcutDialogOpenExecutor;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->hideBalloonTips()V
    invoke-static {v3}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;->access$2100(Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;)V

    goto :goto_0

    .line 1370
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
