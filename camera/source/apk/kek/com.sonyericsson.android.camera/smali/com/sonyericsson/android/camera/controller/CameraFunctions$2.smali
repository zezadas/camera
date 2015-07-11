.class synthetic Lcom/sonyericsson/android/camera/controller/CameraFunctions$2;
.super Ljava/lang/Object;
.source "CameraFunctions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/CameraFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$LaunchConditions$ExtraOperation:[I

.field static final synthetic $SwitchMap$com$sonyericsson$cameracommon$mediasaving$SavingTaskManager$SavedFileType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1133
    invoke-static {}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;->values()[Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$2;->$SwitchMap$com$sonyericsson$cameracommon$mediasaving$SavingTaskManager$SavedFileType:[I

    :try_start_0
    sget-object v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$2;->$SwitchMap$com$sonyericsson$cameracommon$mediasaving$SavingTaskManager$SavedFileType:[I

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;->BURST:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    :try_start_1
    sget-object v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$2;->$SwitchMap$com$sonyericsson$cameracommon$mediasaving$SavingTaskManager$SavedFileType:[I

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;->PHOTO:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_1
    :try_start_2
    sget-object v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$2;->$SwitchMap$com$sonyericsson$cameracommon$mediasaving$SavingTaskManager$SavedFileType:[I

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;->PHOTO_DURING_REC:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    :try_start_3
    sget-object v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$2;->$SwitchMap$com$sonyericsson$cameracommon$mediasaving$SavingTaskManager$SavedFileType:[I

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;->TIME_SHIFT:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$2;->$SwitchMap$com$sonyericsson$cameracommon$mediasaving$SavingTaskManager$SavedFileType:[I

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;->VIDEO:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    .line 379
    :goto_4
    invoke-static {}, Lcom/sonyericsson/android/camera/LaunchConditions$ExtraOperation;->values()[Lcom/sonyericsson/android/camera/LaunchConditions$ExtraOperation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$2;->$SwitchMap$com$sonyericsson$android$camera$LaunchConditions$ExtraOperation:[I

    :try_start_5
    sget-object v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$2;->$SwitchMap$com$sonyericsson$android$camera$LaunchConditions$ExtraOperation:[I

    sget-object v1, Lcom/sonyericsson/android/camera/LaunchConditions$ExtraOperation;->NONE:Lcom/sonyericsson/android/camera/LaunchConditions$ExtraOperation;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    :try_start_6
    sget-object v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$2;->$SwitchMap$com$sonyericsson$android$camera$LaunchConditions$ExtraOperation:[I

    sget-object v1, Lcom/sonyericsson/android/camera/LaunchConditions$ExtraOperation;->OPEN_SETTINGS_MENU:Lcom/sonyericsson/android/camera/LaunchConditions$ExtraOperation;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    return-void

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_5

    .line 1133
    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v0

    goto :goto_1

    :catch_6
    move-exception v0

    goto :goto_0
.end method
