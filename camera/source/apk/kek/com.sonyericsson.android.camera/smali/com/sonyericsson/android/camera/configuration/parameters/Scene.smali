.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/Scene;
.super Ljava/lang/Enum;
.source "Scene.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/Scene;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

.field public static final enum ANTI_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

.field public static final enum BACKLIGHT_HDR:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

.field public static final enum BEACH:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

.field public static final enum BEACH_SNOW:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

.field public static final enum DOCUMENT:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

.field public static final enum FIRE_WORKS:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

.field public static final enum GOURMET:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

.field public static final enum HAND_NIGHT:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

.field public static final enum HIGH_SENSITIVITY:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

.field public static final enum LANDSCAPE:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

.field public static final enum NIGHT:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

.field public static final enum NIGHT_MODE:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

.field public static final enum NIGHT_PORTRAIT:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

.field public static final enum OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

.field public static final enum PARTY:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

.field public static final enum PET:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

.field public static final enum PORTRAIT:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

.field public static final enum SNOW:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

.field public static final enum SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

.field public static final enum SPORTS:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

.field private static final sParameterTextId:I = 0x7f090032


# instance fields
.field private final mFocusMode:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

.field private final mIconId:I

.field private final mTextId:I

.field private final mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    const-string v1, "OFF"

    const v3, 0x7f020089

    const v4, 0x7f090030

    const-string v5, "auto"

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->SINGLE:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    .line 31
    new-instance v3, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    const-string v4, "PORTRAIT"

    const v6, 0x7f02009a

    const v7, 0x7f0900d7

    const-string v8, "portrait"

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->FACE_DETECTION:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    move v5, v10

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;)V

    sput-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->PORTRAIT:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    .line 36
    new-instance v3, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    const-string v4, "NIGHT_PORTRAIT"

    const v6, 0x7f020093

    const v7, 0x7f0900d6

    const-string v8, "night-portrait"

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->FACE_DETECTION:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    move v5, v11

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;)V

    sput-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->NIGHT_PORTRAIT:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    .line 41
    new-instance v3, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    const-string v4, "LANDSCAPE"

    const v6, 0x7f020092

    const v7, 0x7f090033

    const-string v8, "landscape"

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->INFINITY:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    move v5, v12

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;)V

    sput-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->LANDSCAPE:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    .line 46
    new-instance v3, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    const-string v4, "NIGHT"

    const v6, 0x7f020094

    const v7, 0x7f090035

    const-string v8, "night"

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->INFINITY:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    move v5, v13

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;)V

    sput-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->NIGHT:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    .line 51
    new-instance v3, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    const-string v4, "BEACH_SNOW"

    const/4 v5, 0x5

    const v6, 0x7f02008c

    const v7, 0x7f090038

    const-string v8, "snow"

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->FACE_DETECTION:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;)V

    sput-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->BEACH_SNOW:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    .line 56
    new-instance v3, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    const-string v4, "SPORTS"

    const/4 v5, 0x6

    const v6, 0x7f02009b

    const v7, 0x7f090037

    const-string v8, "sports"

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->FACE_DETECTION:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;)V

    sput-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->SPORTS:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    .line 61
    new-instance v3, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    const-string v4, "PARTY"

    const/4 v5, 0x7

    const v6, 0x7f020096

    const v7, 0x7f090036

    const-string v8, "party"

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->FACE_DETECTION:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;)V

    sput-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->PARTY:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    .line 66
    new-instance v3, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    const-string v4, "DOCUMENT"

    const/16 v5, 0x8

    const v6, 0x7f02008d

    const v7, 0x7f090039

    const-string v8, "document"

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->SINGLE:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;)V

    sput-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->DOCUMENT:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    .line 71
    new-instance v3, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    const-string v4, "NIGHT_MODE"

    const/16 v5, 0x9

    const v6, 0x7f020094

    const v7, 0x7f090034

    const-string v8, "night"

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->SINGLE:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;)V

    sput-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->NIGHT_MODE:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    .line 76
    new-instance v3, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    const-string v4, "BACKLIGHT_HDR"

    const/16 v5, 0xa

    const v6, 0x7f02008b

    const v7, 0x7f0900d8

    const-string v8, "backlight-portrait"

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->FACE_DETECTION:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;)V

    sput-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->BACKLIGHT_HDR:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    .line 81
    new-instance v3, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    const-string v4, "BEACH"

    const/16 v5, 0xb

    const v6, 0x7f02008c

    const v7, 0x7f0900d2

    const-string v8, "beach"

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->FACE_DETECTION:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;)V

    sput-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->BEACH:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    .line 86
    new-instance v3, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    const-string v4, "SNOW"

    const/16 v5, 0xc

    const v6, 0x7f020098

    const v7, 0x7f0900d3

    const-string v8, "snow"

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->FACE_DETECTION:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;)V

    sput-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->SNOW:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    .line 91
    new-instance v3, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    const-string v4, "SOFT_SKIN"

    const/16 v5, 0xd

    const v6, 0x7f020099

    const v7, 0x7f0900e4

    const-string v8, "soft-skin"

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->FACE_DETECTION:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;)V

    sput-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    .line 96
    new-instance v3, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    const-string v4, "GOURMET"

    const/16 v5, 0xe

    const v6, 0x7f02008f

    const v7, 0x7f0900e5

    const-string v8, "dish"

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->SINGLE:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;)V

    sput-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->GOURMET:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    .line 101
    new-instance v3, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    const-string v4, "PET"

    const/16 v5, 0xf

    const v6, 0x7f020097

    const v7, 0x7f0900e6

    const-string v8, "pet"

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->SINGLE:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;)V

    sput-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->PET:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    .line 106
    new-instance v3, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    const-string v4, "ANTI_MOTION"

    const/16 v5, 0x10

    const v6, 0x7f02008a

    const v7, 0x7f0900f7

    const-string v8, "anti-motion-blur"

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->FACE_DETECTION:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;)V

    sput-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->ANTI_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    .line 111
    new-instance v3, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    const-string v4, "HAND_NIGHT"

    const/16 v5, 0x11

    const v6, 0x7f020090

    const v7, 0x7f0900f8

    const-string v8, "handheld-twilight"

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->SINGLE:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;)V

    sput-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->HAND_NIGHT:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    .line 116
    new-instance v3, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    const-string v4, "HIGH_SENSITIVITY"

    const/16 v5, 0x12

    const v6, 0x7f020091

    const v7, 0x7f0900f9

    const-string v8, "high-sensitivity"

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->FACE_DETECTION:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;)V

    sput-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->HIGH_SENSITIVITY:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    .line 121
    new-instance v3, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    const-string v4, "FIRE_WORKS"

    const/16 v5, 0x13

    const v6, 0x7f02008e

    const v7, 0x7f0900fa

    const-string v8, "fireworks"

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->INFINITY:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;-><init>(Ljava/lang/String;IIILjava/lang/String;Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;)V

    sput-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->FIRE_WORKS:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    .line 25
    const/16 v0, 0x14

    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->PORTRAIT:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    aput-object v1, v0, v10

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->NIGHT_PORTRAIT:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    aput-object v1, v0, v11

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->LANDSCAPE:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    aput-object v1, v0, v12

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->NIGHT:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    aput-object v1, v0, v13

    const/4 v1, 0x5

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->BEACH_SNOW:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->SPORTS:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->PARTY:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->DOCUMENT:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->NIGHT_MODE:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->BACKLIGHT_HDR:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->BEACH:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->SNOW:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->GOURMET:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->PET:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->ANTI_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->HAND_NIGHT:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->HIGH_SENSITIVITY:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->FIRE_WORKS:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;)V
    .locals 0
    .param p3, "iconId"    # I
    .param p4, "textId"    # I
    .param p5, "value"    # Ljava/lang/String;
    .param p6, "focusMode"    # Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 150
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 151
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->mIconId:I

    .line 152
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->mTextId:I

    .line 153
    iput-object p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->mValue:Ljava/lang/String;

    .line 154
    iput-object p6, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->mFocusMode:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    .line 155
    return-void
