.class public Lcom/sonyericsson/cameracommon/utility/PresetConfigurationResolver;
.super Ljava/lang/Object;
.source "PresetConfigurationResolver.java"


# static fields
.field public static final Af_SUCCESS_FILE_PATH:Ljava/lang/String; = "/system/media/audio/camera/common/af_success.m4a"

.field public static final KEY_SHUTTER_SOUND:Ljava/lang/String; = "COMMON_PARAMS_SHUTTER_SOUND"

.field public static final RECORD_SOUND_FILE_PATH_ON:Ljava/lang/String; = "/system/media/audio/ui/VideoRecord.ogg"

.field public static final SHUTTER_SOUND_FILE_PATH_OFF:Ljava/lang/String; = "off"

.field public static final SHUTTER_SOUND_FILE_PATH_ON:Ljava/lang/String; = "/system/media/audio/ui/camera_click.ogg"

.field public static final TAG:Ljava/lang/String;

.field public static final VALUE_SHUTTER_SOUND_OFF:Ljava/lang/String; = "OFF"

.field public static final VALUE_SHUTTER_SOUND_ON:Ljava/lang/String; = "SOUND1"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/sonyericsson/cameracommon/utility/PresetConfigurationResolver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/PresetConfigurationResolver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRecordSoundFilePath(Z)Ljava/lang/String;
    .locals 1
    .param p0, "isShutterSoundEnabled"    # Z

    .prologue
    .line 71
    if-eqz p0, :cond_0

    .line 72
    const-string v0, "/system/media/audio/ui/VideoRecord.ogg"

    .line 78
    .local v0, "soundFilePath":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 74
    .end local v0    # "soundFilePath":Ljava/lang/String;
    :cond_0
    const-string v0, "off"

    .restart local v0    # "soundFilePath":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getShutterSoundFilePath(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)Ljava/lang/String;
    .locals 2
    .param p0, "cont"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .prologue
    .line 51
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/utility/PresetConfigurationResolver;->isShutterSoundEnabled(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)Z

    move-result v0

    .line 52
    .local v0, "sound":Z
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/utility/PresetConfigurationResolver;->getShutterSoundFilePath(Z)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getShutterSoundFilePath(Z)Ljava/lang/String;
    .locals 1
    .param p0, "isShutterSoundEnabled"    # Z

    .prologue
    .line 58
    if-eqz p0, :cond_0

    .line 59
    const-string v0, "/system/media/audio/ui/camera_click.ogg"

    .line 65
    .local v0, "soundFilePath":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 61
    .end local v0    # "soundFilePath":Ljava/lang/String;
    :cond_0
    const-string v0, "off"

    .restart local v0    # "soundFilePath":Ljava/lang/String;
    goto :goto_0
.end method

.method public static isBalloonTipsEnabled(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)Z
    .locals 1
    .param p0, "act"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/utility/PresetConfigurationResolver;->isBalloonTipsEnabled(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;)Z

    move-result v0

    return v0
.end method

.method public static isBalloonTipsEnabled(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;)Z
    .locals 2
    .param p0, "commonSettings"    # Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    .prologue
    .line 113
    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->BALLOON_TIPS_COUNTER:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->get(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    move-result-object v0

    .line 115
    .local v0, "commonvalue":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;->DISPLAY_OK:Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;->DISPLAY_OK_FIRST:Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;->DISPLAY_OK_SECOND:Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;

    if-ne v0, v1, :cond_1

    .line 118
    :cond_0
    const/4 v1, 0x1

    .line 120
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isGeoTagEnabled(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;Landroid/content/Context;)Z
    .locals 3
    .param p0, "geotag"    # Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;->ON:Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;

    if-ne p0, v2, :cond_1

    .line 95
    const-string v2, "gps"

    invoke-static {p1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;->isLocationProviderAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 97
    .local v0, "gps":Z
    const-string v2, "network"

    invoke-static {p1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;->isLocationProviderAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 100
    .local v1, "net":Z
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    .line 102
    :cond_0
    const/4 v2, 0x1

    .line 105
    .end local v0    # "gps":Z
    .end local v1    # "net":Z
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isShutterSoundEnabled(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)Z
    .locals 3
    .param p0, "act"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->SHUTTER_SOUND:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->get(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    move-result-object v0

    .line 84
    .local v0, "commonvalue":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;->OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;

    if-ne v0, v1, :cond_0

    .line 85
    const/4 v1, 0x0

    .line 87
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
