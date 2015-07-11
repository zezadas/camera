.class public Lcom/sonyericsson/android/camera/mediasaving/JfifIntegrator;
.super Ljava/lang/Object;
.source "JfifIntegrator.java"


# static fields
.field private static final M_DHT:I = 0xc4

.field private static final M_DQT:I = 0xdb

.field private static final M_MARKER:I = 0xff

.field private static final M_SOI:I = 0xd8

.field private static final M_SOS:I = 0xda


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static integrate([B[B)I
    .locals 28
    .param p0, "srcJpegData"    # [B
    .param p1, "dstJpegData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/android/camera/mediasaving/IntegrationMakerException;
        }
    .end annotation

    .prologue
    .line 40
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v25, v0

    .line 43
    .local v25, "srcJpegDataLength":I
    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v15, v0, [B

    .line 45
    .local v15, "getData":[B
    const/4 v9, 0x0

    .line 48
    .local v9, "accessCount":I
    const/4 v8, 0x0

    .line 49
    .local v8, "FFDB_seg_length":I
    const/4 v6, 0x0

    .line 50
    .local v6, "FFC4_seg_length":I
    const/4 v7, 0x0

    .line 51
    .local v7, "FFDB_orgfile_length":I
    const/4 v5, 0x0

    .line 55
    .local v5, "FFC4_orgfile_length":I
    :cond_0
    :goto_0
    add-int/lit8 v26, v9, 0x1

    move/from16 v0, v26

    move/from16 v1, v25

    if-ge v0, v1, :cond_2

    .line 57
    const/16 v26, 0x0

    aget-byte v27, p0, v9

    aput-byte v27, v15, v26

    .line 58
    const/16 v26, 0x1

    add-int/lit8 v27, v9, 0x1

    aget-byte v27, p0, v27

    aput-byte v27, v15, v26

    .line 59
    add-int/lit8 v9, v9, 0x2

    .line 62
    const/16 v26, -0x1

    const/16 v27, 0x0

    aget-byte v27, v15, v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_1

    .line 63
    new-instance v26, Lcom/sonyericsson/android/camera/mediasaving/IntegrationMakerException;

    const-string v27, "No \'FF\' marker."

    invoke-direct/range {v26 .. v27}, Lcom/sonyericsson/android/camera/mediasaving/IntegrationMakerException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 67
    :cond_1
    const/16 v26, -0x26

    const/16 v27, 0x1

    aget-byte v27, v15, v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_3

    .line 95
    :cond_2
    add-int/lit8 v26, v8, 0x2

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v20, v0

    .line 96
    .local v20, "pFFDB":[B
    add-int/lit8 v26, v6, 0x2

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v18, v0

    .line 99
    .local v18, "pFFC4":[B
    const/16 v26, 0x0

    const/16 v27, -0x1

    aput-byte v27, v20, v26

    .line 100
    const/16 v26, 0x1

    const/16 v27, -0x25

    aput-byte v27, v20, v26

    .line 101
    const/16 v26, 0x0

    const/16 v27, -0x1

    aput-byte v27, v18, v26

    .line 102
    const/16 v26, 0x1

    const/16 v27, -0x3c

    aput-byte v27, v18, v26

    .line 104
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    .line 105
    .local v14, "ffdb_length":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    .line 107
    .local v13, "ffc4_length":Ljava/lang/String;
    new-instance v11, Ljava/math/BigInteger;

    invoke-direct {v11, v14}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 108
    .local v11, "bigIntLen":Ljava/math/BigInteger;
    invoke-virtual {v11}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v12

    .line 109
    .local v12, "bytes":[B
    const/16 v26, 0x2

    const/16 v27, 0x0

    aget-byte v27, v12, v27

    aput-byte v27, v20, v26

    .line 110
    const/16 v26, 0x3

    const/16 v27, 0x1

    aget-byte v27, v12, v27

    aput-byte v27, v20, v26

    .line 112
    new-instance v11, Ljava/math/BigInteger;

    .end local v11    # "bigIntLen":Ljava/math/BigInteger;
    invoke-direct {v11, v13}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 113
    .restart local v11    # "bigIntLen":Ljava/math/BigInteger;
    invoke-virtual {v11}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v12

    .line 114
    const/16 v26, 0x2

    const/16 v27, 0x0

    aget-byte v27, v12, v27

    aput-byte v27, v18, v26

    .line 115
    const/16 v26, 0x3

    const/16 v27, 0x1

    aget-byte v27, v12, v27

    aput-byte v27, v18, v26

    .line 117
    const/16 v21, 0x4

    .line 118
    .local v21, "pFFDBPos":I
    const/16 v19, 0x4

    .line 121
    .local v19, "pFFC4Pos":I
    sub-int v26, v25, v7

    sub-int v26, v26, v5

    add-int v26, v26, v8

    add-int/lit8 v26, v26, 0x2

    add-int v26, v26, v6

    add-int/lit8 v16, v26, 0x2

    .line 128
    .local v16, "integratedJpegDataLength":I
    move-object/from16 v22, p1

    .line 131
    .local v22, "pIntegratedJpegData":[B
    const/4 v9, 0x0

    .line 132
    const/16 v23, 0x0

    .line 133
    .local v23, "pos":I
    :goto_1
    add-int/lit8 v26, v9, 0x1

    move/from16 v0, v26

    move/from16 v1, v25

    if-ge v0, v1, :cond_9

    .line 134
    const/16 v26, 0x0

    aget-byte v27, p0, v9

    aput-byte v27, v15, v26

    .line 135
    const/16 v26, 0x1

    add-int/lit8 v27, v9, 0x1

    aget-byte v27, p0, v27

    aput-byte v27, v15, v26

    .line 136
    add-int/lit8 v9, v9, 0x2

    .line 138
    const/16 v26, -0x1

    const/16 v27, 0x0

    aget-byte v27, v15, v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_8

    .line 139
    new-instance v26, Lcom/sonyericsson/android/camera/mediasaving/IntegrationMakerException;

    const-string v27, "No \'FF\' marker."

    invoke-direct/range {v26 .. v27}, Lcom/sonyericsson/android/camera/mediasaving/IntegrationMakerException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 69
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

    .line 75
    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 76
    .local v17, "len":[B
    const/16 v26, 0x0

    aget-byte v27, p0, v9

    aput-byte v27, v17, v26

    .line 77
    const/16 v26, 0x1

    add-int/lit8 v27, v9, 0x1

    aget-byte v27, p0, v27

    aput-byte v27, v17, v26

    .line 78
    new-instance v10, Ljava/math/BigInteger;

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Ljava/math/BigInteger;-><init>([B)V

    .line 79
    .local v10, "bi":Ljava/math/BigInteger;
    invoke-virtual {v10}, Ljava/math/BigInteger;->intValue()I

    move-result v24

    .line 81
    .local v24, "segmentLength":I
    const/16 v26, -0x3c

    const/16 v27, 0x1

    aget-byte v27, v15, v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_6

    .line 84
    if-nez v6, :cond_5

    move/from16 v26, v24

    :goto_2
    add-int v6, v6, v26

    .line 85
    add-int/lit8 v26, v24, 0x2

    add-int v5, v5, v26

    .line 92
    :cond_4
    :goto_3
    add-int v9, v9, v24

    .line 93
    goto/16 :goto_0

    .line 84
    :cond_5
    add-int/lit8 v26, v24, -0x2

    goto :goto_2

    .line 86
    :cond_6
    const/16 v26, -0x25

    const/16 v27, 0x1

    aget-byte v27, v15, v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_4

    .line 89
    if-nez v8, :cond_7

    move/from16 v26, v24

    :goto_4
    add-int v8, v8, v26

    .line 90
    add-int/lit8 v26, v24, 0x2

    add-int v7, v7, v26

    goto :goto_3

    .line 89
    :cond_7
    add-int/lit8 v26, v24, -0x2

    goto :goto_4

    .line 142
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

    .line 146
    const/16 v26, 0x0

    add-int/lit8 v27, v8, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v26

    move-object/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v27

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    add-int/lit8 v26, v8, 0x2

    add-int v23, v23, v26

    .line 149
    const/16 v26, 0x0

    add-int/lit8 v27, v6, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v26

    move-object/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v27

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 150
    add-int/lit8 v26, v6, 0x2

    add-int v23, v23, v26

    .line 153
    add-int/lit8 v26, v9, -0x2

    add-int/lit8 v27, v9, -0x2

    sub-int v27, v25, v27

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v27

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    :cond_9
    return v16

    .line 156
    :cond_a
    const/16 v26, -0x28

    const/16 v27, 0x1

    aget-byte v27, v15, v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_b

    .line 158
    add-int/lit8 v26, v9, -0x2

    const/16 v27, 0x0

    aget-byte v27, v15, v27

    aput-byte v27, v22, v26

    .line 159
    add-int/lit8 v26, v9, -0x1

    const/16 v27, 0x1

    aget-byte v27, v15, v27

    aput-byte v27, v22, v26

    .line 160
    add-int/lit8 v23, v23, 0x2

    .line 161
    goto/16 :goto_1

    .line 164
    :cond_b
    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 165
    .restart local v17    # "len":[B
    const/16 v26, 0x0

    aget-byte v27, p0, v9

    aput-byte v27, v17, v26

    .line 166
    const/16 v26, 0x1

    add-int/lit8 v27, v9, 0x1

    aget-byte v27, p0, v27

    aput-byte v27, v17, v26

    .line 167
    new-instance v10, Ljava/math/BigInteger;

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Ljava/math/BigInteger;-><init>([B)V

    .line 168
    .restart local v10    # "bi":Ljava/math/BigInteger;
    invoke-virtual {v10}, Ljava/math/BigInteger;->intValue()I

    move-result v24

    .line 170
    .restart local v24    # "segmentLength":I
    const/16 v26, -0x3c

    const/16 v27, 0x1

    aget-byte v27, v15, v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_c

    .line 171
    add-int/lit8 v26, v9, 0x2

    add-int/lit8 v27, v24, -0x2

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v27

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 172
    add-int/lit8 v26, v24, -0x2

    add-int v19, v19, v26

    .line 181
    :goto_5
    add-int v9, v9, v24

    .line 182
    goto/16 :goto_1

    .line 173
    :cond_c
    const/16 v26, -0x25

    const/16 v27, 0x1

    aget-byte v27, v15, v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_d

    .line 174
    add-int/lit8 v26, v9, 0x2

    add-int/lit8 v27, v24, -0x2

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v27

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 175
    add-int/lit8 v26, v24, -0x2

    add-int v21, v21, v26

    goto :goto_5

    .line 177
    :cond_d
    add-int/lit8 v26, v9, -0x2

    add-int/lit8 v27, v24, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v27

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 179
    add-int/lit8 v26, v24, 0x2

    add-int v23, v23, v26

    goto :goto_5
.end method
