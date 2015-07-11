.class Lcom/sonyericsson/android/camera/view/settings/executor/ShutterSoundOnExecutor;
.super Lcom/sonyericsson/cameracommon/setting/executor/SettingChangeExecutor;
.source "ShutterSoundOnExecutor.java"


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

.field private final mType:I


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/ExtendedActivity;ILcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface;)V
    .locals 0
    .param p1, "activity"    # Lcom/sonyericsson/android/camera/ExtendedActivity;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/ExtendedActivity;",
            "I",
            "Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface",
            "<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p3, "changer":Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface;, "Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface<Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;>;"
    invoke-direct {p0, p3}, Lcom/sonyericsson/cameracommon/setting/executor/SettingChangeExecutor;-><init>(Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface;)V

    .line 24
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/settings/executor/ShutterSoundOnExecutor;->mActivity:Lcom/sonyericsson/android/camera/ExtendedActivity;

    .line 25
    iput p2, p0, Lcom/sonyericsson/android/camera/view/settings/executor/ShutterSoundOnExecutor;->mType:I

    .line 26
    return-void
.end method


# virtual methods
.method public onExecute(Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;)V
    .locals 2
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
    .line 30
    .local p1, "item":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;>;"
    invoke-super {p0, p1}, Lcom/sonyericsson/cameracommon/setting/executor/SettingChangeExecutor;->onExecute(Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;)V

    .line 32
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/settings/executor/ShutterSoundOnExecutor;->mActivity:Lcom/sonyericsson/android/camera/ExtendedActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/ExtendedActivity;->getShutterToneGenerator()Lcom/sonyericsson/android/camera/ShutterToneGenerator;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/android/camera/view/settings/executor/ShutterSoundOnExecutor;->mType:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/ShutterToneGenerator;->testSound(I)V

    .line 33
    return-void
.end method
