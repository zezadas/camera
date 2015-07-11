.class public final enum Lcom/sonyericsson/android/camera/configuration/ParameterKey;
.super Ljava/lang/Enum;
.source "ParameterKey.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/configuration/ParameterKey$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera/configuration/ParameterKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/ParameterKey;

.field public static final enum AUTO_REVIEW:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

.field public static final enum AUTO_UPLOAD:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

.field public static final enum BURST_SHOT:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

.field public static final enum CAPTURE_FRAME_SHAPE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

.field public static final enum CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

.field public static final enum DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

.field public static final enum EV:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

.field public static final enum FACE_IDENTIFY:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

.field public static final enum FACING:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

.field public static final enum FAST_CAPTURE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

.field public static final enum FLASH:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

.field public static final enum FOCUS_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

.field public static final enum GEO_TAG:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

.field public static final enum HDR:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

.field public static final enum ISO:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

.field public static final enum METERING:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

.field public static final enum MICROPHONE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

.field public static final enum PHOTO_LIGHT:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

.field public static final enum RESOLUTION:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

.field public static final enum SCENE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

.field public static final enum SELF_TIMER:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

.field public static final enum SHUTTER_SOUND:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

.field public static final enum SMILE_CAPTURE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

.field public static final enum SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

.field public static final enum STABILIZER:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

.field public static final enum SUPER_RESOLUTION:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

.field public static final enum TOUCH_BLOCK:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

.field public static final enum TOUCH_CAPTURE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

.field public static final enum VIDEO_AUTO_REVIEW:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

.field public static final enum VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

.field public static final enum VIDEO_SELF_TIMER:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

.field public static final enum VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

.field public static final enum VIDEO_SMILE_CAPTURE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

.field public static final enum VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

.field public static final enum VOLUME_KEY:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

.field public static final enum WHITE_BALANCE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;


# instance fields
.field private final mCategory:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

.field private final mIsCommon:Z

.field private mIsSaved:Z

.field private mSelectability:Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;

