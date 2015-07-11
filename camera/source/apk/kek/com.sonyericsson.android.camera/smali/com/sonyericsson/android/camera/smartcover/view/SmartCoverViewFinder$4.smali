.class synthetic Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$4;
.super Ljava/lang/Object;
.source "SmartCoverViewFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$fastcapturing$StateMachine$CaptureState:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$fastcapturing$view$BaseFastViewFinder$ViewUpdateEvent:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 828
    invoke-static {}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->values()[Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$4;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$view$BaseFastViewFinder$ViewUpdateEvent:[I

    :try_start_0
    sget-object v0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$4;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$view$BaseFastViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_REQUEST_SETUP_HEAD_UP_DISPLAY:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1e

    :goto_0
    :try_start_1
    sget-object v0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$4;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$view$BaseFastViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_REQUEST_RESIZE_EVF_SCOPE:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1d

    :goto_1
    :try_start_2
    sget-object v0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$4;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$view$BaseFastViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_REQUEST_HIDE_REMAIN_INDICATOR:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1c

    :goto_2
    :try_start_3
    sget-object v0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$4;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$view$BaseFastViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_REQUEST_SHOW_REMAIN_INDICATOR:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1b

    :goto_3
    :try_start_4
    sget-object v0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$4;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$view$BaseFastViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_ON_DETECTED_SCENE_CHANGED:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1a

    :goto_4
    :try_start_5
    sget-object v0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$4;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$view$BaseFastViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_ON_FACE_DETECTED:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_19

    :goto_5
    :try_start_6
    sget-object v0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$4;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$view$BaseFastViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_ON_ZOOM_CHANGED:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_18

    :goto_6
    :try_start_7
    sget-object v0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$4;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$view$BaseFastViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_ON_ORIENTATION_CHANGED:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_17

    :goto_7
    :try_start_8
    sget-object v0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$4;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$view$BaseFastViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_REQUEST_CAPTURE_FEEDBACK_ANIMATION:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_16

    :goto_8
    :try_start_9
    sget-object v0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$4;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$view$BaseFastViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_REQUEST_SET_EARLY_THUMBNAIL:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_15

    :goto_9
    :try_start_a
    sget-object v0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$4;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$view$BaseFastViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_REQUEST_REMOVE_EARLY_THUMBNAIL:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_14

    :goto_a
    :try_start_b
    sget-object v0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$4;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$view$BaseFastViewFinder$ViewUpdateEvent:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_REQUEST_EARLY_THUMBNAIL_INSERT_ANIMATION:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_13

    .line 593
    :goto_b
    invoke-static {}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->values()[Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$4;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$StateMachine$CaptureState:[I

    :try_start_c
    sget-object v0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$4;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_NONE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_12

    :goto_c
    :try_start_d
    sget-object v0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$4;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_INITIALIZE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_11

    :goto_d
    :try_start_e
    sget-object v0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$4;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_RESUME:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_10

    :goto_e
    :try_start_f
    sget-object v0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$4;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_STANDBY:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :goto_f
    :try_start_10
    sget-object v0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$4;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_PHOTO_ZOOMING:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_e

    :goto_10
    :try_start_11
    sget-object v0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$4;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_PHOTO_ZOOMING_IN_TOUCH:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_d

    :goto_11
    :try_start_12
    sget-object v0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$4;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_PHOTO_AF_SEARCH:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_c

    :goto_12
    :try_start_13
    sget-object v0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$4;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_PHOTO_AF_SEARCH_IN_TOUCH:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_b

    :goto_13
    :try_start_14
    sget-object v0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$4;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_PHOTO_AF_SEARCH_IN_TOUCH_DRAGGING_FOCUS_POSITION:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_a

    :goto_14
    :try_start_15
    sget-object v0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$4;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_PHOTO_AF_DONE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_9

    :goto_15
    :try_start_16
    sget-object v0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$4;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_PHOTO_AF_DONE_IN_TOUCH:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_8

    :goto_16
    :try_start_17
    sget-object v0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$4;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_PHOTO_CAPTURE_WAIT_FOR_AF_DONE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_7

    :goto_17
    :try_start_18
    sget-object v0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$4;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_PHOTO_CAPTURE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_6

    :goto_18
    :try_start_19
    sget-object v0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$4;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_PHOTO_CAPTURE_BEST_EFFORT_BURST:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_5

    :goto_19
    :try_start_1a
    sget-object v0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$4;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_PHOTO_CAPTURE_HI_SPEED_BURST:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_4

    :goto_1a
    :try_start_1b
    sget-object v0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$4;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_PHOTO_STORE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_3

    :goto_1b
    :try_start_1c
    sget-object v0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$4;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_PAUSE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_2

    :goto_1c
    :try_start_1d
    sget-object v0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$4;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_WARNING:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1

    :goto_1d
    :try_start_1e
    sget-object v0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder$4;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$StateMachine$CaptureState:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_FINALIZE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_0

    :goto_1e
    return-void

    :catch_0
    move-exception v0

    goto :goto_1e

    :catch_1
    move-exception v0

    goto :goto_1d

    :catch_2
    move-exception v0

    goto :goto_1c

    :catch_3
    move-exception v0

    goto :goto_1b

    :catch_4
    move-exception v0

    goto :goto_1a

    :catch_5
    move-exception v0

    goto :goto_19

    :catch_6
    move-exception v0

    goto :goto_18

    :catch_7
    move-exception v0

    goto :goto_17

    :catch_8
    move-exception v0

    goto :goto_16

    :catch_9
    move-exception v0

    goto :goto_15

    :catch_a
    move-exception v0

    goto/16 :goto_14

    :catch_b
    move-exception v0

    goto/16 :goto_13

    :catch_c
    move-exception v0

    goto/16 :goto_12

    :catch_d
    move-exception v0

    goto/16 :goto_11

    :catch_e
    move-exception v0

    goto/16 :goto_10

    :catch_f
    move-exception v0

    goto/16 :goto_f

    :catch_10
    move-exception v0

    goto/16 :goto_e

    :catch_11
    move-exception v0

    goto/16 :goto_d

    :catch_12
    move-exception v0

    goto/16 :goto_c

    .line 828
    :catch_13
    move-exception v0

    goto/16 :goto_b

    :catch_14
    move-exception v0

    goto/16 :goto_a

    :catch_15
    move-exception v0

    goto/16 :goto_9

    :catch_16
    move-exception v0

    goto/16 :goto_8

    :catch_17
    move-exception v0

    goto/16 :goto_7

    :catch_18
    move-exception v0

    goto/16 :goto_6

    :catch_19
    move-exception v0

    goto/16 :goto_5

    :catch_1a
    move-exception v0

    goto/16 :goto_4

    :catch_1b
    move-exception v0

    goto/16 :goto_3

    :catch_1c
    move-exception v0

    goto/16 :goto_2

    :catch_1d
    move-exception v0

    goto/16 :goto_1

    :catch_1e
    move-exception v0

    goto/16 :goto_0
.end method
