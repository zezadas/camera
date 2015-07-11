.class Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastStream$ReceiveTaskImpl;
.super Ljava/lang/Object;
.source "UniCastStream.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/BaseUniCast$ReceiveTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReceiveTaskImpl"
.end annotation


# instance fields
.field private volatile mIsAlive:Z

.field private final mReceivedDataSize:I

.field private final mTargetPort:I

.field final synthetic this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastStream;


# direct methods
.method constructor <init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastStream;II)V
    .locals 1
    .param p2, "targetPort"    # I
    .param p3, "dataSize"    # I

    .prologue
    .line 168
    iput-object p1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastStream$ReceiveTaskImpl;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastStream$ReceiveTaskImpl;->mIsAlive:Z

    .line 169
    iput p2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastStream$ReceiveTaskImpl;->mTargetPort:I

    .line 170
    iput p3, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastStream$ReceiveTaskImpl;->mReceivedDataSize:I

    .line 171
    return-void
.end method


# virtual methods
.method public release()V
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastStream$ReceiveTaskImpl;->mIsAlive:Z

    .line 179
    return-void
.end method

.method public run()V
    .locals 13

    .prologue
    .line 184
    iget v12, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastStream$ReceiveTaskImpl;->mReceivedDataSize:I

    new-array v0, v12, [B

    .line 185
    .local v0, "buffer":[B
    new-instance v9, Ljava/net/DatagramPacket;

    array-length v12, v0

    invoke-direct {v9, v0, v12}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 187
    .local v9, "receivePacket":Ljava/net/DatagramPacket;
    const/4 v2, 0x0

    .line 190
    .local v2, "datagramSocket":Ljava/net/DatagramSocket;
    :cond_0
    :goto_0
    iget-boolean v12, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastStream$ReceiveTaskImpl;->mIsAlive:Z

    if-eqz v12, :cond_4

    .line 195
    :try_start_0
    new-instance v3, Ljava/net/DatagramSocket;

    iget v12, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastStream$ReceiveTaskImpl;->mTargetPort:I

    invoke-direct {v3, v12}, Ljava/net/DatagramSocket;-><init>(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    .end local v2    # "datagramSocket":Ljava/net/DatagramSocket;
    .local v3, "datagramSocket":Ljava/net/DatagramSocket;
    const/4 v12, 0x1

    :try_start_1
    invoke-virtual {v3, v12}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    .line 197
    const/16 v12, 0xbb8

    invoke-virtual {v3, v12}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 200
    :cond_1
    :goto_1
    iget-boolean v12, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastStream$ReceiveTaskImpl;->mIsAlive:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v12, :cond_2

    .line 203
    :try_start_2
    invoke-virtual {v3, v9}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 210
    :try_start_3
    invoke-virtual {v9}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v8

    .line 211
    .local v8, "receiveBuffer":[B
    invoke-virtual {v9}, Ljava/net/DatagramPacket;->getLength()I

    move-result v6

    .line 212
    .local v6, "length":I
    invoke-virtual {v9}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v7

    .line 215
    .local v7, "offset":I
    invoke-virtual {v9}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v10

    .line 216
    .local v10, "remoteIp":Ljava/net/InetAddress;
    invoke-virtual {v10}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    .line 219
    .local v5, "hostIp":Ljava/lang/String;
    iget-object v12, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastStream$ReceiveTaskImpl;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastStream;

    iget-object v1, v12, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastStream;->mMessageReceivedCallback:Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/MessageReceivedCallback;

    .line 220
    .local v1, "callback":Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/MessageReceivedCallback;
    if-eqz v1, :cond_1

    .line 221
    new-array v11, v6, [B

    .line 222
    .local v11, "returnBuffer":[B
    const/4 v12, 0x0

    invoke-static {v8, v7, v11, v12, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 224
    invoke-interface {v1, v11, v5}, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/MessageReceivedCallback;->onMessageReceived([BLjava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 229
    .end local v1    # "callback":Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/MessageReceivedCallback;
    .end local v5    # "hostIp":Ljava/lang/String;
    .end local v6    # "length":I
    .end local v7    # "offset":I
    .end local v8    # "receiveBuffer":[B
    .end local v10    # "remoteIp":Ljava/net/InetAddress;
    .end local v11    # "returnBuffer":[B
    :catch_0
    move-exception v4

    move-object v2, v3

    .line 231
    .end local v3    # "datagramSocket":Ljava/net/DatagramSocket;
    .restart local v2    # "datagramSocket":Ljava/net/DatagramSocket;
    .local v4, "e":Ljava/io/IOException;
    :goto_2
    :try_start_4
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 233
    if-eqz v2, :cond_0

    .line 234
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    .line 235
    const/4 v2, 0x0

    goto :goto_0

    .line 204
    .end local v2    # "datagramSocket":Ljava/net/DatagramSocket;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v3    # "datagramSocket":Ljava/net/DatagramSocket;
    :catch_1
    move-exception v4

    .line 206
    .local v4, "e":Ljava/net/SocketTimeoutException;
    goto :goto_1

    .line 233
    .end local v4    # "e":Ljava/net/SocketTimeoutException;
    :cond_2
    if-eqz v3, :cond_5

    .line 234
    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V

    .line 235
    const/4 v2, 0x0

    .end local v3    # "datagramSocket":Ljava/net/DatagramSocket;
    .restart local v2    # "datagramSocket":Ljava/net/DatagramSocket;
    goto :goto_0

    .line 233
    :catchall_0
    move-exception v12

    :goto_3
    if-eqz v2, :cond_3

    .line 234
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    .line 235
    const/4 v2, 0x0

    :cond_3
    throw v12

    .line 239
    :cond_4
    return-void

    .line 233
    .end local v2    # "datagramSocket":Ljava/net/DatagramSocket;
    .restart local v3    # "datagramSocket":Ljava/net/DatagramSocket;
    :catchall_1
    move-exception v12

    move-object v2, v3

    .end local v3    # "datagramSocket":Ljava/net/DatagramSocket;
    .restart local v2    # "datagramSocket":Ljava/net/DatagramSocket;
    goto :goto_3

    .line 229
    :catch_2
    move-exception v4

    goto :goto_2

    .end local v2    # "datagramSocket":Ljava/net/DatagramSocket;
    .restart local v3    # "datagramSocket":Ljava/net/DatagramSocket;
    :cond_5
    move-object v2, v3

    .end local v3    # "datagramSocket":Ljava/net/DatagramSocket;
    .restart local v2    # "datagramSocket":Ljava/net/DatagramSocket;
    goto :goto_0
.end method
