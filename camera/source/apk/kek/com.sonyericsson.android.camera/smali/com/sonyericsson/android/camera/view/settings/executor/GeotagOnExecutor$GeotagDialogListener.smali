.class Lcom/sonyericsson/android/camera/view/settings/executor/GeotagOnExecutor$GeotagDialogListener;
.super Ljava/lang/Object;
.source "GeotagOnExecutor.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/settings/executor/GeotagOnExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GeotagDialogListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/settings/executor/GeotagOnExecutor;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/view/settings/executor/GeotagOnExecutor;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/settings/executor/GeotagOnExecutor$GeotagDialogListener;->this$0:Lcom/sonyericsson/android/camera/view/settings/executor/GeotagOnExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/settings/executor/GeotagOnExecutor;Lcom/sonyericsson/android/camera/view/settings/executor/GeotagOnExecutor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/view/settings/executor/GeotagOnExecutor;
    .param p2, "x1"    # Lcom/sonyericsson/android/camera/view/settings/executor/GeotagOnExecutor$1;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/settings/executor/GeotagOnExecutor$GeotagDialogListener;-><init>(Lcom/sonyericsson/android/camera/view/settings/executor/GeotagOnExecutor;)V

    return-void
.end method


# virtual methods
.method public onSet(Z)V
    .locals 3
    .param p1, "available"    # Z

    .prologue
    .line 56
    if-eqz p1, :cond_1

    .line 57
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    .line 61
    .local v0, "geotag":Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/settings/executor/GeotagOnExecutor$GeotagDialogListener;->this$0:Lcom/sonyericsson/android/camera/view/settings/executor/GeotagOnExecutor;

    # getter for: Lcom/sonyericsson/android/camera/view/settings/executor/GeotagOnExecutor;->mActivity:Lcom/sonyericsson/android/camera/ExtendedActivity;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/settings/executor/GeotagOnExecutor;->access$100(Lcom/sonyericsson/android/camera/view/settings/executor/GeotagOnExecutor;)Lcom/sonyericsson/android/camera/ExtendedActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/ExtendedActivity;->getParameterManager()Lcom/sonyericsson/android/camera/parameter/ParameterManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->set(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    .line 62
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/settings/executor/GeotagOnExecutor$GeotagDialogListener;->this$0:Lcom/sonyericsson/android/camera/view/settings/executor/GeotagOnExecutor;

    # getter for: Lcom/sonyericsson/android/camera/view/settings/executor/GeotagOnExecutor;->mActivity:Lcom/sonyericsson/android/camera/ExtendedActivity;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/settings/executor/GeotagOnExecutor;->access$100(Lcom/sonyericsson/android/camera/view/settings/executor/GeotagOnExecutor;)Lcom/sonyericsson/android/camera/ExtendedActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/cameracommon/utility/RegionConfig;->isChinaRegion(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/settings/executor/GeotagOnExecutor$GeotagDialogListener;->this$0:Lcom/sonyericsson/android/camera/view/settings/executor/GeotagOnExecutor;

    # getter for: Lcom/sonyericsson/android/camera/view/settings/executor/GeotagOnExecutor;->mSettingController:Lcom/sonyericsson/android/camera/view/settings/SettingController;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/settings/executor/GeotagOnExecutor;->access$200(Lcom/sonyericsson/android/camera/view/settings/executor/GeotagOnExecutor;)Lcom/sonyericsson/android/camera/view/settings/SettingController;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/view/settings/SettingGroup;->COMMON:Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->openMenuDialog(Lcom/sonyericsson/android/camera/view/settings/SettingGroup;)V

    .line 64
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/settings/executor/GeotagOnExecutor$GeotagDialogListener;->this$0:Lcom/sonyericsson/android/camera/view/settings/executor/GeotagOnExecutor;

    # getter for: Lcom/sonyericsson/android/camera/view/settings/executor/GeotagOnExecutor;->mSettingController:Lcom/sonyericsson/android/camera/view/settings/SettingController;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/settings/executor/GeotagOnExecutor;->access$200(Lcom/sonyericsson/android/camera/view/settings/executor/GeotagOnExecutor;)Lcom/sonyericsson/android/camera/view/settings/SettingController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->getSettingDialogStack()Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->getMenuDialog()Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;->Common:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->setSelectedTab(Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;)V

    .line 67
    :cond_0
    return-void

    .line 59
    .end local v0    # "geotag":Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;
    :cond_1
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    .restart local v0    # "geotag":Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;
    goto :goto_0
.end method
