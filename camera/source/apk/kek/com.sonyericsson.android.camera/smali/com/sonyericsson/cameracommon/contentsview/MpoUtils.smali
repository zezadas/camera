.class public Lcom/sonyericsson/cameracommon/contentsview/MpoUtils;
.super Ljava/lang/Object;
.source "MpoUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/contentsview/MpoUtils$JpegMaker;
    }
.end annotation


# static fields
.field public static final MULTIANGLE:I = 0x2

.field public static final STEREO:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field public static final UNKNOWN:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/sonyericsson/cameracommon/contentsview/MpoUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/contentsview/MpoUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method static checkFormatIdentifier(Ljava/io/RandomAccessFile;)Z
    .locals 5
    .param p0, "stream"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 172
    const/4 v3, 0x4

    new-array v0, v3, [B

    .line 173
    .local v0, "buff":[B
    array-length v3, v0

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 176
    :goto_0
    return v2

    :cond_0
    aget-byte v3, v0, v2

    const/16 v4, 0x4d

    if-ne v3, v4, :cond_1

    aget-byte v3, v0, v1

    const/16 v4, 0x50

    if-ne v3, v4, :cond_1

    const/4 v3, 0x2

    aget-byte v3, v0, v3

    const/16 v4, 0x46

    if-ne v3, v4, :cond_1

    const/4 v3, 0x3

    aget-byte v3, v0, v3

    if-nez v3, :cond_1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method static checkMPEntryTag(Ljava/io/RandomAccessFile;)Z
    .locals 3
    .param p0, "stream"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readShort()S

    move-result v0

    .line 181
    .local v0, "buff":S
    const v1, 0xb002

    const v2, 0xffff

    and-int/2addr v2, v0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getType(Ljava/lang/String;)I
    .locals 19
    .param p0, "mpoPath"    # Ljava/lang/String;

    .prologue
    .line 39
    const/4 v11, 0x0

    .line 42
    .local v11, "stream":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v14, Ljava/io/RandomAccessFile;

    const-string v16, "r"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v14, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .end local v11    # "stream":Ljava/io/RandomAccessFile;
    .local v14, "stream":Ljava/io/RandomAccessFile;
    const/16 v16, 0x2

    :try_start_1
    move/from16 v0, v16

    new-array v10, v0, [B

    .line 46
    .local v10, "marker":[B
    :cond_0
    :goto_0
    const/16 v16, 0x2

    invoke-virtual {v14, v10}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-gt v0, v1, :cond_5

    .line 52
    const/16 v16, 0x0

    aget-byte v16, v10, v16

    const/16 v17, 0x1

    aget-byte v17, v10, v17

    invoke-static/range {v16 .. v17}, Lcom/sonyericsson/cameracommon/contentsview/MpoUtils;->isSOI(BB)Z

    move-result v16

    if-nez v16, :cond_0

    .line 55
    const/16 v16, 0x0

    aget-byte v16, v10, v16

    const/16 v17, 0x1

    aget-byte v17, v10, v17

    invoke-static/range {v16 .. v17}, Lcom/sonyericsson/cameracommon/contentsview/MpoUtils;->isEOI(BB)Z

    move-result v16

    if-nez v16, :cond_0

    .line 58
    const/16 v16, 0x0

    aget-byte v16, v10, v16

    const/16 v17, 0x1

    aget-byte v17, v10, v17

    invoke-static/range {v16 .. v17}, Lcom/sonyericsson/cameracommon/contentsview/MpoUtils;->isAPP(BB)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 62
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    .line 63
    .local v2, "current":J
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->readShort()S

    move-result v16

    move/from16 v0, v16

    int-to-long v8, v0

    .line 65
    .local v8, "length":J
    add-long v12, v2, v8

    .line 70
    .local v12, "nextMerker":J
    const/16 v16, 0x0

    aget-byte v16, v10, v16

    const/16 v17, 0x1

    aget-byte v17, v10, v17

    invoke-static/range {v16 .. v17}, Lcom/sonyericsson/cameracommon/contentsview/MpoUtils;->isAPP2(BB)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 71
    invoke-static {v14}, Lcom/sonyericsson/cameracommon/contentsview/MpoUtils;->checkFormatIdentifier(Ljava/io/RandomAccessFile;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 75
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->readShort()S

    move-result v5

    .line 76
    .local v5, "endian":S
    const/16 v16, 0x6

    move/from16 v0, v16

    invoke-static {v14, v0}, Lcom/sonyericsson/cameracommon/contentsview/MpoUtils;->skip(Ljava/io/RandomAccessFile;I)V

    .line 78
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->readShort()S

    move-result v15

    .line 79
    .local v15, "tags":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v15, :cond_3

    .line 80
    invoke-static {v14}, Lcom/sonyericsson/cameracommon/contentsview/MpoUtils;->checkMPEntryTag(Ljava/io/RandomAccessFile;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 84
    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-static {v14, v0}, Lcom/sonyericsson/cameracommon/contentsview/MpoUtils;->skip(Ljava/io/RandomAccessFile;I)V

    .line 86
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v16

    div-int/lit8 v6, v16, 0x10

    .line 87
    .local v6, "entries":I
    invoke-static {v6}, Lcom/sonyericsson/cameracommon/contentsview/MpoUtils;->typeFromEntries(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v16

    .line 113
    if-eqz v14, :cond_1

    .line 115
    :try_start_2
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    :goto_2
    move-object v11, v14

    .line 122
    .end local v2    # "current":J
    .end local v5    # "endian":S
    .end local v6    # "entries":I
    .end local v7    # "i":I
    .end local v8    # "length":J
    .end local v10    # "marker":[B
    .end local v12    # "nextMerker":J
    .end local v14    # "stream":Ljava/io/RandomAccessFile;
    .end local v15    # "tags":I
    .restart local v11    # "stream":Ljava/io/RandomAccessFile;
    :goto_3
    return v16

    .line 93
    .end local v11    # "stream":Ljava/io/RandomAccessFile;
    .restart local v2    # "current":J
    .restart local v5    # "endian":S
    .restart local v7    # "i":I
    .restart local v8    # "length":J
    .restart local v10    # "marker":[B
    .restart local v12    # "nextMerker":J
    .restart local v14    # "stream":Ljava/io/RandomAccessFile;
    .restart local v15    # "tags":I
    :cond_2
    const/16 v16, 0xa

    :try_start_3
    move/from16 v0, v16

    invoke-static {v14, v0}, Lcom/sonyericsson/cameracommon/contentsview/MpoUtils;->skip(Ljava/io/RandomAccessFile;I)V

    .line 79
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 99
    .end local v5    # "endian":S
    .end local v7    # "i":I
    .end local v15    # "tags":I
    :cond_3
    invoke-virtual {v14, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    .line 107
    .end local v2    # "current":J
    .end local v8    # "length":J
    .end local v10    # "marker":[B
    .end local v12    # "nextMerker":J
    :catch_0
    move-exception v4

    move-object v11, v14

    .line 109
    .end local v14    # "stream":Ljava/io/RandomAccessFile;
    .local v4, "e":Ljava/lang/Exception;
    .restart local v11    # "stream":Ljava/io/RandomAccessFile;
    :goto_4
    :try_start_4
    sget-object v16, Lcom/sonyericsson/cameracommon/contentsview/MpoUtils;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Fail to analize a mpo file by IO Exception. message:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 113
    if-eqz v11, :cond_4

    .line 115
    :try_start_5
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 122
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_5
    const/16 v16, 0x0

    goto :goto_3

    .line 113
    .end local v11    # "stream":Ljava/io/RandomAccessFile;
    .restart local v10    # "marker":[B
    .restart local v14    # "stream":Ljava/io/RandomAccessFile;
    :cond_5
    if-eqz v14, :cond_7

    .line 115
    :try_start_6
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    move-object v11, v14

    .line 117
    .end local v14    # "stream":Ljava/io/RandomAccessFile;
    .restart local v11    # "stream":Ljava/io/RandomAccessFile;
    goto :goto_5

    .line 116
    .end local v11    # "stream":Ljava/io/RandomAccessFile;
    .restart local v14    # "stream":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v16

    move-object v11, v14

    .line 117
    .end local v14    # "stream":Ljava/io/RandomAccessFile;
    .restart local v11    # "stream":Ljava/io/RandomAccessFile;
    goto :goto_5

    .line 113
    .end local v10    # "marker":[B
    :catchall_0
    move-exception v16

    :goto_6
    if-eqz v11, :cond_6

    .line 115
    :try_start_7
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 117
    :cond_6
    :goto_7
    throw v16

    .line 116
    .end local v11    # "stream":Ljava/io/RandomAccessFile;
    .restart local v2    # "current":J
    .restart local v5    # "endian":S
    .restart local v6    # "entries":I
    .restart local v7    # "i":I
    .restart local v8    # "length":J
    .restart local v10    # "marker":[B
    .restart local v12    # "nextMerker":J
    .restart local v14    # "stream":Ljava/io/RandomAccessFile;
    .restart local v15    # "tags":I
    :catch_2
    move-exception v17

    goto :goto_2

    .end local v2    # "current":J
    .end local v5    # "endian":S
    .end local v6    # "entries":I
    .end local v7    # "i":I
    .end local v8    # "length":J
    .end local v10    # "marker":[B
    .end local v12    # "nextMerker":J
    .end local v14    # "stream":Ljava/io/RandomAccessFile;
    .end local v15    # "tags":I
    .restart local v4    # "e":Ljava/lang/Exception;
    .restart local v11    # "stream":Ljava/io/RandomAccessFile;
    :catch_3
    move-exception v16

    goto :goto_5

    .end local v4    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v17

    goto :goto_7

    .line 113
    .end local v11    # "stream":Ljava/io/RandomAccessFile;
    .restart local v14    # "stream":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v16

    move-object v11, v14

    .end local v14    # "stream":Ljava/io/RandomAccessFile;
    .restart local v11    # "stream":Ljava/io/RandomAccessFile;
    goto :goto_6

    .line 107
    :catch_5
    move-exception v4

    goto :goto_4

    .end local v11    # "stream":Ljava/io/RandomAccessFile;
    .restart local v10    # "marker":[B
    .restart local v14    # "stream":Ljava/io/RandomAccessFile;
    :cond_7
    move-object v11, v14

    .end local v14    # "stream":Ljava/io/RandomAccessFile;
    .restart local v11    # "stream":Ljava/io/RandomAccessFile;
    goto :goto_5
.end method

.method static isAPP(BB)Z
    .locals 1
    .param p0, "first"    # B
    .param p1, "second"    # B

    .prologue
    .line 144
    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/16 v0, -0x20

    if-lt p1, v0, :cond_0

    const/16 v0, -0x11

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isAPP2(BB)Z
    .locals 1
    .param p0, "first"    # B
    .param p1, "second"    # B

    .prologue
    .line 150
    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/16 v0, -0x1e

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isEOI(BB)Z
    .locals 1
    .param p0, "first"    # B
    .param p1, "second"    # B

    .prologue
    .line 140
    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/16 v0, -0x27

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isSOI(BB)Z
    .locals 1
    .param p0, "first"    # B
    .param p1, "second"    # B

    .prologue
    .line 136
    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/16 v0, -0x28

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static skip(Ljava/io/RandomAccessFile;I)V
    .locals 1
    .param p0, "stream"    # Ljava/io/RandomAccessFile;
    .param p1, "bytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    invoke-virtual {p0, p1}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 186
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 188
    :cond_0
    return-void
.end method

.method static typeFromEntries(I)I
    .locals 2
    .param p0, "entries"    # I

    .prologue
    const/4 v0, 0x2

    .line 154
    if-ne p0, v0, :cond_1

    .line 157
    const/4 v0, 0x1

    .line 167
    :cond_0
    :goto_0
    return v0

    .line 159
    :cond_1
    const/16 v1, 0xf

    if-eq p0, v1, :cond_0

    .line 167
    const/4 v0, 0x0

    goto :goto_0
.end method
