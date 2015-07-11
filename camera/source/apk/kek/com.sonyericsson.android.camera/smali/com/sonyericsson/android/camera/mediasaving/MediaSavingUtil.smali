.class public Lcom/sonyericsson/android/camera/mediasaving/MediaSavingUtil;
.super Ljava/lang/Object;
.source "MediaSavingUtil.java"


# static fields
.field private static final APP0_MARKER:[B

.field private static final EXIF_THUMBNAIL_HEIGHT:I = 0x78

.field private static final EXIF_THUMBNAIL_WIDTH:I = 0xa0

.field public static final HEADER_MARGIN:I = 0x400

.field private static final M_DHT:I = 0xc4

.field private static final M_DQT:I = 0xdb

.field private static final M_MARKER:I = 0xff

.field private static final M_SOI:I = 0xd8

.field private static final M_SOS:I = 0xda

.field private static final SIZE_OF_ONE_BYTE:I = 0x8

.field private static final SOI_MARKER:[B

.field static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 43
    const-class v0, Lcom/sonyericsson/android/camera/mediasaving/MediaSavingUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/mediasaving/MediaSavingUtil;->TAG:Ljava/lang/String;

    .line 227
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sonyericsson/android/camera/mediasaving/MediaSavingUtil;->SOI_MARKER:[B

    .line 230
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sonyericsson/android/camera/mediasaving/MediaSavingUtil;->APP0_MARKER:[B

    return-void

    .line 227
    :array_0
    .array-data 1
        -0x1t
        -0x28t
    .end array-data

    .line 230
    nop

    :array_1
    .array-data 1
        -0x1t
        -0x20t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addExifHeader(Ljava/io/OutputStream;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;[B)I
    .locals 8
    .param p0, "outputStream"    # Ljava/io/OutputStream;
    .param p1, "request"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;
    .param p2, "thumbnailData"    # [B

    .prologue
    .line 404
    invoke-static {p1, p2}, Lcom/sonyericsson/android/camera/mediasaving/ExifOption;->create(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;[B)Lcom/sonyericsson/android/camera/mediasaving/ExifOption;

    move-result-object v2

    .line 406
    .local v2, "exifOption":Lcom/sonyericsson/android/camera/mediasaving/ExifOption;
    invoke-static {}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->getLength()I

    move-result v4

    iget-wide v6, v2, Lcom/sonyericsson/android/camera/mediasaving/ExifOption;->mThumbnailDataLength:J

    long-to-int v5, v6

    add-int/2addr v4, v5

    new-array v0, v4, [B

    .line 407
    .local v0, "buffer":[B
    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/mediasaving/ExifFactory;->generate([BLcom/sonyericsson/android/camera/mediasaving/ExifOption;)I

    move-result v3

    .line 409
    .local v3, "length":I
    if-lez v3, :cond_0

    .line 411
    :try_start_0
    sget-object v4, Lcom/sonyericsson/android/camera/mediasaving/MediaSavingUtil;->SOI_MARKER:[B

    invoke-virtual {p0, v4}, Ljava/io/OutputStream;->write([B)V

    .line 412
    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 413
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 414
    sget-object v4, Lcom/sonyericsson/android/camera/mediasaving/MediaSavingUtil;->SOI_MARKER:[B

    array-length v4, v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v3, v4

    .line 421
    :cond_0
    :goto_0
    return v3

    .line 415
    :catch_0
    move-exception v1

    .line 416
    .local v1, "e":Ljava/io/IOException;
    sget-object v4, Lcom/sonyericsson/android/camera/mediasaving/MediaSavingUtil;->TAG:Ljava/lang/String;

    const-string v5, "Add exif header failed."

    invoke-static {v4, v5, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 417
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public static appendOnlyImageFromJfifData(Ljava/io/OutputStream;[BI)V
    .locals 4
    .param p0, "outputStream"    # Ljava/io/OutputStream;
    .param p1, "jfifByte"    # [B
    .param p2, "length"    # I

    .prologue
    .line 426
    invoke-static {p1}, Lcom/sonyericsson/android/camera/mediasaving/MediaSavingUtil;->skipApp0Marker([B)I

    move-result v1

    .line 430
    .local v1, "index":I
    if-lez v1, :cond_0

    .line 433
    sub-int v2, p2, v1

    :try_start_0
    invoke-virtual {p0, p1, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 434
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    :cond_0
    :goto_0
    return-void

    .line 435
    :catch_0
    move-exception v0

    .line 436
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Lcom/sonyericsson/android/camera/mediasaving/MediaSavingUtil;->TAG:Ljava/lang/String;

    const-string v3, "Append image data failed."

    invoke-static {v2, v3, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static convertYuvToJpegOutputStream(Landroid/graphics/YuvImage;Ljava/io/OutputStream;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;)Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;
    .locals 13
    .param p0, "image"    # Landroid/graphics/YuvImage;
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "request"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    .prologue
    const/4 v12, 0x0

    .line 173
    sget-object v6, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->FAIL:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    .line 176
    .local v6, "result":Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;
    const/4 v9, 0x2

    invoke-static {v9}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(I)I

    move-result v5

    .line 178
    .local v5, "quality":I
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 179
    .local v2, "imageOutputStream":Ljava/io/ByteArrayOutputStream;
    new-array v3, v12, [B

    .line 180
    .local v3, "integratedImage":[B
    const/4 v1, 0x0

    .line 181
    .local v1, "imageLength":I
    new-instance v9, Landroid/graphics/Rect;

    iget-object v10, p2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v10, v10, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->width:I

    iget-object v11, p2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v11, v11, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->height:I

    invoke-direct {v9, v12, v12, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v9, v5, v2}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 184
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .line 185
    .local v7, "srcImage":[B
    array-length v9, v7

    add-int/lit16 v9, v9, 0x400

    new-array v3, v9, [B

    .line 187
    :try_start_0
    invoke-static {v7, v3}, Lcom/sonyericsson/android/camera/mediasaving/MediaSavingUtil;->integrateJfif([B[B)I
    :try_end_0
    .catch Lcom/sonyericsson/android/camera/mediasaving/IntegrationMakerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 197
    .end local v7    # "srcImage":[B
    :cond_0
    :goto_0
    :try_start_1
    invoke-static {v3, p2}, Lcom/sonyericsson/android/camera/mediasaving/MediaSavingUtil;->getExifThumbnail([BLcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;)[B

    move-result-object v8

    .line 198
    .local v8, "thumbnailData":[B
    invoke-static {p1, p2, v8}, Lcom/sonyericsson/android/camera/mediasaving/MediaSavingUtil;->addExifHeader(Ljava/io/OutputStream;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;[B)I

    move-result v4

    .line 199
    .local v4, "length":I
    if-lez v4, :cond_2

    .line 201
    invoke-static {p1, v3, v1}, Lcom/sonyericsson/android/camera/mediasaving/MediaSavingUtil;->appendOnlyImageFromJfifData(Ljava/io/OutputStream;[BI)V

    .line 203
    sget-object v6, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->SUCCESS:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    :goto_1
    if-eqz v2, :cond_1

    .line 212
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 221
    .end local v4    # "length":I
    .end local v8    # "thumbnailData":[B
    :cond_1
    :goto_2
    return-object v6

    .line 188
    .restart local v7    # "srcImage":[B
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Lcom/sonyericsson/android/camera/mediasaving/IntegrationMakerException;
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 191
    array-length v1, v3

    goto :goto_0

    .line 205
    .end local v0    # "e":Lcom/sonyericsson/android/camera/mediasaving/IntegrationMakerException;
    .end local v7    # "srcImage":[B
    .restart local v4    # "length":I
    .restart local v8    # "thumbnailData":[B
    :cond_2
    :try_start_3
    sget-object v9, Lcom/sonyericsson/android/camera/mediasaving/MediaSavingUtil;->TAG:Ljava/lang/String;

    const-string v10, "addExifHeader failed."

    invoke-static {v9, v10}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 207
    .end local v4    # "length":I
    .end local v8    # "thumbnailData":[B
    :catch_1
    move-exception v0

    .line 208
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    sget-object v9, Lcom/sonyericsson/android/camera/mediasaving/MediaSavingUtil;->TAG:Ljava/lang/String;

    const-string v10, "saveImage failed."

    invoke-static {v9, v10, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 210
    if-eqz v2, :cond_1

    .line 212
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 213
    :catch_2
    move-exception v0

    .line 215
    .local v0, "e":Ljava/io/IOException;
    sget-object v9, Lcom/sonyericsson/android/camera/mediasaving/MediaSavingUtil;->TAG:Ljava/lang/String;

    const-string v10, "Closing output stream failed."

    invoke-static {v9, v10, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 216
    const/4 v2, 0x0

    .line 217
    goto :goto_2

    .line 213
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v4    # "length":I
    .restart local v8    # "thumbnailData":[B
    :catch_3
    move-exception v0

    .line 215
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v9, Lcom/sonyericsson/android/camera/mediasaving/MediaSavingUtil;->TAG:Ljava/lang/String;

    const-string v10, "Closing output stream failed."

    invoke-static {v9, v10, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 216
    const/4 v2, 0x0

    .line 217
    goto :goto_2

    .line 210
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "length":I
    .end local v8    # "thumbnailData":[B
    :catchall_0
    move-exception v9

    if-eqz v2, :cond_3

    .line 212
    :try_start_6
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 217
    :cond_3
    :goto_3
    throw v9

    .line 213
    :catch_4
    move-exception v0

    .line 215
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v10, Lcom/sonyericsson/android/camera/mediasaving/MediaSavingUtil;->TAG:Ljava/lang/String;

    const-string v11, "Closing output stream failed."

    invoke-static {v10, v11, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 216
    const/4 v2, 0x0

    goto :goto_3
.end method

.method public static getExifThumbnail([BLcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;)[B
    .locals 29
    .param p0, "jfifData"    # [B
    .param p1, "request"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    .prologue
    .line 507
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->width:I

    move/from16 v26, v0

    move/from16 v0, v26

    div-int/lit16 v0, v0, 0xa0

    move/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->height:I

    move/from16 v27, v0

    div-int/lit8 v27, v27, 0x78

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 512
    .local v16, "sampleSize":I
    new-instance v12, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v12}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 513
    .local v12, "option":Landroid/graphics/BitmapFactory$Options;
    const/16 v26, 0x0

    move/from16 v0, v26

    iput-boolean v0, v12, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 514
    const/16 v26, 0x0

    move/from16 v0, v26

    iput-boolean v0, v12, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 515
    sget-object v26, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v26

    iput-object v0, v12, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 516
    move/from16 v0, v16

    iput v0, v12, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 518
    const/16 v26, 0x0

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v0, v1, v2, v12}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v21

    .line 520
    .local v21, "srcBitmap":Landroid/graphics/Bitmap;
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 522
    .local v13, "outputStream":Ljava/io/ByteArrayOutputStream;
    if-eqz v21, :cond_4

    .line 523
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    .line 524
    .local v22, "srcHeight":I
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v24

    .line 525
    .local v24, "srcWidth":I
    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v26, v0

    const/high16 v27, 0x42f00000    # 120.0f

    div-float v8, v26, v27

    .line 526
    .local v8, "heightRate":F
    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v26, v0

    const/high16 v27, 0x43200000    # 160.0f

    div-float v25, v26, v27

    .line 529
    .local v25, "widhtRate":F
    cmpl-float v26, v8, v25

    if-lez v26, :cond_3

    .line 530
    const/16 v17, 0x78

    .line 531
    .local v17, "scaledHeight":I
    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v26, v26, v8

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v19, v0

    .line 545
    .local v19, "scaledWidth":I
    :goto_0
    const/16 v26, 0xa0

    const/16 v27, 0x78

    sget-object v28, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v26 .. v28}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 547
    .local v5, "dstBitmap":Landroid/graphics/Bitmap;
    const/high16 v26, -0x1000000

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 549
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 550
    .local v4, "c":Landroid/graphics/Canvas;
    move/from16 v0, v19

    rsub-int v0, v0, 0xa0

    move/from16 v26, v0

    div-int/lit8 v15, v26, 0x2

    .line 551
    .local v15, "paddingWidth":I
    rsub-int/lit8 v26, v17, 0x78

    div-int/lit8 v14, v26, 0x2

    .line 553
    .local v14, "paddingHeight":I
    const/16 v26, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v17

    move/from16 v3, v26

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 556
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

    .line 557
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v26

    if-nez v26, :cond_0

    .line 558
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->recycle()V

    .line 561
    :cond_0
    sget-object v26, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v27, 0x64

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v5, v0, v1, v13}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 562
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v26

    if-nez v26, :cond_1

    .line 563
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 570
    :cond_1
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v26

    if-nez v26, :cond_2

    .line 571
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->recycle()V

    .line 574
    :cond_2
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v23

    .line 575
    .local v23, "srcImage":[B
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    add-int/lit16 v0, v0, 0x400

    move/from16 v26, v0

    move/from16 v0, v26

    new-array v10, v0, [B

    .line 577
    .local v10, "integratedImage":[B
    const/4 v9, 0x0

    .line 579
    .local v9, "imageLength":I
    :try_start_0
    move-object/from16 v0, v23

    invoke-static {v0, v10}, Lcom/sonyericsson/android/camera/mediasaving/MediaSavingUtil;->integrateJfif([B[B)I
    :try_end_0
    .catch Lcom/sonyericsson/android/camera/mediasaving/IntegrationMakerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 587
    :goto_1
    invoke-static {v10}, Lcom/sonyericsson/android/camera/mediasaving/MediaSavingUtil;->skipApp0Marker([B)I

    move-result v11

    .line 588
    .local v11, "offset":I
    sub-int v26, v9, v11

    sget-object v27, Lcom/sonyericsson/android/camera/mediasaving/MediaSavingUtil;->SOI_MARKER:[B

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    add-int v20, v26, v27

    .line 589
    .local v20, "size":I
    move/from16 v0, v20

    new-array v6, v0, [B

    .line 592
    .local v6, "dstImage":[B
    const/16 v26, 0x0

    sget-object v27, Lcom/sonyericsson/android/camera/mediasaving/MediaSavingUtil;->SOI_MARKER:[B

    const/16 v28, 0x0

    aget-byte v27, v27, v28

    aput-byte v27, v6, v26

    .line 593
    const/16 v26, 0x1

    sget-object v27, Lcom/sonyericsson/android/camera/mediasaving/MediaSavingUtil;->SOI_MARKER:[B

    const/16 v28, 0x1

    aget-byte v27, v27, v28

    aput-byte v27, v6, v26

    .line 596
    sget-object v26, Lcom/sonyericsson/android/camera/mediasaving/MediaSavingUtil;->SOI_MARKER:[B

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    array-length v0, v6

    move/from16 v27, v0

    sget-object v28, Lcom/sonyericsson/android/camera/mediasaving/MediaSavingUtil;->SOI_MARKER:[B

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    sub-int v27, v27, v28

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v10, v11, v6, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 600
    const/4 v10, 0x0

    .line 602
    :try_start_1
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 607
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

    .line 533
    .restart local v8    # "heightRate":F
    .restart local v22    # "srcHeight":I
    .restart local v24    # "srcWidth":I
    .restart local v25    # "widhtRate":F
    :cond_3
    const/16 v19, 0xa0

    .line 534
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

    .line 566
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

    .line 580
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

    .line 582
    .local v7, "e":Lcom/sonyericsson/android/camera/mediasaving/IntegrationMakerException;
    move-object/from16 v10, v23

    .line 583
    array-length v9, v10

    goto :goto_1

    .line 603
    .end local v7    # "e":Lcom/sonyericsson/android/camera/mediasaving/IntegrationMakerException;
    .restart local v6    # "dstImage":[B
    .restart local v11    # "offset":I
    .restart local v20    # "size":I
    :catch_1
    move-exception v7

    .line 604
    .local v7, "e":Ljava/io/IOException;
    sget-object v26, Lcom/sonyericsson/android/camera/mediasaving/MediaSavingUtil;->TAG:Ljava/lang/String;

    const-string v27, "Closing output stream failed."

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v7}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public static integrateJfif([B[B)I
    .locals 28
    .param p0, "srcJpegData"    # [B
    .param p1, "dstJpegData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/android/camera/mediasaving/IntegrationMakerException;
        }
    .end annotation

    .prologue
    .line 255
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v25, v0

    .line 258
    .local v25, "srcJpegDataLength":I
    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v15, v0, [B

    .line 260
    .local v15, "getData":[B
    const/4 v9, 0x0

    .line 263
    .local v9, "accessCount":I
    const/4 v8, 0x0

    .line 264
    .local v8, "FFDB_seg_length":I
    const/4 v6, 0x0

    .line 265
    .local v6, "FFC4_seg_length":I
    const/4 v7, 0x0

    .line 266
    .local v7, "FFDB_orgfile_length":I
    const/4 v5, 0x0

    .line 270
    .local v5, "FFC4_orgfile_length":I
    :cond_0
    :goto_0
    add-int/lit8 v26, v9, 0x1

    move/from16 v0, v26

    move/from16 v1, v25

    if-ge v0, v1, :cond_2

    .line 272
    const/16 v26, 0x0

    aget-byte v27, p0, v9

    aput-byte v27, v15, v26

    .line 273
    const/16 v26, 0x1

    add-int/lit8 v27, v9, 0x1

    aget-byte v27, p0, v27

    aput-byte v27, v15, v26

    .line 274
    add-int/lit8 v9, v9, 0x2

    .line 277
    const/16 v26, -0x1

    const/16 v27, 0x0

    aget-byte v27, v15, v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_1

    .line 278
    new-instance v26, Lcom/sonyericsson/android/camera/mediasaving/IntegrationMakerException;

    const-string v27, "No \'FF\' marker."

    invoke-direct/range {v26 .. v27}, Lcom/sonyericsson/android/camera/mediasaving/IntegrationMakerException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 282
    :cond_1
    const/16 v26, -0x26

    const/16 v27, 0x1

    aget-byte v27, v15, v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_3

    .line 310
    :cond_2
    add-int/lit8 v26, v8, 0x2

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v20, v0

    .line 311
    .local v20, "pFFDB":[B
    add-int/lit8 v26, v6, 0x2

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v18, v0

    .line 314
    .local v18, "pFFC4":[B
    const/16 v26, 0x0

    const/16 v27, -0x1

    aput-byte v27, v20, v26

    .line 315
    const/16 v26, 0x1

    const/16 v27, -0x25

    aput-byte v27, v20, v26

    .line 316
    const/16 v26, 0x0

    const/16 v27, -0x1

    aput-byte v27, v18, v26

    .line 317
    const/16 v26, 0x1

    const/16 v27, -0x3c

    aput-byte v27, v18, v26

    .line 319
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    .line 320
    .local v14, "ffdb_length":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    .line 322
    .local v13, "ffc4_length":Ljava/lang/String;
    new-instance v11, Ljava/math/BigInteger;

    invoke-direct {v11, v14}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 323
    .local v11, "bigIntLen":Ljava/math/BigInteger;
    invoke-virtual {v11}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v12

    .line 324
    .local v12, "bytes":[B
    const/16 v26, 0x2

    const/16 v27, 0x0

    aget-byte v27, v12, v27

    aput-byte v27, v20, v26

    .line 325
    const/16 v26, 0x3

    const/16 v27, 0x1

    aget-byte v27, v12, v27

    aput-byte v27, v20, v26

    .line 327
    new-instance v11, Ljava/math/BigInteger;

    .end local v11    # "bigIntLen":Ljava/math/BigInteger;
    invoke-direct {v11, v13}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 328
    .restart local v11    # "bigIntLen":Ljava/math/BigInteger;
    invoke-virtual {v11}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v12

    .line 329
    const/16 v26, 0x2

    const/16 v27, 0x0

    aget-byte v27, v12, v27

    aput-byte v27, v18, v26

    .line 330
    const/16 v26, 0x3

    const/16 v27, 0x1

    aget-byte v27, v12, v27

    aput-byte v27, v18, v26

    .line 332
    const/16 v21, 0x4

    .line 333
    .local v21, "pFFDBPos":I
    const/16 v19, 0x4

    .line 336
    .local v19, "pFFC4Pos":I
    sub-int v26, v25, v7

    sub-int v26, v26, v5

    add-int v26, v26, v8

    add-int/lit8 v26, v26, 0x2

    add-int v26, v26, v6

    add-int/lit8 v16, v26, 0x2

    .line 343
    .local v16, "integratedJpegDataLength":I
    move-object/from16 v22, p1

    .line 346
    .local v22, "pIntegratedJpegData":[B
    const/4 v9, 0x0

    .line 347
    const/16 v23, 0x0

    .line 348
    .local v23, "pos":I
    :goto_1
    add-int/lit8 v26, v9, 0x1

    move/from16 v0, v26

    move/from16 v1, v25

    if-ge v0, v1, :cond_9

    .line 349
    const/16 v26, 0x0

    aget-byte v27, p0, v9

    aput-byte v27, v15, v26

    .line 350
    const/16 v26, 0x1

    add-int/lit8 v27, v9, 0x1

    aget-byte v27, p0, v27

    aput-byte v27, v15, v26

    .line 351
    add-int/lit8 v9, v9, 0x2

    .line 353
    const/16 v26, -0x1

    const/16 v27, 0x0

    aget-byte v27, v15, v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_8

    .line 354
    new-instance v26, Lcom/sonyericsson/android/camera/mediasaving/IntegrationMakerException;

    const-string v27, "No \'FF\' marker."

    invoke-direct/range {v26 .. v27}, Lcom/sonyericsson/android/camera/mediasaving/IntegrationMakerException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 284
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

    .line 290
    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 291
    .local v17, "len":[B
    const/16 v26, 0x0

    aget-byte v27, p0, v9

    aput-byte v27, v17, v26

    .line 292
    const/16 v26, 0x1

    add-int/lit8 v27, v9, 0x1

    aget-byte v27, p0, v27

    aput-byte v27, v17, v26

    .line 293
    new-instance v10, Ljava/math/BigInteger;

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Ljava/math/BigInteger;-><init>([B)V

    .line 294
    .local v10, "bi":Ljava/math/BigInteger;
    invoke-virtual {v10}, Ljava/math/BigInteger;->intValue()I

    move-result v24

    .line 296
    .local v24, "segmentLength":I
    const/16 v26, -0x3c

    const/16 v27, 0x1

    aget-byte v27, v15, v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_6

    .line 299
    if-nez v6, :cond_5

    move/from16 v26, v24

    :goto_2
    add-int v6, v6, v26

    .line 300
    add-int/lit8 v26, v24, 0x2

    add-int v5, v5, v26

    .line 307
    :cond_4
    :goto_3
    add-int v9, v9, v24

    .line 308
    goto/16 :goto_0

    .line 299
    :cond_5
    add-int/lit8 v26, v24, -0x2

    goto :goto_2

    .line 301
    :cond_6
    const/16 v26, -0x25

    const/16 v27, 0x1

    aget-byte v27, v15, v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_4

    .line 304
    if-nez v8, :cond_7

    move/from16 v26, v24

    :goto_4
    add-int v8, v8, v26

    .line 305
    add-int/lit8 v26, v24, 0x2

    add-int v7, v7, v26

    goto :goto_3

    .line 304
    :cond_7
    add-int/lit8 v26, v24, -0x2

    goto :goto_4

    .line 357
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

    .line 361
    const/16 v26, 0x0

    add-int/lit8 v27, v8, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v26

    move-object/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v27

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 362
    add-int/lit8 v26, v8, 0x2

    add-int v23, v23, v26

    .line 364
    const/16 v26, 0x0

    add-int/lit8 v27, v6, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v26

    move-object/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v27

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 365
    add-int/lit8 v26, v6, 0x2

    add-int v23, v23, v26

    .line 368
    add-int/lit8 v26, v9, -0x2

    add-int/lit8 v27, v9, -0x2

    sub-int v27, v25, v27

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v27

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 399
    :cond_9
    return v16

    .line 371
    :cond_a
    const/16 v26, -0x28

    const/16 v27, 0x1

    aget-byte v27, v15, v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_b

    .line 373
    add-int/lit8 v26, v9, -0x2

    const/16 v27, 0x0

    aget-byte v27, v15, v27

    aput-byte v27, v22, v26

    .line 374
    add-int/lit8 v26, v9, -0x1

    const/16 v27, 0x1

    aget-byte v27, v15, v27

    aput-byte v27, v22, v26

    .line 375
    add-int/lit8 v23, v23, 0x2

    .line 376
    goto/16 :goto_1

    .line 379
    :cond_b
    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 380
    .restart local v17    # "len":[B
    const/16 v26, 0x0

    aget-byte v27, p0, v9

    aput-byte v27, v17, v26

    .line 381
    const/16 v26, 0x1

    add-int/lit8 v27, v9, 0x1

    aget-byte v27, p0, v27

    aput-byte v27, v17, v26

    .line 382
    new-instance v10, Ljava/math/BigInteger;

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Ljava/math/BigInteger;-><init>([B)V

    .line 383
    .restart local v10    # "bi":Ljava/math/BigInteger;
    invoke-virtual {v10}, Ljava/math/BigInteger;->intValue()I

    move-result v24

    .line 385
    .restart local v24    # "segmentLength":I
    const/16 v26, -0x3c

    const/16 v27, 0x1

    aget-byte v27, v15, v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_c

    .line 386
    add-int/lit8 v26, v9, 0x2

    add-int/lit8 v27, v24, -0x2

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v27

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 387
    add-int/lit8 v26, v24, -0x2

    add-int v19, v19, v26

    .line 396
    :goto_5
    add-int v9, v9, v24

    .line 397
    goto/16 :goto_1

    .line 388
    :cond_c
    const/16 v26, -0x25

    const/16 v27, 0x1

    aget-byte v27, v15, v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_d

    .line 389
    add-int/lit8 v26, v9, 0x2

    add-int/lit8 v27, v24, -0x2

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v27

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 390
    add-int/lit8 v26, v24, -0x2

    add-int v21, v21, v26

    goto :goto_5

    .line 392
    :cond_d
    add-int/lit8 v26, v9, -0x2

    add-int/lit8 v27, v24, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v27

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 394
    add-int/lit8 v26, v24, 0x2

    add-int v23, v23, v26

    goto :goto_5
.end method

.method public static isCoverPicture(I)Z
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 612
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 613
    const/4 v0, 0x1

    .line 615
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static saveImage([BLandroid/net/Uri;Landroid/content/Context;)Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;
    .locals 6
    .param p0, "image"    # [B
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    if-nez p1, :cond_1

    .line 49
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->FAIL:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    .line 76
    :cond_0
    :goto_0
    return-object v2

    .line 52
    :cond_1
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->FAIL:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    .line 54
    .local v2, "result":Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;
    const/4 v1, 0x0

    .line 56
    .local v1, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1

    .line 57
    invoke-virtual {v1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 58
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 59
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->SUCCESS:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    if-eqz v1, :cond_0

    .line 67
    :try_start_1
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 68
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/io/IOException;
    sget-object v3, Lcom/sonyericsson/android/camera/mediasaving/MediaSavingUtil;->TAG:Ljava/lang/String;

    const-string v4, "Failed to close output stream."

    invoke-static {v3, v4, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    const/4 v1, 0x0

    .line 72
    goto :goto_0

    .line 60
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 61
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_2
    sget-object v3, Lcom/sonyericsson/android/camera/mediasaving/MediaSavingUtil;->TAG:Ljava/lang/String;

    const-string v4, "Failed to write image data."

    invoke-static {v3, v4, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    if-eqz v1, :cond_0

    .line 67
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 68
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 69
    :catch_2
    move-exception v0

    .line 70
    sget-object v3, Lcom/sonyericsson/android/camera/mediasaving/MediaSavingUtil;->TAG:Ljava/lang/String;

    const-string v4, "Failed to close output stream."

    invoke-static {v3, v4, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    const/4 v1, 0x0

    .line 72
    goto :goto_0

    .line 62
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/SecurityException;
    :try_start_4
    sget-object v3, Lcom/sonyericsson/android/camera/mediasaving/MediaSavingUtil;->TAG:Ljava/lang/String;

    const-string v4, "Failed to write image data."

    invoke-static {v3, v4, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 65
    if-eqz v1, :cond_0

    .line 67
    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 68
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 69
    :catch_4
    move-exception v0

    .line 70
    .local v0, "e":Ljava/io/IOException;
    sget-object v3, Lcom/sonyericsson/android/camera/mediasaving/MediaSavingUtil;->TAG:Ljava/lang/String;

    const-string v4, "Failed to close output stream."

    invoke-static {v3, v4, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    const/4 v1, 0x0

    .line 72
    goto :goto_0

    .line 65
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_2

    .line 67
    :try_start_6
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 68
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 72
    :cond_2
    :goto_1
    throw v3

    .line 69
    :catch_5
    move-exception v0

    .line 70
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v4, Lcom/sonyericsson/android/camera/mediasaving/MediaSavingUtil;->TAG:Ljava/lang/String;

    const-string v5, "Failed to close output stream."

    invoke-static {v4, v5, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static saveImage([BLjava/lang/String;I)Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;
    .locals 8
    .param p0, "image"    # [B
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "length"    # I

    .prologue
    .line 82
    if-nez p1, :cond_1

    .line 83
    sget-object v3, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->FAIL:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    .line 116
    :cond_0
    :goto_0
    return-object v3

    .line 86
    :cond_1
    sget-object v3, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->FAIL:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    .line 88
    .local v3, "result":Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;
    const/4 v1, 0x0

    .line 90
    .local v1, "outputStream":Lcom/sonyericsson/android/camera/util/ThreadSafeOutputStream;
    :try_start_0
    new-instance v2, Lcom/sonyericsson/android/camera/util/ThreadSafeOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Lcom/sonyericsson/android/camera/util/ThreadSafeOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    .end local v1    # "outputStream":Lcom/sonyericsson/android/camera/util/ThreadSafeOutputStream;
    .local v2, "outputStream":Lcom/sonyericsson/android/camera/util/ThreadSafeOutputStream;
    :try_start_1
    sget-object v4, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->STORE_DATA_INTO_SD_CARD:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    array-length v7, p0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;ZLjava/lang/String;)V

    .line 93
    const/4 v4, 0x0

    invoke-virtual {v2, p0, v4, p2}, Lcom/sonyericsson/android/camera/util/ThreadSafeOutputStream;->write([BII)V

    .line 94
    sget-object v4, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->STORE_DATA_INTO_SD_CARD:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V

    .line 96
    sget-object v3, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->SUCCESS:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 104
    if-eqz v2, :cond_3

    .line 106
    :try_start_2
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/util/ThreadSafeOutputStream;->flush()V

    .line 107
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/util/ThreadSafeOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 112
    .end local v2    # "outputStream":Lcom/sonyericsson/android/camera/util/ThreadSafeOutputStream;
    .restart local v1    # "outputStream":Lcom/sonyericsson/android/camera/util/ThreadSafeOutputStream;
    goto :goto_0

    .line 108
    .end local v1    # "outputStream":Lcom/sonyericsson/android/camera/util/ThreadSafeOutputStream;
    .restart local v2    # "outputStream":Lcom/sonyericsson/android/camera/util/ThreadSafeOutputStream;
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/io/IOException;
    sget-object v4, Lcom/sonyericsson/android/camera/mediasaving/MediaSavingUtil;->TAG:Ljava/lang/String;

    const-string v5, "IOException in closing output stream."

    invoke-static {v4, v5, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    const/4 v1, 0x0

    .line 112
    .end local v2    # "outputStream":Lcom/sonyericsson/android/camera/util/ThreadSafeOutputStream;
    .restart local v1    # "outputStream":Lcom/sonyericsson/android/camera/util/ThreadSafeOutputStream;
    goto :goto_0

    .line 97
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 98
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    sget-object v4, Lcom/sonyericsson/android/camera/mediasaving/MediaSavingUtil;->TAG:Ljava/lang/String;

    const-string v5, "saveImage failed."

    invoke-static {v4, v5, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 104
    if-eqz v1, :cond_0

    .line 106
    :try_start_4
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/ThreadSafeOutputStream;->flush()V

    .line 107
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/ThreadSafeOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 108
    :catch_2
    move-exception v0

    .line 110
    .local v0, "e":Ljava/io/IOException;
    sget-object v4, Lcom/sonyericsson/android/camera/mediasaving/MediaSavingUtil;->TAG:Ljava/lang/String;

    const-string v5, "IOException in closing output stream."

    invoke-static {v4, v5, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    const/4 v1, 0x0

    .line 112
    goto :goto_0

    .line 99
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 100
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_5
    sget-object v4, Lcom/sonyericsson/android/camera/mediasaving/MediaSavingUtil;->TAG:Ljava/lang/String;

    const-string v5, "saveImage failed."

    invoke-static {v4, v5, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 104
    if-eqz v1, :cond_0

    .line 106
    :try_start_6
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/ThreadSafeOutputStream;->flush()V

    .line 107
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/ThreadSafeOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 108
    :catch_4
    move-exception v0

    .line 110
    sget-object v4, Lcom/sonyericsson/android/camera/mediasaving/MediaSavingUtil;->TAG:Ljava/lang/String;

    const-string v5, "IOException in closing output stream."

    invoke-static {v4, v5, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    const/4 v1, 0x0

    .line 112
    goto :goto_0

    .line 101
    .end local v0    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_7
    sget-object v4, Lcom/sonyericsson/android/camera/mediasaving/MediaSavingUtil;->TAG:Ljava/lang/String;

    const-string v5, "saveImage failed."

    invoke-static {v4, v5, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 104
    if-eqz v1, :cond_0

    .line 106
    :try_start_8
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/ThreadSafeOutputStream;->flush()V

    .line 107
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/ThreadSafeOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto/16 :goto_0

    .line 108
    :catch_6
    move-exception v0

    .line 110
    .local v0, "e":Ljava/io/IOException;
    sget-object v4, Lcom/sonyericsson/android/camera/mediasaving/MediaSavingUtil;->TAG:Ljava/lang/String;

    const-string v5, "IOException in closing output stream."

    invoke-static {v4, v5, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    const/4 v1, 0x0

    .line 112
    goto/16 :goto_0

    .line 104
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_4
    if-eqz v1, :cond_2

    .line 106
    :try_start_9
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/ThreadSafeOutputStream;->flush()V

    .line 107
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/ThreadSafeOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 112
    :cond_2
    :goto_5
    throw v4

    .line 108
    :catch_7
    move-exception v0

    .line 110
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v5, Lcom/sonyericsson/android/camera/mediasaving/MediaSavingUtil;->TAG:Ljava/lang/String;

    const-string v6, "IOException in closing output stream."

    invoke-static {v5, v6, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    const/4 v1, 0x0

    goto :goto_5

    .line 104
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "outputStream":Lcom/sonyericsson/android/camera/util/ThreadSafeOutputStream;
    .restart local v2    # "outputStream":Lcom/sonyericsson/android/camera/util/ThreadSafeOutputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "outputStream":Lcom/sonyericsson/android/camera/util/ThreadSafeOutputStream;
    .restart local v1    # "outputStream":Lcom/sonyericsson/android/camera/util/ThreadSafeOutputStream;
    goto :goto_4

    .line 101
    .end local v1    # "outputStream":Lcom/sonyericsson/android/camera/util/ThreadSafeOutputStream;
    .restart local v2    # "outputStream":Lcom/sonyericsson/android/camera/util/ThreadSafeOutputStream;
    :catch_8
    move-exception v0

    move-object v1, v2

    .end local v2    # "outputStream":Lcom/sonyericsson/android/camera/util/ThreadSafeOutputStream;
    .restart local v1    # "outputStream":Lcom/sonyericsson/android/camera/util/ThreadSafeOutputStream;
    goto :goto_3

    .line 99
    .end local v1    # "outputStream":Lcom/sonyericsson/android/camera/util/ThreadSafeOutputStream;
    .restart local v2    # "outputStream":Lcom/sonyericsson/android/camera/util/ThreadSafeOutputStream;
    :catch_9
    move-exception v0

    move-object v1, v2

    .end local v2    # "outputStream":Lcom/sonyericsson/android/camera/util/ThreadSafeOutputStream;
    .restart local v1    # "outputStream":Lcom/sonyericsson/android/camera/util/ThreadSafeOutputStream;
    goto :goto_2

    .line 97
    .end local v1    # "outputStream":Lcom/sonyericsson/android/camera/util/ThreadSafeOutputStream;
    .restart local v2    # "outputStream":Lcom/sonyericsson/android/camera/util/ThreadSafeOutputStream;
    :catch_a
    move-exception v0

    move-object v1, v2

    .end local v2    # "outputStream":Lcom/sonyericsson/android/camera/util/ThreadSafeOutputStream;
    .restart local v1    # "outputStream":Lcom/sonyericsson/android/camera/util/ThreadSafeOutputStream;
    goto :goto_1

    .end local v1    # "outputStream":Lcom/sonyericsson/android/camera/util/ThreadSafeOutputStream;
    .restart local v2    # "outputStream":Lcom/sonyericsson/android/camera/util/ThreadSafeOutputStream;
    :cond_3
    move-object v1, v2

    .end local v2    # "outputStream":Lcom/sonyericsson/android/camera/util/ThreadSafeOutputStream;
    .restart local v1    # "outputStream":Lcom/sonyericsson/android/camera/util/ThreadSafeOutputStream;
    goto/16 :goto_0
.end method

.method public static saveYuvImage(Landroid/graphics/YuvImage;Ljava/lang/String;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;)Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;
    .locals 6
    .param p0, "image"    # Landroid/graphics/YuvImage;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "request"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    .prologue
    .line 123
    if-nez p1, :cond_1

    .line 124
    sget-object v3, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->FAIL:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    .line 168
    :cond_0
    :goto_0
    return-object v3

    .line 127
    :cond_1
    sget-object v3, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->SUCCESS:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    .line 130
    .local v3, "result":Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;
    const/4 v1, 0x0

    .line 132
    .local v1, "outputStream":Lcom/sonyericsson/android/camera/util/ThreadSafeOutputStream;
    :try_start_0
    new-instance v2, Lcom/sonyericsson/android/camera/util/ThreadSafeOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Lcom/sonyericsson/android/camera/util/ThreadSafeOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .end local v1    # "outputStream":Lcom/sonyericsson/android/camera/util/ThreadSafeOutputStream;
    .local v2, "outputStream":Lcom/sonyericsson/android/camera/util/ThreadSafeOutputStream;
    move-object v1, v2

    .line 142
    .end local v2    # "outputStream":Lcom/sonyericsson/android/camera/util/ThreadSafeOutputStream;
    .restart local v1    # "outputStream":Lcom/sonyericsson/android/camera/util/ThreadSafeOutputStream;
    :goto_1
    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->SUCCESS:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    if-ne v3, v4, :cond_2

    .line 143
    invoke-static {p0, v1, p2}, Lcom/sonyericsson/android/camera/mediasaving/MediaSavingUtil;->convertYuvToJpegOutputStream(Landroid/graphics/YuvImage;Ljava/io/OutputStream;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;)Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    move-result-object v3

    .line 147
    :cond_2
    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->SUCCESS:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    if-ne v3, v4, :cond_3

    .line 149
    :try_start_1
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/ThreadSafeOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 157
    :cond_3
    :goto_2
    if-eqz v1, :cond_0

    .line 159
    :try_start_2
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/ThreadSafeOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 160
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/io/IOException;
    sget-object v4, Lcom/sonyericsson/android/camera/mediasaving/MediaSavingUtil;->TAG:Ljava/lang/String;

    const-string v5, "Closing output stream failed."

    invoke-static {v4, v5, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    sget-object v3, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->FAIL:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    .line 164
    const/4 v1, 0x0

    goto :goto_0

    .line 133
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 134
    .local v0, "e":Ljava/io/FileNotFoundException;
    sget-object v4, Lcom/sonyericsson/android/camera/mediasaving/MediaSavingUtil;->TAG:Ljava/lang/String;

    const-string v5, "saveImage failed."

    invoke-static {v4, v5, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    sget-object v3, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->FAIL:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    .line 139
    goto :goto_1

    .line 136
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/sonyericsson/android/camera/mediasaving/MediaSavingUtil;->TAG:Ljava/lang/String;

    const-string v5, "saveImage failed."

    invoke-static {v4, v5, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    sget-object v3, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->FAIL:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    goto :goto_1

    .line 150
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 151
    .local v0, "e":Ljava/io/IOException;
    sget-object v4, Lcom/sonyericsson/android/camera/mediasaving/MediaSavingUtil;->TAG:Ljava/lang/String;

    const-string v5, "Flushing output stream failed."

    invoke-static {v4, v5, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    sget-object v3, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->FAIL:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    goto :goto_2
.end method

.method public static skipApp0Marker([B)I
    .locals 7
    .param p0, "inputByte"    # [B

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, -0x1

    .line 450
    const/4 v0, 0x0

    .line 451
    .local v0, "byteCnt":I
    const/4 v2, 0x0

    .line 454
    .local v2, "siftSize":I
    array-length v3, p0

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    aget-byte v3, p0, v5

    sget-object v4, Lcom/sonyericsson/android/camera/mediasaving/MediaSavingUtil;->SOI_MARKER:[B

    aget-byte v4, v4, v5

    if-ne v3, v4, :cond_0

    aget-byte v3, p0, v6

    sget-object v4, Lcom/sonyericsson/android/camera/mediasaving/MediaSavingUtil;->SOI_MARKER:[B

    aget-byte v4, v4, v6

    if-eq v3, v4, :cond_1

    .line 492
    :cond_0
    :goto_0
    return v1

    .line 462
    :cond_1
    add-int/lit8 v0, v0, 0x2

    .line 465
    :goto_1
    array-length v3, p0

    add-int/lit8 v3, v3, -0x3

    if-ge v0, v3, :cond_0

    .line 468
    aget-byte v3, p0, v0

    sget-object v4, Lcom/sonyericsson/android/camera/mediasaving/MediaSavingUtil;->APP0_MARKER:[B

    aget-byte v4, v4, v5

    if-ne v3, v4, :cond_0

    .line 473
    add-int/lit8 v3, v0, 0x2

    aget-byte v3, p0, v3

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, v0, 0x3

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    add-int v2, v3, v4

    .line 477
    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p0, v3

    sget-object v4, Lcom/sonyericsson/android/camera/mediasaving/MediaSavingUtil;->APP0_MARKER:[B

    aget-byte v4, v4, v6

    if-ne v3, v4, :cond_2

    .line 478
    sget-object v3, Lcom/sonyericsson/android/camera/mediasaving/MediaSavingUtil;->APP0_MARKER:[B

    array-length v3, v3

    add-int/2addr v3, v0

    add-int v1, v3, v2

    .line 483
    .local v1, "index":I
    goto :goto_0

    .line 487
    .end local v1    # "index":I
    :cond_2
    add-int/2addr v0, v2

    goto :goto_1
.end method
