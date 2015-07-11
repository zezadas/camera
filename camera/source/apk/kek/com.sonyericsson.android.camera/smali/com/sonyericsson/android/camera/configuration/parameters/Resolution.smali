.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
.super Ljava/lang/Enum;
.source "Resolution.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/configuration/parameters/Resolution$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum EIGHT_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum EIGHT_MP_WIDE:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum FIFTEEN_MP_WIDE:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum FIVE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum FIVE_MP_WIDE:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum HDR_NINE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum HDR_SEVEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum HDR_SIX_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum HDR_TWELVE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum HDR_TWENTY_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum HDR_TWO_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum HDR_TWO_MP_WIDE:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum NINE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum ONE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum ONE_MP_NARROW:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum SIX_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum TEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum THIRTEEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum THREE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum THREE_MP_WIDE:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum THREE_POINT_SEVEN_MP_WIDE:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum TWELVE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum TWENTY_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum TWENTY_MP_WIDE:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum TWENTY_THREE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum TWO_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum TWO_MP_WIDE:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum UXGA:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field public static final enum VGA:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

.field private static final sParameterTextId:I = 0x7f09003a


# instance fields
.field private final mIconId:I

.field private final mPictureRect:Landroid/graphics/Rect;

.field private final mTextId:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v6, 0x1

    const/16 v13, 0xc20

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 30
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const-string v1, "TWENTY_THREE_MP"

    const v4, 0x7f090200

    new-instance v5, Landroid/graphics/Rect;

    const/16 v7, 0x1590

    const/16 v8, 0x102c

    invoke-direct {v5, v2, v2, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->TWENTY_THREE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 34
    new-instance v4, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const-string v5, "TWENTY_MP_WIDE"

    const v8, 0x7f0901fe

    new-instance v9, Landroid/graphics/Rect;

    const/16 v0, 0x1760

    const/16 v1, 0xd26

    invoke-direct {v9, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move v7, v3

    invoke-direct/range {v4 .. v9}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->TWENTY_MP_WIDE:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 38
    new-instance v7, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const-string v8, "TWENTY_MP"

    const v11, 0x7f0901ff

    new-instance v12, Landroid/graphics/Rect;

    const/16 v0, 0x1480

    const/16 v1, 0xf60

    invoke-direct {v12, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move v9, v14

    move v10, v3

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->TWENTY_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 42
    new-instance v7, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const-string v8, "HDR_TWENTY_MP"

    const/4 v9, 0x3

    new-instance v12, Landroid/graphics/Rect;

    const/16 v0, 0x1386

    const/16 v1, 0xea4

    invoke-direct {v12, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move v10, v3

    move v11, v3

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->HDR_TWENTY_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 46
    new-instance v7, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const-string v8, "FIFTEEN_MP_WIDE"

    const/4 v9, 0x4

    const v11, 0x7f0901fd

    new-instance v12, Landroid/graphics/Rect;

    const/16 v0, 0x1480

    const/16 v1, 0xb88

    invoke-direct {v12, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move v10, v3

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->FIFTEEN_MP_WIDE:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 50
    new-instance v7, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const-string v8, "THIRTEEN_MP"

    const/4 v9, 0x5

    const v11, 0x7f0901ea

    new-instance v12, Landroid/graphics/Rect;

    const/16 v0, 0x1020

    const/16 v1, 0xc18

    invoke-direct {v12, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move v10, v3

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->THIRTEEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 54
    new-instance v7, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const-string v8, "HDR_TWELVE_MP"

    const/4 v9, 0x6

    const v11, 0x7f0901eb

    new-instance v12, Landroid/graphics/Rect;

    const/16 v0, 0xf50

    const/16 v1, 0xb7c

    invoke-direct {v12, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move v10, v3

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->HDR_TWELVE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 59
    new-instance v7, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const-string v8, "TWELVE_MP"

    const/4 v9, 0x7

    new-instance v12, Landroid/graphics/Rect;

    const/16 v0, 0xfa0

    const/16 v1, 0xbb8

    invoke-direct {v12, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move v10, v3

    move v11, v3

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->TWELVE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 64
    new-instance v7, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const-string v8, "TEN_MP"

    const/16 v9, 0x8

    new-instance v12, Landroid/graphics/Rect;

    const/16 v0, 0x1020

    const/16 v1, 0x912

    invoke-direct {v12, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move v10, v3

    move v11, v3

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->TEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 69
    new-instance v7, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const-string v8, "NINE_MP"

    const/16 v9, 0x9

    new-instance v12, Landroid/graphics/Rect;

    const/16 v0, 0xfa0

    const/16 v1, 0x8ca

    invoke-direct {v12, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move v10, v3

    move v11, v3

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->NINE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 74
    new-instance v7, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const-string v8, "HDR_NINE_MP"

    const/16 v9, 0xa

    const v11, 0x7f0901ec

    new-instance v12, Landroid/graphics/Rect;

    const/16 v0, 0xf50

    const/16 v1, 0x89c

    invoke-direct {v12, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move v10, v3

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->HDR_NINE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 79
    new-instance v7, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const-string v8, "EIGHT_MP"

    const/16 v9, 0xb

    const v11, 0x7f0901fa

    new-instance v12, Landroid/graphics/Rect;

    const/16 v0, 0xcc0

    const/16 v1, 0x990

    invoke-direct {v12, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move v10, v3

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->EIGHT_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 83
    new-instance v7, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const-string v8, "EIGHT_MP_WIDE"

    const/16 v9, 0xc

    const v11, 0x7f0901f9

    new-instance v12, Landroid/graphics/Rect;

    const/16 v0, 0xf00

    const/16 v1, 0x870

    invoke-direct {v12, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move v10, v3

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->EIGHT_MP_WIDE:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 87
    new-instance v7, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const-string v8, "HDR_SEVEN_MP"

    const/16 v9, 0xd

    const v11, 0x7f0901f8

    new-instance v12, Landroid/graphics/Rect;

    const/16 v0, 0x918

    invoke-direct {v12, v2, v2, v13, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    move v10, v3

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->HDR_SEVEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 92
    new-instance v7, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const-string v8, "SIX_MP"

    const/16 v9, 0xe

    const v11, 0x7f0901f7

    new-instance v12, Landroid/graphics/Rect;

    const/16 v0, 0xcc0

    const/16 v1, 0x72c

    invoke-direct {v12, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move v10, v3

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->SIX_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 96
    new-instance v7, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const-string v8, "HDR_SIX_MP"

    const/16 v9, 0xf

    new-instance v12, Landroid/graphics/Rect;

    const/16 v0, 0x6d2

    invoke-direct {v12, v2, v2, v13, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    move v10, v3

    move v11, v3

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->HDR_SIX_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 101
    new-instance v7, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const-string v8, "FIVE_MP"

    const/16 v9, 0x10

    const v11, 0x7f0901f6

    new-instance v12, Landroid/graphics/Rect;

    const/16 v0, 0xa20

    const/16 v1, 0x798

    invoke-direct {v12, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move v10, v3

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->FIVE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 105
    new-instance v7, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const-string v8, "FIVE_MP_WIDE"

    const/16 v9, 0x11

    const v11, 0x7f0901f5

    new-instance v12, Landroid/graphics/Rect;

    const/16 v0, 0x6d2

    invoke-direct {v12, v2, v2, v13, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    move v10, v3

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->FIVE_MP_WIDE:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 109
    new-instance v7, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const-string v8, "THREE_MP"

    const/16 v9, 0x12

    const v11, 0x7f0901f2

    new-instance v12, Landroid/graphics/Rect;

    const/16 v0, 0x800

    const/16 v1, 0x600

    invoke-direct {v12, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move v10, v3

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->THREE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 113
    new-instance v7, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const-string v8, "THREE_MP_WIDE"

    const/16 v9, 0x13

    const v11, 0x7f0901f3

    new-instance v12, Landroid/graphics/Rect;

    const/16 v0, 0xa00

    const/16 v1, 0x5a0

    invoke-direct {v12, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move v10, v3

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->THREE_MP_WIDE:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 118
    new-instance v7, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const-string v8, "THREE_POINT_SEVEN_MP_WIDE"

    const/16 v9, 0x14

    const v11, 0x7f0901f4

    new-instance v12, Landroid/graphics/Rect;

    const/16 v0, 0xa20

    const/16 v1, 0x5b2

    invoke-direct {v12, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move v10, v3

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->THREE_POINT_SEVEN_MP_WIDE:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 123
    new-instance v7, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const-string v8, "TWO_MP"

    const/16 v9, 0x15

    const v11, 0x7f0901f1

    new-instance v12, Landroid/graphics/Rect;

    const/16 v0, 0x660

    const/16 v1, 0x4c8

    invoke-direct {v12, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move v10, v3

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->TWO_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 127
    new-instance v7, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const-string v8, "HDR_TWO_MP"

    const/16 v9, 0x16

    const v11, 0x7f0901ed

    new-instance v12, Landroid/graphics/Rect;

    const/16 v0, 0x5f0

    const/16 v1, 0x474

    invoke-direct {v12, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move v10, v3

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->HDR_TWO_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 131
    new-instance v7, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const-string v8, "TWO_MP_WIDE"

    const/16 v9, 0x17

    const v11, 0x7f0901f0

    new-instance v12, Landroid/graphics/Rect;

    const/16 v0, 0x780

    const/16 v1, 0x438

    invoke-direct {v12, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move v10, v3

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->TWO_MP_WIDE:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 135
    new-instance v7, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const-string v8, "HDR_TWO_MP_WIDE"

    const/16 v9, 0x18

    const v11, 0x7f0901ee

    new-instance v12, Landroid/graphics/Rect;

    const/16 v0, 0x720

    const/16 v1, 0x402

    invoke-direct {v12, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move v10, v3

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->HDR_TWO_MP_WIDE:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 139
    new-instance v7, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const-string v8, "ONE_MP"

    const/16 v9, 0x19

    new-instance v12, Landroid/graphics/Rect;

    const/16 v0, 0x500

    const/16 v1, 0x3c0

    invoke-direct {v12, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move v10, v3

    move v11, v3

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->ONE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 144
    new-instance v7, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const-string v8, "ONE_MP_NARROW"

    const/16 v9, 0x1a

    new-instance v12, Landroid/graphics/Rect;

    const/16 v0, 0x500

    const/16 v1, 0x2d0

    invoke-direct {v12, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move v10, v3

    move v11, v3

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->ONE_MP_NARROW:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 149
    new-instance v7, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const-string v8, "VGA"

    const/16 v9, 0x1b

    new-instance v12, Landroid/graphics/Rect;

    const/16 v0, 0x280

    const/16 v1, 0x1e0

    invoke-direct {v12, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move v10, v3

    move v11, v3

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->VGA:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 154
    new-instance v7, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    const-string v8, "UXGA"

    const/16 v9, 0x1c

    const v11, 0x7f0901ef

    new-instance v12, Landroid/graphics/Rect;

    const/16 v0, 0x640

    const/16 v1, 0x4b0

    invoke-direct {v12, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move v10, v3

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;-><init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V

    sput-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->UXGA:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 29
    const/16 v0, 0x1d

    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->TWENTY_THREE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->TWENTY_MP_WIDE:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->TWENTY_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    aput-object v1, v0, v14

    const/4 v1, 0x3

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->HDR_TWENTY_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->FIFTEEN_MP_WIDE:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->THIRTEEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->HDR_TWELVE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->TWELVE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->TEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->NINE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->HDR_NINE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->EIGHT_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->EIGHT_MP_WIDE:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->HDR_SEVEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->SIX_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->HDR_SIX_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->FIVE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->FIVE_MP_WIDE:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->THREE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->THREE_MP_WIDE:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->THREE_POINT_SEVEN_MP_WIDE:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->TWO_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->HDR_TWO_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->TWO_MP_WIDE:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->HDR_TWO_MP_WIDE:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->ONE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->ONE_MP_NARROW:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->VGA:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->UXGA:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILandroid/graphics/Rect;)V
    .locals 0
    .param p3, "iconId"    # I
    .param p4, "textId"    # I
    .param p5, "pictureRect"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    .prologue
    .line 178
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 179
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->mIconId:I

    .line 180
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->mTextId:I

    .line 181
    iput-object p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->mPictureRect:Landroid/graphics/Rect;

    .line 182
    return-void
.end method

.method public static getDefaultValue(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    .locals 9
    .param p0, "mode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()I

    move-result v7

    invoke-static {v7}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getCapability(I)Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

    move-result-object v7

    iget-object v7, v7, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->RESOLUTION_CAPABILITY:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;

    .line 363
    .local v6, "resolution":Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getInstance()Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;

    move-result-object v7

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->isStillHdrVer3(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 364
    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->getHdr3DefaultResolution()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object v1

    .line 370
    .local v1, "def":Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    :goto_0
    invoke-static {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object v4

    .line 371
    .local v4, "options":[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    move-object v0, v4

    .local v0, "arr$":[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v5, v0, v2

    .line 372
    .local v5, "reso":Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    invoke-virtual {v5, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 374
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getInstance()Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;

    move-result-object v7

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->isStillHdrVer3(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 375
    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->getHdr3DefaultResolution()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object v7

    .line 383
    .end local v5    # "reso":Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    :goto_2
    return-object v7

    .line 366
    .end local v0    # "arr$":[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    .end local v1    # "def":Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "options":[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    :cond_0
    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->getDefaultResolution()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object v1

    .restart local v1    # "def":Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    goto :goto_0

    .line 377
    .restart local v0    # "arr$":[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "options":[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    .restart local v5    # "reso":Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    :cond_1
    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->getDefaultResolution()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object v7

    goto :goto_2

    .line 371
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 383
    .end local v5    # "reso":Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    :cond_3
    sget-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->VGA:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    goto :goto_2
.end method

.method private static getExpectedOptions([Ljava/lang/String;)[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    .locals 6
    .param p0, "customizedOptions"    # [Ljava/lang/String;

    .prologue
    .line 348
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 349
    .local v1, "expectedOptions":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;>;"
    if-eqz p0, :cond_0

    .line 350
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 351
    .local v4, "value":Ljava/lang/String;
    const-class v5, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    invoke-static {v5, v4}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 354
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "value":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object v5

    .line 356
    :goto_1
    return-object v5

    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_1
    const/4 v5, 0x0

    new-array v5, v5, [Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    goto :goto_1
.end method

.method public static getHdrDependentOptions([Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;ZI)[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    .locals 3
    .param p0, "options"    # [Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    .param p1, "hdr"    # Z
    .param p2, "cameraId"    # I

    .prologue
    .line 463
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 464
    aget-object v1, p0, v0

    .line 465
    .local v1, "value":Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    invoke-static {v1, p1, p2}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getHdrResolution(Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;ZI)Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object v2

    aput-object v2, p0, v0

    .line 463
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 468
    .end local v1    # "value":Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    :cond_0
    return-object p0
.end method

.method public static getHdrResolution(Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;ZI)Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    .locals 6
    .param p0, "orgValue"    # Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    .param p1, "hdr"    # Z
    .param p2, "cameraId"    # I

    .prologue
    .line 406
    move-object v1, p0

    .line 408
    .local v1, "newValue":Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getInstance()Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->isStillHdrVer3(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 457
    .end local p0    # "orgValue":Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    :cond_0
    :goto_0
    return-object p0

    .line 412
    .restart local p0    # "orgValue":Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    :cond_1
    if-eqz p1, :cond_4

    .line 413
    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$Resolution:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 449
    :cond_2
    :goto_1
    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getCapability(I)Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

    move-result-object v4

    iget-object v4, v4, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->PICTURE_SIZE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 450
    .local v2, "supportedValues":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 451
    .local v3, "value":Landroid/graphics/Rect;
    iget-object v4, v1, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->mPictureRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-ne v4, v5, :cond_3

    iget-object v4, v1, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->mPictureRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-ne v4, v5, :cond_3

    move-object p0, v1

    .line 453
    goto :goto_0

    .line 415
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "supportedValues":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    .end local v3    # "value":Landroid/graphics/Rect;
    :pswitch_0
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->HDR_TWENTY_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 416
    goto :goto_1

    .line 418
    :pswitch_1
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->HDR_TWELVE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 419
    goto :goto_1

    .line 421
    :pswitch_2
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->HDR_SEVEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 422
    goto :goto_1

    .line 424
    :pswitch_3
    const/4 v4, 0x1

    if-ne p2, v4, :cond_2

    .line 425
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->HDR_TWO_MP_WIDE:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    goto :goto_1

    .line 431
    :cond_4
    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$Resolution:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    goto :goto_1

    .line 433
    :pswitch_4
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->TWENTY_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 434
    goto :goto_1

    .line 436
    :pswitch_5
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->THIRTEEN_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 437
    goto :goto_1

    .line 439
    :pswitch_6
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->EIGHT_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 440
    goto :goto_1

    .line 442
    :pswitch_7
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->TWO_MP_WIDE:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    goto :goto_1

    .line 413
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 431
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static getOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    .locals 13
    .param p0, "mode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .prologue
    .line 261
    sget-object v11, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p0, v11, :cond_0

    sget-object v11, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p0, v11, :cond_1

    .line 262
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()I

    move-result v11

    invoke-static {v11}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getSuperiorAutoOptions(I)[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object v11

    .line 294
    :goto_0
    return-object v11

    .line 265
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .local v7, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;>;"
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_5

    .line 267
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()I

    move-result v11

    invoke-static {v11}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getCapability(I)Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

    move-result-object v6

    .line 269
    .local v6, "list":Lcom/sonyericsson/android/camera/util/capability/CapabilityList;
    iget-object v11, v6, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->PICTURE_SIZE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 271
    .local v8, "supportedPictureSize":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_5

    .line 273
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getInstance()Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;

    move-result-object v11

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->isStillHdrVer3(I)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 274
    iget-object v11, v6, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->RESOLUTION_CAPABILITY:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->getHdr3ResolutionOptions()[Ljava/lang/String;

    move-result-object v1

    .line 280
    .local v1, "array":[Ljava/lang/String;
    :goto_1
    invoke-static {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getExpectedOptions([Ljava/lang/String;)[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object v2

    .line 283
    .local v2, "expectedOptions":[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    move-object v0, v2

    .local v0, "arr$":[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move v4, v3

    .end local v3    # "i$":I
    .local v4, "i$":I
    :goto_2
    if-ge v4, v5, :cond_5

    aget-object v10, v0, v4

    .line 284
    .local v10, "value":Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v4    # "i$":I
    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    .line 285
    .local v9, "supportedValue":Landroid/graphics/Rect;
    iget-object v11, v10, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->mPictureRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v12

    if-ne v11, v12, :cond_2

    iget-object v11, v10, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->mPictureRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v12

    if-ne v11, v12, :cond_2

    .line 287
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    .end local v9    # "supportedValue":Landroid/graphics/Rect;
    :cond_3
    add-int/lit8 v3, v4, 0x1

    .local v3, "i$":I
    move v4, v3

    .end local v3    # "i$":I
    .restart local v4    # "i$":I
    goto :goto_2

    .line 277
    .end local v0    # "arr$":[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    .end local v1    # "array":[Ljava/lang/String;
    .end local v2    # "expectedOptions":[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v10    # "value":Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    :cond_4
    iget-object v11, v6, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->RESOLUTION_CAPABILITY:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->getResolutionOptions()[Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "array":[Ljava/lang/String;
    goto :goto_1

    .line 294
    .end local v1    # "array":[Ljava/lang/String;
    .end local v6    # "list":Lcom/sonyericsson/android/camera/util/capability/CapabilityList;
    .end local v8    # "supportedPictureSize":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    :cond_5
    const/4 v11, 0x0

    new-array v11, v11, [Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    goto/16 :goto_0
.end method

.method public static getResolutionFromFrameShape(Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;I)Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    .locals 10
    .param p0, "shape"    # Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;
    .param p1, "cameraId"    # I

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;->getAspectRatio_x100()I

    move-result v7

    .line 332
    .local v7, "targetAspectRatio":I
    invoke-static {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getSuperiorAutoOptions(I)[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object v6

    .line 334
    .local v6, "supportedList":[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    move-object v0, v6

    .local v0, "arr$":[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 335
    .local v2, "eachResolution":Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v5

    .line 336
    .local v5, "picRect":Landroid/graphics/Rect;
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    const/high16 v9, 0x42c80000    # 100.0f

    mul-float/2addr v8, v9

    float-to-int v1, v8

    .line 339
    .local v1, "eachAspect":I
    if-ne v7, v1, :cond_0

    .line 340
    return-object v2

    .line 334
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 344
    .end local v1    # "eachAspect":I
    .end local v2    # "eachResolution":Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    .end local v5    # "picRect":Landroid/graphics/Rect;
    :cond_1
    new-instance v8, Ljava/lang/UnsupportedOperationException;

    const-string v9, "Unsupported shape or resolution"

    invoke-direct {v8, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method private static getSuperiorAutoOptions(I)[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    .locals 13
    .param p0, "cameraId"    # I

    .prologue
    .line 298
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 301
    .local v7, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;>;"
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getCapability(I)Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

    move-result-object v6

    .line 302
    .local v6, "list":Lcom/sonyericsson/android/camera/util/capability/CapabilityList;
    iget-object v11, v6, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->PICTURE_SIZE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 305
    .local v8, "supportedPictureSize":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    iget-object v11, v6, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->RESOLUTION_CAPABILITY:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;

    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;->getSuperiorAutoResolutionOptions()[Ljava/lang/String;

    move-result-object v1

    .line 306
    .local v1, "array":[Ljava/lang/String;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getExpectedOptions([Ljava/lang/String;)[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object v2

    .line 309
    .local v2, "expectedOptions":[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    move-object v0, v2

    .local v0, "arr$":[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move v4, v3

    .end local v3    # "i$":I
    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v10, v0, v4

    .line 310
    .local v10, "value":Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v4    # "i$":I
    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    .line 311
    .local v9, "supportedValue":Landroid/graphics/Rect;
    iget-object v11, v10, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->mPictureRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v12

    if-ne v11, v12, :cond_0

    iget-object v11, v10, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->mPictureRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v12

    if-ne v11, v12, :cond_0

    .line 313
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    .end local v9    # "supportedValue":Landroid/graphics/Rect;
    :cond_1
    add-int/lit8 v3, v4, 0x1

    .local v3, "i$":I
    move v4, v3

    .end local v3    # "i$":I
    .restart local v4    # "i$":I
    goto :goto_0

    .line 319
    .end local v10    # "value":Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    :cond_2
    const/4 v11, 0x0

    new-array v11, v11, [Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    return-object v11
.end method

.method public static getValueFromPictureSize(II)Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    .locals 6
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 240
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object v0

    .local v0, "arr$":[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 241
    .local v4, "value":Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 242
    .local v3, "rect":Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-ne v5, p0, :cond_0

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-ne v5, p1, :cond_0

    .line 249
    .end local v3    # "rect":Landroid/graphics/Rect;
    .end local v4    # "value":Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    :goto_1
    return-object v4

    .line 240
    .restart local v3    # "rect":Landroid/graphics/Rect;
    .restart local v4    # "value":Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 249
    .end local v3    # "rect":Landroid/graphics/Rect;
    .end local v4    # "value":Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;

    .prologue
    .line 191
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;)V

    .line 192
    return-void
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->mIconId:I

    return v0
.end method

.method public getParameterKey()Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    .locals 1

    .prologue
    .line 199
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    return-object v0
.end method

.method public getParameterKeyTextId()I
    .locals 1

    .prologue
    .line 397
    const v0, 0x7f09003a

    return v0
.end method

.method public getParameterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 388
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPictureRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->mPictureRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getRecommendedValue([Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    .locals 1
    .param p1, "options"    # [Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    .param p2, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    .prologue
    .line 402
    const/4 v0, 0x0

    aget-object v0, p1, v0

    return-object v0
.end method

.method public getTextId()I
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->mTextId:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
