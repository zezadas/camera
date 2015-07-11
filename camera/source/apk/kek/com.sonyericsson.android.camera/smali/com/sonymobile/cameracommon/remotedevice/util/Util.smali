.class public Lcom/sonymobile/cameracommon/remotedevice/util/Util;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/remotedevice/util/Util$Uri;,
        Lcom/sonymobile/cameracommon/remotedevice/util/Util$Http;
    }
.end annotation


# static fields
.field private static final IS_DEBUG:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    return-void
.end method

.method public static byteArray2Integer([BII)I
    .locals 4
    .param p0, "bytes"    # [B
    .param p1, "start"    # I
    .param p2, "size"    # I

    .prologue
    .line 515
    const/4 v1, 0x0

    .line 517
    .local v1, "ret":I
    move v0, p1

    .local v0, "i":I
    :goto_0
    add-int v2, p1, p2

    if-ge v0, v2, :cond_0

    .line 518
    shl-int/lit8 v2, v1, 0x8

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    or-int v1, v2, v3

    .line 517
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 521
    :cond_0
    return v1
.end method

.method public static readInputStreamAsByteArray(Ljava/lang/String;Ljava/io/InputStream;I)[B
    .locals 9
    .param p0, "logTag"    # Ljava/lang/String;
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "readTargetLength"    # I

    .prologue
    const/4 v7, 0x0

    .line 461
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 464
    .local v4, "outputBuffer":Ljava/io/ByteArrayOutputStream;
    const/16 v8, 0x400

    new-array v1, v8, [B

    .line 467
    .local v1, "buf":[B
    :cond_0
    :try_start_0
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v8

    sub-int v5, p2, v8

    .line 468
    .local v5, "remainReadTargetSize":I
    array-length v8, v1

    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 470
    .local v3, "oneTimeReadLength":I
    const/4 v8, 0x0

    invoke-virtual {p1, v1, v8, v3}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 472
    .local v0, "actReadLen":I
    if-gez v0, :cond_1

    .line 492
    :goto_0
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 494
    .local v6, "ret":[B
    :try_start_1
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 503
    .end local v0    # "actReadLen":I
    .end local v3    # "oneTimeReadLength":I
    .end local v5    # "remainReadTargetSize":I
    .end local v6    # "ret":[B
    :goto_1
    return-object v6

    .line 477
    .restart local v0    # "actReadLen":I
    .restart local v3    # "oneTimeReadLength":I
    .restart local v5    # "remainReadTargetSize":I
    :cond_1
    const/4 v8, 0x0

    :try_start_2
    invoke-virtual {v4, v1, v8, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 479
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v8

    if-gt p2, v8, :cond_0

    goto :goto_0

    .line 484
    .end local v0    # "actReadLen":I
    .end local v3    # "oneTimeReadLength":I
    .end local v5    # "remainReadTargetSize":I
    :catch_0
    move-exception v2

    .line 485
    .local v2, "e":Ljava/io/IOException;
    const-string v8, "Failed to read InputStream."

    invoke-static {p0, v8}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v6, v7

    .line 488
    goto :goto_1

    .line 495
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "actReadLen":I
    .restart local v3    # "oneTimeReadLength":I
    .restart local v5    # "remainReadTargetSize":I
    .restart local v6    # "ret":[B
    :catch_1
    move-exception v2

    .line 496
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v8, "Failed to close output stream."

    invoke-static {p0, v8}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v6, v7

    .line 499
    goto :goto_1
.end method

.method public static readInputStreamAsString(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .param p0, "logTag"    # Ljava/lang/String;
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 424
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 425
    .local v4, "reader":Ljava/io/InputStreamReader;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 428
    .local v1, "builder":Ljava/lang/StringBuilder;
    const/16 v5, 0x400

    new-array v0, v5, [C

    .line 429
    .local v0, "buf":[C
    const/4 v3, 0x0

    .line 431
    .local v3, "readLength":I
    :goto_0
    :try_start_0
    invoke-virtual {v4, v0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v3

    if-lez v3, :cond_0

    .line 432
    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 434
    :catch_0
    move-exception v2

    .line 435
    .local v2, "e":Ljava/io/IOException;
    const-string v5, "Failed to read InputStream."

    invoke-static {p0, v5}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 438
    const/4 v5, 0x0

    .line 442
    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    return-object v5

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method
