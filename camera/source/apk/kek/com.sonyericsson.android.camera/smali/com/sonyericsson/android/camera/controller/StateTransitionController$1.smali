.class synthetic Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;
.super Ljava/lang/Object;
.source "StateTransitionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateTransitionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$AutoReview:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$FocusMode:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoAutoReview:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$controller$ControllerEventSource:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$controller$StateTransitionController$BurstStorageStatus:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2755
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoAutoReview:[I

    :try_start_0
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoAutoReview:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_d

    :goto_0
    :try_start_1
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoAutoReview:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;->EDIT:Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_c

    .line 2736
    :goto_1
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$AutoReview:[I

    :try_start_2
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$AutoReview:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_b

    :goto_2
    :try_start_3
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$AutoReview:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->EDIT:Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_a

    .line 2482
    :goto_3
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstStorageStatus;->values()[Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstStorageStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;->$SwitchMap$com$sonyericsson$android$camera$controller$StateTransitionController$BurstStorageStatus:[I

    :try_start_4
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;->$SwitchMap$com$sonyericsson$android$camera$controller$StateTransitionController$BurstStorageStatus:[I

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstStorageStatus;->STORAGE_READY:Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstStorageStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_9

    :goto_4
    :try_start_5
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;->$SwitchMap$com$sonyericsson$android$camera$controller$StateTransitionController$BurstStorageStatus:[I

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstStorageStatus;->STORAGE_FULL:Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstStorageStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_8

    :goto_5
    :try_start_6
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;->$SwitchMap$com$sonyericsson$android$camera$controller$StateTransitionController$BurstStorageStatus:[I

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstStorageStatus;->UNKNOWN:Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstStorageStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_7

    .line 1220
    :goto_6
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$FocusMode:[I

    :try_start_7
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$FocusMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->TOUCH_FOCUS:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_6

    :goto_7
    :try_start_8
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$FocusMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_5

    .line 177
    :goto_8
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->values()[Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;->$SwitchMap$com$sonyericsson$android$camera$controller$ControllerEventSource:[I

    :try_start_9
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;->$SwitchMap$com$sonyericsson$android$camera$controller$ControllerEventSource:[I

    sget-object v1, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->VIDEO_BUTTON:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_4

    :goto_9
    :try_start_a
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;->$SwitchMap$com$sonyericsson$android$camera$controller$ControllerEventSource:[I

    sget-object v1, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->PHOTO_BUTTON:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_3

    :goto_a
    :try_start_b
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;->$SwitchMap$com$sonyericsson$android$camera$controller$ControllerEventSource:[I

    sget-object v1, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->KEY:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_2

    :goto_b
    :try_start_c
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;->$SwitchMap$com$sonyericsson$android$camera$controller$ControllerEventSource:[I

    sget-object v1, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->TOUCH:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_1

    :goto_c
    :try_start_d
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;->$SwitchMap$com$sonyericsson$android$camera$controller$ControllerEventSource:[I

    sget-object v1, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->TOUCH_FACE:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_0

    :goto_d
    return-void

    :catch_0
    move-exception v0

    goto :goto_d

    :catch_1
    move-exception v0

    goto :goto_c

    :catch_2
    move-exception v0

    goto :goto_b

    :catch_3
    move-exception v0

    goto :goto_a

    :catch_4
    move-exception v0

    goto :goto_9

    .line 1220
    :catch_5
    move-exception v0

    goto :goto_8

    :catch_6
    move-exception v0

    goto :goto_7

    .line 2482
    :catch_7
    move-exception v0

    goto :goto_6

    :catch_8
    move-exception v0

    goto :goto_5

    :catch_9
    move-exception v0

    goto/16 :goto_4

    .line 2736
    :catch_a
    move-exception v0

    goto/16 :goto_3

    :catch_b
    move-exception v0

    goto/16 :goto_2

    .line 2755
    :catch_c
    move-exception v0

    goto/16 :goto_1

    :catch_d
    move-exception v0

    goto/16 :goto_0
.end method
