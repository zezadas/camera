.class public Lcom/sonyericsson/android/camera/view/settings/executor/GeotagOnExecutor;
.super Lcom/sonyericsson/cameracommon/setting/executor/SettingChangeExecutor;
.source "GeotagOnExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/settings/executor/GeotagOnExecutor$1;,
        Lcom/sonyericsson/android/camera/view/settings/executor/GeotagOnExecutor$GeotagDialogListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonyericsson/cameracommon/setting/executor/SettingChangeExecutor",
        "<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;",
        ">;"
    }
.end annotation


# instance fields
.field private final mActivity:Lcom/sonyericsson/android/camera/ExtendedActivity;

.field private final mSettingController:Lcom/sonyericsson/android/camera/view/settings/SettingController;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/ExtendedActivity;Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface;Lcom/sonyericsson/android/camera/view/settings/SettingController;)V
    .locals 0
    .param p1, "activity"    # Lcom/sonyericsson/android/camera/ExtendedActivity;
    .param p3, "settingController"    # Lcom/sonyericsson/android/camera/view/settings/SettingController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/ExtendedActivity;",
            "Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface",
            "<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;",
            ">;",
            "Lcom/sonyericsson/android/camera/view/settings/SettingController;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    .local p2, "changer":Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface;, "Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface<Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;>;"
    invoke-direct {p0, p2}, Lcom/sonyericsson/cameracommon/setting/executor/SettingChangeExecutor;-><init>(Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface;)V

    .line 33
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/settings/executor/GeotagOnExecutor;->mActivity:Lcom/sonyericsson/android/camera/ExtendedActivity;

    .line 34
    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/settings/executor/GeotagOnExecutor;->mSettingController:Lcom/sonyericsson/android/camera/view/settings/SettingController;

    .line 35
    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/view/settings/executor/GeotagOnExecutor;)Lcom/sonyericsson/android/camera/ExtendedActivity;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/view/settings/executor/GeotagOnExecutor;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/settings/executor/GeotagOnExecutor;->mActivity:Lcom/sonyericsson/android/camera/ExtendedActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/view/settings/executor/GeotagOnExecutor;)Lcom/sonyericsson/android/camera/view/settings/SettingController;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/view/settings/executor/GeotagOnExecutor;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/settings/executor/GeotagOnExecutor;->mSettingController:Lcom/sonyericsson/android/camera/view/settings/SettingController;

    return-object v0
.end method


# virtual methods
.method public onExecute(Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem",
            "<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "item":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;>;"
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/settings/executor/GeotagOnExecutor;->mActivity:Lcom/sonyericsson/android/camera/ExtendedActivity;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/utility/RegionConfig;->isChinaRegion(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/settings/executor/GeotagOnExecutor;->mSettingController:Lcom/sonyericsson/android/camera/view/settings/SettingController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->closeDialogs()V

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/settings/executor/GeotagOnExecutor;->mActivity:Lcom/sonyericsson/android/camera/ExtendedActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/ExtendedActivity;->getGeoTagManager()Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;->ON:Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/settings/executor/GeotagOnExecutor;->mActivity:Lcom/sonyericsson/android/camera/ExtendedActivity;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/settings/executor/GeotagOnExecutor;->mSettingController:Lcom/sonyericsson/android/camera/view/settings/SettingController;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->getSettingDialogController()Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;

    move-result-object v3

    new-instance v4, Lcom/sonyericsson/android/camera/view/settings/executor/GeotagOnExecutor$GeotagDialogListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/sonyericsson/android/camera/view/settings/executor/GeotagOnExecutor$GeotagDialogListener;-><init>(Lcom/sonyericsson/android/camera/view/settings/executor/GeotagOnExecutor;Lcom/sonyericsson/android/camera/view/settings/executor/GeotagOnExecutor$1;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->setGeotag(Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;)V

    .line 48
    invoke-static {}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->getInstance()Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;->SETTINGS_COMMON:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->GEO_TAG:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->sendEvent(Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method
