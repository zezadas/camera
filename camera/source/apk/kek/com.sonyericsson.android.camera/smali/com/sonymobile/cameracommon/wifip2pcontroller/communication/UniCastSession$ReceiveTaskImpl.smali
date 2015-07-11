.class Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession$ReceiveTaskImpl;
.super Ljava/lang/Object;
.source "UniCastSession.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/BaseUniCast$ReceiveTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReceiveTaskImpl"
.end annotation


# instance fields
.field private volatile mIsAlive:Z

.field private final mTargetPort:I

.field final synthetic this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession;


# direct methods
.method constructor <init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession;I)V
    .locals 1
    .param p2, "targetPort"    # I

    .prologue
    .line 170
    iput-object p1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession$ReceiveTaskImpl;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession$ReceiveTaskImpl;->mIsAlive:Z

    .line 171
    iput p2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession$ReceiveTaskImpl;->mTargetPort:I

    .line 172
    return-void
.end method


# virtual methods
.method public release()V
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession$ReceiveTaskImpl;->mIsAlive:Z

    .line 180
    return-void
.end method

.method public run()V
    .locals 13

    .prologue
    .line 185
    :cond_0
    :goto_0
    iget-boolean v12, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession$ReceiveTaskImpl;->mIsAlive:Z

    if-eqz v12, :cond_f

    .line 187
    const/16 v12, 0x400

    new-array v3, v12, [B

    .line 188
    .local v3, "readBuffer":[B
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 190
    .local v5, "receivedOutputStream":Ljava/io/ByteArrayOutputStream;
    const/4 v7, 0x0

    .line 191
    .local v7, "serverSocket":Ljava/net/ServerSocket;
    const/4 v9, 0x0

    .line 192
    .local v9, "socket":Ljava/net/Socket;
    const/4 v10, 0x0

    .line 198
    .local v10, "socketInputStream":Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v8, Ljava/net/ServerSocket;

    iget v12, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession$ReceiveTaskImpl;->mTargetPort:I

    invoke-direct {v8, v12}, Ljava/net/ServerSocket;-><init>(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_f
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    .end local v7    # "serverSocket":Ljava/net/ServerSocket;
    .local v8, "serverSocket":Ljava/net/ServerSocket;
    const/16 v12, 0xbb8

    :try_start_1
    invoke-virtual {v8, v12}, Ljava/net/ServerSocket;->setSoTimeout(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v11, v10

    .line 202
    .end local v10    # "socketInputStream":Ljava/io/BufferedInputStream;
    .local v11, "socketInputStream":Ljava/io/BufferedInputStream;
    :goto_1
    :try_start_2
    iget-boolean v12, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession$ReceiveTaskImpl;->mIsAlive:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v12, :cond_7

    .line 205
    :try_start_3
    invoke-virtual {v8}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v9

    .line 210
    :try_start_4
    invoke-virtual {v9}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v6

    .line 211
    .local v6, "remoteIp":Ljava/net/InetAddress;
    if-nez v6, :cond_4

    .line 212
    invoke-virtual {v9}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    .line 242
    .end local v6    # "remoteIp":Ljava/net/InetAddress;
    :catch_0
    move-exception v1

    move-object v10, v11

    .end local v11    # "socketInputStream":Ljava/io/BufferedInputStream;
    .restart local v10    # "socketInputStream":Ljava/io/BufferedInputStream;
    move-object v7, v8

    .line 244
    .end local v8    # "serverSocket":Ljava/net/ServerSocket;
    .local v1, "e":Ljava/io/IOException;
    .restart local v7    # "serverSocket":Ljava/net/ServerSocket;
    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 246
    const/4 v3, 0x0

    .line 247
    if-eqz v5, :cond_1

    .line 249
    :try_start_6
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    .line 255
    :cond_1
    :goto_3
    if-eqz v7, :cond_2

    .line 257
    :try_start_7
    invoke-virtual {v7}, Ljava/net/ServerSocket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9

    .line 263
    :cond_2
    :goto_4
    if-eqz v9, :cond_3

    .line 265
    :try_start_8
    invoke-virtual {v9}, Ljava/net/Socket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_a

    .line 271
    :cond_3
    :goto_5
    if-eqz v10, :cond_0

    .line 273
    :try_start_9
    invoke-virtual {v10}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_0

    .line 274
    :catch_1
    move-exception v1

    .line 276
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 206
    .end local v1    # "e":Ljava/io/IOException;
    .end local v7    # "serverSocket":Ljava/net/ServerSocket;
    .end local v10    # "socketInputStream":Ljava/io/BufferedInputStream;
    .restart local v8    # "serverSocket":Ljava/net/ServerSocket;
    .restart local v11    # "socketInputStream":Ljava/io/BufferedInputStream;
    :catch_2
    move-exception v1

    .line 208
    .local v1, "e":Ljava/net/SocketTimeoutException;
    goto :goto_1

    .line 215
    .end local v1    # "e":Ljava/net/SocketTimeoutException;
    .restart local v6    # "remoteIp":Ljava/net/InetAddress;
    :cond_4
    :try_start_a
    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 218
    .local v2, "hostIp":Ljava/lang/String;
    new-instance v10, Ljava/io/BufferedInputStream;

    invoke-virtual {v9}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v10, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 221
    .end local v11    # "socketInputStream":Ljava/io/BufferedInputStream;
    .restart local v10    # "socketInputStream":Ljava/io/BufferedInputStream;
    const/4 v4, 0x0

    .line 222
    .local v4, "readLength":I
    :try_start_b
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 223
    :goto_6
    invoke-virtual {v10, v3}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_5

    .line 224
    const/4 v12, 0x0

    invoke-virtual {v5, v3, v12, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_6

    .line 242
    .end local v2    # "hostIp":Ljava/lang/String;
    .end local v4    # "readLength":I
    .end local v6    # "remoteIp":Ljava/net/InetAddress;
    :catch_3
    move-exception v1

    move-object v7, v8

    .end local v8    # "serverSocket":Ljava/net/ServerSocket;
    .restart local v7    # "serverSocket":Ljava/net/ServerSocket;
    goto :goto_2

    .line 226
    .end local v7    # "serverSocket":Ljava/net/ServerSocket;
    .restart local v2    # "hostIp":Ljava/lang/String;
    .restart local v4    # "readLength":I
    .restart local v6    # "remoteIp":Ljava/net/InetAddress;
    .restart local v8    # "serverSocket":Ljava/net/ServerSocket;
    :cond_5
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 229
    invoke-virtual {v10}, Ljava/io/BufferedInputStream;->close()V

    .line 230
    invoke-virtual {v9}, Ljava/net/Socket;->close()V

    .line 233
    iget-object v12, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession$ReceiveTaskImpl;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession;

    invoke-virtual {v12}, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession;->isReceiveExecutorAvailable()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 234
    iget-object v12, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession$ReceiveTaskImpl;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession;

    iget-object v0, v12, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession;->mMessageReceivedCallback:Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/MessageReceivedCallback;

    .line 235
    .local v0, "callback":Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/MessageReceivedCallback;
    if-eqz v0, :cond_6

    .line 236
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    invoke-interface {v0, v12, v2}, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/MessageReceivedCallback;->onMessageReceived([BLjava/lang/String;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .end local v0    # "callback":Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/MessageReceivedCallback;
    :cond_6
    move-object v11, v10

    .line 241
    .end local v10    # "socketInputStream":Ljava/io/BufferedInputStream;
    .restart local v11    # "socketInputStream":Ljava/io/BufferedInputStream;
    goto :goto_1

    .line 246
    .end local v2    # "hostIp":Ljava/lang/String;
    .end local v4    # "readLength":I
    .end local v6    # "remoteIp":Ljava/net/InetAddress;
    :cond_7
    const/4 v3, 0x0

    .line 247
    if-eqz v5, :cond_8

    .line 249
    :try_start_c
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    .line 255
    :cond_8
    :goto_7
    if-eqz v8, :cond_9

    .line 257
    :try_start_d
    invoke-virtual {v8}, Ljava/net/ServerSocket;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    .line 263
    :cond_9
    :goto_8
    if-eqz v9, :cond_a

    .line 265
    :try_start_e
    invoke-virtual {v9}, Ljava/net/Socket;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    .line 271
    :cond_a
    :goto_9
    if-eqz v11, :cond_10

    .line 273
    :try_start_f
    invoke-virtual {v11}, Ljava/io/BufferedInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7

    move-object v10, v11

    .end local v11    # "socketInputStream":Ljava/io/BufferedInputStream;
    .restart local v10    # "socketInputStream":Ljava/io/BufferedInputStream;
    move-object v7, v8

    .line 277
    .end local v8    # "serverSocket":Ljava/net/ServerSocket;
    .restart local v7    # "serverSocket":Ljava/net/ServerSocket;
    goto/16 :goto_0

    .line 250
    .end local v7    # "serverSocket":Ljava/net/ServerSocket;
    .end local v10    # "socketInputStream":Ljava/io/BufferedInputStream;
    .restart local v8    # "serverSocket":Ljava/net/ServerSocket;
    .restart local v11    # "socketInputStream":Ljava/io/BufferedInputStream;
    :catch_4
    move-exception v1

    .line 252
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 258
    .end local v1    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v1

    .line 260
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 266
    .end local v1    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v1

    .line 268
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 274
    .end local v1    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v1

    .line 276
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v10, v11

    .end local v11    # "socketInputStream":Ljava/io/BufferedInputStream;
    .restart local v10    # "socketInputStream":Ljava/io/BufferedInputStream;
    move-object v7, v8

    .line 277
    .end local v8    # "serverSocket":Ljava/net/ServerSocket;
    .restart local v7    # "serverSocket":Ljava/net/ServerSocket;
    goto/16 :goto_0

    .line 250
    :catch_8
    move-exception v1

    .line 252
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 258
    :catch_9
    move-exception v1

    .line 260
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 266
    :catch_a
    move-exception v1

    .line 268
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    .line 246
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    :goto_a
    const/4 v3, 0x0

    .line 247
    if-eqz v5, :cond_b

    .line 249
    :try_start_10
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_b

    .line 255
    :cond_b
    :goto_b
    if-eqz v7, :cond_c

    .line 257
    :try_start_11
    invoke-virtual {v7}, Ljava/net/ServerSocket;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_c

    .line 263
    :cond_c
    :goto_c
    if-eqz v9, :cond_d

    .line 265
    :try_start_12
    invoke-virtual {v9}, Ljava/net/Socket;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_d

    .line 271
    :cond_d
    :goto_d
    if-eqz v10, :cond_e

    .line 273
    :try_start_13
    invoke-virtual {v10}, Ljava/io/BufferedInputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_e

    .line 277
    :cond_e
    :goto_e
    throw v12

    .line 250
    :catch_b
    move-exception v1

    .line 252
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 258
    .end local v1    # "e":Ljava/io/IOException;
    :catch_c
    move-exception v1

    .line 260
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 266
    .end local v1    # "e":Ljava/io/IOException;
    :catch_d
    move-exception v1

    .line 268
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 274
    .end local v1    # "e":Ljava/io/IOException;
    :catch_e
    move-exception v1

    .line 276
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    .line 281
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "readBuffer":[B
    .end local v5    # "receivedOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "serverSocket":Ljava/net/ServerSocket;
    .end local v9    # "socket":Ljava/net/Socket;
    .end local v10    # "socketInputStream":Ljava/io/BufferedInputStream;
    :cond_f
    return-void

    .line 246
    .restart local v3    # "readBuffer":[B
    .restart local v5    # "receivedOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "serverSocket":Ljava/net/ServerSocket;
    .restart local v9    # "socket":Ljava/net/Socket;
    .restart local v10    # "socketInputStream":Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v12

    move-object v7, v8

    .end local v8    # "serverSocket":Ljava/net/ServerSocket;
    .restart local v7    # "serverSocket":Ljava/net/ServerSocket;
    goto :goto_a

    .end local v7    # "serverSocket":Ljava/net/ServerSocket;
    .end local v10    # "socketInputStream":Ljava/io/BufferedInputStream;
    .restart local v8    # "serverSocket":Ljava/net/ServerSocket;
    .restart local v11    # "socketInputStream":Ljava/io/BufferedInputStream;
    :catchall_2
    move-exception v12

    move-object v10, v11

    .end local v11    # "socketInputStream":Ljava/io/BufferedInputStream;
    .restart local v10    # "socketInputStream":Ljava/io/BufferedInputStream;
    move-object v7, v8

    .end local v8    # "serverSocket":Ljava/net/ServerSocket;
    .restart local v7    # "serverSocket":Ljava/net/ServerSocket;
    goto :goto_a

    .line 242
    :catch_f
    move-exception v1

    goto/16 :goto_2

    .end local v7    # "serverSocket":Ljava/net/ServerSocket;
    .end local v10    # "socketInputStream":Ljava/io/BufferedInputStream;
    .restart local v8    # "serverSocket":Ljava/net/ServerSocket;
    .restart local v11    # "socketInputStream":Ljava/io/BufferedInputStream;
    :cond_10
    move-object v10, v11

    .end local v11    # "socketInputStream":Ljava/io/BufferedInputStream;
    .restart local v10    # "socketInputStream":Ljava/io/BufferedInputStream;
    move-object v7, v8

    .end local v8    # "serverSocket":Ljava/net/ServerSocket;
    .restart local v7    # "serverSocket":Ljava/net/ServerSocket;
    goto/16 :goto_0
.end method
