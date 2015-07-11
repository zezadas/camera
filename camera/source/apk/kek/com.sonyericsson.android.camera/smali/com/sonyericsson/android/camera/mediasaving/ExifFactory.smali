.class public Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;
.super Ljava/lang/Object;
.source "ExifFactory.java"


# static fields
.field private static APP1_HEADER:[B = null

.field private static APP1_LENGTH:I = 0x0

.field private static EXIF_IFD:[B = null

.field private static FIRST_IFD:[B = null

.field private static GPS_IFD:[B = null

.field private static final MAKER_NAME_LIMITATION:I = 0xe

.field private static final TAG:Ljava/lang/String; = "ExifFactory"

.field private static TIFF_HEADER:[B

.field private static ZERO_IFD:[B

.field private static ZERO_IFD_INT:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->APP1_HEADER:[B

    .line 34
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->TIFF_HEADER:[B

    .line 35
    const/16 v0, 0xce

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->ZERO_IFD:[B

    .line 60
    const/16 v0, 0xa6

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->EXIF_IFD:[B

    .line 78
    const/16 v0, 0x1e

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    sput-object v0, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->ZERO_IFD_INT:[B

    .line 83
    const/16 v0, 0x110

    new-array v0, v0, [B

    fill-array-data v0, :array_5

    sput-object v0, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->GPS_IFD:[B

    .line 114
    const/16 v0, 0x6a

    new-array v0, v0, [B

    fill-array-data v0, :array_6

    sput-object v0, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->FIRST_IFD:[B

    .line 127
    sget-object v0, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    sget-object v1, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->TIFF_HEADER:[B

    array-length v1, v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->ZERO_IFD:[B

    array-length v1, v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->EXIF_IFD:[B

    array-length v1, v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->ZERO_IFD_INT:[B

    array-length v1, v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->GPS_IFD:[B

    array-length v1, v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->FIRST_IFD:[B

    array-length v1, v1

    add-int/2addr v0, v1

    sput v0, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->APP1_LENGTH:I

    return-void

    .line 31
    nop

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

    .line 34
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

    .line 35
    :array_2
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

    .line 60
    nop

    :array_3
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

    .line 78
    nop

    :array_4
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

    .line 83
    nop

    :array_5
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

    .line 114
    :array_6
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
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkArguments([BLcom/sonyericsson/android/camera/mediasaving/ExifOption;)V
    .locals 6
    .param p0, "buffer"    # [B
    .param p1, "option"    # Lcom/sonyericsson/android/camera/mediasaving/ExifOption;

    .prologue
    .line 168
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/sonyericsson/android/camera/mediasaving/ExifOption;->mModel:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/sonyericsson/android/camera/mediasaving/ExifOption;->mDateTime:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/sonyericsson/android/camera/mediasaving/ExifOption;->mThumbnailData:[B

    if-nez v0, :cond_1

    .line 173
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "can not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_1
    iget-object v0, p1, Lcom/sonyericsson/android/camera/mediasaving/ExifOption;->mGPSOption:Landroid/location/Location;

    if-eqz v0, :cond_2

    .line 177
    iget-object v0, p1, Lcom/sonyericsson/android/camera/mediasaving/ExifOption;->mGPSOption:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->hasAltitude()Z

    move-result v0

    if-nez v0, :cond_2

    .line 179
    iget-object v0, p1, Lcom/sonyericsson/android/camera/mediasaving/ExifOption;->mGPSOption:Landroid/location/Location;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setAltitude(D)V

    .line 184
    :cond_2
    iget-object v0, p1, Lcom/sonyericsson/android/camera/mediasaving/ExifOption;->mThumbnailData:[B

    array-length v0, v0

    int-to-long v0, v0

    iget-wide v2, p1, Lcom/sonyericsson/android/camera/mediasaving/ExifOption;->mThumbnailDataLength:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    .line 185
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "thumbnail data length too big"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_3
    array-length v0, p0

    int-to-long v0, v0

    sget v2, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->APP1_LENGTH:I

    int-to-long v2, v2

    iget-wide v4, p1, Lcom/sonyericsson/android/camera/mediasaving/ExifOption;->mThumbnailDataLength:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    .line 188
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "buffer too short"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_4
    iget-object v0, p1, Lcom/sonyericsson/android/camera/mediasaving/ExifOption;->mModel:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/sonyericsson/android/camera/mediasaving/ExifOption;->mDateTime:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "YYYY:MM:DD hh:mm:ss"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 192
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "model or datetime too short"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_6
    iget-object v0, p1, Lcom/sonyericsson/android/camera/mediasaving/ExifOption;->mModel:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_7

    iget-object v0, p1, Lcom/sonyericsson/android/camera/mediasaving/ExifOption;->mDateTime:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "YYYY:MM:DD hh:mm:ss"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_8

    .line 196
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "model or datetime too long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_8
    return-void
.end method

.method private static fillNullValue([BII)V
    .locals 3
    .param p0, "buffer"    # [B
    .param p1, "bufferPos"    # I
    .param p2, "count"    # I

    .prologue
    .line 437
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 438
    add-int v1, p1, v0

    const/4 v2, 0x0

    aput-byte v2, p0, v1

    .line 437
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 440
    :cond_0
    return-void
.end method

.method public static generate([BLcom/sonyericsson/android/camera/mediasaving/ExifOption;)I
    .locals 6
    .param p0, "buffer"    # [B
    .param p1, "option"    # Lcom/sonyericsson/android/camera/mediasaving/ExifOption;

    .prologue
    .line 147
    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->checkArguments([BLcom/sonyericsson/android/camera/mediasaving/ExifOption;)V

    .line 149
    invoke-static {p0}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->writeTemplate([B)I

    move-result v0

    .line 151
    .local v0, "last":I
    iget-object v1, p1, Lcom/sonyericsson/android/camera/mediasaving/ExifOption;->mMake:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->updateMake([BLjava/lang/String;)V

    .line 152
    iget-object v1, p1, Lcom/sonyericsson/android/camera/mediasaving/ExifOption;->mModel:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->updateModel([BLjava/lang/String;)V

    .line 153
    iget v1, p1, Lcom/sonyericsson/android/camera/mediasaving/ExifOption;->mOrientation:I

    invoke-static {p0, v1}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->updateOrientation([BI)V

    .line 154
    iget-object v1, p1, Lcom/sonyericsson/android/camera/mediasaving/ExifOption;->mDateTime:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->updateDateTime([BLjava/lang/String;)V

    .line 155
    iget-wide v2, p1, Lcom/sonyericsson/android/camera/mediasaving/ExifOption;->mPixelXDimension:J

    invoke-static {p0, v2, v3}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->updatePixelXDimension([BJ)V

    .line 156
    iget-wide v2, p1, Lcom/sonyericsson/android/camera/mediasaving/ExifOption;->mPixelYDimension:J

    invoke-static {p0, v2, v3}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->updatePixelYDimension([BJ)V

    .line 157
    iget-object v1, p1, Lcom/sonyericsson/android/camera/mediasaving/ExifOption;->mGPSOption:Landroid/location/Location;

    invoke-static {p0, v1}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->updateGpsFields([BLandroid/location/Location;)V

    .line 158
    iget-wide v2, p1, Lcom/sonyericsson/android/camera/mediasaving/ExifOption;->mThumbnailDataLength:J

    invoke-static {p0, v2, v3}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->updateJpegInterchangeFormatLength([BJ)V

    .line 159
    iget-object v1, p1, Lcom/sonyericsson/android/camera/mediasaving/ExifOption;->mThumbnailData:[B

    const/4 v2, 0x0

    iget-wide v4, p1, Lcom/sonyericsson/android/camera/mediasaving/ExifOption;->mThumbnailDataLength:J

    long-to-int v3, v4

    invoke-static {v1, v2, p0, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    int-to-long v2, v0

    iget-wide v4, p1, Lcom/sonyericsson/android/camera/mediasaving/ExifOption;->mThumbnailDataLength:J

    add-long/2addr v2, v4

    long-to-int v0, v2

    .line 161
    add-int/lit8 v1, v0, -0x2

    invoke-static {p0, v1}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->updateExifSize([BI)V

    .line 163
    return v0
.end method

.method public static getLength()I
    .locals 1

    .prologue
    .line 136
    sget v0, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->APP1_LENGTH:I

    return v0
.end method

.method private static removeGpsInfoFromHeader([B)V
    .locals 4
    .param p0, "buffer"    # [B

    .prologue
    .line 374
    sget-object v0, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x8

    const/16 v1, 0x9

    invoke-static {p0, v0, v1}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->writeShortValue([BII)V

    .line 375
    sget-object v0, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x76

    const/16 v1, 0xb

    invoke-static {p0, v0, v1}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->fillNullValue([BII)V

    .line 376
    sget-object v0, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x76

    const-wide/16 v2, 0x2aa

    invoke-static {p0, v0, v2, v3}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->writeLongValue([BIJ)V

    .line 377
    sget-object v0, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit16 v0, v0, 0x19a

    const/16 v1, 0x110

    invoke-static {p0, v0, v1}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->fillNullValue([BII)V

    .line 378
    return-void
.end method

.method private static updateDateTime([BLjava/lang/String;)V
    .locals 1
    .param p0, "buffer"    # [B
    .param p1, "dateTime"    # Ljava/lang/String;

    .prologue
    .line 223
    sget-object v0, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit16 v0, v0, 0xc2

    invoke-static {p0, v0, p1}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->writeASCIIValue([BILjava/lang/String;)I

    .line 224
    sget-object v0, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit16 v0, v0, 0x154

    invoke-static {p0, v0, p1}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->writeASCIIValue([BILjava/lang/String;)I

    .line 225
    sget-object v0, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit16 v0, v0, 0x168

    invoke-static {p0, v0, p1}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->writeASCIIValue([BILjava/lang/String;)I

    .line 226
    return-void
.end method

.method private static updateExifSize([BI)V
    .locals 1
    .param p0, "buffer"    # [B
    .param p1, "size"    # I

    .prologue
    .line 386
    sget-object v0, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit8 v0, v0, -0x8

    invoke-static {p0, v0, p1}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->writeShortValue([BII)V

    .line 387
    return-void
.end method

.method private static updateGpsFields([BLandroid/location/Location;)V
    .locals 1
    .param p0, "buffer"    # [B
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 237
    if-eqz p1, :cond_0

    .line 239
    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->writeGpsInfoToHeader([BLandroid/location/Location;)Z

    move-result v0

    .line 240
    .local v0, "ret":Z
    if-eqz v0, :cond_0

    .line 248
    .end local v0    # "ret":Z
    :goto_0
    return-void

    .line 246
    :cond_0
    invoke-static {p0}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->removeGpsInfoFromHeader([B)V

    goto :goto_0
.end method

.method private static updateJpegInterchangeFormatLength([BJ)V
    .locals 1
    .param p0, "buffer"    # [B
    .param p1, "thumbnailDataLength"    # J

    .prologue
    .line 382
    sget-object v0, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit16 v0, v0, 0x2fc

    invoke-static {p0, v0, p1, p2}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->writeLongValue([BIJ)V

    .line 383
    return-void
.end method

.method private static updateMake([BLjava/lang/String;)V
    .locals 4
    .param p0, "buffer"    # [B
    .param p1, "make"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0xe

    .line 202
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_0

    .line 203
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 208
    .local v1, "limitedString":Ljava/lang/String;
    :goto_0
    sget-object v2, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    add-int/lit16 v2, v2, 0x86

    invoke-static {p0, v2, v1}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->writeASCIIValue([BILjava/lang/String;)I

    move-result v0

    .line 209
    .local v0, "length":I
    sget-object v2, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    add-int/lit8 v2, v2, 0x10

    add-int/lit8 v3, v0, 0x1

    invoke-static {p0, v2, v3}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->writeShortValue([BII)V

    .line 210
    return-void

    .line 205
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
    .line 213
    sget-object v1, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->APP1_HEADER:[B

    array-length v1, v1

    add-int/lit16 v1, v1, 0x94

    invoke-static {p0, v1, p1}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->writeASCIIValue([BILjava/lang/String;)I

    move-result v0

    .line 214
    .local v0, "length":I
    sget-object v1, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->APP1_HEADER:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1a

    add-int/lit8 v2, v0, 0x1

    int-to-long v2, v2

    invoke-static {p0, v1, v2, v3}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->writeLongValue([BIJ)V

    .line 215
    return-void
.end method

.method private static updateOrientation([BI)V
    .locals 1
    .param p0, "buffer"    # [B
    .param p1, "orientation"    # I

    .prologue
    .line 218
    sget-object v0, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x2a

    invoke-static {p0, v0, p1}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->writeShortValue([BII)V

    .line 219
    sget-object v0, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit16 v0, v0, 0x2c0

    invoke-static {p0, v0, p1}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->writeShortValue([BII)V

    .line 220
    return-void
.end method

.method private static updatePixelXDimension([BJ)V
    .locals 1
    .param p0, "buffer"    # [B
    .param p1, "pixelXDimension"    # J

    .prologue
    .line 229
    sget-object v0, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit16 v0, v0, 0x134

    add-int/lit8 v0, v0, -0xc

    invoke-static {p0, v0, p1, p2}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->writeLongValue([BIJ)V

    .line 230
    return-void
.end method

.method private static updatePixelYDimension([BJ)V
    .locals 1
    .param p0, "buffer"    # [B
    .param p1, "pixelYDimension"    # J

    .prologue
    .line 233
    sget-object v0, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->APP1_HEADER:[B

    array-length v0, v0

    add-int/lit16 v0, v0, 0x140

    add-int/lit8 v0, v0, -0xc

    invoke-static {p0, v0, p1, p2}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->writeLongValue([BIJ)V

    .line 234
    return-void
.end method

.method private static writeASCIIValue([BILjava/lang/String;)I
    .locals 3
    .param p0, "buffer"    # [B
    .param p1, "bufferPos"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 409
    const-string v1, "US-ASCII"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 410
    .local v0, "dst":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, p0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 411
    array-length v1, v0

    return v1
.end method

.method private static writeByteValue([BII)V
    .locals 2
    .param p0, "buffer"    # [B
    .param p1, "bufferPos"    # I
    .param p2, "value"    # I

    .prologue
    .line 415
    add-int/lit8 v0, p1, 0x0

    int-to-byte v1, p2

    aput-byte v1, p0, v0

    .line 416
    return-void
.end method

.method private static writeGpsInfoToHeader([BLandroid/location/Location;)Z
    .locals 21
    .param p0, "buffer"    # [B
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 252
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 253
    .local v10, "calendar":Ljava/util/Calendar;
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v10, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 255
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v14

    .line 256
    .local v14, "latitude":D
    const-wide/16 v2, 0x0

    cmpg-double v2, v14, v2

    if-gez v2, :cond_0

    .line 257
    sget-object v2, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    add-int/lit16 v2, v2, 0x1b0

    const-string v3, "S"

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->writeASCIIValue([BILjava/lang/String;)I

    .line 261
    neg-double v14, v14

    .line 264
    :cond_0
    const/16 v16, 0x0

    .line 266
    .local v16, "latitudeStr":Ljava/lang/String;
    const/4 v2, 0x2

    :try_start_0
    invoke-static {v14, v15, v2}, Landroid/location/Location;->convert(DI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    .line 271
    const-string v2, ":"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 274
    .local v13, "latitudeParts":[Ljava/lang/String;
    :try_start_1
    sget-object v2, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    add-int/lit16 v3, v2, 0x230

    const/4 v2, 0x0

    aget-object v2, v13, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->writeRationalValue([BIJJ)V

    .line 279
    sget-object v2, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    add-int/lit16 v3, v2, 0x238

    const/4 v2, 0x1

    aget-object v2, v13, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->writeRationalValue([BIJJ)V

    .line 284
    sget-object v2, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->APP1_HEADER:[B

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

    invoke-static/range {v2 .. v7}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->writeRationalValue([BIJJ)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 293
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v18

    .line 294
    .local v18, "longitude":D
    const-wide/16 v2, 0x0

    cmpg-double v2, v18, v2

    if-gez v2, :cond_1

    .line 295
    sget-object v2, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    add-int/lit16 v2, v2, 0x1c8

    const-string v3, "W"

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->writeASCIIValue([BILjava/lang/String;)I

    .line 299
    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v18, v0

    .line 302
    :cond_1
    const/16 v20, 0x0

    .line 304
    .local v20, "longitudeStr":Ljava/lang/String;
    const/4 v2, 0x2

    :try_start_2
    move-wide/from16 v0, v18

    invoke-static {v0, v1, v2}, Landroid/location/Location;->convert(DI)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v20

    .line 310
    const-string v2, ":"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 313
    .local v17, "longitudeParts":[Ljava/lang/String;
    :try_start_3
    sget-object v2, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    add-int/lit16 v3, v2, 0x248

    const/4 v2, 0x0

    aget-object v2, v17, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->writeRationalValue([BIJJ)V

    .line 318
    sget-object v2, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    add-int/lit16 v3, v2, 0x250

    const/4 v2, 0x1

    aget-object v2, v17, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->writeRationalValue([BIJJ)V

    .line 323
    sget-object v2, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->APP1_HEADER:[B

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

    invoke-static/range {v2 .. v7}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->writeRationalValue([BIJJ)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    .line 333
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v8

    .line 334
    .local v8, "altitude":D
    const-wide/16 v2, 0x0

    cmpg-double v2, v8, v2

    if-gez v2, :cond_2

    .line 335
    sget-object v2, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    add-int/lit16 v2, v2, 0x1e0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->writeByteValue([BII)V

    .line 337
    :cond_2
    sget-object v2, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    add-int/lit16 v3, v2, 0x260

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, v8

    double-to-long v4, v4

    const-wide/16 v6, 0x3e8

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->writeRationalValue([BIJJ)V

    .line 340
    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 342
    const/4 v12, 0x0

    .line 344
    .local v12, "gpsDateStamp":Ljava/lang/String;
    :try_start_4
    sget-object v2, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    add-int/lit16 v3, v2, 0x268

    const/16 v2, 0xb

    invoke-virtual {v10, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-long v4, v2

    const-wide/16 v6, 0x1

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->writeRationalValue([BIJJ)V

    .line 349
    sget-object v2, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    add-int/lit16 v3, v2, 0x270

    const/16 v2, 0xc

    invoke-virtual {v10, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    int-to-long v4, v2

    const-wide/16 v6, 0x1

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->writeRationalValue([BIJJ)V

    .line 354
    sget-object v2, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->APP1_HEADER:[B

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

    invoke-static/range {v2 .. v7}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->writeRationalValue([BIJJ)V

    .line 360
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

    .line 367
    sget-object v2, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    add-int/lit16 v2, v2, 0x29e

    move-object/from16 v0, p0

    invoke-static {v0, v2, v12}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->writeASCIIValue([BILjava/lang/String;)I

    .line 369
    const/4 v2, 0x1

    .end local v8    # "altitude":D
    .end local v12    # "gpsDateStamp":Ljava/lang/String;
    .end local v13    # "latitudeParts":[Ljava/lang/String;
    .end local v17    # "longitudeParts":[Ljava/lang/String;
    .end local v18    # "longitude":D
    .end local v20    # "longitudeStr":Ljava/lang/String;
    :goto_0
    return v2

    .line 267
    :catch_0
    move-exception v11

    .line 269
    .local v11, "e":Ljava/lang/IllegalArgumentException;
    const/4 v2, 0x0

    goto :goto_0

    .line 288
    .end local v11    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v13    # "latitudeParts":[Ljava/lang/String;
    :catch_1
    move-exception v11

    .line 290
    .local v11, "e":Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    goto :goto_0

    .line 305
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    .restart local v18    # "longitude":D
    .restart local v20    # "longitudeStr":Ljava/lang/String;
    :catch_2
    move-exception v11

    .line 307
    .local v11, "e":Ljava/lang/IllegalArgumentException;
    const/4 v2, 0x0

    goto :goto_0

    .line 328
    .end local v11    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v17    # "longitudeParts":[Ljava/lang/String;
    :catch_3
    move-exception v11

    .line 330
    .local v11, "e":Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    goto :goto_0

    .line 362
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    .restart local v8    # "altitude":D
    .restart local v12    # "gpsDateStamp":Ljava/lang/String;
    :catch_4
    move-exception v11

    .line 364
    .local v11, "e":Ljava/lang/IllegalArgumentException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static writeLongValue([BIJ)V
    .locals 6
    .param p0, "buffer"    # [B
    .param p1, "bufferPos"    # I
    .param p2, "value"    # J

    .prologue
    const-wide/16 v4, 0x100

    .line 424
    add-int/lit8 v0, p1, 0x0

    const-wide/32 v2, 0x1000000

    div-long v2, p2, v2

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 425
    add-int/lit8 v0, p1, 0x1

    const-wide/32 v2, 0x10000

    div-long v2, p2, v2

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 426
    add-int/lit8 v0, p1, 0x2

    div-long v2, p2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 427
    add-int/lit8 v0, p1, 0x3

    rem-long v2, p2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 428
    return-void
.end method

.method private static writeRationalValue([BIJJ)V
    .locals 2
    .param p0, "buffer"    # [B
    .param p1, "bufferPos"    # I
    .param p2, "denominator"    # J
    .param p4, "numerator"    # J

    .prologue
    .line 432
    add-int/lit8 v0, p1, 0x0

    invoke-static {p0, v0, p2, p3}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->writeLongValue([BIJ)V

    .line 433
    add-int/lit8 v0, p1, 0x4

    invoke-static {p0, v0, p4, p5}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->writeLongValue([BIJ)V

    .line 434
    return-void
.end method

.method private static writeShortValue([BII)V
    .locals 2
    .param p0, "buffer"    # [B
    .param p1, "bufferPos"    # I
    .param p2, "value"    # I

    .prologue
    .line 419
    add-int/lit8 v0, p1, 0x0

    div-int/lit16 v1, p2, 0x100

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 420
    add-int/lit8 v0, p1, 0x1

    rem-int/lit16 v1, p2, 0x100

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 421
    return-void
.end method

.method private static writeTemplate([B)I
    .locals 4
    .param p0, "buffer"    # [B

    .prologue
    const/4 v3, 0x0

    .line 390
    const/4 v0, 0x0

    .line 391
    .local v0, "last":I
    sget-object v1, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->APP1_HEADER:[B

    sget-object v2, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->APP1_HEADER:[B

    array-length v2, v2

    invoke-static {v1, v3, p0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 392
    sget-object v1, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->APP1_HEADER:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 393
    sget-object v1, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->TIFF_HEADER:[B

    sget-object v2, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->TIFF_HEADER:[B

    array-length v2, v2

    invoke-static {v1, v3, p0, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 394
    sget-object v1, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->TIFF_HEADER:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 395
    sget-object v1, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->ZERO_IFD:[B

    sget-object v2, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->ZERO_IFD:[B

    array-length v2, v2

    invoke-static {v1, v3, p0, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 396
    sget-object v1, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->ZERO_IFD:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 397
    sget-object v1, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->EXIF_IFD:[B

    sget-object v2, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->EXIF_IFD:[B

    array-length v2, v2

    invoke-static {v1, v3, p0, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 398
    sget-object v1, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->EXIF_IFD:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 399
    sget-object v1, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->ZERO_IFD_INT:[B

    sget-object v2, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->ZERO_IFD_INT:[B

    array-length v2, v2

    invoke-static {v1, v3, p0, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 400
    sget-object v1, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->ZERO_IFD_INT:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 401
    sget-object v1, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->GPS_IFD:[B

    sget-object v2, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->GPS_IFD:[B

    array-length v2, v2

    invoke-static {v1, v3, p0, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 402
    sget-object v1, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->GPS_IFD:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 403
    sget-object v1, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->FIRST_IFD:[B

    sget-object v2, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->FIRST_IFD:[B

    array-length v2, v2

    invoke-static {v1, v3, p0, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 404
    sget-object v1, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->FIRST_IFD:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 405
    return v0
.end method
