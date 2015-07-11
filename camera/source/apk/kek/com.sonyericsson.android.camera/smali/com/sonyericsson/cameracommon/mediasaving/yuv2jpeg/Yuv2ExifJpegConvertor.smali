.class public Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;
.super Ljava/lang/Object;
.source "Yuv2ExifJpegConvertor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor$SegmentInfo;
    }
.end annotation


# static fields
.field private static final APP0_MARKER:[B

.field private static final APP1_MARKER:[B

.field private static final EXIF_BYTE_ORDER_BE:[B

.field private static final EXIF_BYTE_ORDER_LE:[B

.field private static final EXIF_BYTE_ORDER_OFFSET:I = 0xb

.field private static final EXIF_CODE:[B

.field private static final EXIF_THUMBNAIL_HEIGHT:I = 0x78

.field private static final EXIF_THUMBNAIL_WIDTH:I = 0xa0

.field public static final HEADER_MARGIN:I = 0x400

.field private static final JPEG_COMPRESS_QUALITY:I = 0x5d

.field private static final MARKER_CODE:B = -0x1t

.field private static final MARKER_SIZE:I = 0x2

.field private static final M_DHT:I = 0xc4

.field private static final M_DQT:I = 0xdb

.field private static final M_MARKER:I = 0xff

.field private static final M_SOI:I = 0xd8

.field private static final M_SOS:I = 0xda

.field private static final SEGMENT_LENGTH_AREA_SIZE:I = 0x2

.field private static final SIZE_OF_ONE_BYTE:I = 0x8

.field private static final SOI_MARKER:[B

.field private static final TAG:Ljava/lang/String; = "Yuv2ExifJpegConvertor"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 181
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->SOI_MARKER:[B

    .line 184
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->APP0_MARKER:[B

    .line 187
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->APP1_MARKER:[B

    .line 190
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->EXIF_CODE:[B

    .line 207
    new-array v0, v1, [B

    fill-array-data v0, :array_4

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->EXIF_BYTE_ORDER_BE:[B

    .line 210
    new-array v0, v1, [B

    fill-array-data v0, :array_5

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->EXIF_BYTE_ORDER_LE:[B

    return-void

    .line 181
    nop

    :array_0
    .array-data 1
        -0x1t
        -0x28t
    .end array-data

    .line 184
    nop

    :array_1
    .array-data 1
        -0x1t
        -0x20t
    .end array-data

    .line 187
    nop

    :array_2
    .array-data 1
        -0x1t
        -0x1ft
    .end array-data

    .line 190
    nop

    :array_3
    .array-data 1
        0x45t
        0x78t
        0x69t
        0x66t
        0x0t
        0x0t
    .end array-data

    .line 207
    nop

    :array_4
    .array-data 1
        0x4dt
        0x4dt
    .end array-data

    .line 210
    nop

    :array_5
    .array-data 1
        0x49t
        0x49t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 640
    return-void
.end method

.method public static addExifHeader(Ljava/io/OutputStream;Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;[B)I
    .locals 8
    .param p0, "outputStream"    # Ljava/io/OutputStream;
    .param p1, "exifInfo"    # Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;
    .param p2, "thumbnailData"    # [B

    .prologue
    .line 382
    invoke-static {p1, p2}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->create(Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;[B)Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;

    move-result-object v2

    .line 384
    .local v2, "exifOption":Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;
    invoke-static {v2}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->getLength(Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;)I

    move-result v4

    iget-wide v6, v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;->mThumbnailDataLength:J

    long-to-int v5, v6

    add-int/2addr v4, v5

    new-array v0, v4, [B

    .line 386
    .local v0, "buffer":[B
    invoke-static {v0, v2}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifFactory;->generate([BLcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifOption;)I

    move-result v3

    .line 388
    .local v3, "length":I
    if-lez v3, :cond_0

    .line 390
    :try_start_0
    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->SOI_MARKER:[B

    invoke-virtual {p0, v4}, Ljava/io/OutputStream;->write([B)V

    .line 391
    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 392
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 393
    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->SOI_MARKER:[B

    array-length v4, v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v3, v4

    .line 400
    :cond_0
    :goto_0
    return v3

    .line 394
    :catch_0
    move-exception v1

    .line 395
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "Yuv2ExifJpegConvertor"

    const-string v5, "Add exif header failed."

    invoke-static {v4, v5, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 396
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public static addExifToPlainJpeg([BLcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;)[B
    .locals 7
    .param p0, "plainJpeg"    # [B
    .param p1, "exifInfo"    # Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;

    .prologue
    const/4 v4, 0x0

    .line 79
    if-nez p0, :cond_0

    .line 103
    :goto_0
    return-object v4

    .line 84
    :cond_0
    invoke-static {p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->getExifThumbnail([BLcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;)[B

    move-result-object v3

    .line 87
    .local v3, "thumbnailData":[B
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 88
    .local v0, "dstOs":Ljava/io/ByteArrayOutputStream;
    invoke-static {v0, p1, v3}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->addExifHeader(Ljava/io/OutputStream;Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;[B)I

    move-result v2

    .line 91
    .local v2, "exifHeaderLength":I
    if-lez v2, :cond_1

    .line 93
    :try_start_0
    array-length v5, p0

    invoke-static {v0, p0, v5}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->appendOnlyImageFromJpegData(Ljava/io/OutputStream;[BI)V
    :try_end_0
    .catch Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/IntegrationMakerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    goto :goto_0

    .line 94
    :catch_0
    move-exception v1

    .line 95
    .local v1, "e":Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/IntegrationMakerException;
    const-string v5, "Yuv2ExifJpegConvertor"

    const-string v6, "Failed to append jpeg data."

    invoke-static {v5, v6, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 99
    .end local v1    # "e":Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/IntegrationMakerException;
    :cond_1
    const-string v5, "Yuv2ExifJpegConvertor"

    const-string v6, "convertYuvToExifJpeg():[Add EXIF header failed.]"

    invoke-static {v5, v6}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static appendImageInExifFormat([BILjava/io/OutputStream;)V
    .locals 7
    .param p0, "inputByte"    # [B
    .param p1, "indexNextToExif"    # I
    .param p2, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/IntegrationMakerException;
        }
    .end annotation

    .prologue
    .line 514
    move v0, p1

    .line 515
    .local v0, "byteCnt":I
    const/4 v2, 0x0

    .line 516
    .local v2, "isDQTDone":Z
    const/4 v1, 0x0

    .line 517
    .local v1, "isDHTDOne":Z
    :goto_0
    array-length v4, p0

    add-int/lit8 v4, v4, -0x3

    if-ge v0, v4, :cond_1

    .line 520
    aget-byte v4, p0, v0

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 521
    new-instance v4, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/IntegrationMakerException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid marker identifier code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-byte v6, p0, v0

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/IntegrationMakerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 526
    :cond_0
    invoke-static {p0, v0}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->getSegmentLength([BI)I

    move-result v3

    .line 529
    .local v3, "segmentLength":I
    add-int/lit8 v4, v0, 0x1

    aget-byte v4, p0, v4

    const/16 v5, -0x26

    if-ne v4, v5, :cond_2

    .line 533
    array-length v4, p0

    sub-int/2addr v4, v0

    invoke-virtual {p2, p0, v0, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 561
    .end local v3    # "segmentLength":I
    :cond_1
    return-void

    .line 535
    .restart local v3    # "segmentLength":I
    :cond_2
    add-int/lit8 v4, v0, 0x1

    aget-byte v4, p0, v4

    const/16 v5, -0x25

    if-ne v4, v5, :cond_4

    .line 537
    if-nez v2, :cond_3

    .line 539
    invoke-static {p0, v0, p2}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->appendInOneSegment([BILjava/io/OutputStream;)V

    .line 540
    const/4 v2, 0x1

    .line 559
    :cond_3
    :goto_1
    add-int/lit8 v4, v3, 0x2

    add-int/2addr v0, v4

    .line 560
    goto :goto_0

    .line 542
    :cond_4
    add-int/lit8 v4, v0, 0x1

    aget-byte v4, p0, v4

    const/16 v5, -0x3c

    if-ne v4, v5, :cond_5

    .line 544
    if-nez v1, :cond_3

    .line 546
    invoke-static {p0, v0, p2}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->appendInOneSegment([BILjava/io/OutputStream;)V

    .line 547
    const/4 v1, 0x1

    goto :goto_1

    .line 553
    :cond_5
    add-int/lit8 v4, v3, 0x2

    invoke-virtual {p2, p0, v0, v4}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1
.end method

.method private static appendInOneSegment([BILjava/io/OutputStream;)V
    .locals 11
    .param p0, "inputByte"    # [B
    .param p1, "indexTargetSegment"    # I
    .param p2, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/IntegrationMakerException;
        }
    .end annotation

    .prologue
    const/4 v10, -0x1

    .line 577
    move v1, p1

    .line 578
    .local v1, "byteCnt":I
    if-eqz p0, :cond_0

    add-int/lit8 v8, v1, 0x1

    array-length v9, p0

    if-le v8, v9, :cond_1

    .line 579
    :cond_0
    new-instance v8, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/IntegrationMakerException;

    const-string v9, "Invalid Segment."

    invoke-direct {v8, v9}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/IntegrationMakerException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 581
    :cond_1
    add-int/lit8 v8, v1, 0x1

    aget-byte v7, p0, v8

    .line 586
    .local v7, "targetMarker":B
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 587
    .local v5, "segmentInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor$SegmentInfo;>;"
    :goto_0
    array-length v8, p0

    add-int/lit8 v8, v8, -0x3

    if-ge v1, v8, :cond_3

    .line 590
    aget-byte v8, p0, v1

    if-eq v8, v10, :cond_2

    .line 591
    new-instance v8, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/IntegrationMakerException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid marker identifier code: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-byte v10, p0, v1

    and-int/lit16 v10, v10, 0xff

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/IntegrationMakerException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 596
    :cond_2
    add-int/lit8 v8, v1, 0x1

    aget-byte v8, p0, v8

    const/16 v9, -0x26

    if-ne v8, v9, :cond_4

    .line 618
    :cond_3
    const/4 v8, 0x2

    new-array v3, v8, [B

    const/4 v8, 0x0

    aput-byte v10, v3, v8

    const/4 v8, 0x1

    aput-byte v7, v3, v8

    .line 619
    .local v3, "markerHead":[B
    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 622
    const/4 v0, 0x2

    .line 623
    .local v0, "appendSegLength":I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor$SegmentInfo;

    .line 624
    .local v4, "segmentInfo":Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor$SegmentInfo;
    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor$SegmentInfo;->getSegmentLength()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    add-int/2addr v0, v8

    .line 625
    goto :goto_1

    .line 602
    .end local v0    # "appendSegLength":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "markerHead":[B
    .end local v4    # "segmentInfo":Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor$SegmentInfo;
    :cond_4
    invoke-static {p0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->getSegmentLength([BI)I

    move-result v6

    .line 605
    .local v6, "segmentLength":I
    add-int/lit8 v8, v1, 0x1

    aget-byte v8, p0, v8

    if-ne v8, v7, :cond_5

    .line 608
    new-instance v8, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor$SegmentInfo;

    invoke-direct {v8, v1, v6}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor$SegmentInfo;-><init>(II)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 614
    :cond_5
    add-int/lit8 v8, v6, 0x2

    add-int/2addr v1, v8

    .line 615
    goto :goto_0

    .line 627
    .end local v6    # "segmentLength":I
    .restart local v0    # "appendSegLength":I
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "markerHead":[B
    :cond_6
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->convertToSegmentLengthBytes(I)[B

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/OutputStream;->write([B)V

    .line 630
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor$SegmentInfo;

    .line 631
    .restart local v4    # "segmentInfo":Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor$SegmentInfo;
    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor$SegmentInfo;->getIndex()I

    move-result v8

    add-int/lit8 v8, v8, 0x2

    add-int/lit8 v8, v8, 0x2

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor$SegmentInfo;->getSegmentLength()I

    move-result v9

    add-int/lit8 v9, v9, -0x2

    invoke-virtual {p2, p0, v8, v9}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_2

    .line 637
    .end local v4    # "segmentInfo":Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor$SegmentInfo;
    :cond_7
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 638
    return-void
.end method

.method public static appendOnlyImageFromJpegData(Ljava/io/OutputStream;[BI)V
    .locals 6
    .param p0, "outputStream"    # Ljava/io/OutputStream;
    .param p1, "jpegByte"    # [B
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/IntegrationMakerException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 405
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->skipApp0OrApp1Marker([B)I

    move-result v3

    .line 409
    .local v3, "index":I
    if-lez v3, :cond_1

    .line 413
    const/16 v4, -0x25

    invoke-static {p1, v4}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->getSegmentNum([BB)I

    move-result v1

    .line 414
    .local v1, "dqtNum":I
    const/16 v4, -0x3c

    invoke-static {p1, v4}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->getSegmentNum([BB)I

    move-result v0

    .line 419
    .local v0, "dhtNum":I
    if-gt v1, v5, :cond_0

    if-le v0, v5, :cond_2

    .line 422
    :cond_0
    :try_start_0
    invoke-static {p1, v3, p0}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->appendImageInExifFormat([BILjava/io/OutputStream;)V

    .line 423
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    .end local v0    # "dhtNum":I
    .end local v1    # "dqtNum":I
    :cond_1
    :goto_0
    return-void

    .line 424
    .restart local v0    # "dhtNum":I
    .restart local v1    # "dqtNum":I
    :catch_0
    move-exception v2

    .line 425
    .local v2, "e":Ljava/io/IOException;
    const-string v4, "Yuv2ExifJpegConvertor"

    const-string v5, "Failed to append image data in exif format."

    invoke-static {v4, v5, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 430
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    sub-int v4, p2, v3

    :try_start_1
    invoke-virtual {p0, p1, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 431
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 432
    :catch_1
    move-exception v2

    .line 433
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v4, "Yuv2ExifJpegConvertor"

    const-string v5, "Append image data failed."

    invoke-static {v4, v5, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static convertBitmapToExifJpeg(Landroid/graphics/Bitmap;Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;)[B
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "exifInfo"    # Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;

    .prologue
    const/4 v1, 0x0

    .line 60
    if-nez p0, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-object v1

    .line 64
    :cond_1
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->convertBitmapToPlainJpeg(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 65
    .local v0, "plainJpeg":[B
    if-eqz v0, :cond_0

    .line 69
    invoke-static {v0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->addExifToPlainJpeg([BLcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;)[B

    move-result-object v1

    goto :goto_0
.end method

.method public static convertBitmapToPlainJpeg(Landroid/graphics/Bitmap;)[B
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 73
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 74
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 75
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method private static convertToSegmentLengthBytes(I)[B
    .locals 3
    .param p0, "intData"    # I

    .prologue
    .line 948
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 949
    .local v0, "bytes":[B
    const/4 v1, 0x1

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 950
    const/4 v1, 0x0

    ushr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 951
    return-object v0
.end method

.method public static convertYuvToExifJpeg(Landroid/graphics/YuvImage;Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;)[B
    .locals 2
    .param p0, "yuvImage"    # Landroid/graphics/YuvImage;
    .param p1, "exifInfo"    # Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;

    .prologue
    .line 51
    invoke-static {p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->convertYuvToPlainJpeg(Landroid/graphics/YuvImage;Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;)[B

    move-result-object v0

    .line 52
    .local v0, "plainJpeg":[B
    if-nez v0, :cond_0

    .line 53
    const/4 v1, 0x0

    .line 56
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->addExifToPlainJpeg([BLcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;)[B

    move-result-object v1

    goto :goto_0
.end method

.method public static convertYuvToPlainJpeg(Landroid/graphics/YuvImage;Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;)[B
    .locals 5
    .param p0, "yuvImage"    # Landroid/graphics/YuvImage;
    .param p1, "exifInfo"    # Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;

    .prologue
    .line 115
    :try_start_0
    const-string v3, "com.sonymobile.imageprocessor.jpegencoder.JpegEncoder"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 116
    invoke-static {}, Lcom/sonymobile/imageprocessor/jpegencoder/JpegEncoder;->create()Lcom/sonymobile/imageprocessor/jpegencoder/JpegEncoder;

    move-result-object v1

    .line 117
    .local v1, "encoder":Lcom/sonymobile/imageprocessor/jpegencoder/JpegEncoder;
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->getHeight()I

    move-result v4

    invoke-static {v1, p0, v3, v4}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->convertYuvToPlainJpegWithImageProcessor(Lcom/sonymobile/imageprocessor/jpegencoder/JpegEncoder;Landroid/graphics/YuvImage;II)[B

    move-result-object v2

    .line 119
    .local v2, "result":[B
    invoke-virtual {v1}, Lcom/sonymobile/imageprocessor/jpegencoder/JpegEncoder;->release()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .end local v1    # "encoder":Lcom/sonymobile/imageprocessor/jpegencoder/JpegEncoder;
    :goto_0
    return-object v2

    .line 121
    .end local v2    # "result":[B
    :catch_0
    move-exception v0

    .line 124
    .local v0, "cnfe":Ljava/lang/ClassNotFoundException;
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->getHeight()I

    move-result v4

    invoke-static {p0, v3, v4}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->convertYuvToPlainJpegWithoutImageProcessor(Landroid/graphics/YuvImage;II)[B

    move-result-object v2

    .restart local v2    # "result":[B
    goto :goto_0
.end method

.method protected static convertYuvToPlainJpegWithImageProcessor(Lcom/sonymobile/imageprocessor/jpegencoder/JpegEncoder;Landroid/graphics/YuvImage;II)[B
    .locals 4
    .param p0, "encoder"    # Lcom/sonymobile/imageprocessor/jpegencoder/JpegEncoder;
    .param p1, "yuvImage"    # Landroid/graphics/YuvImage;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 133
    new-instance v1, Lcom/sonymobile/imageprocessor/jpegencoder/JpegEncoder$Parameters;

    invoke-virtual {p1}, Landroid/graphics/YuvImage;->getYuvFormat()I

    move-result v2

    const/16 v3, 0x5d

    invoke-direct {v1, p2, p3, v2, v3}, Lcom/sonymobile/imageprocessor/jpegencoder/JpegEncoder$Parameters;-><init>(IIII)V

    .line 136
    .local v1, "params":Lcom/sonymobile/imageprocessor/jpegencoder/JpegEncoder$Parameters;
    invoke-virtual {p1}, Landroid/graphics/YuvImage;->getYuvData()[B

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/sonymobile/imageprocessor/jpegencoder/JpegEncoder;->process([BLcom/sonymobile/imageprocessor/jpegencoder/JpegEncoder$Parameters;)Lcom/sonymobile/imageprocessor/jpegencoder/JpegEncoder$Result;

    move-result-object v0

    .line 137
    .local v0, "encResult":Lcom/sonymobile/imageprocessor/jpegencoder/JpegEncoder$Result;
    iget-object v2, v0, Lcom/sonymobile/imageprocessor/jpegencoder/JpegEncoder$Result;->imageBuffer:[B

    return-object v2
.end method

.method protected static convertYuvToPlainJpegWithoutImageProcessor(Landroid/graphics/YuvImage;II)[B
    .locals 9
    .param p0, "yuvImage"    # Landroid/graphics/YuvImage;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v7, 0x0

    .line 142
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 143
    .local v5, "srcOs":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v7, v7, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 146
    .local v2, "frameRect":Landroid/graphics/Rect;
    const/16 v7, 0x5d

    invoke-virtual {p0, v2, v7, v5}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    move-result v3

    .line 151
    .local v3, "isCompressSuccess":Z
    if-nez v3, :cond_0

    .line 152
    const-string v7, "Yuv2ExifJpegConvertor"

    const-string v8, "convertYuvToExifJpeg():[Compress failed]"

    invoke-static {v7, v8}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 v7, 0x0

    .line 171
    :goto_0
    return-object v7

    .line 157
    :cond_0
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 158
    .local v4, "srcImage":[B
    array-length v7, v4

    add-int/lit16 v7, v7, 0x400

    new-array v6, v7, [B

    .line 163
    .local v6, "tmpImageBuffer":[B
    :try_start_0
    invoke-static {v4, v6}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->integrateJfif([B[B)I
    :try_end_0
    .catch Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/IntegrationMakerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 171
    .local v0, "actualLength":I
    :goto_1
    invoke-static {v6, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v7

    goto :goto_0

    .line 164
    .end local v0    # "actualLength":I
    :catch_0
    move-exception v1

    .line 165
    .local v1, "e":Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/IntegrationMakerException;
    const-string v7, "Yuv2ExifJpegConvertor"

    const-string v8, "convertYuvToExifJpeg():[JFIF integration failed.]"

    invoke-static {v7, v8}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/IntegrationMakerException;->printStackTrace()V

    .line 168
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 169
    array-length v0, v6

    .restart local v0    # "actualLength":I
    goto :goto_1
.end method

.method public static getExifByteOrder([B)Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;
    .locals 9
    .param p0, "inputByte"    # [B

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 842
    const/4 v0, 0x0

    .line 843
    .local v0, "byteCnt":I
    if-eqz p0, :cond_0

    array-length v3, p0

    if-lt v3, v8, :cond_0

    aget-byte v3, p0, v0

    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->SOI_MARKER:[B

    aget-byte v4, v4, v7

    if-ne v3, v4, :cond_0

    aget-byte v3, p0, v6

    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->SOI_MARKER:[B

    aget-byte v4, v4, v6

    if-eq v3, v4, :cond_1

    .line 927
    :cond_0
    :goto_0
    return-object v2

    .line 852
    :cond_1
    add-int/lit8 v0, v0, 0x2

    .line 855
    :goto_1
    add-int/lit8 v3, v0, 0xb

    array-length v4, p0

    if-ge v3, v4, :cond_0

    .line 868
    aget-byte v3, p0, v0

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 876
    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p0, v3

    const/16 v4, -0x26

    if-eq v3, v4, :cond_0

    .line 882
    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p0, v3

    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->APP1_MARKER:[B

    aget-byte v4, v4, v6

    if-ne v3, v4, :cond_3

    .line 885
    add-int/lit8 v3, v0, 0x4

    aget-byte v3, p0, v3

    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->EXIF_CODE:[B

    aget-byte v4, v4, v7

    if-ne v3, v4, :cond_3

    add-int/lit8 v3, v0, 0x5

    aget-byte v3, p0, v3

    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->EXIF_CODE:[B

    aget-byte v4, v4, v6

    if-ne v3, v4, :cond_3

    add-int/lit8 v3, v0, 0x6

    aget-byte v3, p0, v3

    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->EXIF_CODE:[B

    aget-byte v4, v4, v8

    if-ne v3, v4, :cond_3

    add-int/lit8 v3, v0, 0x7

    aget-byte v3, p0, v3

    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->EXIF_CODE:[B

    const/4 v5, 0x3

    aget-byte v4, v4, v5

    if-ne v3, v4, :cond_3

    add-int/lit8 v3, v0, 0x8

    aget-byte v3, p0, v3

    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->EXIF_CODE:[B

    const/4 v5, 0x4

    aget-byte v4, v4, v5

    if-ne v3, v4, :cond_3

    add-int/lit8 v3, v0, 0x9

    aget-byte v3, p0, v3

    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->EXIF_CODE:[B

    const/4 v5, 0x5

    aget-byte v4, v4, v5

    if-ne v3, v4, :cond_3

    .line 892
    add-int/lit8 v3, v0, 0xa

    aget-byte v3, p0, v3

    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->EXIF_BYTE_ORDER_BE:[B

    aget-byte v4, v4, v7

    if-ne v3, v4, :cond_2

    add-int/lit8 v3, v0, 0xb

    aget-byte v3, p0, v3

    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->EXIF_BYTE_ORDER_BE:[B

    aget-byte v4, v4, v6

    if-ne v3, v4, :cond_2

    .line 896
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;->BIG_ENDIAN:Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;

    goto :goto_0

    .line 897
    :cond_2
    add-int/lit8 v3, v0, 0xa

    aget-byte v3, p0, v3

    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->EXIF_BYTE_ORDER_LE:[B

    aget-byte v4, v4, v7

    if-ne v3, v4, :cond_0

    add-int/lit8 v3, v0, 0xb

    aget-byte v3, p0, v3

    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->EXIF_BYTE_ORDER_LE:[B

    aget-byte v4, v4, v6

    if-ne v3, v4, :cond_0

    .line 901
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;->LITTLE_ENDIAN:Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo$ByteOrder;

    goto/16 :goto_0

    .line 920
    :cond_3
    invoke-static {p0, v0}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->getSegmentLength([BI)I

    move-result v1

    .line 923
    .local v1, "segmentLength":I
    add-int/lit8 v3, v1, 0x2

    add-int/2addr v0, v3

    .line 924
    goto/16 :goto_1
.end method

.method public static getExifThumbnail([BLcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;)[B
    .locals 29
    .param p0, "jfifData"    # [B
    .param p1, "exifInfo"    # Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;

    .prologue
    .line 731
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->getWidth()I

    move-result v26

    move/from16 v0, v26

    div-int/lit16 v0, v0, 0xa0

    move/from16 v26, v0

    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/ExifInfo;->getHeight()I

    move-result v27

    div-int/lit8 v27, v27, 0x78

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 736
    .local v16, "sampleSize":I
    new-instance v12, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v12}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 737
    .local v12, "option":Landroid/graphics/BitmapFactory$Options;
    const/16 v26, 0x0

    move/from16 v0, v26

    iput-boolean v0, v12, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 738
    const/16 v26, 0x0

    move/from16 v0, v26

    iput-boolean v0, v12, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 739
    sget-object v26, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v26

    iput-object v0, v12, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 740
    move/from16 v0, v16

    iput v0, v12, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 742
    const/16 v26, 0x0

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v0, v1, v2, v12}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v21

    .line 744
    .local v21, "srcBitmap":Landroid/graphics/Bitmap;
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 746
    .local v13, "outputStream":Ljava/io/ByteArrayOutputStream;
    if-eqz v21, :cond_4

    .line 747
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    .line 748
    .local v22, "srcHeight":I
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v24

    .line 749
    .local v24, "srcWidth":I
    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v26, v0

    const/high16 v27, 0x42f00000    # 120.0f

    div-float v8, v26, v27

    .line 750
    .local v8, "heightRate":F
    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v26, v0

    const/high16 v27, 0x43200000    # 160.0f

    div-float v25, v26, v27

    .line 753
    .local v25, "widhtRate":F
    cmpl-float v26, v8, v25

    if-lez v26, :cond_3

    .line 754
    const/16 v17, 0x78

    .line 755
    .local v17, "scaledHeight":I
    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v26, v26, v8

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v19, v0

    .line 769
    .local v19, "scaledWidth":I
    :goto_0
    const/16 v26, 0xa0

    const/16 v27, 0x78

    sget-object v28, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v26 .. v28}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 771
    .local v5, "dstBitmap":Landroid/graphics/Bitmap;
    const/high16 v26, -0x1000000

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 773
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 774
    .local v4, "c":Landroid/graphics/Canvas;
    move/from16 v0, v19

    rsub-int v0, v0, 0xa0

    move/from16 v26, v0

    div-int/lit8 v15, v26, 0x2

    .line 775
    .local v15, "paddingWidth":I
    rsub-int/lit8 v26, v17, 0x78

    div-int/lit8 v14, v26, 0x2

    .line 777
    .local v14, "paddingHeight":I
    const/16 v26, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v17

    move/from16 v3, v26

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 780
    .local v18, "scaledThumbnailBitmap":Landroid/graphics/Bitmap;
    int-to-float v0, v15

    move/from16 v26, v0

    int-to-float v0, v14

    move/from16 v27, v0

    new-instance v28, Landroid/graphics/Paint;

    invoke-direct/range {v28 .. v28}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v18

    move/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 781
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v26

    if-nez v26, :cond_0

    .line 782
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->recycle()V

    .line 785
    :cond_0
    sget-object v26, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v27, 0x64

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v5, v0, v1, v13}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 786
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v26

    if-nez v26, :cond_1

    .line 787
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 794
    :cond_1
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v26

    if-nez v26, :cond_2

    .line 795
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->recycle()V

    .line 798
    :cond_2
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v23

    .line 799
    .local v23, "srcImage":[B
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    add-int/lit16 v0, v0, 0x400

    move/from16 v26, v0

    move/from16 v0, v26

    new-array v10, v0, [B

    .line 801
    .local v10, "integratedImage":[B
    const/4 v9, 0x0

    .line 803
    .local v9, "imageLength":I
    :try_start_0
    move-object/from16 v0, v23

    invoke-static {v0, v10}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->integrateJfif([B[B)I
    :try_end_0
    .catch Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/IntegrationMakerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 811
    :goto_1
    invoke-static {v10}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->skipApp0OrApp1Marker([B)I

    move-result v11

    .line 812
    .local v11, "offset":I
    sub-int v26, v9, v11

    sget-object v27, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->SOI_MARKER:[B

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    add-int v20, v26, v27

    .line 813
    .local v20, "size":I
    move/from16 v0, v20

    new-array v6, v0, [B

    .line 816
    .local v6, "dstImage":[B
    const/16 v26, 0x0

    sget-object v27, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->SOI_MARKER:[B

    const/16 v28, 0x0

    aget-byte v27, v27, v28

    aput-byte v27, v6, v26

    .line 817
    const/16 v26, 0x1

    sget-object v27, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->SOI_MARKER:[B

    const/16 v28, 0x1

    aget-byte v27, v27, v28

    aput-byte v27, v6, v26

    .line 820
    sget-object v26, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->SOI_MARKER:[B

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    array-length v0, v6

    move/from16 v27, v0

    sget-object v28, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->SOI_MARKER:[B

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    sub-int v27, v27, v28

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v10, v11, v6, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 824
    const/4 v10, 0x0

    .line 826
    :try_start_1
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 831
    .end local v4    # "c":Landroid/graphics/Canvas;
    .end local v5    # "dstBitmap":Landroid/graphics/Bitmap;
    .end local v6    # "dstImage":[B
    .end local v8    # "heightRate":F
    .end local v9    # "imageLength":I
    .end local v10    # "integratedImage":[B
    .end local v11    # "offset":I
    .end local v14    # "paddingHeight":I
    .end local v15    # "paddingWidth":I
    .end local v17    # "scaledHeight":I
    .end local v18    # "scaledThumbnailBitmap":Landroid/graphics/Bitmap;
    .end local v19    # "scaledWidth":I
    .end local v20    # "size":I
    .end local v22    # "srcHeight":I
    .end local v23    # "srcImage":[B
    .end local v24    # "srcWidth":I
    .end local v25    # "widhtRate":F
    :goto_2
    return-object v6

    .line 757
    .restart local v8    # "heightRate":F
    .restart local v22    # "srcHeight":I
    .restart local v24    # "srcWidth":I
    .restart local v25    # "widhtRate":F
    :cond_3
    const/16 v19, 0xa0

    .line 758
    .restart local v19    # "scaledWidth":I
    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v26, v26, v25

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v17, v0

    .restart local v17    # "scaledHeight":I
    goto/16 :goto_0

    .line 790
    .end local v8    # "heightRate":F
    .end local v17    # "scaledHeight":I
    .end local v19    # "scaledWidth":I
    .end local v22    # "srcHeight":I
    .end local v24    # "srcWidth":I
    .end local v25    # "widhtRate":F
    :cond_4
    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v6, v0, [B

    goto :goto_2

    .line 804
    .restart local v4    # "c":Landroid/graphics/Canvas;
    .restart local v5    # "dstBitmap":Landroid/graphics/Bitmap;
    .restart local v8    # "heightRate":F
    .restart local v9    # "imageLength":I
    .restart local v10    # "integratedImage":[B
    .restart local v14    # "paddingHeight":I
    .restart local v15    # "paddingWidth":I
    .restart local v17    # "scaledHeight":I
    .restart local v18    # "scaledThumbnailBitmap":Landroid/graphics/Bitmap;
    .restart local v19    # "scaledWidth":I
    .restart local v22    # "srcHeight":I
    .restart local v23    # "srcImage":[B
    .restart local v24    # "srcWidth":I
    .restart local v25    # "widhtRate":F
    :catch_0
    move-exception v7

    .line 806
    .local v7, "e":Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/IntegrationMakerException;
    move-object/from16 v10, v23

    .line 807
    array-length v9, v10

    goto :goto_1

    .line 827
    .end local v7    # "e":Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/IntegrationMakerException;
    .restart local v6    # "dstImage":[B
    .restart local v11    # "offset":I
    .restart local v20    # "size":I
    :catch_1
    move-exception v7

    .line 828
    .local v7, "e":Ljava/io/IOException;
    const-string v26, "Yuv2ExifJpegConvertor"

    const-string v27, "Closing output stream failed."

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v7}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private static getSegmentLength([BI)I
    .locals 3
    .param p0, "inputByte"    # [B
    .param p1, "segmentIndex"    # I

    .prologue
    .line 938
    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    add-int v0, v1, v2

    .line 940
    .local v0, "segmentLength":I
    return v0
.end method

.method private static getSegmentNum([BB)I
    .locals 7
    .param p0, "inputByte"    # [B
    .param p1, "marker"    # B

    .prologue
    const/4 v3, -0x1

    .line 450
    const/4 v0, 0x0

    .line 451
    .local v0, "byteCnt":I
    if-eqz p0, :cond_0

    array-length v4, p0

    const/4 v5, 0x2

    if-lt v4, v5, :cond_0

    aget-byte v4, p0, v0

    if-ne v4, v3, :cond_0

    const/4 v4, 0x1

    aget-byte v4, p0, v4

    const/16 v5, -0x28

    if-eq v4, v5, :cond_2

    .line 455
    :cond_0
    const-string v4, "Yuv2ExifJpegConvertor"

    const-string v5, "Invalid SOI marker."

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 496
    :cond_1
    :goto_0
    return v2

    .line 460
    :cond_2
    add-int/lit8 v0, v0, 0x2

    .line 463
    const/4 v2, 0x0

    .line 464
    .local v2, "segmentNum":I
    :goto_1
    array-length v4, p0

    add-int/lit8 v4, v4, -0x3

    if-ge v0, v4, :cond_1

    .line 467
    aget-byte v4, p0, v0

    if-eq v4, v3, :cond_3

    .line 468
    const-string v4, "Yuv2ExifJpegConvertor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid marker identifier code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-byte v6, p0, v0

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 470
    goto :goto_0

    .line 474
    :cond_3
    add-int/lit8 v4, v0, 0x1

    aget-byte v4, p0, v4

    const/16 v5, -0x26

    if-eq v4, v5, :cond_1

    .line 478
    add-int/lit8 v4, v0, 0x1

    aget-byte v4, p0, v4

    if-ne v4, p1, :cond_4

    .line 480
    add-int/lit8 v2, v2, 0x1

    .line 487
    :cond_4
    invoke-static {p0, v0}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->getSegmentLength([BI)I

    move-result v1

    .line 492
    .local v1, "segmentLength":I
    add-int/lit8 v4, v1, 0x2

    add-int/2addr v0, v4

    .line 493
    goto :goto_1
.end method

.method public static integrateJfif([B[B)I
    .locals 28
    .param p0, "srcJpegData"    # [B
    .param p1, "dstJpegData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/IntegrationMakerException;
        }
    .end annotation

    .prologue
    .line 233
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v25, v0

    .line 236
    .local v25, "srcJpegDataLength":I
    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v15, v0, [B

    .line 238
    .local v15, "getData":[B
    const/4 v9, 0x0

    .line 241
    .local v9, "accessCount":I
    const/4 v8, 0x0

    .line 242
    .local v8, "FFDB_seg_length":I
    const/4 v6, 0x0

    .line 243
    .local v6, "FFC4_seg_length":I
    const/4 v7, 0x0

    .line 244
    .local v7, "FFDB_orgfile_length":I
    const/4 v5, 0x0

    .line 248
    .local v5, "FFC4_orgfile_length":I
    :cond_0
    :goto_0
    add-int/lit8 v26, v9, 0x1

    move/from16 v0, v26

    move/from16 v1, v25

    if-ge v0, v1, :cond_2

    .line 250
    const/16 v26, 0x0

    aget-byte v27, p0, v9

    aput-byte v27, v15, v26

    .line 251
    const/16 v26, 0x1

    add-int/lit8 v27, v9, 0x1

    aget-byte v27, p0, v27

    aput-byte v27, v15, v26

    .line 252
    add-int/lit8 v9, v9, 0x2

    .line 255
    const/16 v26, -0x1

    const/16 v27, 0x0

    aget-byte v27, v15, v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_1

    .line 256
    new-instance v26, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/IntegrationMakerException;

    const-string v27, "No \'FF\' marker."

    invoke-direct/range {v26 .. v27}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/IntegrationMakerException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 260
    :cond_1
    const/16 v26, -0x26

    const/16 v27, 0x1

    aget-byte v27, v15, v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_3

    .line 288
    :cond_2
    add-int/lit8 v26, v8, 0x2

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v20, v0

    .line 289
    .local v20, "pFFDB":[B
    add-int/lit8 v26, v6, 0x2

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v18, v0

    .line 292
    .local v18, "pFFC4":[B
    const/16 v26, 0x0

    const/16 v27, -0x1

    aput-byte v27, v20, v26

    .line 293
    const/16 v26, 0x1

    const/16 v27, -0x25

    aput-byte v27, v20, v26

    .line 294
    const/16 v26, 0x0

    const/16 v27, -0x1

    aput-byte v27, v18, v26

    .line 295
    const/16 v26, 0x1

    const/16 v27, -0x3c

    aput-byte v27, v18, v26

    .line 297
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    .line 298
    .local v14, "ffdb_length":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    .line 300
    .local v13, "ffc4_length":Ljava/lang/String;
    new-instance v11, Ljava/math/BigInteger;

    invoke-direct {v11, v14}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 301
    .local v11, "bigIntLen":Ljava/math/BigInteger;
    invoke-virtual {v11}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v12

    .line 302
    .local v12, "bytes":[B
    const/16 v26, 0x2

    const/16 v27, 0x0

    aget-byte v27, v12, v27

    aput-byte v27, v20, v26

    .line 303
    const/16 v26, 0x3

    const/16 v27, 0x1

    aget-byte v27, v12, v27

    aput-byte v27, v20, v26

    .line 305
    new-instance v11, Ljava/math/BigInteger;

    .end local v11    # "bigIntLen":Ljava/math/BigInteger;
    invoke-direct {v11, v13}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 306
    .restart local v11    # "bigIntLen":Ljava/math/BigInteger;
    invoke-virtual {v11}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v12

    .line 307
    const/16 v26, 0x2

    const/16 v27, 0x0

    aget-byte v27, v12, v27

    aput-byte v27, v18, v26

    .line 308
    const/16 v26, 0x3

    const/16 v27, 0x1

    aget-byte v27, v12, v27

    aput-byte v27, v18, v26

    .line 310
    const/16 v21, 0x4

    .line 311
    .local v21, "pFFDBPos":I
    const/16 v19, 0x4

    .line 314
    .local v19, "pFFC4Pos":I
    sub-int v26, v25, v7

    sub-int v26, v26, v5

    add-int v26, v26, v8

    add-int/lit8 v26, v26, 0x2

    add-int v26, v26, v6

    add-int/lit8 v16, v26, 0x2

    .line 321
    .local v16, "integratedJpegDataLength":I
    move-object/from16 v22, p1

    .line 324
    .local v22, "pIntegratedJpegData":[B
    const/4 v9, 0x0

    .line 325
    const/16 v23, 0x0

    .line 326
    .local v23, "pos":I
    :goto_1
    add-int/lit8 v26, v9, 0x1

    move/from16 v0, v26

    move/from16 v1, v25

    if-ge v0, v1, :cond_9

    .line 327
    const/16 v26, 0x0

    aget-byte v27, p0, v9

    aput-byte v27, v15, v26

    .line 328
    const/16 v26, 0x1

    add-int/lit8 v27, v9, 0x1

    aget-byte v27, p0, v27

    aput-byte v27, v15, v26

    .line 329
    add-int/lit8 v9, v9, 0x2

    .line 331
    const/16 v26, -0x1

    const/16 v27, 0x0

    aget-byte v27, v15, v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_8

    .line 332
    new-instance v26, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/IntegrationMakerException;

    const-string v27, "No \'FF\' marker."

    invoke-direct/range {v26 .. v27}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/IntegrationMakerException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 262
    .end local v11    # "bigIntLen":Ljava/math/BigInteger;
    .end local v12    # "bytes":[B
    .end local v13    # "ffc4_length":Ljava/lang/String;
    .end local v14    # "ffdb_length":Ljava/lang/String;
    .end local v16    # "integratedJpegDataLength":I
    .end local v18    # "pFFC4":[B
    .end local v19    # "pFFC4Pos":I
    .end local v20    # "pFFDB":[B
    .end local v21    # "pFFDBPos":I
    .end local v22    # "pIntegratedJpegData":[B
    .end local v23    # "pos":I
    :cond_3
    const/16 v26, -0x28

    const/16 v27, 0x1

    aget-byte v27, v15, v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_0

    .line 268
    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 269
    .local v17, "len":[B
    const/16 v26, 0x0

    aget-byte v27, p0, v9

    aput-byte v27, v17, v26

    .line 270
    const/16 v26, 0x1

    add-int/lit8 v27, v9, 0x1

    aget-byte v27, p0, v27

    aput-byte v27, v17, v26

    .line 271
    new-instance v10, Ljava/math/BigInteger;

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Ljava/math/BigInteger;-><init>([B)V

    .line 272
    .local v10, "bi":Ljava/math/BigInteger;
    invoke-virtual {v10}, Ljava/math/BigInteger;->intValue()I

    move-result v24

    .line 274
    .local v24, "segmentLength":I
    const/16 v26, -0x3c

    const/16 v27, 0x1

    aget-byte v27, v15, v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_6

    .line 277
    if-nez v6, :cond_5

    move/from16 v26, v24

    :goto_2
    add-int v6, v6, v26

    .line 278
    add-int/lit8 v26, v24, 0x2

    add-int v5, v5, v26

    .line 285
    :cond_4
    :goto_3
    add-int v9, v9, v24

    .line 286
    goto/16 :goto_0

    .line 277
    :cond_5
    add-int/lit8 v26, v24, -0x2

    goto :goto_2

    .line 279
    :cond_6
    const/16 v26, -0x25

    const/16 v27, 0x1

    aget-byte v27, v15, v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_4

    .line 282
    if-nez v8, :cond_7

    move/from16 v26, v24

    :goto_4
    add-int v8, v8, v26

    .line 283
    add-int/lit8 v26, v24, 0x2

    add-int v7, v7, v26

    goto :goto_3

    .line 282
    :cond_7
    add-int/lit8 v26, v24, -0x2

    goto :goto_4

    .line 335
    .end local v10    # "bi":Ljava/math/BigInteger;
    .end local v17    # "len":[B
    .end local v24    # "segmentLength":I
    .restart local v11    # "bigIntLen":Ljava/math/BigInteger;
    .restart local v12    # "bytes":[B
    .restart local v13    # "ffc4_length":Ljava/lang/String;
    .restart local v14    # "ffdb_length":Ljava/lang/String;
    .restart local v16    # "integratedJpegDataLength":I
    .restart local v18    # "pFFC4":[B
    .restart local v19    # "pFFC4Pos":I
    .restart local v20    # "pFFDB":[B
    .restart local v21    # "pFFDBPos":I
    .restart local v22    # "pIntegratedJpegData":[B
    .restart local v23    # "pos":I
    :cond_8
    const/16 v26, -0x26

    const/16 v27, 0x1

    aget-byte v27, v15, v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_a

    .line 339
    const/16 v26, 0x0

    add-int/lit8 v27, v8, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v26

    move-object/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v27

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 340
    add-int/lit8 v26, v8, 0x2

    add-int v23, v23, v26

    .line 342
    const/16 v26, 0x0

    add-int/lit8 v27, v6, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v26

    move-object/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v27

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 343
    add-int/lit8 v26, v6, 0x2

    add-int v23, v23, v26

    .line 346
    add-int/lit8 v26, v9, -0x2

    add-int/lit8 v27, v9, -0x2

    sub-int v27, v25, v27

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v27

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 377
    :cond_9
    return v16

    .line 349
    :cond_a
    const/16 v26, -0x28

    const/16 v27, 0x1

    aget-byte v27, v15, v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_b

    .line 351
    add-int/lit8 v26, v9, -0x2

    const/16 v27, 0x0

    aget-byte v27, v15, v27

    aput-byte v27, v22, v26

    .line 352
    add-int/lit8 v26, v9, -0x1

    const/16 v27, 0x1

    aget-byte v27, v15, v27

    aput-byte v27, v22, v26

    .line 353
    add-int/lit8 v23, v23, 0x2

    .line 354
    goto/16 :goto_1

    .line 357
    :cond_b
    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 358
    .restart local v17    # "len":[B
    const/16 v26, 0x0

    aget-byte v27, p0, v9

    aput-byte v27, v17, v26

    .line 359
    const/16 v26, 0x1

    add-int/lit8 v27, v9, 0x1

    aget-byte v27, p0, v27

    aput-byte v27, v17, v26

    .line 360
    new-instance v10, Ljava/math/BigInteger;

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Ljava/math/BigInteger;-><init>([B)V

    .line 361
    .restart local v10    # "bi":Ljava/math/BigInteger;
    invoke-virtual {v10}, Ljava/math/BigInteger;->intValue()I

    move-result v24

    .line 363
    .restart local v24    # "segmentLength":I
    const/16 v26, -0x3c

    const/16 v27, 0x1

    aget-byte v27, v15, v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_c

    .line 364
    add-int/lit8 v26, v9, 0x2

    add-int/lit8 v27, v24, -0x2

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v27

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 365
    add-int/lit8 v26, v24, -0x2

    add-int v19, v19, v26

    .line 374
    :goto_5
    add-int v9, v9, v24

    .line 375
    goto/16 :goto_1

    .line 366
    :cond_c
    const/16 v26, -0x25

    const/16 v27, 0x1

    aget-byte v27, v15, v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_d

    .line 367
    add-int/lit8 v26, v9, 0x2

    add-int/lit8 v27, v24, -0x2

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v27

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 368
    add-int/lit8 v26, v24, -0x2

    add-int v21, v21, v26

    goto :goto_5

    .line 370
    :cond_d
    add-int/lit8 v26, v9, -0x2

    add-int/lit8 v27, v24, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v27

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 372
    add-int/lit8 v26, v24, 0x2

    add-int v23, v23, v26

    goto :goto_5
.end method

.method public static skipApp0OrApp1Marker([B)I
    .locals 7
    .param p0, "inputByte"    # [B

    .prologue
    const/4 v1, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 663
    const/4 v0, 0x0

    .line 664
    .local v0, "byteCnt":I
    const/4 v2, 0x0

    .line 667
    .local v2, "siftSize":I
    array-length v3, p0

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    aget-byte v3, p0, v5

    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->SOI_MARKER:[B

    aget-byte v4, v4, v5

    if-ne v3, v4, :cond_0

    aget-byte v3, p0, v6

    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->SOI_MARKER:[B

    aget-byte v4, v4, v6

    if-eq v3, v4, :cond_1

    .line 716
    :cond_0
    :goto_0
    return v1

    .line 675
    :cond_1
    add-int/lit8 v0, v0, 0x2

    .line 678
    :goto_1
    array-length v3, p0

    add-int/lit8 v3, v3, -0x3

    if-ge v0, v3, :cond_0

    .line 681
    aget-byte v3, p0, v0

    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->APP0_MARKER:[B

    aget-byte v4, v4, v5

    if-eq v3, v4, :cond_2

    aget-byte v3, p0, v0

    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->APP1_MARKER:[B

    aget-byte v4, v4, v5

    if-ne v3, v4, :cond_0

    .line 686
    :cond_2
    invoke-static {p0, v0}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->getSegmentLength([BI)I

    move-result v2

    .line 689
    aget-byte v3, p0, v0

    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->APP0_MARKER:[B

    aget-byte v4, v4, v5

    if-ne v3, v4, :cond_3

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p0, v3

    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->APP0_MARKER:[B

    aget-byte v4, v4, v6

    if-ne v3, v4, :cond_3

    .line 691
    sget-object v3, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->APP0_MARKER:[B

    array-length v3, v3

    add-int/2addr v3, v0

    add-int v1, v3, v2

    .line 696
    .local v1, "index":I
    goto :goto_0

    .line 699
    .end local v1    # "index":I
    :cond_3
    aget-byte v3, p0, v0

    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->APP1_MARKER:[B

    aget-byte v4, v4, v5

    if-ne v3, v4, :cond_4

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p0, v3

    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->APP1_MARKER:[B

    aget-byte v4, v4, v6

    if-ne v3, v4, :cond_4

    .line 701
    sget-object v3, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/Yuv2ExifJpegConvertor;->APP1_MARKER:[B

    array-length v3, v3

    add-int/2addr v3, v0

    add-int v1, v3, v2

    .line 707
    .restart local v1    # "index":I
    goto :goto_0

    .line 711
    .end local v1    # "index":I
    :cond_4
    add-int/2addr v0, v2

    goto :goto_1
.end method
