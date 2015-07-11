.class Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;
.super Ljava/lang/Object;
.source "ExifFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory$1;
    }
.end annotation


# static fields
.field private static APP1_HEADER:[B = null

.field private static EXIF_IFD_BE:[B = null

.field private static EXIF_IFD_LE:[B = null

.field private static FIRST_IFD_BE:[B = null

.field private static FIRST_IFD_LE:[B = null

.field private static GPS_IFD_BE:[B = null

.field private static GPS_IFD_LE:[B = null

.field private static final MAKER_NAME_LIMITATION:I = 0xe

.field private static final TAG:Ljava/lang/String; = "ExifFactory"

.field private static TIFF_HEADER_BE:[B

.field private static TIFF_HEADER_LE:[B

.field private static ZERO_IFD_BE:[B

.field private static ZERO_IFD_INT_BE:[B

.field private static ZERO_IFD_INT_LE:[B

.field private static ZERO_IFD_LE:[B

.field private static sByteOrder:Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;

.field private static sExifIFD:[B

.field private static sFirstIFD:[B

.field private static sGpsIFD:[B

.field private static sTiffHeader:[B

.field private static sZeroIFD:[B

.field private static sZeroIFDInt:[B


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0xce

    const/16 v4, 0xa6

    const/16 v3, 0x6a

    const/16 v2, 0x1e

    const/16 v1, 0x8

    .line 25
    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    .line 29
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->TIFF_HEADER_BE:[B

    .line 31
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->TIFF_HEADER_LE:[B

    .line 33
    new-array v0, v5, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->ZERO_IFD_BE:[B

    .line 59
    new-array v0, v5, [B

    fill-array-data v0, :array_4

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->ZERO_IFD_LE:[B

    .line 85
    new-array v0, v4, [B

    fill-array-data v0, :array_5

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->EXIF_IFD_BE:[B

    .line 105
    new-array v0, v4, [B

    fill-array-data v0, :array_6

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->EXIF_IFD_LE:[B

    .line 125
    new-array v0, v2, [B

    fill-array-data v0, :array_7

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->ZERO_IFD_INT_BE:[B

    .line 131
    new-array v0, v2, [B

    fill-array-data v0, :array_8

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->ZERO_IFD_INT_LE:[B

    .line 137
    const/16 v0, 0x110

    new-array v0, v0, [B

    fill-array-data v0, :array_9

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->GPS_IFD_BE:[B

    .line 169
    const/16 v0, 0x110

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->GPS_IFD_LE:[B

    .line 201
    new-array v0, v3, [B

    fill-array-data v0, :array_b

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->FIRST_IFD_BE:[B

    .line 215
    new-array v0, v3, [B

    fill-array-data v0, :array_c

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->FIRST_IFD_LE:[B

    .line 230
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;->BIG_ENDIAN:Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sByteOrder:Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;

    .line 233
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->TIFF_HEADER_BE:[B

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sTiffHeader:[B

    .line 234
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->ZERO_IFD_BE:[B

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sZeroIFD:[B

    .line 235
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->EXIF_IFD_BE:[B

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sExifIFD:[B

    .line 236
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->ZERO_IFD_INT_BE:[B

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sZeroIFDInt:[B

    .line 237
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->GPS_IFD_BE:[B

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sGpsIFD:[B

    .line 238
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->FIRST_IFD_BE:[B

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sFirstIFD:[B

    return-void

    .line 25
    :array_0
    .array-data 1
        -0x1t
        -0x1ft
        0x3t
        0x1bt
        0x45t
        0x78t
        0x69t
        0x66t
        0x0t
        0x0t
    .end array-data

    .line 29
    nop

    :array_1
    .array-data 1
        0x4dt
        0x4dt
        0x0t
        0x2at
        0x0t
        0x0t
        0x0t
        0x8t
    .end array-data

    .line 31
    :array_2
    .array-data 1
        0x49t
        0x49t
        0x2at
        0x0t
        0x8t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 33
    :array_3
    .array-data 1
        0x0t
        0xat
        0x1t
        0xft
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x7at
        0x1t
        0x10t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x1et
        0x0t
        0x0t
        0x0t
        -0x6ct
        0x1t
        0x12t
        0x0t
        0x3t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x6t
        0x0t
        0x0t
        0x1t
        0x1at
        0x0t
        0x5t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        -0x4et
        0x1t
        0x1bt
        0x0t
        0x5t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        -0x46t
        0x1t
        0x28t
        0x0t
        0x3t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x2t
        0x0t
        0x0t
        0x1t
        0x32t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x14t
        0x0t
        0x0t
        0x0t
        -0x3et
        0x2t
        0x13t
        0x0t
        0x3t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        -0x79t
        0x69t
        0x0t
        0x4t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        -0x2at
        -0x78t
        0x25t
        0x0t
        0x4t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        -0x66t
        0x0t
        0x0t
        0x2t
        -0x56t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x48t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x48t
        0x0t
        0x0t
        0x0t
        0x1t
        0x32t
        0x30t
        0x31t
        0x31t
        0x3at
        0x30t
        0x31t
        0x3at
        0x32t
        0x33t
        0x20t
        0x31t
        0x32t
        0x3at
        0x33t
        0x34t
        0x3at
        0x35t
        0x36t
        0x0t
    .end array-data

    .line 59
    nop

    :array_4
    .array-data 1
        0xat
        0x0t
        0xft
        0x1t
        0x2t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x7at
        0x0t
        0x0t
        0x0t
        0x10t
        0x1t
        0x2t
        0x0t
        0x1et
        0x0t
        0x0t
        0x0t
        -0x6ct
        0x0t
        0x0t
        0x0t
        0x12t
        0x1t
        0x3t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x6t
        0x0t
        0x0t
        0x0t
        0x1at
        0x1t
        0x5t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        -0x4et
        0x0t
        0x0t
        0x0t
        0x1bt
        0x1t
        0x5t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        -0x46t
        0x0t
        0x0t
        0x0t
        0x28t
        0x1t
        0x3t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x32t
        0x1t
        0x2t
        0x0t
        0x14t
        0x0t
        0x0t
        0x0t
        -0x3et
        0x0t
        0x0t
        0x0t
        0x13t
        0x2t
        0x3t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x69t
        -0x79t
        0x4t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        -0x2at
        0x0t
        0x0t
        0x0t
        0x25t
        -0x78t
        0x4t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        -0x66t
        0x1t
        0x0t
        0x0t
        -0x56t
        0x2t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x48t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x48t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x32t
        0x30t
        0x31t
        0x31t
        0x3at
        0x30t
        0x31t
        0x3at
        0x32t
        0x33t
        0x20t
        0x31t
        0x32t
        0x3at
        0x33t
        0x34t
        0x3at
        0x35t
        0x36t
        0x0t
    .end array-data

    .line 85
    nop

    :array_5
    .array-data 1
        0x0t
        0x9t
        -0x70t
        0x0t
        0x0t
        0x7t
        0x0t
        0x0t
        0x0t
        0x4t
        0x30t
        0x32t
        0x32t
        0x30t
        -0x70t
        0x3t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x14t
        0x0t
        0x0t
        0x1t
        0x54t
        -0x70t
        0x4t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x14t
        0x0t
        0x0t
        0x1t
        0x68t
        -0x6ft
        0x1t
        0x0t
        0x7t
        0x0t
        0x0t
        0x0t
        0x4t
        0x1t
        0x2t
        0x3t
        0x0t
        -0x60t
        0x0t
        0x0t
        0x7t
        0x0t
        0x0t
        0x0t
        0x4t
        0x30t
        0x31t
        0x30t
        0x30t
        -0x60t
        0x1t
        0x0t
        0x3t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        -0x60t
        0x2t
        0x0t
        0x4t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0xct
        -0x40t
        -0x60t
        0x3t
        0x0t
        0x4t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x60t
        0x5t
        0x0t
        0x4t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x7ct
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x32t
        0x30t
        0x31t
        0x31t
        0x3at
        0x30t
        0x31t
        0x3at
        0x32t
        0x33t
        0x20t
        0x31t
        0x32t
        0x3at
        0x33t
        0x34t
        0x3at
        0x35t
        0x36t
        0x0t
        0x32t
        0x30t
        0x31t
        0x31t
        0x3at
        0x30t
        0x31t
        0x3at
        0x32t
        0x33t
        0x20t
        0x31t
        0x32t
        0x3at
        0x33t
        0x34t
        0x3at
        0x35t
        0x36t
        0x0t
    .end array-data

    .line 105
    nop

    :array_6
    .array-data 1
        0x9t
        0x0t
        0x0t
        -0x70t
        0x7t
        0x0t
        0x4t
        0x0t
        0x0t
        0x0t
        0x30t
        0x32t
        0x32t
        0x30t
        0x3t
        -0x70t
        0x2t
        0x0t
        0x14t
        0x0t
        0x0t
        0x0t
        0x54t
        0x1t
        0x0t
        0x0t
        0x4t
        -0x70t
        0x2t
        0x0t
        0x14t
        0x0t
        0x0t
        0x0t
        0x68t
        0x1t
        0x0t
        0x0t
        0x1t
        -0x6ft
        0x7t
        0x0t
        0x4t
        0x0t
        0x0t
        0x0t
        0x1t
        0x2t
        0x3t
        0x0t
        0x0t
        -0x60t
        0x7t
        0x0t
        0x4t
        0x0t
        0x0t
        0x0t
        0x30t
        0x31t
        0x30t
        0x30t
        0x1t
        -0x60t
        0x3t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x2t
        -0x60t
        0x4t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        -0x40t
        0xct
        0x0t
        0x0t
        0x3t
        -0x60t
        0x4t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x5t
        -0x60t
        0x4t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x7ct
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x32t
        0x30t
        0x31t
        0x31t
        0x3at
        0x30t
        0x31t
        0x3at
        0x32t
        0x33t
        0x20t
        0x31t
        0x32t
        0x3at
        0x33t
        0x34t
        0x3at
        0x35t
        0x36t
        0x0t
        0x32t
        0x30t
        0x31t
        0x31t
        0x3at
        0x30t
        0x31t
        0x3at
        0x32t
        0x33t
        0x20t
        0x31t
        0x32t
        0x3at
        0x33t
        0x34t
        0x3at
        0x35t
        0x36t
        0x0t
    .end array-data

    .line 125
    nop

    :array_7
    .array-data 1
        0x0t
        0x2t
        0x0t
        0x1t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x4t
        0x52t
        0x39t
        0x38t
        0x0t
        0x0t
        0x2t
        0x0t
        0x7t
        0x0t
        0x0t
        0x0t
        0x4t
        0x30t
        0x31t
        0x30t
        0x30t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 131
    nop

    :array_8
    .array-data 1
        0x2t
        0x0t
        0x1t
        0x0t
        0x2t
        0x0t
        0x4t
        0x0t
        0x0t
        0x0t
        0x52t
        0x39t
        0x38t
        0x0t
        0x2t
        0x0t
        0x7t
        0x0t
        0x4t
        0x0t
        0x0t
        0x0t
        0x30t
        0x31t
        0x30t
        0x30t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 137
    nop

    :array_9
    .array-data 1
        0x0t
        0xct
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x4t
        0x2t
        0x2t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x2t
        0x4et
        0x0t
        0x0t
        0x0t
        0x0t
        0x2t
        0x0t
        0x5t
        0x0t
        0x0t
        0x0t
        0x3t
        0x0t
        0x0t
        0x2t
        0x30t
        0x0t
        0x3t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x2t
        0x45t
        0x0t
        0x0t
        0x0t
        0x0t
        0x4t
        0x0t
        0x5t
        0x0t
        0x0t
        0x0t
        0x3t
        0x0t
        0x0t
        0x2t
        0x48t
        0x0t
        0x5t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x6t
        0x0t
        0x5t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x2t
        0x60t
        0x0t
        0x7t
        0x0t
        0x5t
        0x0t
        0x0t
        0x0t
        0x3t
        0x0t
        0x0t
        0x2t
        0x68t
        0x0t
        0x9t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x2t
        0x41t
        0x0t
        0x0t
        0x0t
        0x0t
        0x12t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x7t
        0x0t
        0x0t
        0x2t
        -0x80t
        0x0t
        0x1bt
        0x0t
        0x7t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x2t
        -0x76t
        0x0t
        0x1dt
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0xbt
        0x0t
        0x0t
        0x2t
        -0x62t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x57t
        0x47t
        0x53t
        0x2dt
        0x38t
        0x34t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x32t
        0x30t
        0x31t
        0x31t
        0x3at
        0x30t
        0x31t
        0x3at
        0x32t
        0x33t
        0x0t
        0x0t
    .end array-data

    .line 169
    :array_a
    .array-data 1
        0xct
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x4t
        0x0t
        0x0t
        0x0t
        0x2t
        0x2t
        0x0t
        0x0t
        0x1t
        0x0t
        0x2t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x4et
        0x0t
        0x0t
        0x0t
        0x2t
        0x0t
        0x5t
        0x0t
        0x3t
        0x0t
        0x0t
        0x0t
        0x30t
        0x2t
        0x0t
        0x0t
        0x3t
        0x0t
        0x2t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x45t
        0x0t
        0x0t
        0x0t
        0x4t
        0x0t
        0x5t
        0x0t
        0x3t
        0x0t
        0x0t
        0x0t
        0x48t
        0x2t
        0x0t
        0x0t
        0x5t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x6t
        0x0t
        0x5t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x60t
        0x2t
        0x0t
        0x0t
        0x7t
        0x0t
        0x5t
        0x0t
        0x3t
        0x0t
        0x0t
        0x0t
        0x68t
        0x2t
        0x0t
        0x0t
        0x9t
        0x0t
        0x2t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x41t
        0x0t
        0x0t
        0x0t
        0x12t
        0x0t
        0x2t
        0x0t
        0x7t
        0x0t
        0x0t
        0x0t
        -0x80t
        0x2t
        0x0t
        0x0t
        0x1bt
        0x0t
        0x7t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x76t
        0x2t
        0x0t
        0x0t
        0x1dt
        0x0t
        0x2t
        0x0t
        0xbt
        0x0t
        0x0t
        0x0t
        -0x62t
        0x2t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x57t
        0x47t
        0x53t
        0x2dt
        0x38t
        0x34t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x32t
        0x30t
        0x31t
        0x31t
        0x3at
        0x30t
        0x31t
        0x3at
        0x32t
        0x33t
        0x0t
        0x0t
    .end array-data

    .line 201
    :array_b
    .array-data 1
        0x0t
        0x7t
        0x1t
        0x3t
        0x0t
        0x3t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x6t
        0x0t
        0x0t
        0x1t
        0x12t
        0x0t
        0x3t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x6t
        0x0t
        0x0t
        0x1t
        0x1at
        0x0t
        0x5t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x3t
        0x4t
        0x1t
        0x1bt
        0x0t
        0x5t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x3t
        0xct
        0x1t
        0x28t
        0x0t
        0x3t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x2t
        0x0t
        0x0t
        0x2t
        0x1t
        0x0t
        0x4t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x3t
        0x14t
        0x2t
        0x2t
        0x0t
        0x4t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x48t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x48t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    .line 215
    nop

    :array_c
    .array-data 1
        0x7t
        0x0t
        0x3t
        0x1t
        0x3t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x6t
        0x0t
        0x0t
        0x0t
        0x12t
        0x1t
        0x3t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x6t
        0x0t
        0x0t
        0x0t
        0x1at
        0x1t
        0x5t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x4t
        0x3t
        0x0t
        0x0t
        0x1bt
        0x1t
        0x5t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0xct
        0x3t
        0x0t
        0x0t
        0x28t
        0x1t
        0x3t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x1t
        0x2t
        0x4t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x14t
        0x3t
        0x0t
        0x0t
        0x2t
        0x2t
        0x4t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x48t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x48t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    return-void
.end method

.method private static checkArguments([BLcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;)V
    .locals 6
    .param p0, "buffer"    # [B
    .param p1, "option"    # Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;

    .prologue
    .line 307
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mModel:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mDateTime:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mThumbnailData:[B

    if-nez v0, :cond_1

    .line 309
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "can not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_1
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mGPSOption:Landroid/location/Location;

    if-eqz v0, :cond_2

    .line 313
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mGPSOption:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->hasAltitude()Z

    move-result v0

    if-nez v0, :cond_2

    .line 315
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mGPSOption:Landroid/location/Location;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setAltitude(D)V

    .line 320
    :cond_2
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mThumbnailData:[B

    array-length v0, v0

    int-to-long v0, v0

    iget-wide v2, p1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mThumbnailDataLength:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    .line 321
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "thumbnail data length too big"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 323
    :cond_3
    array-length v0, p0

    int-to-long v0, v0

    invoke-static {p1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->getLength(Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;)I

    move-result v2

    int-to-long v2, v2

    iget-wide v4, p1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mThumbnailDataLength:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    .line 324
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "buffer too short"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_4
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mModel:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mDateTime:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "YYYY:MM:DD hh:mm:ss"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 328
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "model or datetime too short"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 330
    :cond_6
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mModel:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_7

    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mDateTime:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "YYYY:MM:DD hh:mm:ss"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_8

    .line 332
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "model or datetime too long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 334
    :cond_8
    return-void
.end method

.method private static fillNullValue([BII)V
    .locals 3
    .param p0, "buffer"    # [B
    .param p1, "bufferPos"    # I
    .param p2, "count"    # I

    .prologue
    .line 579
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 580
    add-int v1, p1, v0

    const/4 v2, 0x0

    aput-byte v2, p0, v1

    .line 579
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 582
    :cond_0
    return-void
.end method

.method public static generate([BLcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;)I
    .locals 6
    .param p0, "buffer"    # [B
    .param p1, "option"    # Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;

    .prologue
    .line 256
    iget-object v1, p1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mByteOrder:Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;

    invoke-static {v1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->setByteOrder(Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;)V

    .line 258
    invoke-static {p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->checkArguments([BLcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;)V

    .line 260
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeTemplate([B)I

    move-result v0

    .line 262
    .local v0, "last":I
    iget-object v1, p1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mMake:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->updateMake([BLjava/lang/String;)V

    .line 263
    iget-object v1, p1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mModel:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->updateModel([BLjava/lang/String;)V

    .line 264
    iget v1, p1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mOrientation:I

    invoke-static {p0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->updateOrientation([BI)V

    .line 265
    iget-object v1, p1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mDateTime:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->updateDateTime([BLjava/lang/String;)V

    .line 266
    iget-wide v2, p1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mPixelXDimension:J

    invoke-static {p0, v2, v3}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->updatePixelXDimension([BJ)V

    .line 267
    iget-wide v2, p1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mPixelYDimension:J

    invoke-static {p0, v2, v3}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->updatePixelYDimension([BJ)V

    .line 268
    iget-object v1, p1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mGPSOption:Landroid/location/Location;

    invoke-static {p0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->updateGpsFields([BLandroid/location/Location;)V

    .line 269
    iget-wide v2, p1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mThumbnailDataLength:J

    invoke-static {p0, v2, v3}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->updateJpegInterchangeFormatLength([BJ)V

    .line 270
    iget-object v1, p1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mThumbnailData:[B

    const/4 v2, 0x0

    iget-wide v4, p1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mThumbnailDataLength:J

    long-to-int v3, v4

    invoke-static {v1, v2, p0, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 272
    int-to-long v2, v0

    iget-wide v4, p1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mThumbnailDataLength:J

    add-long/2addr v2, v4

    long-to-int v0, v2

    .line 273
    add-int/lit8 v1, v0, -0x2

    invoke-static {p0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->updateExifSize([BI)V

    .line 275
    return v0
.end method

.method public static getLength(Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;)I
    .locals 3
    .param p0, "option"    # Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;

    .prologue
    .line 241
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mByteOrder:Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;

    invoke-static {v1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->setByteOrder(Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;)V

    .line 242
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v1, v1

    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sTiffHeader:[B

    array-length v2, v2

    add-int/2addr v1, v2

    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sZeroIFD:[B

    array-length v2, v2

    add-int/2addr v1, v2

    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sExifIFD:[B

    array-length v2, v2

    add-int/2addr v1, v2

    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sZeroIFDInt:[B

    array-length v2, v2

    add-int/2addr v1, v2

    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sGpsIFD:[B

    array-length v2, v2

    add-int/2addr v1, v2

    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sFirstIFD:[B

    array-length v2, v2

    add-int v0, v1, v2

    .line 245
    .local v0, "app1_length":I
    return v0
.end method

.method private static removeGpsInfoFromHeader([B)V
    .locals 4
    .param p0, "buffer"    # [B

    .prologue
    .line 487
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x8

    const/16 v1, 0x9

    invoke-static {p0, v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeShortValue([BII)V

    .line 488
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x76

    const/16 v1, 0xb

    invoke-static {p0, v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->fillNullValue([BII)V

    .line 489
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x76

    const-wide/16 v2, 0x2aa

    invoke-static {p0, v0, v2, v3}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeLongValue([BIJ)V

    .line 490
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit16 v0, v0, 0x19a

    const/16 v1, 0x110

    invoke-static {p0, v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->fillNullValue([BII)V

    .line 491
    return-void
.end method

.method private static setByteOrder(Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;)V
    .locals 2
    .param p0, "byteOrder"    # Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;

    .prologue
    .line 280
    sput-object p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sByteOrder:Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;

    .line 282
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory$1;->$SwitchMap$com$sonyericsson$cameracommon$mediasaving$yuv2jpeg$ExifInfo$ByteOrder:[I

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sByteOrder:Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 303
    :goto_0
    return-void

    .line 284
    :pswitch_0
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->TIFF_HEADER_BE:[B

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sTiffHeader:[B

    .line 285
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->ZERO_IFD_BE:[B

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sZeroIFD:[B

    .line 286
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->EXIF_IFD_BE:[B

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sExifIFD:[B

    .line 287
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->ZERO_IFD_INT_BE:[B

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sZeroIFDInt:[B

    .line 288
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->GPS_IFD_BE:[B

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sGpsIFD:[B

    .line 289
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->FIRST_IFD_BE:[B

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sFirstIFD:[B

    goto :goto_0

    .line 292
    :pswitch_1
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->TIFF_HEADER_LE:[B

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sTiffHeader:[B

    .line 293
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->ZERO_IFD_LE:[B

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sZeroIFD:[B

    .line 294
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->EXIF_IFD_LE:[B

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sExifIFD:[B

    .line 295
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->ZERO_IFD_INT_LE:[B

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sZeroIFDInt:[B

    .line 296
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->GPS_IFD_LE:[B

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sGpsIFD:[B

    .line 297
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->FIRST_IFD_LE:[B

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sFirstIFD:[B

    goto :goto_0

    .line 282
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static updateDateTime([BLjava/lang/String;)V
    .locals 1
    .param p0, "buffer"    # [B
    .param p1, "dateTime"    # Ljava/lang/String;

    .prologue
    .line 359
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit16 v0, v0, 0xc2

    invoke-static {p0, v0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeASCIIValue([BILjava/lang/String;)I

    .line 360
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit16 v0, v0, 0x154

    invoke-static {p0, v0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeASCIIValue([BILjava/lang/String;)I

    .line 361
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit16 v0, v0, 0x168

    invoke-static {p0, v0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeASCIIValue([BILjava/lang/String;)I

    .line 362
    return-void
.end method

.method private static updateExifSize([BI)V
    .locals 2
    .param p0, "buffer"    # [B
    .param p1, "size"    # I

    .prologue
    .line 499
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit8 v0, v0, -0x8

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;->BIG_ENDIAN:Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;

    invoke-static {p0, v0, p1, v1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeShortValue([BIILcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;)V

    .line 500
    return-void
.end method

.method private static updateGpsFields([BLandroid/location/Location;)V
    .locals 1
    .param p0, "buffer"    # [B
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 373
    if-eqz p1, :cond_0

    .line 375
    invoke-static {p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeGpsInfoToHeader([BLandroid/location/Location;)Z

    move-result v0

    .line 376
    .local v0, "ret":Z
    if-eqz v0, :cond_0

    .line 384
    .end local v0    # "ret":Z
    :goto_0
    return-void

    .line 382
    :cond_0
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->removeGpsInfoFromHeader([B)V

    goto :goto_0
.end method

.method private static updateJpegInterchangeFormatLength([BJ)V
    .locals 1
    .param p0, "buffer"    # [B
    .param p1, "thumbnailDataLength"    # J

    .prologue
    .line 495
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit16 v0, v0, 0x2fc

    invoke-static {p0, v0, p1, p2}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeLongValue([BIJ)V

    .line 496
    return-void
.end method

.method private static updateMake([BLjava/lang/String;)V
    .locals 6
    .param p0, "buffer"    # [B
    .param p1, "make"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0xe

    .line 338
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_0

    .line 339
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 344
    .local v1, "limitedString":Ljava/lang/String;
    :goto_0
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    add-int/lit16 v2, v2, 0x86

    invoke-static {p0, v2, v1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeASCIIValue([BILjava/lang/String;)I

    move-result v0

    .line 345
    .local v0, "length":I
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    add-int/lit8 v2, v2, 0xe

    add-int/lit8 v3, v0, 0x1

    int-to-long v4, v3

    invoke-static {p0, v2, v4, v5}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeLongValue([BIJ)V

    .line 346
    return-void

    .line 341
    .end local v0    # "length":I
    .end local v1    # "limitedString":Ljava/lang/String;
    :cond_0
    move-object v1, p1

    .restart local v1    # "limitedString":Ljava/lang/String;
    goto :goto_0
.end method

.method private static updateModel([BLjava/lang/String;)V
    .locals 4
    .param p0, "buffer"    # [B
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 349
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v1, v1

    add-int/lit16 v1, v1, 0x94

    invoke-static {p0, v1, p1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeASCIIValue([BILjava/lang/String;)I

    move-result v0

    .line 350
    .local v0, "length":I
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1a

    add-int/lit8 v2, v0, 0x1

    int-to-long v2, v2

    invoke-static {p0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeLongValue([BIJ)V

    .line 351
    return-void
.end method

.method private static updateOrientation([BI)V
    .locals 1
    .param p0, "buffer"    # [B
    .param p1, "orientation"    # I

    .prologue
    .line 354
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x2a

    invoke-static {p0, v0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeShortValue([BII)V

    .line 355
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit16 v0, v0, 0x2c0

    invoke-static {p0, v0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeShortValue([BII)V

    .line 356
    return-void
.end method

.method private static updatePixelXDimension([BJ)V
    .locals 1
    .param p0, "buffer"    # [B
    .param p1, "pixelXDimension"    # J

    .prologue
    .line 365
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit16 v0, v0, 0x134

    add-int/lit8 v0, v0, -0xc

    invoke-static {p0, v0, p1, p2}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeLongValue([BIJ)V

    .line 366
    return-void
.end method

.method private static updatePixelYDimension([BJ)V
    .locals 1
    .param p0, "buffer"    # [B
    .param p1, "pixelYDimension"    # J

    .prologue
    .line 369
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit16 v0, v0, 0x140

    add-int/lit8 v0, v0, -0xc

    invoke-static {p0, v0, p1, p2}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeLongValue([BIJ)V

    .line 370
    return-void
.end method

.method private static writeASCIIValue([BILjava/lang/String;)I
    .locals 3
    .param p0, "buffer"    # [B
    .param p1, "bufferPos"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 522
    const-string v1, "US-ASCII"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 523
    .local v0, "dst":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, p0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 524
    array-length v1, v0

    return v1
.end method

.method private static writeByteValue([BII)V
    .locals 2
    .param p0, "buffer"    # [B
    .param p1, "bufferPos"    # I
    .param p2, "value"    # I

    .prologue
    .line 528
    add-int/lit8 v0, p1, 0x0

    int-to-byte v1, p2

    aput-byte v1, p0, v0

    .line 529
    return-void
.end method

.method private static writeGpsInfoToHeader([BLandroid/location/Location;)Z
    .locals 21
    .param p0, "buffer"    # [B
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 388
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 389
    .local v10, "calendar":Ljava/util/Calendar;
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v10, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 391
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v14

    .line 392
    .local v14, "latitude":D
    const-wide/16 v2, 0x0

    cmpg-double v2, v14, v2

    if-gez v2, :cond_0

    .line 393
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    add-int/lit16 v2, v2, 0x1b0

    const-string v3, "S"

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeASCIIValue([BILjava/lang/String;)I

    .line 397
    neg-double v14, v14

    .line 400
    :cond_0
    const/16 v16, 0x0

    .line 402
    .local v16, "latitudeStr":Ljava/lang/String;
    const/4 v2, 0x2

    :try_start_0
    invoke-static {v14, v15, v2}, Landroid/location/Location;->convert(DI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    .line 407
    const-string v2, ":"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 410
    .local v13, "latitudeParts":[Ljava/lang/String;
    :try_start_1
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    add-int/lit16 v3, v2, 0x230

    const/4 v2, 0x0

    aget-object v2, v13, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeRationalValue([BIJJ)V

    .line 412
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    add-int/lit16 v3, v2, 0x238

    const/4 v2, 0x1

    aget-object v2, v13, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeRationalValue([BIJJ)V

    .line 414
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    add-int/lit16 v3, v2, 0x240

    const/4 v2, 0x2

    aget-object v2, v13, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v4

    float-to-long v4, v2

    const-wide/16 v6, 0x3e8

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeRationalValue([BIJJ)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 422
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v18

    .line 423
    .local v18, "longitude":D
    const-wide/16 v2, 0x0

    cmpg-double v2, v18, v2

    if-gez v2, :cond_1

    .line 424
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    add-int/lit16 v2, v2, 0x1c8

    const-string v3, "W"

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeASCIIValue([BILjava/lang/String;)I

    .line 428
    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v18, v0

    .line 431
    :cond_1
    const/16 v20, 0x0

    .line 433
    .local v20, "longitudeStr":Ljava/lang/String;
    const/4 v2, 0x2

    :try_start_2
    move-wide/from16 v0, v18

    invoke-static {v0, v1, v2}, Landroid/location/Location;->convert(DI)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v20

    .line 439
    const-string v2, ":"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 442
    .local v17, "longitudeParts":[Ljava/lang/String;
    :try_start_3
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    add-int/lit16 v3, v2, 0x248

    const/4 v2, 0x0

    aget-object v2, v17, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeRationalValue([BIJJ)V

    .line 444
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    add-int/lit16 v3, v2, 0x250

    const/4 v2, 0x1

    aget-object v2, v17, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeRationalValue([BIJJ)V

    .line 446
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    add-int/lit16 v3, v2, 0x258

    const/4 v2, 0x2

    aget-object v2, v17, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v4

    float-to-long v4, v2

    const-wide/16 v6, 0x3e8

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeRationalValue([BIJJ)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    .line 454
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v8

    .line 455
    .local v8, "altitude":D
    const-wide/16 v2, 0x0

    cmpg-double v2, v8, v2

    if-gez v2, :cond_2

    .line 456
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    add-int/lit16 v2, v2, 0x1e0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeByteValue([BII)V

    .line 458
    :cond_2
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    add-int/lit16 v3, v2, 0x260

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, v8

    double-to-long v4, v4

    const-wide/16 v6, 0x3e8

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeRationalValue([BIJJ)V

    .line 461
    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 463
    const/4 v12, 0x0

    .line 465
    .local v12, "gpsDateStamp":Ljava/lang/String;
    :try_start_4
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    add-int/lit16 v3, v2, 0x268

    const/16 v2, 0xb

    invoke-virtual {v10, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-long v4, v2

    const-wide/16 v6, 0x1

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeRationalValue([BIJJ)V

    .line 467
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    add-int/lit16 v3, v2, 0x270

    const/16 v2, 0xc

    invoke-virtual {v10, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    int-to-long v4, v2

    const-wide/16 v6, 0x1

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeRationalValue([BIJJ)V

    .line 469
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    add-int/lit16 v3, v2, 0x278

    const/16 v2, 0xd

    invoke-virtual {v10, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-long v4, v2

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeRationalValue([BIJJ)V

    .line 473
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%04d:%02d:%02d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v10, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x2

    invoke-virtual {v10, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const/4 v6, 0x5

    invoke-virtual {v10, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v12

    .line 480
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    add-int/lit16 v2, v2, 0x29e

    move-object/from16 v0, p0

    invoke-static {v0, v2, v12}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeASCIIValue([BILjava/lang/String;)I

    .line 482
    const/4 v2, 0x1

    .end local v8    # "altitude":D
    .end local v12    # "gpsDateStamp":Ljava/lang/String;
    .end local v13    # "latitudeParts":[Ljava/lang/String;
    .end local v17    # "longitudeParts":[Ljava/lang/String;
    .end local v18    # "longitude":D
    .end local v20    # "longitudeStr":Ljava/lang/String;
    :goto_0
    return v2

    .line 403
    :catch_0
    move-exception v11

    .line 405
    .local v11, "e":Ljava/lang/IllegalArgumentException;
    const/4 v2, 0x0

    goto :goto_0

    .line 417
    .end local v11    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v13    # "latitudeParts":[Ljava/lang/String;
    :catch_1
    move-exception v11

    .line 419
    .local v11, "e":Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    goto :goto_0

    .line 434
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    .restart local v18    # "longitude":D
    .restart local v20    # "longitudeStr":Ljava/lang/String;
    :catch_2
    move-exception v11

    .line 436
    .local v11, "e":Ljava/lang/IllegalArgumentException;
    const/4 v2, 0x0

    goto :goto_0

    .line 449
    .end local v11    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v17    # "longitudeParts":[Ljava/lang/String;
    :catch_3
    move-exception v11

    .line 451
    .local v11, "e":Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    goto :goto_0

    .line 475
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    .restart local v8    # "altitude":D
    .restart local v12    # "gpsDateStamp":Ljava/lang/String;
    :catch_4
    move-exception v11

    .line 477
    .local v11, "e":Ljava/lang/IllegalArgumentException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static writeLongValue([BIJ)V
    .locals 8
    .param p0, "buffer"    # [B
    .param p1, "bufferPos"    # I
    .param p2, "value"    # J

    .prologue
    const-wide/32 v2, 0x1000000

    const-wide/32 v6, 0x10000

    const-wide/16 v4, 0x100

    .line 553
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory$1;->$SwitchMap$com$sonyericsson$cameracommon$mediasaving$yuv2jpeg$ExifInfo$ByteOrder:[I

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sByteOrder:Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 570
    :goto_0
    return-void

    .line 555
    :pswitch_0
    add-int/lit8 v0, p1, 0x0

    div-long v2, p2, v2

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 556
    add-int/lit8 v0, p1, 0x1

    div-long v2, p2, v6

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 557
    add-int/lit8 v0, p1, 0x2

    div-long v2, p2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 558
    add-int/lit8 v0, p1, 0x3

    rem-long v2, p2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    goto :goto_0

    .line 561
    :pswitch_1
    add-int/lit8 v0, p1, 0x3

    div-long v2, p2, v2

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 562
    add-int/lit8 v0, p1, 0x2

    div-long v2, p2, v6

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 563
    add-int/lit8 v0, p1, 0x1

    div-long v2, p2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 564
    add-int/lit8 v0, p1, 0x0

    rem-long v2, p2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    goto :goto_0

    .line 553
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static writeRationalValue([BIJJ)V
    .locals 2
    .param p0, "buffer"    # [B
    .param p1, "bufferPos"    # I
    .param p2, "denominator"    # J
    .param p4, "numerator"    # J

    .prologue
    .line 574
    add-int/lit8 v0, p1, 0x0

    invoke-static {p0, v0, p2, p3}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeLongValue([BIJ)V

    .line 575
    add-int/lit8 v0, p1, 0x4

    invoke-static {p0, v0, p4, p5}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeLongValue([BIJ)V

    .line 576
    return-void
.end method

.method private static writeShortValue([BII)V
    .locals 1
    .param p0, "buffer"    # [B
    .param p1, "bufferPos"    # I
    .param p2, "value"    # I

    .prologue
    .line 532
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sByteOrder:Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;

    invoke-static {p0, p1, p2, v0}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->writeShortValue([BIILcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;)V

    .line 533
    return-void
.end method

.method private static writeShortValue([BIILcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;)V
    .locals 2
    .param p0, "buffer"    # [B
    .param p1, "bufferPos"    # I
    .param p2, "value"    # I
    .param p3, "byteOrder"    # Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;

    .prologue
    .line 537
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory$1;->$SwitchMap$com$sonyericsson$cameracommon$mediasaving$yuv2jpeg$ExifInfo$ByteOrder:[I

    invoke-virtual {p3}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 550
    :goto_0
    return-void

    .line 539
    :pswitch_0
    add-int/lit8 v0, p1, 0x0

    div-int/lit16 v1, p2, 0x100

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 540
    add-int/lit8 v0, p1, 0x1

    rem-int/lit16 v1, p2, 0x100

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    goto :goto_0

    .line 543
    :pswitch_1
    add-int/lit8 v0, p1, 0x1

    div-int/lit16 v1, p2, 0x100

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 544
    add-int/lit8 v0, p1, 0x0

    rem-int/lit16 v1, p2, 0x100

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    goto :goto_0

    .line 537
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static writeTemplate([B)I
    .locals 4
    .param p0, "buffer"    # [B

    .prologue
    const/4 v3, 0x0

    .line 503
    const/4 v0, 0x0

    .line 504
    .local v0, "last":I
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    invoke-static {v1, v3, p0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 505
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->APP1_HEADER:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 506
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sTiffHeader:[B

    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sTiffHeader:[B

    array-length v2, v2

    invoke-static {v1, v3, p0, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 507
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sTiffHeader:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 508
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sZeroIFD:[B

    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sZeroIFD:[B

    array-length v2, v2

    invoke-static {v1, v3, p0, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 509
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sZeroIFD:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 510
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sExifIFD:[B

    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sExifIFD:[B

    array-length v2, v2

    invoke-static {v1, v3, p0, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 511
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sExifIFD:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 512
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sZeroIFDInt:[B

    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sZeroIFDInt:[B

    array-length v2, v2

    invoke-static {v1, v3, p0, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 513
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sZeroIFDInt:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 514
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sGpsIFD:[B

    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sGpsIFD:[B

    array-length v2, v2

    invoke-static {v1, v3, p0, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 515
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sGpsIFD:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 516
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sFirstIFD:[B

    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sFirstIFD:[B

    array-length v2, v2

    invoke-static {v1, v3, p0, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 517
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->sFirstIFD:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 518
    return v0
.end method
