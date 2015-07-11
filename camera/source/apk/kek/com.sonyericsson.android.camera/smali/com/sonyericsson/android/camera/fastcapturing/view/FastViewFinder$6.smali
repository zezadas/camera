.class synthetic Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;
.super Ljava/lang/Object;
.source "FastViewFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$configuration$ParameterKey:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$FocusMode:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SelfTimer:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$fastcapturing$StateMachine$CaptureState:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$fastcapturing$view$BaseFastViewFinder$HeadUpDisplaySetupState:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$fastcapturing$view$BaseFastViewFinder$UiComponentKind:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$fastcapturing$view$BaseFastViewFinder$ViewUpdateEvent:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$view$settings$SettingList$Shortcut:[I

.field static final synthetic $SwitchMap$com$sonyericsson$cameracommon$commonsetting$values$TouchCapture:[I

.field static final synthetic $SwitchMap$com$sonyericsson$cameracommon$keytranslator$KeyEventTranslator$TranslatedKeyCode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 3220
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$FocusMode:[I

    :try_start_0
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$FocusMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_62

    .line 2794
    :goto_0
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    :try_start_1
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_61

    :goto_1
    :try_start_2
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_60

    :goto_2
    :try_start_3
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5f

    :goto_3
    :try_start_4
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_5e

    :goto_4
    :try_start_5
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5d

    :goto_5
    :try_start_6
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_5c

    .line 2241
    :goto_6
    invoke-static {}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->values()[Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$view$BaseFastViewFinder$ViewUpdateEvent:[I

    :try_start_7
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$view$BaseFastViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_REQUEST_SETUP_HEAD_UP_DISPLAY:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_5b

    :goto_7
    :try_start_8
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$view$BaseFastViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_REQUEST_RESIZE_EVF_SCOPE:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_5a

    :goto_8
    :try_start_9
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$view$BaseFastViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_REQUEST_HIDE_SURFACE:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_59

    :goto_9
    :try_start_a
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$view$BaseFastViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_REQUEST_SHOW_SURFACE:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_58

    :goto_a
    :try_start_b
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$view$BaseFastViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_REQUEST_HIDE_REMAIN_INDICATOR:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_57

    :goto_b
    :try_start_c
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$view$BaseFastViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_REQUEST_SHOW_REMAIN_INDICATOR:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_56

    :goto_c
    :try_start_d
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$view$BaseFastViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_REQUEST_PREPARE_RECORDING_INDICATOR:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_55

    :goto_d
    :try_start_e
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$view$BaseFastViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_ON_CAMERA_MODE_CHANGED_TO:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_54

    :goto_e
    :try_start_f
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$view$BaseFastViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_ON_DETECTED_SCENE_CHANGED:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_53

    :goto_f
    :try_start_10
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$view$BaseFastViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_ON_FACE_DETECTION_STARTED:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_52

    :goto_10
    :try_start_11
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$view$BaseFastViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_ON_FACE_DETECTED:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_51

    :goto_11
    :try_start_12
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$view$BaseFastViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_ON_FACE_NAME_DETECTED:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_50

    :goto_12
    :try_start_13
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$view$BaseFastViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_ON_OBJECT_TRACKING_STARTED:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_4f

    :goto_13
    :try_start_14
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$view$BaseFastViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_ON_TRACKED_OBJECT_STATE_UPDATED:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_4e

    :goto_14
    :try_start_15
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$view$BaseFastViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_ON_ZOOM_CHANGED:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_4d

    :goto_15
    :try_start_16
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$view$BaseFastViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_ON_SELFTIMER_FINISHED:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_4c

    :goto_16
    :try_start_17
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$view$BaseFastViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_REQUEST_UPDATE_COUNT_UP_VIEW:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_4b

    :goto_17
    :try_start_18
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$view$BaseFastViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_ON_FOCUS_POSITION_SELECTED:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_4a

    :goto_18
    :try_start_19
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$view$BaseFastViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_ON_FOCUS_POSITION_RELEASED:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_49

    :goto_19
    :try_start_1a
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$view$BaseFastViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_ON_FOCUS_POSITION_RELEASED_EXCEPT_FACE:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_48

    :goto_1a
    :try_start_1b
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$view$BaseFastViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_ON_RECORDING_PROGRESS:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_47

    :goto_1b
    :try_start_1c
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$view$BaseFastViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_ON_ORIENTATION_CHANGED:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_46

    :goto_1c
    :try_start_1d
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$view$BaseFastViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_ON_AF_CANCELED:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_45

    :goto_1d
    :try_start_1e
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$view$BaseFastViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_UPDATE_DIALOGS:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_44

    :goto_1e
    :try_start_1f
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$view$BaseFastViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_CLOSE_DIALOGS:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_43

    :goto_1f
    :try_start_20
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$view$BaseFastViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_REQUEST_SHOW_AUTO_REVIEW:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_42

    :goto_20
    :try_start_21
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$view$BaseFastViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_REQUEST_SHOW_INSTANT_VIEWER:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_41

    :goto_21
    :try_start_22
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$view$BaseFastViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_REQUEST_SHOW_ICONS_ON_REVIEW_WINDOW:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_40

    :goto_22
    :try_start_23
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$view$BaseFastViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_REQUEST_CAPTURE_FEEDBACK_ANIMATION:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_3f

    :goto_23
    :try_start_24
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$view$BaseFastViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_REQUEST_SET_EARLY_THUMBNAIL:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_3e

    :goto_24
    :try_start_25
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$view$BaseFastViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_REQUEST_REMOVE_EARLY_THUMBNAIL:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_3d

    :goto_25
    :try_start_26
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$view$BaseFastViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_REQUEST_EARLY_THUMBNAIL_INSERT_ANIMATION:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_3c

    :goto_26
    :try_start_27
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$view$BaseFastViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVEVT_REQUEST_ADD_COUNT_UP_VIEW:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_3b

    :goto_27
    :try_start_28
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$view$BaseFastViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVEVT_REQUEST_REMOVE_COUNT_UP_VIEW:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_3a

    :goto_28
    :try_start_29
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$view$BaseFastViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_ON_LAZY_INITIALIZATION_TASK_RUN:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_39

    :goto_29
    :try_start_2a
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$view$BaseFastViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_ON_ADD_VIDEO_CHAPTER:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_38

    :goto_2a
    :try_start_2b
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$view$BaseFastViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_ON_NOTIFY_THERMAL_NORMAL:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_37

    :goto_2b
    :try_start_2c
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$view$BaseFastViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_ON_NOTIFY_THERMAL_WARNING:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_36

    :goto_2c
    :try_start_2d
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$view$BaseFastViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_ON_NOTIFY_RESTORE_NAVIGATION_BAR_PREVIOUS_VISIBILITY:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x27

    aput v2, v0, v1
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_2d} :catch_35

    .line 2142
    :goto_2d
    invoke-static {}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;->values()[Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$view$BaseFastViewFinder$UiComponentKind:[I

    :try_start_2e
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$view$BaseFastViewFinder$UiComponentKind:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;->SETTING_DIALOG:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_2e} :catch_34

    :goto_2e
    :try_start_2f
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$view$BaseFastViewFinder$UiComponentKind:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;->REVIEW_WINDOW:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$UiComponentKind;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_2f} :catch_33

    .line 1660
    :goto_2f
    invoke-static {}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->values()[Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$StateMachine$CaptureState:[I

    :try_start_30
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_NONE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_30} :catch_32

    :goto_30
    :try_start_31
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_INITIALIZE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_31} :catch_31

    :goto_31
    :try_start_32
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_RESUME:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_32} :catch_30

    :goto_32
    :try_start_33
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_STANDBY:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_33} :catch_2f

    :goto_33
    :try_start_34
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_PHOTO_SELFTIMER_COUNTDOWN:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_34} :catch_2e

    :goto_34
    :try_start_35
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_PHOTO_ZOOMING:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_35} :catch_2d

    :goto_35
    :try_start_36
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_PHOTO_ZOOMING_IN_TOUCH:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_36} :catch_2c

    :goto_36
    :try_start_37
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_STANDBY_DIALOG:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_37
    .catch Ljava/lang/NoSuchFieldError; {:try_start_37 .. :try_end_37} :catch_2b

    :goto_37
    :try_start_38
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_PHOTO_AF_SEARCH:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_38} :catch_2a

    :goto_38
    :try_start_39
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_PHOTO_AF_SEARCH_IN_TOUCH:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_39} :catch_29

    :goto_39
    :try_start_3a
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_PHOTO_AF_SEARCH_IN_TOUCH_DRAGGING_FOCUS_POSITION:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_3a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3a .. :try_end_3a} :catch_28

    :goto_3a
    :try_start_3b
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_PHOTO_AF_DONE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_3b} :catch_27

    :goto_3b
    :try_start_3c
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_PHOTO_AF_DONE_IN_TOUCH:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_3c} :catch_26

    :goto_3c
    :try_start_3d
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_PHOTO_CAPTURE_WAIT_FOR_AF_DONE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_3d} :catch_25

    :goto_3d
    :try_start_3e
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_PHOTO_CAPTURE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_3e} :catch_24

    :goto_3e
    :try_start_3f
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_PHOTO_CAPTURE_BEST_EFFORT_BURST:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_3f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f .. :try_end_3f} :catch_23

    :goto_3f
    :try_start_40
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_PHOTO_CAPTURE_HI_SPEED_BURST:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_40} :catch_22

    :goto_40
    :try_start_41
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_PHOTO_STORE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_41
    .catch Ljava/lang/NoSuchFieldError; {:try_start_41 .. :try_end_41} :catch_21

    :goto_41
    :try_start_42
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_VIDEO_RECORDING_STARTING:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_42
    .catch Ljava/lang/NoSuchFieldError; {:try_start_42 .. :try_end_42} :catch_20

    :goto_42
    :try_start_43
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_VIDEO_RECORDING:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_43 .. :try_end_43} :catch_1f

    :goto_43
    :try_start_44
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_VIDEO_CAPTURE_WHILE_RECORDING:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_44} :catch_1e

    :goto_44
    :try_start_45
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_VIDEO_STORE_PHOTO_WHILE_RECORDING:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_45
    .catch Ljava/lang/NoSuchFieldError; {:try_start_45 .. :try_end_45} :catch_1d

    :goto_45
    :try_start_46
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_VIDEO_STORE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_46 .. :try_end_46} :catch_1c

    :goto_46
    :try_start_47
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_VIDEO_ZOOMING_WHILE_RECORDING:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_47
    .catch Ljava/lang/NoSuchFieldError; {:try_start_47 .. :try_end_47} :catch_1b

    :goto_47
    :try_start_48
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_VIDEO_ZOOMING_IN_TOUCH_WHILE_RECORDING:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_48 .. :try_end_48} :catch_1a

    :goto_48
    :try_start_49
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_PAUSE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_49} :catch_19

    :goto_49
    :try_start_4a
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_WARNING:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_4a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4a .. :try_end_4a} :catch_18

    :goto_4a
    :try_start_4b
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_FINALIZE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_4b} :catch_17

    :goto_4b
    :try_start_4c
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_VIDEO_RECORDING_PAUSING:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_4c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4c .. :try_end_4c} :catch_16

    :goto_4c
    :try_start_4d
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_CAMERA_SWITCHING:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_4d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4d .. :try_end_4d} :catch_15

    :goto_4d
    :try_start_4e
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_PHOTO_READY_FOR_RECORDING:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_4e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4e .. :try_end_4e} :catch_14

    .line 1281
    :goto_4e
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->values()[Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterKey:[I

    :try_start_4f
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->FLASH:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4f .. :try_end_4f} :catch_13

    :goto_4f
    :try_start_50
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterKey:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->SELF_TIMER:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_50
    .catch Ljava/lang/NoSuchFieldError; {:try_start_50 .. :try_end_50} :catch_12

    .line 1156
    :goto_50
    invoke-static {}, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->values()[Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$view$settings$SettingList$Shortcut:[I

    :try_start_51
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$view$settings$SettingList$Shortcut:[I

    sget-object v1, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->FACING:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_51
    .catch Ljava/lang/NoSuchFieldError; {:try_start_51 .. :try_end_51} :catch_11

    :goto_51
    :try_start_52
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$view$settings$SettingList$Shortcut:[I

    sget-object v1, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->MENU:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_52
    .catch Ljava/lang/NoSuchFieldError; {:try_start_52 .. :try_end_52} :catch_10

    :goto_52
    :try_start_53
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$view$settings$SettingList$Shortcut:[I

    sget-object v1, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->FLASH_LIGHT:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_53
    .catch Ljava/lang/NoSuchFieldError; {:try_start_53 .. :try_end_53} :catch_f

    :goto_53
    :try_start_54
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$view$settings$SettingList$Shortcut:[I

    sget-object v1, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->SELF_TIMER:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_54} :catch_e

    :goto_54
    :try_start_55
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$view$settings$SettingList$Shortcut:[I

    sget-object v1, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->BLANK:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_55
    .catch Ljava/lang/NoSuchFieldError; {:try_start_55 .. :try_end_55} :catch_d

    .line 1106
    :goto_55
    invoke-static {}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->values()[Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$cameracommon$keytranslator$KeyEventTranslator$TranslatedKeyCode:[I

    :try_start_56
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$cameracommon$keytranslator$KeyEventTranslator$TranslatedKeyCode:[I

    sget-object v1, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->FOCUS_AND_SHUTTER_UP_KEY:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_56} :catch_c

    :goto_56
    :try_start_57
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$cameracommon$keytranslator$KeyEventTranslator$TranslatedKeyCode:[I

    sget-object v1, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->FOCUS_AND_SHUTTER_DOWN_KEY:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_57
    .catch Ljava/lang/NoSuchFieldError; {:try_start_57 .. :try_end_57} :catch_b

    .line 1007
    :goto_57
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SelfTimer:[I

    :try_start_58
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SelfTimer:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->LONG:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_58
    .catch Ljava/lang/NoSuchFieldError; {:try_start_58 .. :try_end_58} :catch_a

    :goto_58
    :try_start_59
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SelfTimer:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->SHORT:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_59
    .catch Ljava/lang/NoSuchFieldError; {:try_start_59 .. :try_end_59} :catch_9

    :goto_59
    :try_start_5a
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SelfTimer:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->INSTANT:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5a .. :try_end_5a} :catch_8

    :goto_5a
    :try_start_5b
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SelfTimer:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5b .. :try_end_5b} :catch_7

    .line 933
    :goto_5b
    invoke-static {}, Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;->values()[Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$cameracommon$commonsetting$values$TouchCapture:[I

    :try_start_5c
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$cameracommon$commonsetting$values$TouchCapture:[I

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;->OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5c .. :try_end_5c} :catch_6

    :goto_5c
    :try_start_5d
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$cameracommon$commonsetting$values$TouchCapture:[I

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;->ON:Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5d .. :try_end_5d} :catch_5

    .line 677
    :goto_5d
    invoke-static {}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;->values()[Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$view$BaseFastViewFinder$HeadUpDisplaySetupState:[I

    :try_start_5e
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$view$BaseFastViewFinder$HeadUpDisplaySetupState:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;->VIDEO_STANDBY:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5e .. :try_end_5e} :catch_4

    :goto_5e
    :try_start_5f
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$view$BaseFastViewFinder$HeadUpDisplaySetupState:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;->VIDEO_RECORDING:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_5f} :catch_3

    :goto_5f
    :try_start_60
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$view$BaseFastViewFinder$HeadUpDisplaySetupState:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;->PHOTO_STANDBY:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_60} :catch_2

    :goto_60
    :try_start_61
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$view$BaseFastViewFinder$HeadUpDisplaySetupState:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;->PHOTO_CAPTURE:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_61
    .catch Ljava/lang/NoSuchFieldError; {:try_start_61 .. :try_end_61} :catch_1

    :goto_61
    :try_start_62
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder$6;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$view$BaseFastViewFinder$HeadUpDisplaySetupState:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;->VIDEO_PAUSING:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_62} :catch_0

    :goto_62
    return-void

    :catch_0
    move-exception v0

    goto :goto_62

    :catch_1
    move-exception v0

    goto :goto_61

    :catch_2
    move-exception v0

    goto :goto_60

    :catch_3
    move-exception v0

    goto :goto_5f

    :catch_4
    move-exception v0

    goto :goto_5e

    .line 933
    :catch_5
    move-exception v0

    goto :goto_5d

    :catch_6
    move-exception v0

    goto :goto_5c

    .line 1007
    :catch_7
    move-exception v0

    goto :goto_5b

    :catch_8
    move-exception v0

    goto :goto_5a

    :catch_9
    move-exception v0

    goto/16 :goto_59

    :catch_a
    move-exception v0

    goto/16 :goto_58

    .line 1106
    :catch_b
    move-exception v0

    goto/16 :goto_57

    :catch_c
    move-exception v0

    goto/16 :goto_56

    .line 1156
    :catch_d
    move-exception v0

    goto/16 :goto_55

    :catch_e
    move-exception v0

    goto/16 :goto_54

    :catch_f
    move-exception v0

    goto/16 :goto_53

    :catch_10
    move-exception v0

    goto/16 :goto_52

    :catch_11
    move-exception v0

    goto/16 :goto_51

    .line 1281
    :catch_12
    move-exception v0

    goto/16 :goto_50

    :catch_13
    move-exception v0

    goto/16 :goto_4f

    .line 1660
    :catch_14
    move-exception v0

    goto/16 :goto_4e

    :catch_15
    move-exception v0

    goto/16 :goto_4d

    :catch_16
    move-exception v0

    goto/16 :goto_4c

    :catch_17
    move-exception v0

    goto/16 :goto_4b

    :catch_18
    move-exception v0

    goto/16 :goto_4a

    :catch_19
    move-exception v0

    goto/16 :goto_49

    :catch_1a
    move-exception v0

    goto/16 :goto_48

    :catch_1b
    move-exception v0

    goto/16 :goto_47

    :catch_1c
    move-exception v0

    goto/16 :goto_46

    :catch_1d
    move-exception v0

    goto/16 :goto_45

    :catch_1e
    move-exception v0

    goto/16 :goto_44

    :catch_1f
    move-exception v0

    goto/16 :goto_43

    :catch_20
    move-exception v0

    goto/16 :goto_42

    :catch_21
    move-exception v0

    goto/16 :goto_41

    :catch_22
    move-exception v0

    goto/16 :goto_40

    :catch_23
    move-exception v0

    goto/16 :goto_3f

    :catch_24
    move-exception v0

    goto/16 :goto_3e

    :catch_25
    move-exception v0

    goto/16 :goto_3d

    :catch_26
    move-exception v0

    goto/16 :goto_3c

    :catch_27
    move-exception v0

    goto/16 :goto_3b

    :catch_28
    move-exception v0

    goto/16 :goto_3a

    :catch_29
    move-exception v0

    goto/16 :goto_39

    :catch_2a
    move-exception v0

    goto/16 :goto_38

    :catch_2b
    move-exception v0

    goto/16 :goto_37

    :catch_2c
    move-exception v0

    goto/16 :goto_36

    :catch_2d
    move-exception v0

    goto/16 :goto_35

    :catch_2e
    move-exception v0

    goto/16 :goto_34

    :catch_2f
    move-exception v0

    goto/16 :goto_33

    :catch_30
    move-exception v0

    goto/16 :goto_32

    :catch_31
    move-exception v0

    goto/16 :goto_31

    :catch_32
    move-exception v0

    goto/16 :goto_30

    .line 2142
    :catch_33
    move-exception v0

    goto/16 :goto_2f

    :catch_34
    move-exception v0

    goto/16 :goto_2e

    .line 2241
    :catch_35
    move-exception v0

    goto/16 :goto_2d

    :catch_36
    move-exception v0

    goto/16 :goto_2c

    :catch_37
    move-exception v0

    goto/16 :goto_2b

    :catch_38
    move-exception v0

    goto/16 :goto_2a

    :catch_39
    move-exception v0

    goto/16 :goto_29

    :catch_3a
    move-exception v0

    goto/16 :goto_28

    :catch_3b
    move-exception v0

    goto/16 :goto_27

    :catch_3c
    move-exception v0

    goto/16 :goto_26

    :catch_3d
    move-exception v0

    goto/16 :goto_25

    :catch_3e
    move-exception v0

    goto/16 :goto_24

    :catch_3f
    move-exception v0

    goto/16 :goto_23

    :catch_40
    move-exception v0

    goto/16 :goto_22

    :catch_41
    move-exception v0

    goto/16 :goto_21

    :catch_42
    move-exception v0

    goto/16 :goto_20

    :catch_43
    move-exception v0

    goto/16 :goto_1f

    :catch_44
    move-exception v0

    goto/16 :goto_1e

    :catch_45
    move-exception v0

    goto/16 :goto_1d

    :catch_46
    move-exception v0

    goto/16 :goto_1c

    :catch_47
    move-exception v0

    goto/16 :goto_1b

    :catch_48
    move-exception v0

    goto/16 :goto_1a

    :catch_49
    move-exception v0

    goto/16 :goto_19

    :catch_4a
    move-exception v0

    goto/16 :goto_18

    :catch_4b
    move-exception v0

    goto/16 :goto_17

    :catch_4c
    move-exception v0

    goto/16 :goto_16

    :catch_4d
    move-exception v0

    goto/16 :goto_15

    :catch_4e
    move-exception v0

    goto/16 :goto_14

    :catch_4f
    move-exception v0

    goto/16 :goto_13

    :catch_50
    move-exception v0

    goto/16 :goto_12

    :catch_51
    move-exception v0

    goto/16 :goto_11

    :catch_52
    move-exception v0

    goto/16 :goto_10

    :catch_53
    move-exception v0

    goto/16 :goto_f

    :catch_54
    move-exception v0

    goto/16 :goto_e

    :catch_55
    move-exception v0

    goto/16 :goto_d

    :catch_56
    move-exception v0

    goto/16 :goto_c

    :catch_57
    move-exception v0

    goto/16 :goto_b

    :catch_58
    move-exception v0

    goto/16 :goto_a

    :catch_59
    move-exception v0

    goto/16 :goto_9

    :catch_5a
    move-exception v0

    goto/16 :goto_8

    :catch_5b
    move-exception v0

    goto/16 :goto_7

    .line 2794
    :catch_5c
    move-exception v0

    goto/16 :goto_6

    :catch_5d
    move-exception v0

    goto/16 :goto_5

    :catch_5e
    move-exception v0

    goto/16 :goto_4

    :catch_5f
    move-exception v0

    goto/16 :goto_3

    :catch_60
    move-exception v0

    goto/16 :goto_2

    :catch_61
    move-exception v0

    goto/16 :goto_1

    .line 3220
    :catch_62
    move-exception v0

    goto/16 :goto_0
.end method
