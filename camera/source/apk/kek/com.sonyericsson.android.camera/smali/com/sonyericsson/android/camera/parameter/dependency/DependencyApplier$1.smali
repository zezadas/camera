.class synthetic Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier$1;
.super Ljava/lang/Object;
.source "DependencyApplier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CaptureFrameShape:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$Ev:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$FaceIdentify:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$FocusMode:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$Hdr:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$Iso:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$Scene:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SelfTimer:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SmileCapture:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$Stabilizer:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoHdr:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoSize:[I

.field static final synthetic $SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoSmileCapture:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 303
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CaptureFrameShape:[I

    :try_start_0
    sget-object v0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CaptureFrameShape:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;->WIDE:Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_23

    :goto_0
    :try_start_1
    sget-object v0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CaptureFrameShape:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;->STANDARD:Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_22

    .line 272
    :goto_1
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$Ev:[I

    :try_start_2
    sget-object v0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$Ev:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->ZERO:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_21

    .line 256
    :goto_2
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoHdr:[I

    :try_start_3
    sget-object v0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoHdr:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_20

    .line 236
    :goto_3
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoSize:[I

    :try_start_4
    sget-object v0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoSize:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1f

    :goto_4
    :try_start_5
    sget-object v0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoSize:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->VGA:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1e

    :goto_5
    :try_start_6
    sget-object v0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoSize:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1d

    :goto_6
    :try_start_7
    sget-object v0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoSize:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FULL_HD_60FPS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1c

    .line 220
    :goto_7
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$FocusMode:[I

    :try_start_8
    sget-object v0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$FocusMode:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->FACE_DETECTION:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_1b

    .line 204
    :goto_8
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoSmileCapture:[I

    :try_start_9
    sget-object v0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoSmileCapture:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_1a

    .line 188
    :goto_9
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SmileCapture:[I

    :try_start_a
    sget-object v0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SmileCapture:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_19

    .line 172
    :goto_a
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$FaceIdentify:[I

    :try_start_b
    sget-object v0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$FaceIdentify:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_18

    .line 156
    :goto_b
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SelfTimer:[I

    :try_start_c
    sget-object v0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SelfTimer:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_17

    .line 140
    :goto_c
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$Iso:[I

    :try_start_d
    sget-object v0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$Iso:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_16

    .line 122
    :goto_d
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$Stabilizer:[I

    :try_start_e
    sget-object v0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$Stabilizer:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_15

    :goto_e
    :try_start_f
    sget-object v0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$Stabilizer:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_14

    .line 104
    :goto_f
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$Hdr:[I

    :try_start_10
    sget-object v0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$Hdr:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;->HDR_AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_13

    :goto_10
    :try_start_11
    sget-object v0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$Hdr:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_12

    .line 55
    :goto_11
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$Scene:[I

    :try_start_12
    sget-object v0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$Scene:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_11

    :goto_12
    :try_start_13
    sget-object v0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$Scene:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->PORTRAIT:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_10

    :goto_13
    :try_start_14
    sget-object v0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$Scene:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->ANTI_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_f

    :goto_14
    :try_start_15
    sget-object v0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$Scene:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->PARTY:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_e

    :goto_15
    :try_start_16
    sget-object v0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$Scene:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->LANDSCAPE:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_d

    :goto_16
    :try_start_17
    sget-object v0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$Scene:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->NIGHT:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_c

    :goto_17
    :try_start_18
    sget-object v0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$Scene:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->FIRE_WORKS:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_b

    :goto_18
    :try_start_19
    sget-object v0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$Scene:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->BACKLIGHT_HDR:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_a

    :goto_19
    :try_start_1a
    sget-object v0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$Scene:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->NIGHT_PORTRAIT:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_9

    :goto_1a
    :try_start_1b
    sget-object v0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$Scene:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->NIGHT_MODE:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_8

    :goto_1b
    :try_start_1c
    sget-object v0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$Scene:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->HAND_NIGHT:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_7

    :goto_1c
    :try_start_1d
    sget-object v0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$Scene:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->HIGH_SENSITIVITY:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_6

    :goto_1d
    :try_start_1e
    sget-object v0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$Scene:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->GOURMET:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_5

    :goto_1e
    :try_start_1f
    sget-object v0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$Scene:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->PET:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_4

    :goto_1f
    :try_start_20
    sget-object v0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$Scene:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->DOCUMENT:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_3

    :goto_20
    :try_start_21
    sget-object v0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$Scene:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->BEACH:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_2

    :goto_21
    :try_start_22
    sget-object v0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$Scene:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->SNOW:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_1

    :goto_22
    :try_start_23
    sget-object v0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$Scene:[I

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->SPORTS:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_0

    :goto_23
    return-void

    :catch_0
    move-exception v0

    goto :goto_23

    :catch_1
    move-exception v0

    goto :goto_22

    :catch_2
    move-exception v0

    goto :goto_21

    :catch_3
    move-exception v0

    goto :goto_20

    :catch_4
    move-exception v0

    goto :goto_1f

    :catch_5
    move-exception v0

    goto :goto_1e

    :catch_6
    move-exception v0

    goto :goto_1d

    :catch_7
    move-exception v0

    goto :goto_1c

    :catch_8
    move-exception v0

    goto :goto_1b

    :catch_9
    move-exception v0

    goto :goto_1a

    :catch_a
    move-exception v0

    goto/16 :goto_19

    :catch_b
    move-exception v0

    goto/16 :goto_18

    :catch_c
    move-exception v0

    goto/16 :goto_17

    :catch_d
    move-exception v0

    goto/16 :goto_16

    :catch_e
    move-exception v0

    goto/16 :goto_15

    :catch_f
    move-exception v0

    goto/16 :goto_14

    :catch_10
    move-exception v0

    goto/16 :goto_13

    :catch_11
    move-exception v0

    goto/16 :goto_12

    .line 104
    :catch_12
    move-exception v0

    goto/16 :goto_11

    :catch_13
    move-exception v0

    goto/16 :goto_10

    .line 122
    :catch_14
    move-exception v0

    goto/16 :goto_f

    :catch_15
    move-exception v0

    goto/16 :goto_e

    .line 140
    :catch_16
    move-exception v0

    goto/16 :goto_d

    .line 156
    :catch_17
    move-exception v0

    goto/16 :goto_c

    .line 172
    :catch_18
    move-exception v0

    goto/16 :goto_b

    .line 188
    :catch_19
    move-exception v0

    goto/16 :goto_a

    .line 204
    :catch_1a
    move-exception v0

    goto/16 :goto_9

    .line 220
    :catch_1b
    move-exception v0

    goto/16 :goto_8

    .line 236
    :catch_1c
    move-exception v0

    goto/16 :goto_7

    :catch_1d
    move-exception v0

    goto/16 :goto_6

    :catch_1e
    move-exception v0

    goto/16 :goto_5

    :catch_1f
    move-exception v0

    goto/16 :goto_4

    .line 256
    :catch_20
    move-exception v0

    goto/16 :goto_3

    .line 272
    :catch_21
    move-exception v0

    goto/16 :goto_2

    .line 303
    :catch_22
    move-exception v0

    goto/16 :goto_1

    :catch_23
    move-exception v0

    goto/16 :goto_0
.end method
