.class public Lcom/sonyericsson/android/camera/mediasaving/ExifOption;
.super Ljava/lang/Object;
.source "ExifOption.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ExifOption"


# instance fields
.field public mDateTime:Ljava/lang/String;

.field public mGPSOption:Landroid/location/Location;

.field public mMake:Ljava/lang/String;

.field public mModel:Ljava/lang/String;

.field public mOrientation:I

.field public mPixelXDimension:J

.field public mPixelYDimension:J

.field public mThumbnailData:[B

.field public mThumbnailDataLength:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x1

    iput v0, p0, Lcom/sonyericsson/android/camera/mediasaving/ExifOption;->mOrientation:I

    return-void
.end method

.method public static create(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;[B)Lcom/sonyericsson/android/camera/mediasaving/ExifOption;
    .locals 4
    .param p0, "request"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;
    .param p1, "thumbnailData"    # [B

    .prologue
    .line 79
    new-instance v0, Lcom/sonyericsson/android/camera/mediasaving/ExifOption;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/mediasaving/ExifOption;-><init>()V

    .line 81
    .local v0, "exifOption":Lcom/sonyericsson/android/camera/mediasaving/ExifOption;
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v1, v0, Lcom/sonyericsson/android/camera/mediasaving/ExifOption;->mMake:Ljava/lang/String;

    .line 82
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v1, v0, Lcom/sonyericsson/android/camera/mediasaving/ExifOption;->mModel:Ljava/lang/String;

    .line 83
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->orientation:I

    invoke-static {v1}, Lcom/sonyericsson/android/camera/mediasaving/ExifOption;->getExifOrientation(I)S

    move-result v1

    iput v1, v0, Lcom/sonyericsson/android/camera/mediasaving/ExifOption;->mOrientation:I

    .line 84
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->getDateTaken()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera/mediasaving/ExifOption;->getExifDate(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/android/camera/mediasaving/ExifOption;->mDateTime:Ljava/lang/String;

    .line 85
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->width:I

    int-to-long v2, v1

    iput-wide v2, v0, Lcom/sonyericsson/android/camera/mediasaving/ExifOption;->mPixelXDimension:J

    .line 86
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->height:I

    int-to-long v2, v1

    iput-wide v2, v0, Lcom/sonyericsson/android/camera/mediasaving/ExifOption;->mPixelYDimension:J

    .line 87
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    iput-object v1, v0, Lcom/sonyericsson/android/camera/mediasaving/ExifOption;->mGPSOption:Landroid/location/Location;

    .line 91
    if-nez p1, :cond_0

    .line 94
    const/4 v1, 0x1

    new-array v1, v1, [B

    iput-object v1, v0, Lcom/sonyericsson/android/camera/mediasaving/ExifOption;->mThumbnailData:[B

    .line 95
    const-wide/16 v2, 0x1

    iput-wide v2, v0, Lcom/sonyericsson/android/camera/mediasaving/ExifOption;->mThumbnailDataLength:J

    .line 103
    :goto_0
    return-object v0

    .line 97
    :cond_0
    iput-object p1, v0, Lcom/sonyericsson/android/camera/mediasaving/ExifOption;->mThumbnailData:[B

    .line 98
    iget-object v1, v0, Lcom/sonyericsson/android/camera/mediasaving/ExifOption;->mThumbnailData:[B

    array-length v1, v1

    int-to-long v2, v1

    iput-wide v2, v0, Lcom/sonyericsson/android/camera/mediasaving/ExifOption;->mThumbnailDataLength:J

    goto :goto_0
.end method

.method public static getExifDate(J)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # J

    .prologue
    .line 151
    const-string v0, "yyyy:MM:dd kk:mm:ss"

    invoke-static {v0, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExifOrientation(I)S
    .locals 1
    .param p0, "degrees"    # I

    .prologue
    .line 126
    if-gez p0, :cond_0

    .line 127
    add-int/lit16 p0, p0, 0x168

    .line 129
    :cond_0
    const/4 v0, 0x1

    .line 130
    .local v0, "orientation":S
    sparse-switch p0, :sswitch_data_0

    .line 144
    const/4 v0, 0x1

    .line 147
    :goto_0
    return v0

    .line 132
    :sswitch_0
    const/4 v0, 0x1

    .line 133
    goto :goto_0

    .line 135
    :sswitch_1
    const/4 v0, 0x6

    .line 136
    goto :goto_0

    .line 138
    :sswitch_2
    const/4 v0, 0x3

    .line 139
    goto :goto_0

    .line 141
    :sswitch_3
    const/16 v0, 0x8

    .line 142
    goto :goto_0

    .line 130
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private static log(Lcom/sonyericsson/android/camera/mediasaving/ExifOption;)V
    .locals 0
    .param p0, "exifOption"    # Lcom/sonyericsson/android/camera/mediasaving/ExifOption;

    .prologue
    .line 118
    return-void
.end method
