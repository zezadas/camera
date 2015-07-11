.class Lcom/sonyericsson/android/camera/view/settings/executor/FacingChangeExecutor;
.super Lcom/sonyericsson/cameracommon/setting/executor/SettingChangeExecutor;
.source "FacingChangeExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/settings/executor/FacingChangeExecutor$1;
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
.field private final mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

.field private final mCurrentMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

.field private mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface;Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;)V
    .locals 0
    .param p2, "activity"    # Lcom/sonyericsson/android/camera/CameraActivity;
    .param p3, "currentMode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .param p4, "dialog"    # Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface",
            "<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;",
            ">;",
            "Lcom/sonyericsson/android/camera/CameraActivity;",
            "Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;",
            "Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;",
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "changer":Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface;, "Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface<Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;>;"
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/setting/executor/SettingChangeExecutor;-><init>(Lcom/sonyericsson/cameracommon/setting/executor/SettingChangerInterface;)V

    .line 40
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/settings/executor/FacingChangeExecutor;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 41
    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/settings/executor/FacingChangeExecutor;->mCurrentMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 42
    iput-object p4, p0, Lcom/sonyericsson/android/camera/view/settings/executor/FacingChangeExecutor;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    .line 43
    return-void
.end method

.method private sendGoogleAnalyticsEvent(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .locals 3
    .param p1, "mode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .prologue
    .line 87
    invoke-static {}, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;->getInstance()Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;->sendEventSettings()V

    .line 88
    invoke-static {}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->getInstance()Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->onPause(Z)V

    .line 90
    invoke-static {}, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;->getInstance()Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$GALaunchedBy;->SAME_ACTIVITY:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$GALaunchedBy;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;->sendView(Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$GALaunchedBy;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)V

    .line 91
    return-void
.end method


# virtual methods
.method public onExecute(Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;)V
    .locals 3
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
    .line 47
    .local p1, "item":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;>;"
    invoke-super {p0, p1}, Lcom/sonyericsson/cameracommon/setting/executor/SettingChangeExecutor;->onExecute(Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;)V

    .line 48
    const/4 v0, 0x0

    .line 49
    .local v0, "mode":Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    sget-object v1, Lcom/sonyericsson/android/camera/view/settings/executor/FacingChangeExecutor$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/settings/executor/FacingChangeExecutor;->mCurrentMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 74
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 51
    :pswitch_0
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getInstance()Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->isSceneRecognitionSupported(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 53
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 77
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/settings/executor/FacingChangeExecutor;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->getContentView()Lcom/sonyericsson/android/camera/view/CameraWindow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->isOpenSettingsDialog()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/settings/executor/FacingChangeExecutor;->mSettingDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeDialogs()V

    .line 81
    :cond_1
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/settings/executor/FacingChangeExecutor;->sendGoogleAnalyticsEvent(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 83
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/settings/executor/FacingChangeExecutor;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->changeCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 84
    return-void

    .line 55
    :cond_2
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 57
    goto :goto_0

    .line 61
    :pswitch_1
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 62
    goto :goto_0

    .line 68
    :pswitch_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/settings/executor/FacingChangeExecutor;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->getPreviousCapturingModeNotFront()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    .line 69
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne v0, v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/settings/executor/FacingChangeExecutor;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->getPreviousManualMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    goto :goto_0

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
