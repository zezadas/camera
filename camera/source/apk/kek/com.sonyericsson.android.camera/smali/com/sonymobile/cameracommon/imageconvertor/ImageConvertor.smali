.class public Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor;
.super Ljava/lang/Object;
.source "ImageConvertor.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ShrinkRatio;,
        Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ImageConvertorException;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "cameracommonimageconvertor"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 36
    const-class v0, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    return-void
.end method

.method public static final convertArgb8888ToYvu420Sp(II[I[B)V
    .locals 4
    .param p0, "frameWidth"    # I
    .param p1, "frameHeight"    # I
    .param p2, "srcArgb"    # [I
    .param p3, "dstYvu"    # [B

    .prologue
    .line 99
    invoke-static {p0, p1, p2, p3}, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor;->nativeConvertArgb8888ToYvu420Sp(II[I[B)I

    move-result v0

    .line 104
    .local v0, "ret":I
    if-eqz v0, :cond_0

    .line 105
    new-instance v1, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ImageConvertorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error Code Returned : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ImageConvertorException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 107
    :cond_0
    return-void
.end method

.method public static convertBitmapToYuv(Landroid/graphics/Bitmap;)Landroid/graphics/YuvImage;
    .locals 14
    .param p0, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 305
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 306
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 308
    .local v7, "height":I
    mul-int v0, v3, v7

    new-array v1, v0, [I

    .line 309
    .local v1, "pixels":[I
    mul-int v0, v3, v7

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    new-array v9, v0, [B

    .local v9, "yuvBytes":[B
    move-object v0, p0

    move v4, v2

    move v5, v2

    move v6, v3

    .line 310
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 312
    invoke-static {v3, v7, v1, v9}, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor;->convertArgb8888ToYvu420Sp(II[I[B)V

    .line 317
    new-instance v8, Landroid/graphics/YuvImage;

    const/16 v10, 0x11

    const/4 v13, 0x0

    move v11, v3

    move v12, v7

    invoke-direct/range {v8 .. v13}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 318
    .local v8, "yuvImage":Landroid/graphics/YuvImage;
    return-object v8
.end method

.method public static convertYuvToBitmap(Landroid/graphics/YuvImage;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "yuvImage"    # Landroid/graphics/YuvImage;

    .prologue
    .line 265
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 266
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 267
    invoke-static {p0, v0}, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor;->convertYuvToBitmap(Landroid/graphics/YuvImage;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method private static convertYuvToBitmap(Landroid/graphics/YuvImage;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "yuvImage"    # Landroid/graphics/YuvImage;
    .param p1, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 284
    invoke-virtual {p0}, Landroid/graphics/YuvImage;->getWidth()I

    move-result v4

    .line 285
    .local v4, "width":I
    invoke-virtual {p0}, Landroid/graphics/YuvImage;->getHeight()I

    move-result v2

    .line 287
    .local v2, "height":I
    const/4 v1, 0x0

    .line 288
    .local v1, "bmp":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v7, 0x0

    .line 289
    :try_start_1
    new-instance v6, Landroid/graphics/Rect;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v6, v8, v9, v4, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v8, 0x55

    invoke-virtual {p0, v6, v8, v0}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 290
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 291
    .local v3, "jpegByte":[B
    const/4 v6, 0x0

    array-length v8, v3

    invoke-static {v3, v6, v8, p1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 292
    if-eqz v0, :cond_0

    if-eqz v7, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 296
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "jpegByte":[B
    :cond_0
    :goto_0
    return-object v1

    .line 292
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "jpegByte":[B
    :catch_0
    move-exception v5

    .local v5, "x2":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v7, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "jpegByte":[B
    .end local v5    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v6

    goto :goto_0

    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "jpegByte":[B
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 288
    .end local v3    # "jpegByte":[B
    :catch_2
    move-exception v6

    :try_start_4
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 292
    :catchall_0
    move-exception v7

    move-object v10, v7

    move-object v7, v6

    move-object v6, v10

    :goto_1
    if-eqz v0, :cond_2

    if-eqz v7, :cond_3

    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_2
    :goto_2
    :try_start_6
    throw v6

    :catch_3
    move-exception v5

    .restart local v5    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v7, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v5    # "x2":Ljava/lang/Throwable;
    :cond_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    :catchall_1
    move-exception v6

    goto :goto_1
.end method

.method public static convertYuvToBitmap(Landroid/graphics/YuvImage;Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ShrinkRatio;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "yuvImage"    # Landroid/graphics/YuvImage;
    .param p1, "shrinkRatio"    # Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ShrinkRatio;

    .prologue
    .line 277
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 278
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 279
    iget v1, p1, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ShrinkRatio;->shrinkSize:I

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 280
    invoke-static {p0, v0}, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor;->convertYuvToBitmap(Landroid/graphics/YuvImage;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static cropYuvImage(Landroid/graphics/YuvImage;Landroid/graphics/Rect;)Landroid/graphics/YuvImage;
    .locals 16
    .param p0, "orgImage"    # Landroid/graphics/YuvImage;
    .param p1, "cropRect"    # Landroid/graphics/Rect;

    .prologue
    .line 329
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 330
    :cond_0
    const/4 v9, 0x0

    .line 390
    :goto_0
    return-object v9

    .line 332
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 333
    .local v6, "cropWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 334
    .local v7, "cropHeight":I
    move-object/from16 v0, p1

    iget v4, v0, Landroid/graphics/Rect;->left:I

    .line 335
    .local v4, "cropX":I
    move-object/from16 v0, p1

    iget v5, v0, Landroid/graphics/Rect;->top:I

    .line 338
    .local v5, "cropY":I
    rem-int/lit8 v9, v4, 0x2

    if-eqz v9, :cond_2

    .line 339
    add-int/lit8 v4, v4, 0x1

    .line 340
    add-int/lit8 v6, v6, -0x1

    .line 342
    :cond_2
    rem-int/lit8 v9, v6, 0x2

    if-eqz v9, :cond_3

    .line 343
    add-int/lit8 v6, v6, 0x1

    .line 345
    :cond_3
    rem-int/lit8 v9, v5, 0x2

    if-eqz v9, :cond_4

    .line 346
    add-int/lit8 v5, v5, 0x1

    .line 347
    add-int/lit8 v7, v7, -0x1

    .line 349
    :cond_4
    rem-int/lit8 v9, v7, 0x2

    if-eqz v9, :cond_5

    .line 350
    add-int/lit8 v7, v7, 0x1

    .line 354
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/YuvImage;->getWidth()I

    move-result v2

    .line 355
    .local v2, "orgWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/YuvImage;->getHeight()I

    move-result v3

    .line 356
    .local v3, "orgHeight":I
    if-lez v6, :cond_6

    if-ge v4, v2, :cond_6

    if-lez v7, :cond_6

    if-lt v5, v3, :cond_7

    .line 358
    :cond_6
    const/4 v9, 0x0

    goto :goto_0

    .line 360
    :cond_7
    if-gez v4, :cond_8

    .line 361
    add-int/2addr v6, v4

    .line 362
    const/4 v4, 0x0

    .line 364
    :cond_8
    add-int v9, v4, v6

    if-le v9, v2, :cond_9

    .line 365
    sub-int v6, v2, v4

    .line 367
    :cond_9
    if-gez v5, :cond_a

    .line 368
    add-int/2addr v7, v5

    .line 369
    const/4 v5, 0x0

    .line 371
    :cond_a
    add-int v9, v5, v7

    if-le v9, v3, :cond_b

    .line 372
    sub-int v7, v3, v5

    .line 375
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/YuvImage;->getYuvData()[B

    move-result-object v1

    .line 376
    .local v1, "orgYuvByteArray":[B
    mul-int v9, v6, v7

    mul-int/lit8 v9, v9, 0x3

    div-int/lit8 v9, v9, 0x2

    new-array v8, v9, [B

    .line 377
    .local v8, "dstYuvByteArray":[B
    invoke-static/range {v1 .. v8}, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor;->nativeCropYvu420Sp([BIIIIII[B)I

    move-result v15

    .line 386
    .local v15, "ret":I
    if-eqz v15, :cond_c

    .line 387
    new-instance v9, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ImageConvertorException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error Code Returned : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ImageConvertorException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 390
    :cond_c
    new-instance v9, Landroid/graphics/YuvImage;

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/YuvImage;->getYuvFormat()I

    move-result v11

    const/4 v14, 0x0

    move-object v10, v8

    move v12, v6

    move v13, v7

    invoke-direct/range {v9 .. v14}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    goto/16 :goto_0
.end method

.method public static cropYuvImage(Lcom/sonymobile/cameracommon/opengl/FrameData;Landroid/graphics/Rect;)Lcom/sonymobile/cameracommon/opengl/FrameData;
    .locals 11
    .param p0, "orgImage"    # Lcom/sonymobile/cameracommon/opengl/FrameData;
    .param p1, "cropRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v8, 0x0

    .line 410
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 475
    :cond_0
    return-object v8

    .line 413
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 414
    .local v5, "cropWidth":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 415
    .local v6, "cropHeight":I
    iget v3, p1, Landroid/graphics/Rect;->left:I

    .line 416
    .local v3, "cropX":I
    iget v4, p1, Landroid/graphics/Rect;->top:I

    .line 419
    .local v4, "cropY":I
    rem-int/lit8 v0, v3, 0x2

    if-eqz v0, :cond_2

    .line 420
    add-int/lit8 v3, v3, 0x1

    .line 421
    add-int/lit8 v5, v5, -0x1

    .line 423
    :cond_2
    rem-int/lit8 v0, v5, 0x2

    if-eqz v0, :cond_3

    .line 424
    add-int/lit8 v5, v5, 0x1

    .line 426
    :cond_3
    rem-int/lit8 v0, v4, 0x2

    if-eqz v0, :cond_4

    .line 427
    add-int/lit8 v4, v4, 0x1

    .line 428
    add-int/lit8 v6, v6, -0x1

    .line 430
    :cond_4
    rem-int/lit8 v0, v6, 0x2

    if-eqz v0, :cond_5

    .line 431
    add-int/lit8 v6, v6, 0x1

    .line 435
    :cond_5
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/FrameData;->getFrameWidth()I

    move-result v1

    .line 436
    .local v1, "orgWidth":I
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/FrameData;->getFrameHeight()I

    move-result v2

    .line 437
    .local v2, "orgHeight":I
    if-lez v5, :cond_0

    if-ge v3, v1, :cond_0

    if-lez v6, :cond_0

    if-ge v4, v2, :cond_0

    .line 441
    if-gez v3, :cond_6

    .line 442
    add-int/2addr v5, v3

    .line 443
    const/4 v3, 0x0

    .line 445
    :cond_6
    add-int v0, v3, v5

    if-le v0, v1, :cond_7

    .line 446
    sub-int v5, v1, v3

    .line 448
    :cond_7
    if-gez v4, :cond_8

    .line 449
    add-int/2addr v6, v4

    .line 450
    const/4 v4, 0x0

    .line 452
    :cond_8
    add-int v0, v4, v6

    if-le v0, v2, :cond_9

    .line 453
    sub-int v6, v2, v4

    .line 456
    :cond_9
    new-instance v8, Lcom/sonymobile/cameracommon/opengl/FrameData;

    sget-object v0, Lcom/sonymobile/cameracommon/opengl/FrameData$ImageFormat;->YVU420_SEMIPLANAR:Lcom/sonymobile/cameracommon/opengl/FrameData$ImageFormat;

    invoke-direct {v8, v0, v5, v6}, Lcom/sonymobile/cameracommon/opengl/FrameData;-><init>(Lcom/sonymobile/cameracommon/opengl/FrameData$ImageFormat;II)V

    .line 461
    .local v8, "dstFrameData":Lcom/sonymobile/cameracommon/opengl/FrameData;
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/FrameData;->getByteArrayYvu()[B

    move-result-object v0

    invoke-virtual {v8}, Lcom/sonymobile/cameracommon/opengl/FrameData;->getByteArrayYvu()[B

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor;->nativeCropYvu420Sp([BIIIIII[B)I

    move-result v9

    .line 471
    .local v9, "ret":I
    if-eqz v9, :cond_0

    .line 472
    new-instance v0, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ImageConvertorException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error Code Returned : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ImageConvertorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final decodeJpegToYvu420Sp(Ljava/lang/String;II[BZ)V
    .locals 7
    .param p0, "srcJpegFilePath"    # Ljava/lang/String;
    .param p1, "frameWidth"    # I
    .param p2, "frameHeight"    # I
    .param p3, "dstYvu"    # [B
    .param p4, "withRotation"    # Z

    .prologue
    .line 239
    array-length v4, p3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor;->nativeDecodeJpegFileToYvu420Sp(Ljava/lang/String;II[BIZ)I

    move-result v6

    .line 246
    .local v6, "ret":I
    if-eqz v6, :cond_0

    .line 247
    new-instance v0, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ImageConvertorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error Code Returned : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ImageConvertorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_0
    return-void
.end method

.method public static final decodeJpegToYvu420Sp([BII[BZ)V
    .locals 8
    .param p0, "srcJpeg"    # [B
    .param p1, "frameWidth"    # I
    .param p2, "frameHeight"    # I
    .param p3, "dstYvu"    # [B
    .param p4, "withRotation"    # Z

    .prologue
    .line 202
    array-length v1, p0

    array-length v5, p3

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor;->nativeDecodeJpegToYvu420Sp([BIII[BIZ)I

    move-result v7

    .line 210
    .local v7, "ret":I
    if-eqz v7, :cond_0

    .line 211
    new-instance v0, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ImageConvertorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error Code Returned : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ImageConvertorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_0
    return-void
.end method

.method private static final native nativeConvertArgb8888ToYvu420Sp(II[I[B)I
.end method

.method private static final native nativeCropYvu420Sp(Ljava/nio/ByteBuffer;IIIIIILjava/nio/ByteBuffer;)I
.end method

.method private static final native nativeCropYvu420Sp([BIIIIII[B)I
.end method

.method private static final native nativeDecodeJpegFileToYvu420Sp(Ljava/lang/String;II[BIZ)I
.end method

.method private static final native nativeDecodeJpegToYvu420Sp([BIII[BIZ)I
.end method

.method private static final native nativeRotateByteArrayYuv420Left90([BII[B)I
.end method

.method private static final native nativeRotateByteArrayYuv420Right90([BII[B)I
.end method

.method private static final native nativeRotateByteBufferYuv420Left90(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)I
.end method

.method private static final native nativeRotateByteBufferYuv420Right90(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)I
.end method

.method private static final native nativeShrinkByteArrayYvu420Sp([BII[BI)I
.end method

.method private static final native nativeShrinkByteBufferYvu420Sp(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;I)I
.end method

.method private static final native nativeSplitYvu420Sp(II[B[B[B[BI)I
.end method

.method public static rotateYuv420(Landroid/graphics/YuvImage;)Landroid/graphics/YuvImage;
    .locals 6
    .param p0, "orgImage"    # Landroid/graphics/YuvImage;

    .prologue
    const/4 v5, 0x0

    .line 497
    if-nez p0, :cond_0

    .line 504
    :goto_0
    return-object v5

    .line 501
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/YuvImage;->getYuvData()[B

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/YuvImage;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/YuvImage;->getHeight()I

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor;->rotateYuv420Left90WithReversedLR([BII)[B

    move-result-object v1

    .line 504
    .local v1, "yuv":[B
    new-instance v0, Landroid/graphics/YuvImage;

    const/16 v2, 0x11

    invoke-virtual {p0}, Landroid/graphics/YuvImage;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/YuvImage;->getWidth()I

    move-result v4

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    move-object v5, v0

    goto :goto_0
.end method

.method public static final rotateYuv420Left90(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)V
    .locals 4
    .param p0, "srcByteBuffer"    # Ljava/nio/ByteBuffer;
    .param p1, "srcWidth"    # I
    .param p2, "srcHeight"    # I
    .param p3, "dstByteBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 586
    invoke-static {p0, p1, p2, p3}, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor;->nativeRotateByteBufferYuv420Left90(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)I

    move-result v0

    .line 591
    .local v0, "ret":I
    if-eqz v0, :cond_0

    .line 592
    new-instance v1, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ImageConvertorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error Code Returned : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ImageConvertorException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 594
    :cond_0
    return-void
.end method

.method public static final rotateYuv420Left90([BII[B)V
    .locals 4
    .param p0, "srcByteArray"    # [B
    .param p1, "srcWidth"    # I
    .param p2, "srcHeight"    # I
    .param p3, "dstByteArray"    # [B

    .prologue
    .line 616
    invoke-static {p0, p1, p2, p3}, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor;->nativeRotateByteArrayYuv420Left90([BII[B)I

    move-result v0

    .line 621
    .local v0, "ret":I
    if-eqz v0, :cond_0

    .line 622
    new-instance v1, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ImageConvertorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error Code Returned : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ImageConvertorException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 624
    :cond_0
    return-void
.end method

.method public static final rotateYuv420Left90WithReversedLR([BII)[B
    .locals 10
    .param p0, "data"    # [B
    .param p1, "srcWidth"    # I
    .param p2, "srcHeight"    # I

    .prologue
    .line 649
    array-length v8, p0

    new-array v6, v8, [B

    .line 650
    .local v6, "yuv":[B
    const/4 v0, 0x0

    .line 653
    .local v0, "i":I
    move v2, p1

    .local v2, "x":I
    :goto_0
    if-lez v2, :cond_1

    .line 654
    move v4, p2

    .local v4, "y":I
    :goto_1
    if-lez v4, :cond_0

    .line 655
    mul-int v8, v4, p1

    sub-int v9, p1, v2

    sub-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x1

    aget-byte v8, p0, v8

    aput-byte v8, v6, v0

    .line 656
    add-int/lit8 v0, v0, 0x1

    .line 654
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 653
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 661
    .end local v4    # "y":I
    :cond_1
    mul-int v1, p1, p2

    .line 662
    .local v1, "offset":I
    move v0, v1

    .line 664
    div-int/lit8 v7, p2, 0x2

    .line 665
    .local v7, "yuvHeight":I
    move v2, p1

    :goto_2
    if-lez v2, :cond_3

    .line 666
    sub-int v3, p1, v2

    .line 667
    .local v3, "xPos":I
    move v4, v7

    .restart local v4    # "y":I
    :goto_3
    if-lez v4, :cond_2

    .line 668
    mul-int v8, v4, p1

    add-int v5, v1, v8

    .line 669
    .local v5, "yPos":I
    sub-int v8, v5, v3

    add-int/lit8 v8, v8, -0x2

    aget-byte v8, p0, v8

    aput-byte v8, v6, v0

    .line 670
    add-int/lit8 v0, v0, 0x1

    .line 671
    sub-int v8, v5, v3

    add-int/lit8 v8, v8, -0x1

    aget-byte v8, p0, v8

    aput-byte v8, v6, v0

    .line 672
    add-int/lit8 v0, v0, 0x1

    .line 667
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 665
    .end local v5    # "yPos":I
    :cond_2
    add-int/lit8 v2, v2, -0x2

    goto :goto_2

    .line 675
    .end local v3    # "xPos":I
    .end local v4    # "y":I
    :cond_3
    return-object v6
.end method

.method public static final rotateYuv420Right90(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)V
    .locals 4
    .param p0, "srcByteBuffer"    # Ljava/nio/ByteBuffer;
    .param p1, "srcWidth"    # I
    .param p2, "srcHeight"    # I
    .param p3, "dstByteBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 526
    invoke-static {p0, p1, p2, p3}, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor;->nativeRotateByteBufferYuv420Right90(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)I

    move-result v0

    .line 531
    .local v0, "ret":I
    if-eqz v0, :cond_0

    .line 532
    new-instance v1, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ImageConvertorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error Code Returned : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ImageConvertorException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 534
    :cond_0
    return-void
.end method

.method public static final rotateYuv420Right90([BII[B)V
    .locals 4
    .param p0, "srcByteArray"    # [B
    .param p1, "srcWidth"    # I
    .param p2, "srcHeight"    # I
    .param p3, "dstByteArray"    # [B

    .prologue
    .line 556
    invoke-static {p0, p1, p2, p3}, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor;->nativeRotateByteArrayYuv420Right90([BII[B)I

    move-result v0

    .line 561
    .local v0, "ret":I
    if-eqz v0, :cond_0

    .line 562
    new-instance v1, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ImageConvertorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error Code Returned : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ImageConvertorException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 564
    :cond_0
    return-void
.end method

.method public static final shrinkYvu420Sp(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ShrinkRatio;)V
    .locals 4
    .param p0, "srcYvu"    # Ljava/nio/ByteBuffer;
    .param p1, "frameWidth"    # I
    .param p2, "frameHeight"    # I
    .param p3, "dstYvu"    # Ljava/nio/ByteBuffer;
    .param p4, "shrinkRatio"    # Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ShrinkRatio;

    .prologue
    .line 145
    iget v1, p4, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ShrinkRatio;->shrinkSize:I

    invoke-static {p0, p1, p2, p3, v1}, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor;->nativeShrinkByteBufferYvu420Sp(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;I)I

    move-result v0

    .line 151
    .local v0, "ret":I
    if-eqz v0, :cond_0

    .line 152
    new-instance v1, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ImageConvertorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error Code Returned : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ImageConvertorException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 154
    :cond_0
    return-void
.end method

.method public static final shrinkYvu420Sp([BII[BLcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ShrinkRatio;)V
    .locals 4
    .param p0, "srcYvu"    # [B
    .param p1, "frameWidth"    # I
    .param p2, "frameHeight"    # I
    .param p3, "dstYvu"    # [B
    .param p4, "shrinkRatio"    # Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ShrinkRatio;

    .prologue
    .line 169
    iget v1, p4, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ShrinkRatio;->shrinkSize:I

    invoke-static {p0, p1, p2, p3, v1}, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor;->nativeShrinkByteArrayYvu420Sp([BII[BI)I

    move-result v0

    .line 175
    .local v0, "ret":I
    if-eqz v0, :cond_0

    .line 176
    new-instance v1, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ImageConvertorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error Code Returned : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ImageConvertorException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 178
    :cond_0
    return-void
.end method

.method public static final splitYvu420Sp(II[B[B[B[BI)V
    .locals 4
    .param p0, "frameWidth"    # I
    .param p1, "frameHeight"    # I
    .param p2, "srcYvu"    # [B
    .param p3, "dstY"    # [B
    .param p4, "dstV"    # [B
    .param p5, "dstU"    # [B
    .param p6, "sampleSize"    # I

    .prologue
    .line 64
    invoke-static/range {p0 .. p6}, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor;->nativeSplitYvu420Sp(II[B[B[B[BI)I

    move-result v0

    .line 72
    .local v0, "ret":I
    if-eqz v0, :cond_0

    .line 73
    new-instance v1, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ImageConvertorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error Code Returned : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonymobile/cameracommon/imageconvertor/ImageConvertor$ImageConvertorException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 75
    :cond_0
    return-void
.end method
