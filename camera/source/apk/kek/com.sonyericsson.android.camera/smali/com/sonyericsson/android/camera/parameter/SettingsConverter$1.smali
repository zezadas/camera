.class final Lcom/sonyericsson/android/camera/parameter/SettingsConverter$1;
.super Ljava/util/HashMap;
.source "SettingsConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/parameter/SettingsConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;",
        "Lcom/sonyericsson/android/camera/configuration/ParameterKey;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 42
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->AUTO_UPLOAD:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->AUTO_UPLOAD:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/parameter/SettingsConverter$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->SAVE_DESTINATION:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/parameter/SettingsConverter$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->FAST_CAPTURE:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->FAST_CAPTURE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/parameter/SettingsConverter$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->GEO_TAG:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->GEO_TAG:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/parameter/SettingsConverter$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->SHUTTER_SOUND:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->SHUTTER_SOUND:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/parameter/SettingsConverter$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->TOUCH_CAPTURE:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->TOUCH_CAPTURE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/parameter/SettingsConverter$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->VOLUME_KEY:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->VOLUME_KEY:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/parameter/SettingsConverter$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->TOUCH_BLOCK:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->TOUCH_BLOCK:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/parameter/SettingsConverter$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    return-void
.end method
