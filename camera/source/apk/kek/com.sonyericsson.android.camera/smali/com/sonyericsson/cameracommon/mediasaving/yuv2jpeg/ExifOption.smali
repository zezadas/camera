.class Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;
.super Ljava/lang/Object;
.source "ExifOption.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ExifOption"


# instance fields
.field public mByteOrder:Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;

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
.method constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x1

    iput v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mOrientation:I

    return-void
.end method

.method public static create(Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;[B)Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;
    .locals 4
    .param p0, "exifInfo"    # Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;
    .param p1, "thumbnailData"    # [B

    .prologue
    .line 75
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;-><init>()V

    .line 77
    .local v0, "exifOption":Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v1, v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mMake:Ljava/lang/String;

    .line 78
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v1, v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mModel:Ljava/lang/String;

    .line 79
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->getOrientation()I

    move-result v1

    invoke-static {v1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->getExifOrientation(I)S

    move-result v1

    iput v1, v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mOrientation:I

    .line 80
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->getTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->getExifDate(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mDateTime:Ljava/lang/String;

    .line 81
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->getWidth()I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mPixelXDimension:J

    .line 82
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->getHeight()I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mPixelYDimension:J

    .line 83
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->getLocation()Landroid/location/Location;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mGPSOption:Landroid/location/Location;

    .line 84
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->getByteOrder()Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mByteOrder:Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;

    .line 88
    if-nez p1, :cond_0

    .line 91
    const/4 v1, 0x1

    new-array v1, v1, [B

    iput-object v1, v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mThumbnailData:[B

    .line 92
    const-wide/16 v2, 0x1

    iput-wide v2, v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mThumbnailDataLength:J

    .line 100
    :goto_0
    return-object v0

    .line 94
    :cond_0
    iput-object p1, v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mThumbnailData:[B

    .line 95
    iget-object v1, v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mThumbnailData:[B

    array-length v1, v1

    int-to-long v2, v1

    iput-wide v2, v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mThumbnailDataLength:J

    goto :goto_0
.end method

.method public static getExifDate(J)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # J

    .prologue
    .line 147
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
    .line 122
    if-gez p0, :cond_0

    .line 123
    add-int/lit16 p0, p0, 0x168

    .line 125
    :cond_0
    const/4 v0, 0x1

    .line 126
    .local v0, "orientation":S
    sparse-switch p0, :sswitch_data_0

    .line 140
    const/4 v0, 0x1

    .line 143
    :goto_0
    return v0

    .line 128
    :sswitch_0
    const/4 v0, 0x1

    .line 129
    goto :goto_0

    .line 131
    :sswitch_1
    const/4 v0, 0x6

    .line 132
    goto :goto_0

    .line 134
    :sswitch_2
    const/4 v0, 0x3

    .line 135
    goto :goto_0

    .line 137
    :sswitch_3
    const/16 v0, 0x8

    .line 138
    goto :goto_0

    .line 126
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private static log(Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;)V
    .locals 4
    .param p0, "exifOption"    # Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;

    .prologue
    .line 104
    const-string v0, "ExifOption"

    const-string v1, "dump of exifOption: "

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const-string v0, "ExifOption"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMake = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mMake:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const-string v0, "ExifOption"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mModel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mModel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const-string v0, "ExifOption"

    const-string v1, "mOrientation = "

    iget v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mOrientation:I

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->showOrientation(Ljava/lang/String;Ljava/lang/String;I)V

    .line 108
    const-string v0, "ExifOption"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDateTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mDateTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const-string v0, "ExifOption"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPixelXDimension = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mPixelXDimension:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const-string v0, "ExifOption"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPixelYDimension = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mPixelYDimension:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const-string v0, "ExifOption"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mGPSOption = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mGPSOption:Landroid/location/Location;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const-string v0, "ExifOption"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mThumbnailDataLength = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mThumbnailDataLength:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const-string v0, "ExifOption"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mByteOrder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mByteOrder:Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-void
.end method
