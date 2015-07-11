.class Lcom/sonyericsson/android/camera/view/settings/executor/HdrOnExecutor;
.super Lcom/sonyericsson/cameracommon/setting/executor/SettingChangeExecutor;
.source "HdrOnExecutor.java"


# annotations
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


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/ExtendedActivity;Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface;)V
    .locals 0
    .param p1, "activity"    # Lcom/sonyericsson/android/camera/ExtendedActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/ExtendedActivity;",
            "Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface",
            "<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p2, "changer":Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface;, "Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface<Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;>;"
    invoke-direct {p0, p2}, Lcom/sonyericsson/cameracommon/setting/executor/SettingChangeExecutor;-><init>(Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface;)V

    .line 28
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/settings/executor/HdrOnExecutor;->mActivity:Lcom/sonyericsson/android/camera/ExtendedActivity;

    .line 29
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
            "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, "item":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;>;"
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/settings/executor/HdrOnExecutor;->mActivity:Lcom/sonyericsson/android/camera/ExtendedActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/ExtendedActivity;->getParameterManager()Lcom/sonyericsson/android/camera/parameter/ParameterManager;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;->getParameterKey()Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->get(Lcom/sonyericsson/android/camera/configuration/ParameterKey;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    .line 36
    .local v0, "previousValue":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    invoke-super {p0, p1}, Lcom/sonyericsson/cameracommon/setting/executor/SettingChangeExecutor;->onExecute(Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;)V

    .line 38
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->getData()Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v0, :cond_0

    .line 39
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/settings/executor/HdrOnExecutor;->mActivity:Lcom/sonyericsson/android/camera/ExtendedActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/ExtendedActivity;->getMessagePopup()Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    move-result-object v1

    const v2, 0x7f09011e

    const/4 v3, 0x1

    sget-object v4, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;->BOTTOM:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    invoke-virtual {v1, v2, v3, v4}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showRotatableToastMessage(IILcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;)V

    .line 44
    :cond_0
    return-void
.end method
