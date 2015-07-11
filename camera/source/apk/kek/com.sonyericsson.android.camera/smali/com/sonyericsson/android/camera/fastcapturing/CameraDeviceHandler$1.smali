.class synthetic Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$1;
.super Ljava/lang/Object;
.source "CameraDeviceHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$configuration$ParameterKey:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$Hdr:[I

.field static final synthetic $SwitchMap$com$sonyericsson$cameracommon$commonsetting$values$FastCapture:[I

.field static final synthetic $SwitchMap$com$sonyericsson$cameracommon$commonsetting$values$ShutterSound:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2335
    invoke-static {}, Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;->values()[Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$1;->$SwitchMap$com$sonyericsson$cameracommon$commonsetting$values$ShutterSound:[I

    :try_start_0
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$1;->$SwitchMap$com$sonyericsson$cameracommon$commonsetting$values$ShutterSound:[I

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;->OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_b

    .line 1984
    :goto_0
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->values()[Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterKey:[I

    :try_start_1
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->HDR:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_a

    :goto_1
    :try_start_2
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->STABILIZER:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_9

    :goto_2
    :try_start_3
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->FLASH:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_8

    :goto_3
    :try_start_4
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->PHOTO_LIGHT:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_7

    .line 1501
    :goto_4
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$Hdr:[I

    :try_start_5
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$Hdr:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;->HDR_AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_6

    :goto_5
    :try_start_6
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$Hdr:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_5

    :goto_6
    :try_start_7
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$Hdr:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;->HDR_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_4

    .line 1012
    :goto_7
    invoke-static {}, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;->values()[Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$1;->$SwitchMap$com$sonyericsson$cameracommon$commonsetting$values$FastCapture:[I

    :try_start_8
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$1;->$SwitchMap$com$sonyericsson$cameracommon$commonsetting$values$FastCapture:[I

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;->LAUNCH_ONLY:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_3

    :goto_8
    :try_start_9
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$1;->$SwitchMap$com$sonyericsson$cameracommon$commonsetting$values$FastCapture:[I

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;->VIDEO_LAUNCH_ONLY:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_2

    :goto_9
    :try_start_a
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$1;->$SwitchMap$com$sonyericsson$cameracommon$commonsetting$values$FastCapture:[I

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_1

    :goto_a
    :try_start_b
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$1;->$SwitchMap$com$sonyericsson$cameracommon$commonsetting$values$FastCapture:[I

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;->LAUNCH_AND_RECORDING:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_0

    :goto_b
    return-void

    :catch_0
    move-exception v0

    goto :goto_b

    :catch_1
    move-exception v0

    goto :goto_a

    :catch_2
    move-exception v0

    goto :goto_9

    :catch_3
    move-exception v0

    goto :goto_8

    .line 1501
    :catch_4
    move-exception v0

    goto :goto_7

    :catch_5
    move-exception v0

    goto :goto_6

    :catch_6
    move-exception v0

    goto :goto_5

    .line 1984
    :catch_7
    move-exception v0

    goto :goto_4

    :catch_8
    move-exception v0

    goto :goto_3

    :catch_9
    move-exception v0

    goto/16 :goto_2

    :catch_a
    move-exception v0

    goto/16 :goto_1

    .line 2335
    :catch_b
    move-exception v0

    goto/16 :goto_0
.end method
