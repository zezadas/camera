.class public Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;
.super Ljava/lang/Object;
.source "ExifInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;
    }
.end annotation


# instance fields
.field private mByteOrder:Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;

.field private final mHeight:I

.field private final mLocation:Landroid/location/Location;

.field private final mOrientation:I

.field private mTimestamp:J

.field private final mWidth:I


# direct methods
.method public constructor <init>(JILandroid/location/Location;II)V
    .locals 3
    .param p1, "timeStamp"    # J
    .param p3, "orientation"    # I
    .param p4, "location"    # Landroid/location/Location;
    .param p5, "width"    # I
    .param p6, "height"    # I

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->mTimestamp:J

    .line 39
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;->BIG_ENDIAN:Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->mByteOrder:Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;

    .line 47
    iput-wide p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->mTimestamp:J

    .line 48
    iput p3, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->mOrientation:I

    .line 49
    iput-object p4, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->mLocation:Landroid/location/Location;

    .line 50
    iput p5, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->mWidth:I

    .line 51
    iput p6, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->mHeight:I

    .line 52
    return-void
.end method

.method public constructor <init>(JILandroid/location/Location;IILcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;)V
    .locals 1
    .param p1, "timeStamp"    # J
    .param p3, "orientation"    # I
    .param p4, "location"    # Landroid/location/Location;
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "byteOrder"    # Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;

    .prologue
    .line 61
    invoke-direct/range {p0 .. p6}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;-><init>(JILandroid/location/Location;II)V

    .line 62
    iput-object p7, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->mByteOrder:Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;

    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;)V
    .locals 2
    .param p1, "request"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->mTimestamp:J

    .line 39
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;->BIG_ENDIAN:Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->mByteOrder:Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;

    .line 67
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->getDateTaken()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->mTimestamp:J

    .line 68
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->orientation:I

    iput v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->mOrientation:I

    .line 69
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->mLocation:Landroid/location/Location;

    .line 70
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->width:I

    iput v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->mWidth:I

    .line 71
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->height:I

    iput v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->mHeight:I

    .line 72
    return-void
.end method


# virtual methods
.method public getByteOrder()Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->mByteOrder:Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->mHeight:I

    return v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->mOrientation:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->mTimestamp:J

    return-wide v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->mWidth:I

    return v0
.end method

.method public setTimestamp(J)V
    .locals 1
    .param p1, "timestamp"    # J

    .prologue
    .line 84
    iput-wide p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->mTimestamp:J

    .line 85
    return-void
.end method
