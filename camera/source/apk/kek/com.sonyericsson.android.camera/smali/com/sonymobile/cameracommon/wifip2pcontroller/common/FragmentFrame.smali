.class public Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;
.super Ljava/lang/Object;
.source "FragmentFrame.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame$PayloadHeader;,
        Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame$CommonHeader;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public final denominator:I

.field public final frameColorFormat:Lcom/sonymobile/cameracommon/wifip2pcontroller/common/Constants$FrameColorFormat;

.field public final frameId:I

.field public final framePixelHeight:I

.field public final framePixelWidth:I

.field public final frameStreamId:I

.field private mDatagram:Ljava/nio/ByteBuffer;

.field public final numerator:I

.field public final payloadSize:I

.field public final timestamp:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(IIIIILcom/sonymobile/cameracommon/wifip2pcontroller/common/Constants$FrameColorFormat;II[B)V
    .locals 5
    .param p1, "frameId"    # I
    .param p2, "timestamp"    # I
    .param p3, "numerator"    # I
    .param p4, "denominator"    # I
    .param p5, "frameStreamId"    # I
    .param p6, "frameColorFormat"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/common/Constants$FrameColorFormat;
    .param p7, "framePixelWidth"    # I
    .param p8, "framePixelHeight"    # I
    .param p9, "payload"    # [B

    .prologue
    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;->mDatagram:Ljava/nio/ByteBuffer;

    .line 287
    iput p1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;->frameId:I

    .line 288
    iput p2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;->timestamp:I

    .line 289
    iput p3, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;->numerator:I

    .line 290
    iput p4, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;->denominator:I

    .line 291
    iput p5, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;->frameStreamId:I

    .line 292
    iput-object p6, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;->frameColorFormat:Lcom/sonymobile/cameracommon/wifip2pcontroller/common/Constants$FrameColorFormat;

    .line 293
    iput p7, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;->framePixelWidth:I

    .line 294
    iput p8, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;->framePixelHeight:I

    .line 295
    array-length v2, p9

    iput v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;->payloadSize:I

    .line 297
    invoke-static {}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;->getSizeWithoutPayload()I

    move-result v2

    iget v3, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;->payloadSize:I

    add-int v0, v2, v3

    .line 300
    .local v0, "frameSize":I
    const/16 v2, 0x100

    new-array v1, v2, [B

    .line 303
    .local v1, "writeBuf":[B
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;->mDatagram:Ljava/nio/ByteBuffer;

    .line 306
    iget-object v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;->mDatagram:Ljava/nio/ByteBuffer;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 307
    iget-object v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;->mDatagram:Ljava/nio/ByteBuffer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 308
    iget-object v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;->mDatagram:Ljava/nio/ByteBuffer;

    const/4 v3, 0x2

    invoke-static {v3, p1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/util/Util;->integer2ByteArray(II)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 309
    iget-object v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;->mDatagram:Ljava/nio/ByteBuffer;

    const/4 v3, 0x4

    invoke-static {v3, p2}, Lcom/sonymobile/cameracommon/wifip2pcontroller/util/Util;->integer2ByteArray(II)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 312
    iget-object v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;->mDatagram:Ljava/nio/ByteBuffer;

    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 313
    iget-object v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;->mDatagram:Ljava/nio/ByteBuffer;

    const/16 v3, 0x35

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 314
    iget-object v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;->mDatagram:Ljava/nio/ByteBuffer;

    const/16 v3, 0x68

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 315
    iget-object v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;->mDatagram:Ljava/nio/ByteBuffer;

    const/16 v3, 0x79

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 316
    iget-object v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;->mDatagram:Ljava/nio/ByteBuffer;

    const/4 v3, 0x3

    iget v4, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;->payloadSize:I

    invoke-static {v3, v4}, Lcom/sonymobile/cameracommon/wifip2pcontroller/util/Util;->integer2ByteArray(II)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 317
    iget-object v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;->mDatagram:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 318
    iget-object v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;->mDatagram:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-virtual {v2, v1, v3, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 319
    iget-object v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;->mDatagram:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 320
    iget-object v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;->mDatagram:Ljava/nio/ByteBuffer;

    const/4 v3, 0x4

    invoke-static {v3, p3}, Lcom/sonymobile/cameracommon/wifip2pcontroller/util/Util;->integer2ByteArray(II)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 321
    iget-object v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;->mDatagram:Ljava/nio/ByteBuffer;

    const/4 v3, 0x4

    invoke-static {v3, p4}, Lcom/sonymobile/cameracommon/wifip2pcontroller/util/Util;->integer2ByteArray(II)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 322
    iget-object v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;->mDatagram:Ljava/nio/ByteBuffer;

    const/4 v3, 0x4

    invoke-static {v3, p5}, Lcom/sonymobile/cameracommon/wifip2pcontroller/util/Util;->integer2ByteArray(II)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 323
    iget-object v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;->mDatagram:Ljava/nio/ByteBuffer;

    const/4 v3, 0x4

    invoke-virtual {p6}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/Constants$FrameColorFormat;->getFormatCode()I

    move-result v4

    invoke-static {v3, v4}, Lcom/sonymobile/cameracommon/wifip2pcontroller/util/Util;->integer2ByteArray(II)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 325
    iget-object v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;->mDatagram:Ljava/nio/ByteBuffer;

    const/4 v3, 0x4

    invoke-static {v3, p7}, Lcom/sonymobile/cameracommon/wifip2pcontroller/util/Util;->integer2ByteArray(II)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 327
    iget-object v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;->mDatagram:Ljava/nio/ByteBuffer;

    const/4 v3, 0x4

    invoke-static {v3, p8}, Lcom/sonymobile/cameracommon/wifip2pcontroller/util/Util;->integer2ByteArray(II)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 329
    iget-object v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;->mDatagram:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    const/16 v4, 0x5b

    invoke-virtual {v2, v1, v3, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 332
    iget-object v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;->mDatagram:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p9}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 336
    iget-object v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;->mDatagram:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 340
    iget-object v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;->mDatagram:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    if-eq v2, v0, :cond_0

    .line 341
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Capacity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;->mDatagram:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / Size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 344
    :cond_0
    return-void
.end method

.method public static generate(IIIIILcom/sonymobile/cameracommon/wifip2pcontroller/common/Constants$FrameColorFormat;II[B)Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;
    .locals 10
    .param p0, "id"    # I
    .param p1, "timestamp"    # I
    .param p2, "numerator"    # I
    .param p3, "denominator"    # I
    .param p4, "frameStreamId"    # I
    .param p5, "frameColorFormat"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/common/Constants$FrameColorFormat;
    .param p6, "framePixelWidth"    # I
    .param p7, "framePixelHeight"    # I
    .param p8, "payload"    # [B

    .prologue
    .line 114
    new-instance v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;-><init>(IIIIILcom/sonymobile/cameracommon/wifip2pcontroller/common/Constants$FrameColorFormat;II[B)V

    return-object v0
.end method

.method public static generate([B)Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;
    .locals 17
    .param p0, "totalBuffer"    # [B

    .prologue
    .line 128
    move-object/from16 v0, p0

    array-length v1, v0

    invoke-static {}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;->getSizeWithoutPayload()I

    move-result v7

    if-ge v1, v7, :cond_0

    .line 130
    sget-object v1, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "generate() : Packet length is less than header. LEN="

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/sonymobile/cameracommon/wifip2pcontroller/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const/4 v1, 0x0

    .line 221
    :goto_0
    return-object v1

    .line 137
    :cond_0
    const/16 v1, 0x100

    new-array v14, v1, [B

    .line 140
    .local v14, "readBuf":[B
    invoke-static/range {p0 .. p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 144
    .local v15, "src":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    const/4 v7, 0x1

    invoke-virtual {v15, v14, v1, v7}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 145
    const/4 v1, 0x0

    aget-byte v1, v14, v1

    const/4 v7, -0x1

    if-eq v1, v7, :cond_1

    .line 146
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v7, "Start byte is not correct."

    invoke-direct {v1, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 149
    :cond_1
    const/4 v1, 0x0

    const/4 v7, 0x1

    invoke-virtual {v15, v14, v1, v7}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 150
    const/4 v1, 0x0

    aget-byte v1, v14, v1

    const/4 v7, 0x1

    if-eq v1, v7, :cond_2

    .line 151
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v7, "Payload type is not correct."

    invoke-direct {v1, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 154
    :cond_2
    const/4 v1, 0x0

    const/4 v7, 0x2

    invoke-virtual {v15, v14, v1, v7}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 155
    const/4 v1, 0x0

    const/4 v7, 0x2

    invoke-static {v14, v1, v7}, Lcom/sonymobile/cameracommon/wifip2pcontroller/util/Util;->byteArray2Integer([BII)I

    move-result v2

    .line 158
    .local v2, "frameId":I
    const/4 v1, 0x0

    const/4 v7, 0x4

    invoke-virtual {v15, v14, v1, v7}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 159
    const/4 v1, 0x0

    const/4 v7, 0x4

    invoke-static {v14, v1, v7}, Lcom/sonymobile/cameracommon/wifip2pcontroller/util/Util;->byteArray2Integer([BII)I

    move-result v3

    .line 163
    .local v3, "timestamp":I
    const/4 v1, 0x0

    const/4 v7, 0x4

    invoke-virtual {v15, v14, v1, v7}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 164
    const/4 v1, 0x0

    aget-byte v1, v14, v1

    const/16 v7, 0x24

    if-ne v1, v7, :cond_3

    const/4 v1, 0x1

    aget-byte v1, v14, v1

    const/16 v7, 0x35

    if-ne v1, v7, :cond_3

    const/4 v1, 0x2

    aget-byte v1, v14, v1

    const/16 v7, 0x68

    if-ne v1, v7, :cond_3

    const/4 v1, 0x3

    aget-byte v1, v14, v1

    const/16 v7, 0x79

    if-eq v1, v7, :cond_4

    .line 168
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v7, "Payload start code is not correct."

    invoke-direct {v1, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 171
    :cond_4
    const/4 v1, 0x0

    const/4 v7, 0x3

    invoke-virtual {v15, v14, v1, v7}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 172
    const/4 v1, 0x0

    const/4 v7, 0x3

    invoke-static {v14, v1, v7}, Lcom/sonymobile/cameracommon/wifip2pcontroller/util/Util;->byteArray2Integer([BII)I

    move-result v13

    .line 175
    .local v13, "payloadSize":I
    const/4 v1, 0x0

    const/4 v7, 0x1

    invoke-virtual {v15, v14, v1, v7}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 177
    const/4 v1, 0x0

    const/4 v7, 0x4

    invoke-virtual {v15, v14, v1, v7}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 179
    const/4 v1, 0x0

    const/4 v7, 0x1

    invoke-virtual {v15, v14, v1, v7}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 181
    const/4 v1, 0x0

    const/4 v7, 0x4

    invoke-virtual {v15, v14, v1, v7}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 182
    const/4 v1, 0x0

    const/4 v7, 0x4

    invoke-static {v14, v1, v7}, Lcom/sonymobile/cameracommon/wifip2pcontroller/util/Util;->byteArray2Integer([BII)I

    move-result v4

    .line 184
    .local v4, "numerator":I
    const/4 v1, 0x0

    const/4 v7, 0x4

    invoke-virtual {v15, v14, v1, v7}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 185
    const/4 v1, 0x0

    const/4 v7, 0x4

    invoke-static {v14, v1, v7}, Lcom/sonymobile/cameracommon/wifip2pcontroller/util/Util;->byteArray2Integer([BII)I

    move-result v5

    .line 188
    .local v5, "denominator":I
    const/4 v1, 0x0

    const/4 v7, 0x4

    invoke-virtual {v15, v14, v1, v7}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 189
    const/4 v1, 0x0

    const/4 v7, 0x4

    invoke-static {v14, v1, v7}, Lcom/sonymobile/cameracommon/wifip2pcontroller/util/Util;->byteArray2Integer([BII)I

    move-result v6

    .line 192
    .local v6, "frameStreamId":I
    const/4 v1, 0x0

    const/4 v7, 0x4

    invoke-virtual {v15, v14, v1, v7}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 193
    const/4 v1, 0x0

    const/4 v7, 0x4

    invoke-static {v14, v1, v7}, Lcom/sonymobile/cameracommon/wifip2pcontroller/util/Util;->byteArray2Integer([BII)I

    move-result v12

    .line 196
    .local v12, "frameColorFormat":I
    const/4 v1, 0x0

    const/4 v7, 0x4

    invoke-virtual {v15, v14, v1, v7}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 197
    const/4 v1, 0x0

    const/4 v7, 0x4

    invoke-static {v14, v1, v7}, Lcom/sonymobile/cameracommon/wifip2pcontroller/util/Util;->byteArray2Integer([BII)I

    move-result v8

    .line 200
    .local v8, "framePixelWidth":I
    const/4 v1, 0x0

    const/4 v7, 0x4

    invoke-virtual {v15, v14, v1, v7}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 201
    const/4 v1, 0x0

    const/4 v7, 0x4

    invoke-static {v14, v1, v7}, Lcom/sonymobile/cameracommon/wifip2pcontroller/util/Util;->byteArray2Integer([BII)I

    move-result v9

    .line 204
    .local v9, "framePixelHeight":I
    const/4 v1, 0x0

    const/16 v7, 0x5b

    invoke-virtual {v15, v14, v1, v7}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 207
    invoke-static {}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;->getSizeWithoutPayload()I

    move-result v1

    add-int v11, v1, v13

    .line 208
    .local v11, "estimatedLength":I
    move-object/from16 v0, p0

    array-length v1, v0

    if-ge v1, v11, :cond_5

    .line 210
    sget-object v1, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "generate() : Packet payload is too small. [Received="

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v16, "] [Estimated="

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v16, "]"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/sonymobile/cameracommon/wifip2pcontroller/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 216
    :cond_5
    new-array v10, v13, [B

    .line 217
    .local v10, "payloadBytes":[B
    invoke-virtual {v15, v10}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 221
    new-instance v1, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;

    invoke-static {v12}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/Constants$FrameColorFormat;->fromFormatCode(I)Lcom/sonymobile/cameracommon/wifip2pcontroller/common/Constants$FrameColorFormat;

    move-result-object v7

    invoke-direct/range {v1 .. v10}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;-><init>(IIIIILcom/sonymobile/cameracommon/wifip2pcontroller/common/Constants$FrameColorFormat;II[B)V

    goto/16 :goto_0
.end method

.method public static getSizeWithoutPayload()I
    .locals 2

    .prologue
    .line 87
    invoke-static {}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame$CommonHeader;->size()I

    move-result v0

    invoke-static {}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame$PayloadHeader;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public getDatagramBuffer()[B
    .locals 3

    .prologue
    .line 384
    iget-object v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;->mDatagram:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 385
    iget-object v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;->mDatagram:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 386
    .local v1, "datagramLength":I
    new-array v0, v1, [B

    .line 387
    .local v0, "datagramBuffer":[B
    iget-object v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;->mDatagram:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 388
    return-object v0
.end method

.method public getPayloadBuffer()[B
    .locals 4

    .prologue
    .line 397
    iget v1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;->payloadSize:I

    new-array v0, v1, [B

    .line 398
    .local v0, "payload":[B
    iget-object v1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;->mDatagram:Ljava/nio/ByteBuffer;

    invoke-static {}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;->getSizeWithoutPayload()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 399
    iget-object v1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;->mDatagram:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    iget v3, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;->payloadSize:I

    invoke-virtual {v1, v0, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 400
    return-object v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 375
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;->mDatagram:Ljava/nio/ByteBuffer;

    .line 376
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 350
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "FragmentFrame : HashCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    const-string v1, "    Frame ID           : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;->frameId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    Timestamp          : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;->timestamp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    Numerator          : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;->numerator:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    Denominator        : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;->denominator:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    Frame Stream ID    : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;->frameStreamId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    Frame Color Format : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;->frameColorFormat:Lcom/sonymobile/cameracommon/wifip2pcontroller/common/Constants$FrameColorFormat;

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/Constants$FrameColorFormat;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    Frame Pixel Width  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;->framePixelWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    Frame Pixel Height : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;->framePixelHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    Payload            : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/FragmentFrame;->payloadSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
