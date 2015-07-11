.class Lcom/sonyericsson/android/camera/view/settings/executor/FaceIdentifyOnExecutor;
.super Lcom/sonyericsson/cameracommon/setting/executor/SettingChangeExecutor;
.source "FaceIdentifyOnExecutor.java"


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
.field private mActivity:Lcom/sonyericsson/android/camera/ExtendedActivity;


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
    .line 21
    .local p2, "changer":Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface;, "Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface<Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;>;"
    invoke-direct {p0, p2}, Lcom/sonyericsson/cameracommon/setting/executor/SettingChangeExecutor;-><init>(Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface;)V

    .line 22
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/settings/executor/FaceIdentifyOnExecutor;->mActivity:Lcom/sonyericsson/android/camera/ExtendedActivity;

    .line 23
    return-void
.end method


# virtual methods
.method public onExecute(Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;)V
    .locals 1
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
    .line 27
    .local p1, "item":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;>;"
    invoke-super {p0, p1}, Lcom/sonyericsson/cameracommon/setting/executor/SettingChangeExecutor;->onExecute(Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;)V

    .line 28
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/settings/executor/FaceIdentifyOnExecutor;->mActivity:Lcom/sonyericsson/android/camera/ExtendedActivity;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/launcher/ApplicationLauncher;->launchPhotoAnalyzer(Landroid/app/Activity;)V

    .line 29
    return-void
.end method