.field private final mTitleTextId:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 29
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    const-string v1, "AUTO_REVIEW"

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const v6, 0x7f0900f1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;-><init>(Ljava/lang/String;IZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->AUTO_REVIEW:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    .line 34
    new-instance v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    const-string v5, "VIDEO_AUTO_REVIEW"

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const v10, 0x7f0900f1

    move v6, v3

    move v7, v3

    move v8, v2

    invoke-direct/range {v4 .. v10}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;-><init>(Ljava/lang/String;IZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->VIDEO_AUTO_REVIEW:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    .line 39
    new-instance v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    const-string v5, "AUTO_UPLOAD"

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->COMMON:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const v10, 0x7f0900fd

    move v6, v12

    move v7, v2

    move v8, v3

    invoke-direct/range {v4 .. v10}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;-><init>(Ljava/lang/String;IZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->AUTO_UPLOAD:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    .line 44
    new-instance v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    const-string v5, "BURST_SHOT"

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const v10, 0x7f090107

    move v6, v13

    move v7, v3

    move v8, v2

    invoke-direct/range {v4 .. v10}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;-><init>(Ljava/lang/String;IZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->BURST_SHOT:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    .line 49
    new-instance v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    const-string v5, "CAPTURE_FRAME_SHAPE"

    const/4 v6, 0x4

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const v10, 0x7f090149

    move v7, v3

    move v8, v2

    invoke-direct/range {v4 .. v10}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;-><init>(Ljava/lang/String;IZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->CAPTURE_FRAME_SHAPE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    .line 54
    new-instance v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    const-string v5, "CAPTURING_MODE"

    const/4 v6, 0x5

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const v10, 0x7f0900cf

    move v7, v3

    move v8, v2

    invoke-direct/range {v4 .. v10}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;-><init>(Ljava/lang/String;IZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    .line 59
    new-instance v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    const-string v5, "DESTINATION_TO_SAVE"

    const/4 v6, 0x6

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->COMMON:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const v10, 0x7f0900a9

    move v7, v3

    move v8, v3

    invoke-direct/range {v4 .. v10}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;-><init>(Ljava/lang/String;IZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    .line 64
    new-instance v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    const-string v5, "EV"

    const/4 v6, 0x7

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const v10, 0x7f0900a4

    move v7, v3

    move v8, v2

    invoke-direct/range {v4 .. v10}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;-><init>(Ljava/lang/String;IZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->EV:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    .line 69
    new-instance v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    const-string v5, "FACE_IDENTIFY"

    const/16 v6, 0x8

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const v10, 0x7f09011a

    move v7, v3

    move v8, v2

    invoke-direct/range {v4 .. v10}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;-><init>(Ljava/lang/String;IZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->FACE_IDENTIFY:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    .line 74
    new-instance v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    const-string v5, "FACING"

    const/16 v6, 0x9

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const v10, 0x7f0900ee

    move v7, v2

    move v8, v2

    invoke-direct/range {v4 .. v10}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;-><init>(Ljava/lang/String;IZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->FACING:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    .line 79
    new-instance v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    const-string v5, "FAST_CAPTURE"

    const/16 v6, 0xa

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->COMMON:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const v10, 0x7f0900aa

    move v7, v3

    move v8, v3

    invoke-direct/range {v4 .. v10}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;-><init>(Ljava/lang/String;IZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->FAST_CAPTURE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    .line 84
    new-instance v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    const-string v5, "FLASH"

    const/16 v6, 0xb

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const v10, 0x7f0900a2

    move v7, v3

    move v8, v2

    invoke-direct/range {v4 .. v10}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;-><init>(Ljava/lang/String;IZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->FLASH:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    .line 89
    new-instance v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    const-string v5, "FOCUS_MODE"

    const/16 v6, 0xc

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const v10, 0x7f0900a3

    move v7, v3

    move v8, v2

    invoke-direct/range {v4 .. v10}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;-><init>(Ljava/lang/String;IZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->FOCUS_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    .line 94
    new-instance v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    const-string v5, "GEO_TAG"

    const/16 v6, 0xd

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->COMMON:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const v10, 0x7f0900a8

    move v7, v3

    move v8, v3

    invoke-direct/range {v4 .. v10}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;-><init>(Ljava/lang/String;IZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->GEO_TAG:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    .line 99
    new-instance v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    const-string v5, "HDR"

    const/16 v6, 0xe

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const v10, 0x7f0900c8

    move v7, v3

    move v8, v2

    invoke-direct/range {v4 .. v10}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;-><init>(Ljava/lang/String;IZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->HDR:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    .line 104
    new-instance v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    const-string v5, "ISO"

    const/16 v6, 0xf

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const v10, 0x7f0901d5

    move v7, v3

    move v8, v2

    invoke-direct/range {v4 .. v10}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;-><init>(Ljava/lang/String;IZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->ISO:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    .line 109
    new-instance v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    const-string v5, "METERING"

    const/16 v6, 0x10

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const v10, 0x7f0900a6

    move v7, v3

    move v8, v2

    invoke-direct/range {v4 .. v10}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;-><init>(Ljava/lang/String;IZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->METERING:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    .line 114
    new-instance v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    const-string v5, "MICROPHONE"

    const/16 v6, 0x11

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const v10, 0x7f0900ab

    move v7, v3

    move v8, v2

    invoke-direct/range {v4 .. v10}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;-><init>(Ljava/lang/String;IZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->MICROPHONE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    .line 119
    new-instance v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    const-string v5, "PHOTO_LIGHT"

    const/16 v6, 0x12

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const v10, 0x7f090101

    move v7, v3

    move v8, v2

    invoke-direct/range {v4 .. v10}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;-><init>(Ljava/lang/String;IZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->PHOTO_LIGHT:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    .line 124
    new-instance v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    const-string v5, "RESOLUTION"

    const/16 v6, 0x13

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const v10, 0x7f0900a1

    move v7, v3

    move v8, v2

    invoke-direct/range {v4 .. v10}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;-><init>(Ljava/lang/String;IZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    .line 129
    new-instance v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    const-string v5, "SCENE"

    const/16 v6, 0x14

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const v10, 0x7f0900d9

    move v7, v3

    move v8, v2

    invoke-direct/range {v4 .. v10}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;-><init>(Ljava/lang/String;IZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->SCENE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    .line 134
    new-instance v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    const-string v5, "SELF_TIMER"

    const/16 v6, 0x15

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const v10, 0x7f09003f

    move v7, v3

    move v8, v2

    invoke-direct/range {v4 .. v10}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;-><init>(Ljava/lang/String;IZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->SELF_TIMER:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    .line 139
    new-instance v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    const-string v5, "SHUTTER_SOUND"

    const/16 v6, 0x16

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->COMMON:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const v10, 0x7f090157

    move v7, v3

    move v8, v3

    invoke-direct/range {v4 .. v10}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;-><init>(Ljava/lang/String;IZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->SHUTTER_SOUND:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    .line 144
    new-instance v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    const-string v5, "SMILE_CAPTURE"

    const/16 v6, 0x17

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const v10, 0x7f0900da

    move v7, v3

    move v8, v2

    invoke-direct/range {v4 .. v10}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;-><init>(Ljava/lang/String;IZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->SMILE_CAPTURE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    .line 149
    new-instance v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    const-string v5, "SOFT_SKIN"

    const/16 v6, 0x18

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const v10, 0x7f0900e7

    move v7, v3

    move v8, v2

    invoke-direct/range {v4 .. v10}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;-><init>(Ljava/lang/String;IZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    .line 154
    new-instance v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    const-string v5, "VIDEO_STABILIZER"

    const/16 v6, 0x19

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const v10, 0x7f0900dd

    move v7, v3

    move v8, v2

    invoke-direct/range {v4 .. v10}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;-><init>(Ljava/lang/String;IZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    .line 159
    new-instance v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    const-string v5, "STABILIZER"

    const/16 v6, 0x1a

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const v10, 0x7f0900a7

    move v7, v3

    move v8, v2

    invoke-direct/range {v4 .. v10}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;-><init>(Ljava/lang/String;IZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->STABILIZER:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    .line 164
    new-instance v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    const-string v5, "SUPER_RESOLUTION"

    const/16 v6, 0x1b

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    move v7, v2

    move v8, v2

    move v10, v11

    invoke-direct/range {v4 .. v10}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;-><init>(Ljava/lang/String;IZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->SUPER_RESOLUTION:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    .line 169
    new-instance v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    const-string v5, "TOUCH_CAPTURE"

    const/16 v6, 0x1c

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->COMMON:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const v10, 0x7f0900f6

    move v7, v3

    move v8, v3

    invoke-direct/range {v4 .. v10}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;-><init>(Ljava/lang/String;IZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->TOUCH_CAPTURE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    .line 174
    new-instance v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    const-string v5, "VIDEO_HDR"

    const/16 v6, 0x1d

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const v10, 0x7f0900fc

    move v7, v3

    move v8, v2

    invoke-direct/range {v4 .. v10}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;-><init>(Ljava/lang/String;IZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    .line 179
    new-instance v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    const-string v5, "VIDEO_SELF_TIMER"

    const/16 v6, 0x1e

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const v10, 0x7f09003f

    move v7, v3

    move v8, v2

    invoke-direct/range {v4 .. v10}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;-><init>(Ljava/lang/String;IZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->VIDEO_SELF_TIMER:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    .line 184
    new-instance v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    const-string v5, "VIDEO_SIZE"

    const/16 v6, 0x1f

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const v10, 0x7f0900c6

    move v7, v3

    move v8, v2

    invoke-direct/range {v4 .. v10}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;-><init>(Ljava/lang/String;IZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    .line 189
    new-instance v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    const-string v5, "VIDEO_SMILE_CAPTURE"

    const/16 v6, 0x20

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const v10, 0x7f090112

    move v7, v3

    move v8, v2

    invoke-direct/range {v4 .. v10}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;-><init>(Ljava/lang/String;IZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->VIDEO_SMILE_CAPTURE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    .line 194
    new-instance v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    const-string v5, "VOLUME_KEY"

    const/16 v6, 0x21

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->COMMON:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const v10, 0x7f09011f

    move v7, v3

    move v8, v3

    invoke-direct/range {v4 .. v10}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;-><init>(Ljava/lang/String;IZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->VOLUME_KEY:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    .line 199
    new-instance v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    const-string v5, "WHITE_BALANCE"

    const/16 v6, 0x22

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    const v10, 0x7f0900a5

    move v7, v3

    move v8, v2

    invoke-direct/range {v4 .. v10}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;-><init>(Ljava/lang/String;IZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->WHITE_BALANCE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    .line 204
    new-instance v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    const-string v5, "TOUCH_BLOCK"

    const/16 v6, 0x23

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->COMMON:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    move v7, v2

    move v8, v3

    move v10, v11

    invoke-direct/range {v4 .. v10}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;-><init>(Ljava/lang/String;IZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V

    sput-object v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->TOUCH_BLOCK:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    .line 28
    const/16 v0, 0x24

    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->AUTO_REVIEW:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->VIDEO_AUTO_REVIEW:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->AUTO_UPLOAD:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    aput-object v1, v0, v12

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->BURST_SHOT:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    aput-object v1, v0, v13

    const/4 v1, 0x4

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->CAPTURE_FRAME_SHAPE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->EV:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->FACE_IDENTIFY:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->FACING:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->FAST_CAPTURE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->FLASH:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->FOCUS_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->GEO_TAG:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->HDR:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->ISO:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->METERING:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->MICROPHONE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->PHOTO_LIGHT:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->SCENE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->SELF_TIMER:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->SHUTTER_SOUND:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->SMILE_CAPTURE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->STABILIZER:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->SUPER_RESOLUTION:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->TOUCH_CAPTURE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->VIDEO_SELF_TIMER:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->VIDEO_SMILE_CAPTURE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->VOLUME_KEY:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->WHITE_BALANCE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->TOUCH_BLOCK:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZLcom/sonyericsson/android/camera/configuration/ParameterCategory;I)V
    .locals 0
    .param p3, "isSaved"    # Z
    .param p4, "isCommon"    # Z
    .param p5, "category"    # Lcom/sonyericsson/android/camera/configuration/ParameterCategory;
    .param p6, "titleTextId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lcom/sonyericsson/android/camera/configuration/ParameterCategory;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 224
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 225
    iput-boolean p3, p0, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->mIsSaved:Z

    .line 226
    iput-boolean p4, p0, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->mIsCommon:Z

    .line 227
    iput-object p5, p0, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->mCategory:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    .line 228
    iput p6, p0, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->mTitleTextId:I

    .line 229
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    const-class v0, Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/ParameterKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    return-object v0
.end method


# virtual methods
.method public getCategory()Lcom/sonyericsson/android/camera/configuration/ParameterCategory;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->mCategory:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    return-object v0
.end method

.method public getSelectability()Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->mSelectability:Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;

    return-object v0
.end method

.method public getTitleText(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 275
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/ParameterKey$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterKey:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 283
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 277
    :pswitch_0
    const-string v0, "com.sonymobile.touchblocker"

    invoke-static {p1, v0}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 275
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public getTitleTextId(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)I
    .locals 2
    .param p1, "mode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .prologue
    .line 263
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/ParameterKey$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterKey:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 271
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->mTitleTextId:I

    :goto_0
    return v0

    .line 265
    :pswitch_0
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->getParameterKeyTitleTextId()I

    move-result v0

    goto :goto_0

    .line 268
    :pswitch_1
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()I

    move-result v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->getParameterKeyTitleText(I)I

    move-result v0

    goto :goto_0

    .line 263
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isCommon()Z
    .locals 1

    .prologue
    .line 255
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->mIsCommon:Z

    return v0
.end method

.method public isInvalid()Z
    .locals 2

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->getSelectability()Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;->INVALID:Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSaved()Z
    .locals 1

    .prologue
    .line 237
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->mIsSaved:Z

    return v0
.end method

.method public isSelectable()Z
    .locals 2

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->getSelectability()Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;->SELECTABLE:Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSaved(Z)V
    .locals 0
    .param p1, "saved"    # Z

    .prologue
    .line 246
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->mIsSaved:Z

    .line 247
    return-void
.end method

.method public setSelectability(Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;)V
    .locals 0
    .param p1, "selectability"    # Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->mSelectability:Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;

    .line 290
    return-void
.end method