.end method

.method private static getExpectedOptions([Ljava/lang/String;)[Lcom/sonyericsson/android/camera/configuration/parameters/Scene;
    .locals 6
    .param p0, "customizedOptions"    # [Ljava/lang/String;

    .prologue
    .line 258
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 259
    .local v1, "expectedOptions":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/android/camera/configuration/parameters/Scene;>;"
    if-eqz p0, :cond_0

    .line 260
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 261
    .local v4, "value":Ljava/lang/String;
    const-class v5, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    invoke-static {v5, v4}, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 264
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "value":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    move-result-object v5

    .line 266
    :goto_1
    return-object v5

    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_1
    const/4 v5, 0x0

    new-array v5, v5, [Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    goto :goto_1
.end method

.method public static getOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/Scene;
    .locals 15
    .param p0, "mode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .prologue
    .line 212
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .local v7, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/camera/configuration/parameters/Scene;>;"
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()I

    move-result v12

    invoke-static {v12}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getCapability(I)Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

    move-result-object v6

    .line 214
    .local v6, "list":Lcom/sonyericsson/android/camera/util/capability/CapabilityList;
    iget-object v12, v6, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->SCENE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 215
    .local v9, "supportedValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_1

    .line 216
    sget-object v12, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p0, v12, :cond_0

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p0, v12, :cond_2

    .line 217
    :cond_0
    sget-object v12, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    :cond_1
    :goto_0
    const/4 v12, 0x0

    new-array v12, v12, [Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    return-object v12

    .line 220
    :cond_2
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getInstance()Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getCameraExtensionVersion()Lcom/sonyericsson/cameracommon/device/CameraExtensionVersion;

    move-result-object v12

    const/4 v13, 0x1

    const/16 v14, 0x8

    invoke-virtual {v12, v13, v14}, Lcom/sonyericsson/cameracommon/device/CameraExtensionVersion;->isLaterThanOrEqualTo(II)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 224
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getInstance()Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;

    move-result-object v12

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getMaxSoftSkinLevel(I)I

    move-result v12

    if-lez v12, :cond_3

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->PORTRAIT:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 227
    sget-object v12, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    :cond_3
    iget-object v12, v6, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->UX_CAPABILITY:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sonyericsson/android/camera/util/capability/UxOptions;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/sonyericsson/android/camera/util/capability/UxOptions;->getSceneOptions(I)[Ljava/lang/String;

    move-result-object v10

    .line 232
    .local v10, "ux":[Ljava/lang/String;
    invoke-static {v10}, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->getExpectedOptions([Ljava/lang/String;)[Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    move-result-object v1

    .line 233
    .local v1, "expectedOptions":[Lcom/sonyericsson/android/camera/configuration/parameters/Scene;
    move-object v0, v1

    .local v0, "arr$":[Lcom/sonyericsson/android/camera/configuration/parameters/Scene;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v2    # "i$":I
    .local v3, "i$":I
    :goto_1
    if-ge v3, v5, :cond_6

    aget-object v11, v0, v3

    .line 234
    .local v11, "value":Lcom/sonyericsson/android/camera/configuration/parameters/Scene;
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v3    # "i$":I
    .local v2, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 235
    .local v8, "supportedValue":Ljava/lang/String;
    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 236
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    .end local v8    # "supportedValue":Ljava/lang/String;
    :cond_5
    add-int/lit8 v2, v3, 0x1

    .local v2, "i$":I
    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_1

    .line 244
    .end local v11    # "value":Lcom/sonyericsson/android/camera/configuration/parameters/Scene;
    :cond_6
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->isSupportedBeachAndSnowIndividually()Z

    move-result v12

    if-nez v12, :cond_1

    .line 245
    sget-object v12, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->SNOW:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 246
    .local v4, "index":I
    const/4 v12, -0x1

    if-eq v4, v12, :cond_1

    .line 247
    sget-object v12, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->SNOW:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 248
    sget-object v12, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->BEACH:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 249
    sget-object v12, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->BEACH_SNOW:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    invoke-virtual {v7, v4, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private static isSupportedBeachAndSnowIndividually()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 294
    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getCapability(I)Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

    move-result-object v0

    .line 296
    .local v0, "list":Lcom/sonyericsson/android/camera/util/capability/CapabilityList;
    iget-object v3, v0, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->SCENE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 297
    .local v1, "supportedValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->PET:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 298
    const/4 v2, 0x1

    .line 300
    :cond_0
    return v2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/Scene;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/Scene;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;

    .prologue
    .line 164
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/Scene;)V

    .line 165
    return-void
.end method

.method public getFocusMode()Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->mFocusMode:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    return-object v0
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->mIconId:I

    return v0
.end method

.method public getParameterKey()Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    .locals 1

    .prologue
    .line 172
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->SCENE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    return-object v0
.end method

.method public getParameterKeyTextId()I
    .locals 1

    .prologue
    .line 276
    const v0, 0x7f090032

    return v0
.end method

.method public getParameterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecommendedValue([Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    .locals 1
    .param p1, "options"    # [Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    .param p2, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    .prologue
    .line 281
    const/4 v0, 0x0

    aget-object v0, p1, v0

    return-object v0
.end method

.method public getTextId()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->mTextId:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->mValue:Ljava/lang/String;

    return-object v0
.end method
