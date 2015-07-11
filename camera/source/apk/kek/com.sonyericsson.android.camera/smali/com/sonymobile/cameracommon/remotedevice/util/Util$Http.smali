.class public Lcom/sonymobile/cameracommon/remotedevice/util/Util$Http;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/remotedevice/util/Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Http"
.end annotation


# static fields
.field private static CONNECTION_TIMEOUT:I

.field private static final IS_DEBUG:Z

.field private static READ_TIMEOUT:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0x2710

    .line 31
    sput v0, Lcom/sonymobile/cameracommon/remotedevice/util/Util$Http;->CONNECTION_TIMEOUT:I

    .line 32
    sput v0, Lcom/sonymobile/cameracommon/remotedevice/util/Util$Http;->READ_TIMEOUT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 15
    .param p0, "logTag"    # Ljava/lang/String;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 47
    const/4 v12, 0x0

    .line 50
    .local v12, "resultInputStream":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 55
    .local v5, "httpCon":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 62
    .local v2, "dstUrl":Ljava/net/URL;
    :try_start_1
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v5, v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 69
    :try_start_2
    const-string v14, "GET"

    invoke-virtual {v5, v14}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_3

    .line 75
    sget v14, Lcom/sonymobile/cameracommon/remotedevice/util/Util$Http;->CONNECTION_TIMEOUT:I

    invoke-virtual {v5, v14}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 76
    sget v14, Lcom/sonymobile/cameracommon/remotedevice/util/Util$Http;->READ_TIMEOUT:I

    invoke-virtual {v5, v14}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 79
    :try_start_3
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 89
    :try_start_4
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    move-result-object v10

    .line 100
    .local v10, "resMessage":Ljava/lang/String;
    :try_start_5
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    move-result v11

    .line 108
    .local v11, "responseCode":I
    const/16 v14, 0xc8

    if-ne v11, v14, :cond_3

    .line 110
    const/4 v6, 0x0

    .line 111
    .local v6, "in":Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 114
    .local v7, "out":Ljava/io/ByteArrayOutputStream;
    :try_start_6
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 115
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->available()I

    move-result v14

    invoke-direct {v8, v14}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9

    .line 118
    .end local v7    # "out":Ljava/io/ByteArrayOutputStream;
    .local v8, "out":Ljava/io/ByteArrayOutputStream;
    const/16 v14, 0x400

    :try_start_7
    new-array v1, v14, [B

    .line 119
    .local v1, "buf":[B
    const/4 v9, 0x0

    .line 120
    .local v9, "readLength":I
    :goto_0
    invoke-virtual {v6, v1}, Ljava/io/InputStream;->read([B)I

    move-result v9

    if-lez v9, :cond_2

    .line 121
    const/4 v14, 0x0

    invoke-virtual {v8, v1, v14, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_0

    .line 131
    .end local v1    # "buf":[B
    .end local v9    # "readLength":I
    :catch_0
    move-exception v3

    move-object v7, v8

    .line 132
    .end local v8    # "out":Ljava/io/ByteArrayOutputStream;
    .local v3, "e":Ljava/io/IOException;
    .restart local v7    # "out":Ljava/io/ByteArrayOutputStream;
    :goto_1
    const-string v14, "Http.get() : Failed to getInputStream()."

    invoke-static {p0, v14}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 136
    if-eqz v6, :cond_0

    .line 137
    :try_start_8
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 144
    :cond_0
    :goto_2
    if-eqz v7, :cond_1

    .line 145
    :try_start_9
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 152
    :cond_1
    :goto_3
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 153
    const/4 v14, 0x0

    .line 166
    .end local v2    # "dstUrl":Ljava/net/URL;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v6    # "in":Ljava/io/InputStream;
    .end local v7    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v10    # "resMessage":Ljava/lang/String;
    .end local v11    # "responseCode":I
    :goto_4
    return-object v14

    .line 56
    :catch_1
    move-exception v3

    .line 57
    .local v3, "e":Ljava/net/MalformedURLException;
    const-string v14, "Http.get() : Request URL is not valid."

    invoke-static {p0, v14}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v3}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 59
    const/4 v14, 0x0

    goto :goto_4

    .line 63
    .end local v3    # "e":Ljava/net/MalformedURLException;
    .restart local v2    # "dstUrl":Ljava/net/URL;
    :catch_2
    move-exception v3

    .line 64
    .local v3, "e":Ljava/io/IOException;
    const-string v14, "Http.get() : Failed to openConnection()."

    invoke-static {p0, v14}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 66
    const/4 v14, 0x0

    goto :goto_4

    .line 70
    .end local v3    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 71
    .local v3, "e":Ljava/net/ProtocolException;
    const-string v14, "Http.get() : GET is not supported."

    invoke-static {p0, v14}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {v3}, Ljava/net/ProtocolException;->printStackTrace()V

    .line 73
    const/4 v14, 0x0

    goto :goto_4

    .line 80
    .end local v3    # "e":Ljava/net/ProtocolException;
    :catch_4
    move-exception v3

    .line 81
    .local v3, "e":Ljava/io/IOException;
    const-string v14, "Http.get() : Failed to connect()."

    invoke-static {p0, v14}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 83
    const/4 v14, 0x0

    goto :goto_4

    .line 90
    .end local v3    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v3

    .line 91
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v14, "Http.get() : Failed to getResponseMessage()."

    invoke-static {p0, v14}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 94
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 95
    const/4 v14, 0x0

    goto :goto_4

    .line 101
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v10    # "resMessage":Ljava/lang/String;
    :catch_6
    move-exception v3

    .line 102
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v14, "Http.get() : Failed to getResponseCode()."

    invoke-static {p0, v14}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 105
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 106
    const/4 v14, 0x0

    goto :goto_4

    .line 125
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "buf":[B
    .restart local v6    # "in":Ljava/io/InputStream;
    .restart local v8    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "readLength":I
    .restart local v11    # "responseCode":I
    :cond_2
    :try_start_a
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 126
    new-instance v13, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    .line 129
    .end local v12    # "resultInputStream":Ljava/io/InputStream;
    .local v13, "resultInputStream":Ljava/io/InputStream;
    :try_start_b
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 130
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    move-object v12, v13

    .line 158
    .end local v1    # "buf":[B
    .end local v6    # "in":Ljava/io/InputStream;
    .end local v8    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v9    # "readLength":I
    .end local v13    # "resultInputStream":Ljava/io/InputStream;
    .restart local v12    # "resultInputStream":Ljava/io/InputStream;
    :cond_3
    if-nez v12, :cond_4

    .line 159
    const-string v14, "Http.get() : Result InputStream is null."

    invoke-static {p0, v14}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_4
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v14, v12

    .line 166
    goto :goto_4

    .line 139
    .restart local v3    # "e":Ljava/io/IOException;
    .restart local v6    # "in":Ljava/io/InputStream;
    .restart local v7    # "out":Ljava/io/ByteArrayOutputStream;
    :catch_7
    move-exception v4

    .line 140
    .local v4, "ee":Ljava/io/IOException;
    const-string v14, "Http.get() : Failed to close InputStream."

    invoke-static {p0, v14}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 147
    .end local v4    # "ee":Ljava/io/IOException;
    :catch_8
    move-exception v4

    .line 148
    .restart local v4    # "ee":Ljava/io/IOException;
    const-string v14, "Http.get() : Failed to close OutputStream."

    invoke-static {p0, v14}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 131
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "ee":Ljava/io/IOException;
    :catch_9
    move-exception v3

    goto/16 :goto_1

    .end local v7    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v12    # "resultInputStream":Ljava/io/InputStream;
    .restart local v1    # "buf":[B
    .restart local v8    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "readLength":I
    .restart local v13    # "resultInputStream":Ljava/io/InputStream;
    :catch_a
    move-exception v3

    move-object v7, v8

    .end local v8    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "out":Ljava/io/ByteArrayOutputStream;
    move-object v12, v13

    .end local v13    # "resultInputStream":Ljava/io/InputStream;
    .restart local v12    # "resultInputStream":Ljava/io/InputStream;
    goto/16 :goto_1
.end method

.method public static post(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 19
    .param p0, "logTag"    # Ljava/lang/String;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "postData"    # Ljava/lang/String;

    .prologue
    .line 184
    const/4 v12, 0x0

    .line 185
    .local v12, "outputStream":Ljava/io/OutputStream;
    const/4 v8, 0x0

    .line 188
    .local v8, "osWriter":Ljava/io/OutputStreamWriter;
    const/16 v16, 0x0

    .line 191
    .local v16, "resultInputStream":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 196
    .local v6, "httpCon":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v3, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 203
    .local v3, "dstUrl":Ljava/net/URL;
    :try_start_1
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v18

    move-object/from16 v0, v18

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v6, v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 210
    :try_start_2
    const-string v18, "POST"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_3

    .line 216
    sget v18, Lcom/sonymobile/cameracommon/remotedevice/util/Util$Http;->CONNECTION_TIMEOUT:I

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 217
    sget v18, Lcom/sonymobile/cameracommon/remotedevice/util/Util$Http;->READ_TIMEOUT:I

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 218
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 219
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 222
    :try_start_3
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v12

    .line 229
    :try_start_4
    new-instance v9, Ljava/io/OutputStreamWriter;

    const-string v18, "UTF-8"

    move-object/from16 v0, v18

    invoke-direct {v9, v12, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_5

    .line 236
    .end local v8    # "osWriter":Ljava/io/OutputStreamWriter;
    .local v9, "osWriter":Ljava/io/OutputStreamWriter;
    :try_start_5
    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v9}, Ljava/io/OutputStreamWriter;->flush()V

    .line 238
    invoke-virtual {v9}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 254
    const/4 v8, 0x0

    .line 256
    .end local v9    # "osWriter":Ljava/io/OutputStreamWriter;
    .restart local v8    # "osWriter":Ljava/io/OutputStreamWriter;
    :try_start_6
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    .line 262
    const/4 v12, 0x0

    .line 266
    :try_start_7
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9

    .line 276
    :try_start_8
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_a

    move-result-object v14

    .line 287
    .local v14, "resMessage":Ljava/lang/String;
    :try_start_9
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_b

    move-result v15

    .line 295
    .local v15, "responseCode":I
    const/16 v18, 0xc8

    move/from16 v0, v18

    if-ne v15, v0, :cond_4

    .line 297
    const/4 v7, 0x0

    .line 298
    .local v7, "in":Ljava/io/InputStream;
    const/4 v10, 0x0

    .line 301
    .local v10, "out":Ljava/io/ByteArrayOutputStream;
    :try_start_a
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 302
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->available()I

    move-result v18

    move/from16 v0, v18

    invoke-direct {v11, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_e

    .line 305
    .end local v10    # "out":Ljava/io/ByteArrayOutputStream;
    .local v11, "out":Ljava/io/ByteArrayOutputStream;
    const/16 v18, 0x400

    :try_start_b
    move/from16 v0, v18

    new-array v2, v0, [B

    .line 306
    .local v2, "buf":[B
    const/4 v13, 0x0

    .line 307
    .local v13, "readLength":I
    :goto_0
    invoke-virtual {v7, v2}, Ljava/io/InputStream;->read([B)I

    move-result v13

    if-lez v13, :cond_3

    .line 308
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v11, v2, v0, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    goto :goto_0

    .line 318
    .end local v2    # "buf":[B
    .end local v13    # "readLength":I
    :catch_0
    move-exception v4

    move-object v10, v11

    .line 319
    .end local v11    # "out":Ljava/io/ByteArrayOutputStream;
    .local v4, "e":Ljava/io/IOException;
    .restart local v10    # "out":Ljava/io/ByteArrayOutputStream;
    :goto_1
    const-string v18, "Http.post() : Failed to getInputStream()."

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 323
    if-eqz v7, :cond_0

    .line 324
    :try_start_c
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_c

    .line 331
    :cond_0
    :goto_2
    if-eqz v10, :cond_1

    .line 332
    :try_start_d
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_d

    .line 339
    :cond_1
    :goto_3
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 340
    const/16 v18, 0x0

    .line 353
    .end local v3    # "dstUrl":Ljava/net/URL;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v7    # "in":Ljava/io/InputStream;
    .end local v10    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v14    # "resMessage":Ljava/lang/String;
    .end local v15    # "responseCode":I
    :goto_4
    return-object v18

    .line 197
    :catch_1
    move-exception v4

    .line 198
    .local v4, "e":Ljava/net/MalformedURLException;
    const-string v18, "Http.post() : Request URL is not valid."

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-virtual {v4}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 200
    const/16 v18, 0x0

    goto :goto_4

    .line 204
    .end local v4    # "e":Ljava/net/MalformedURLException;
    .restart local v3    # "dstUrl":Ljava/net/URL;
    :catch_2
    move-exception v4

    .line 205
    .local v4, "e":Ljava/io/IOException;
    const-string v18, "Http.post() : Failed to openConnection()."

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 207
    const/16 v18, 0x0

    goto :goto_4

    .line 211
    .end local v4    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v4

    .line 212
    .local v4, "e":Ljava/net/ProtocolException;
    const-string v18, "Http.post() : POST is not supported."

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-virtual {v4}, Ljava/net/ProtocolException;->printStackTrace()V

    .line 214
    const/16 v18, 0x0

    goto :goto_4

    .line 223
    .end local v4    # "e":Ljava/net/ProtocolException;
    :catch_4
    move-exception v4

    .line 224
    .local v4, "e":Ljava/io/IOException;
    const-string v18, "Http.post() : Failed to getOutputStream()."

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 226
    const/16 v18, 0x0

    goto :goto_4

    .line 230
    .end local v4    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v4

    .line 231
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    const-string v18, "Http.post() : UTF-8 is not supported."

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 233
    const/16 v18, 0x0

    goto :goto_4

    .line 239
    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v8    # "osWriter":Ljava/io/OutputStreamWriter;
    .restart local v9    # "osWriter":Ljava/io/OutputStreamWriter;
    :catch_6
    move-exception v4

    .line 240
    .local v4, "e":Ljava/io/IOException;
    const-string v18, "Http.post() : Failed to write OutputStreamWriter."

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 243
    if-eqz v9, :cond_2

    .line 245
    :try_start_e
    invoke-virtual {v9}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    .line 252
    :cond_2
    const/16 v18, 0x0

    move-object v8, v9

    .end local v9    # "osWriter":Ljava/io/OutputStreamWriter;
    .restart local v8    # "osWriter":Ljava/io/OutputStreamWriter;
    goto :goto_4

    .line 246
    .end local v8    # "osWriter":Ljava/io/OutputStreamWriter;
    .restart local v9    # "osWriter":Ljava/io/OutputStreamWriter;
    :catch_7
    move-exception v5

    .line 247
    .local v5, "ee":Ljava/io/IOException;
    const-string v18, "Http.post() : Failed to close OutputStreamWriter."

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 249
    const/16 v18, 0x0

    move-object v8, v9

    .end local v9    # "osWriter":Ljava/io/OutputStreamWriter;
    .restart local v8    # "osWriter":Ljava/io/OutputStreamWriter;
    goto :goto_4

    .line 257
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "ee":Ljava/io/IOException;
    :catch_8
    move-exception v4

    .line 258
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v18, "Http.post() : Failed to close OutputStream."

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 260
    const/16 v18, 0x0

    goto/16 :goto_4

    .line 267
    .end local v4    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v4

    .line 268
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v18, "Http.post() : Failed to connect()."

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 270
    const/16 v18, 0x0

    goto/16 :goto_4

    .line 277
    .end local v4    # "e":Ljava/io/IOException;
    :catch_a
    move-exception v4

    .line 278
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v18, "Http.post() : Failed to getResponseMessage()."

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 281
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 282
    const/16 v18, 0x0

    goto/16 :goto_4

    .line 288
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v14    # "resMessage":Ljava/lang/String;
    :catch_b
    move-exception v4

    .line 289
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v18, "Http.post() : Failed to getResponseCode()."

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 292
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 293
    const/16 v18, 0x0

    goto/16 :goto_4

    .line 312
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v2    # "buf":[B
    .restart local v7    # "in":Ljava/io/InputStream;
    .restart local v11    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v13    # "readLength":I
    .restart local v15    # "responseCode":I
    :cond_3
    :try_start_f
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 313
    new-instance v17, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0

    .line 316
    .end local v16    # "resultInputStream":Ljava/io/InputStream;
    .local v17, "resultInputStream":Ljava/io/InputStream;
    :try_start_10
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 317
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_f

    move-object/from16 v16, v17

    .line 345
    .end local v2    # "buf":[B
    .end local v7    # "in":Ljava/io/InputStream;
    .end local v11    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v13    # "readLength":I
    .end local v17    # "resultInputStream":Ljava/io/InputStream;
    .restart local v16    # "resultInputStream":Ljava/io/InputStream;
    :cond_4
    if-nez v16, :cond_5

    .line 346
    const-string v18, "Http.post() : Result InputStream is null."

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    :cond_5
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object/from16 v18, v16

    .line 353
    goto/16 :goto_4

    .line 326
    .restart local v4    # "e":Ljava/io/IOException;
    .restart local v7    # "in":Ljava/io/InputStream;
    .restart local v10    # "out":Ljava/io/ByteArrayOutputStream;
    :catch_c
    move-exception v5

    .line 327
    .restart local v5    # "ee":Ljava/io/IOException;
    const-string v18, "Http.post() : Failed to close InputStream."

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 334
    .end local v5    # "ee":Ljava/io/IOException;
    :catch_d
    move-exception v5

    .line 335
    .restart local v5    # "ee":Ljava/io/IOException;
    const-string v18, "Http.post() : Failed to close OutputStream."

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 318
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "ee":Ljava/io/IOException;
    :catch_e
    move-exception v4

    goto/16 :goto_1

    .end local v10    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v16    # "resultInputStream":Ljava/io/InputStream;
    .restart local v2    # "buf":[B
    .restart local v11    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v13    # "readLength":I
    .restart local v17    # "resultInputStream":Ljava/io/InputStream;
    :catch_f
    move-exception v4

    move-object v10, v11

    .end local v11    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v10    # "out":Ljava/io/ByteArrayOutputStream;
    move-object/from16 v16, v17

    .end local v17    # "resultInputStream":Ljava/io/InputStream;
    .restart local v16    # "resultInputStream":Ljava/io/InputStream;
    goto/16 :goto_1
.end method
