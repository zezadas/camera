.class Lcom/sonyericsson/android/camera/view/settings/executor/ParameterChanger;
.super Ljava/lang/Object;
.source "ParameterChanger.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface",
        "<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;",
        ">;"
    }
.end annotation


# instance fields
.field private final mParameterManager:Lcom/sonyericsson/android/camera/parameter/ParameterManager;

.field private final mSettingController:Lcom/sonyericsson/android/camera/view/settings/SettingController;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/parameter/ParameterManager;Lcom/sonyericsson/android/camera/view/settings/SettingController;)V
    .locals 0
    .param p1, "parameterManager"    # Lcom/sonyericsson/android/camera/parameter/ParameterManager;
    .param p2, "settingController"    # Lcom/sonyericsson/android/camera/view/settings/SettingController;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/settings/executor/ParameterChanger;->mParameterManager:Lcom/sonyericsson/android/camera/parameter/ParameterManager;

    .line 23
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/settings/executor/ParameterChanger;->mSettingController:Lcom/sonyericsson/android/camera/view/settings/SettingController;

    .line 24
    return-void
.end method


# virtual methods
.method public changeValue(Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;)V
    .locals 4
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
    .line 28
    .local p1, "item":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;>;"
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/settings/executor/ParameterChanger;->mParameterManager:Lcom/sonyericsson/android/camera/parameter/ParameterManager;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;->getParameterKey()Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->get(Lcom/sonyericsson/android/camera/configuration/ParameterKey;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    .line 30
    .local v0, "basis":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/settings/executor/ParameterChanger;->mParameterManager:Lcom/sonyericsson/android/camera/parameter/ParameterManager;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->set(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    .line 32
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/settings/executor/ParameterChanger;->mSettingController:Lcom/sonyericsson/android/camera/view/settings/SettingController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/settings/SettingController;->updateSettingMenu(Z)V

    .line 34
    invoke-static {}, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;->getInstance()Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/settings/executor/ParameterChanger;->mParameterManager:Lcom/sonyericsson/android/camera/parameter/ParameterManager;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->getParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v3

    iget-object v3, v3, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v2, v0, v1, v3}, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;->setSettingsValue(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 36
    return-void
.end method
