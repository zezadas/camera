.class final Lcom/sonyericsson/android/camera/parameter/SettingsConverter$2;
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
        "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;",
        "Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 57
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/AutoUpload;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/AutoUpload;

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoUpload;->OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/AutoUpload;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/parameter/SettingsConverter$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/AutoUpload;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/AutoUpload;

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoUpload;->ON:Lcom/sonyericsson/cameracommon/commonsetting/values/AutoUpload;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/parameter/SettingsConverter$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->EMMC:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;->EMMC:Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/parameter/SettingsConverter$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->SDCARD:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;->SDCARD:Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/parameter/SettingsConverter$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/parameter/SettingsConverter$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;->LAUNCH_ONLY:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/parameter/SettingsConverter$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_RECORDING:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;->LAUNCH_AND_RECORDING:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/parameter/SettingsConverter$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->VIDEO_LAUNCH_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;->VIDEO_LAUNCH_ONLY:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/parameter/SettingsConverter$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;->OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/parameter/SettingsConverter$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;->ON:Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/parameter/SettingsConverter$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;->OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/parameter/SettingsConverter$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;->SOUND1:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;->ON:Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/parameter/SettingsConverter$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;->OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/parameter/SettingsConverter$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;->VIEW_FINDER:Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;->ON:Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/parameter/SettingsConverter$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;->OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/parameter/SettingsConverter$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;->ZOOM:Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/VolumeKey;->ZOOM:Lcom/sonyericsson/cameracommon/commonsetting/values/VolumeKey;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/parameter/SettingsConverter$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;->VOLUME:Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/VolumeKey;->VOLUME:Lcom/sonyericsson/cameracommon/commonsetting/values/VolumeKey;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/parameter/SettingsConverter$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;->HW_CAMERA_KEY:Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/VolumeKey;->HW_CAMERA_KEY:Lcom/sonyericsson/cameracommon/commonsetting/values/VolumeKey;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/parameter/SettingsConverter$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/TouchBlock;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/TouchBlock;

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/TouchBlock;->NO_VALUE:Lcom/sonyericsson/cameracommon/commonsetting/values/TouchBlock;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/parameter/SettingsConverter$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/TouchBlock;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/TouchBlock;

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/TouchBlock;->NO_VALUE:Lcom/sonyericsson/cameracommon/commonsetting/values/TouchBlock;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/parameter/SettingsConverter$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    return-void
.end method
