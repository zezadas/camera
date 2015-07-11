.class synthetic Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$1;
.super Ljava/lang/Object;
.source "LocalGoogleAnalyticsUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$configuration$ParameterKey:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

.field static final synthetic $SwitchMap$com$sonymobile$cameracommon$googleanalytics$parameters$Event$Category:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 193
    invoke-static {}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;->values()[Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$1;->$SwitchMap$com$sonymobile$cameracommon$googleanalytics$parameters$Event$Category:[I

    :try_start_0
    sget-object v0, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$1;->$SwitchMap$com$sonymobile$cameracommon$googleanalytics$parameters$Event$Category:[I

    sget-object v1, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;->SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_26

    :goto_0
    :try_start_1
    sget-object v0, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$1;->$SwitchMap$com$sonymobile$cameracommon$googleanalytics$parameters$Event$Category:[I

    sget-object v1, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;->SETTINGS_VIDEO:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_25

    .line 123
    :goto_1
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->values()[Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterKey:[I

    :try_start_2
    sget-object v0, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->FLASH:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_24

    :goto_2
    :try_start_3
    sget-object v0, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_23

    :goto_3
    :try_start_4
    sget-object v0, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->CAPTURE_FRAME_SHAPE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_22

    :goto_4
    :try_start_5
    sget-object v0, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->SELF_TIMER:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_21

    :goto_5
    :try_start_6
    sget-object v0, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->SMILE_CAPTURE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_20

    :goto_6
    :try_start_7
    sget-object v0, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->HDR:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1f

    :goto_7
    :try_start_8
    sget-object v0, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->ISO:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_1e

    :goto_8
    :try_start_9
    sget-object v0, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->STABILIZER:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_1d

    :goto_9
    :try_start_a
    sget-object v0, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->AUTO_REVIEW:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_1c

    :goto_a
    :try_start_b
    sget-object v0, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_1b

    :goto_b
    :try_start_c
    sget-object v0, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->BURST_SHOT:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_1a

    :goto_c
    :try_start_d
    sget-object v0, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->FACE_IDENTIFY:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_19

    :goto_d
    :try_start_e
    sget-object v0, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->PHOTO_LIGHT:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_18

    :goto_e
    :try_start_f
    sget-object v0, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_17

    :goto_f
    :try_start_10
    sget-object v0, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->VIDEO_SELF_TIMER:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_16

    :goto_10
    :try_start_11
    sget-object v0, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->VIDEO_SMILE_CAPTURE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_15

    :goto_11
    :try_start_12
    sget-object v0, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_14

    :goto_12
    :try_start_13
    sget-object v0, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->METERING:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :goto_13
    :try_start_14
    sget-object v0, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_12

    :goto_14
    :try_start_15
    sget-object v0, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->VIDEO_AUTO_REVIEW:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_11

    :goto_15
    :try_start_16
    sget-object v0, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->MICROPHONE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_10

    :goto_16
    :try_start_17
    sget-object v0, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->SCENE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_f

    :goto_17
    :try_start_18
    sget-object v0, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->EV:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_e

    :goto_18
    :try_start_19
    sget-object v0, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->WHITE_BALANCE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_d

    :goto_19
    :try_start_1a
    sget-object v0, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->FOCUS_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_c

    :goto_1a
    :try_start_1b
    sget-object v0, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->GEO_TAG:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_b

    :goto_1b
    :try_start_1c
    sget-object v0, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->TOUCH_CAPTURE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_a

    :goto_1c
    :try_start_1d
    sget-object v0, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->VOLUME_KEY:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_9

    :goto_1d
    :try_start_1e
    sget-object v0, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->SHUTTER_SOUND:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_8

    :goto_1e
    :try_start_1f
    sget-object v0, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_7

    :goto_1f
    :try_start_20
    sget-object v0, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->FAST_CAPTURE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_6

    :goto_20
    :try_start_21
    sget-object v0, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->TOUCH_BLOCK:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_5

    .line 70
    :goto_21
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    :try_start_22
    sget-object v0, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_4

    :goto_22
    :try_start_23
    sget-object v0, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_3

    :goto_23
    :try_start_24
    sget-object v0, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_2

    :goto_24
    :try_start_25
    sget-object v0, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_1

    :goto_25
    :try_start_26
    sget-object v0, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_0

    :goto_26
    return-void

    :catch_0
    move-exception v0

    goto :goto_26

    :catch_1
    move-exception v0

    goto :goto_25

    :catch_2
    move-exception v0

    goto :goto_24

    :catch_3
    move-exception v0

    goto :goto_23

    :catch_4
    move-exception v0

    goto :goto_22

    .line 123
    :catch_5
    move-exception v0

    goto :goto_21

    :catch_6
    move-exception v0

    goto :goto_20

    :catch_7
    move-exception v0

    goto :goto_1f

    :catch_8
    move-exception v0

    goto :goto_1e

    :catch_9
    move-exception v0

    goto/16 :goto_1d

    :catch_a
    move-exception v0

    goto/16 :goto_1c

    :catch_b
    move-exception v0

    goto/16 :goto_1b

    :catch_c
    move-exception v0

    goto/16 :goto_1a

    :catch_d
    move-exception v0

    goto/16 :goto_19

    :catch_e
    move-exception v0

    goto/16 :goto_18

    :catch_f
    move-exception v0

    goto/16 :goto_17

    :catch_10
    move-exception v0

    goto/16 :goto_16

    :catch_11
    move-exception v0

    goto/16 :goto_15

    :catch_12
    move-exception v0

    goto/16 :goto_14

    :catch_13
    move-exception v0

    goto/16 :goto_13

    :catch_14
    move-exception v0

    goto/16 :goto_12

    :catch_15
    move-exception v0

    goto/16 :goto_11

    :catch_16
    move-exception v0

    goto/16 :goto_10

    :catch_17
    move-exception v0

    goto/16 :goto_f

    :catch_18
    move-exception v0

    goto/16 :goto_e

    :catch_19
    move-exception v0

    goto/16 :goto_d

    :catch_1a
    move-exception v0

    goto/16 :goto_c

    :catch_1b
    move-exception v0

    goto/16 :goto_b

    :catch_1c
    move-exception v0

    goto/16 :goto_a

    :catch_1d
    move-exception v0

    goto/16 :goto_9

    :catch_1e
    move-exception v0

    goto/16 :goto_8

    :catch_1f
    move-exception v0

    goto/16 :goto_7

    :catch_20
    move-exception v0

    goto/16 :goto_6

    :catch_21
    move-exception v0

    goto/16 :goto_5

    :catch_22
    move-exception v0

    goto/16 :goto_4

    :catch_23
    move-exception v0

    goto/16 :goto_3

    :catch_24
    move-exception v0

    goto/16 :goto_2

    .line 193
    :catch_25
    move-exception v0

    goto/16 :goto_1

    :catch_26
    move-exception v0

    goto/16 :goto_0
.end method
