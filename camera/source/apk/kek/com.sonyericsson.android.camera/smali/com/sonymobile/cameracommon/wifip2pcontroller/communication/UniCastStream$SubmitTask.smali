.class Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastStream$SubmitTask;
.super Ljava/lang/Object;
.source "UniCastStream.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubmitTask"
.end annotation


# instance fields
.field private final mCallback:Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/MessageSubmittedCallback;

.field private final mMessage:[B

.field private final mTargetIpAddress:Ljava/lang/String;

.field private final mTargetPort:I

.field final synthetic this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastStream;


# direct methods
.method public constructor <init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastStream;[BLjava/lang/String;ILcom/sonymobile/cameracommon/wifip2pcontroller/communication/MessageSubmittedCallback;)V
    .locals 2
    .param p2, "message"    # [B
    .param p3, "targetIpAddress"    # Ljava/lang/String;
    .param p4, "targetPort"    # I
    .param p5, "callback"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/MessageSubmittedCallback;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastStream$SubmitTask;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    if-nez p2, :cond_0

    .line 91
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Message buffer must not be NULL."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    if-nez p3, :cond_1

    .line 95
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Target IP is not detected yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_1
    iput-object p2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastStream$SubmitTask;->mMessage:[B

    .line 99
    iput-object p3, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastStream$SubmitTask;->mTargetIpAddress:Ljava/lang/String;

    .line 100
    iput p4, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastStream$SubmitTask;->mTargetPort:I

    .line 101
    iput-object p5, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastStream$SubmitTask;->mCallback:Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/MessageSubmittedCallback;

    .line 102
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 107
    new-instance v6, Ljava/net/InetSocketAddress;

    iget-object v7, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastStream$SubmitTask;->mTargetIpAddress:Ljava/lang/String;

    iget v8, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastStream$SubmitTask;->mTargetPort:I

    invoke-direct {v6, v7, v8}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 111
    .local v6, "targetIpPort":Ljava/net/InetSocketAddress;
    const/4 v2, 0x0

    .line 112
    .local v2, "datagramSocket":Ljava/net/DatagramSocket;
    const/4 v0, 0x0

    .line 113
    .local v0, "datagramPacket":Ljava/net/DatagramPacket;
    const/4 v5, 0x0

    .line 118
    .local v5, "isSuccess":Z
    :try_start_0
    new-instance v3, Ljava/net/DatagramSocket;

    const/4 v7, 0x0

    invoke-direct {v3, v7}, Ljava/net/DatagramSocket;-><init>(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    .end local v2    # "datagramSocket":Ljava/net/DatagramSocket;
    .local v3, "datagramSocket":Ljava/net/DatagramSocket;
    :try_start_1
    new-instance v1, Ljava/net/DatagramPacket;

    iget-object v7, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastStream$SubmitTask;->mMessage:[B

    iget-object v8, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastStream$SubmitTask;->mMessage:[B

    array-length v8, v8

    invoke-direct {v1, v7, v8, v6}, Ljava/net/DatagramPacket;-><init>([BILjava/net/SocketAddress;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 127
    .end local v0    # "datagramPacket":Ljava/net/DatagramPacket;
    .local v1, "datagramPacket":Ljava/net/DatagramPacket;
    :try_start_2
    invoke-virtual {v3, v1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 130
    const/4 v5, 0x1

    .line 135
    if-eqz v3, :cond_4

    .line 136
    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V

    .line 137
    const/4 v2, 0x0

    .end local v3    # "datagramSocket":Ljava/net/DatagramSocket;
    .restart local v2    # "datagramSocket":Ljava/net/DatagramSocket;
    move-object v0, v1

    .line 142
    .end local v1    # "datagramPacket":Ljava/net/DatagramPacket;
    .restart local v0    # "datagramPacket":Ljava/net/DatagramPacket;
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastStream$SubmitTask;->mCallback:Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/MessageSubmittedCallback;

    if-eqz v7, :cond_1

    .line 143
    if-eqz v5, :cond_3

    .line 144
    iget-object v7, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastStream$SubmitTask;->mCallback:Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/MessageSubmittedCallback;

    invoke-interface {v7}, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/MessageSubmittedCallback;->onSubmitSucceeded()V

    .line 149
    :cond_1
    :goto_1
    return-void

    .line 131
    :catch_0
    move-exception v4

    .line 133
    .local v4, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 135
    if-eqz v2, :cond_0

    .line 136
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    .line 137
    const/4 v2, 0x0

    goto :goto_0

    .line 135
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_3
    if-eqz v2, :cond_2

    .line 136
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    .line 137
    const/4 v2, 0x0

    :cond_2
    throw v7

    .line 146
    :cond_3
    iget-object v7, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastStream$SubmitTask;->mCallback:Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/MessageSubmittedCallback;

    invoke-interface {v7}, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/MessageSubmittedCallback;->onSubmitFailed()V

    goto :goto_1

    .line 135
    .end local v2    # "datagramSocket":Ljava/net/DatagramSocket;
    .restart local v3    # "datagramSocket":Ljava/net/DatagramSocket;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "datagramSocket":Ljava/net/DatagramSocket;
    .restart local v2    # "datagramSocket":Ljava/net/DatagramSocket;
    goto :goto_3

    .end local v0    # "datagramPacket":Ljava/net/DatagramPacket;
    .end local v2    # "datagramSocket":Ljava/net/DatagramSocket;
    .restart local v1    # "datagramPacket":Ljava/net/DatagramPacket;
    .restart local v3    # "datagramSocket":Ljava/net/DatagramSocket;
    :catchall_2
    move-exception v7

    move-object v0, v1

    .end local v1    # "datagramPacket":Ljava/net/DatagramPacket;
    .restart local v0    # "datagramPacket":Ljava/net/DatagramPacket;
    move-object v2, v3

    .end local v3    # "datagramSocket":Ljava/net/DatagramSocket;
    .restart local v2    # "datagramSocket":Ljava/net/DatagramSocket;
    goto :goto_3

    .line 131
    .end local v2    # "datagramSocket":Ljava/net/DatagramSocket;
    .restart local v3    # "datagramSocket":Ljava/net/DatagramSocket;
    :catch_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "datagramSocket":Ljava/net/DatagramSocket;
    .restart local v2    # "datagramSocket":Ljava/net/DatagramSocket;
    goto :goto_2

    .end local v0    # "datagramPacket":Ljava/net/DatagramPacket;
    .end local v2    # "datagramSocket":Ljava/net/DatagramSocket;
    .restart local v1    # "datagramPacket":Ljava/net/DatagramPacket;
    .restart local v3    # "datagramSocket":Ljava/net/DatagramSocket;
    :catch_2
    move-exception v4

    move-object v0, v1

    .end local v1    # "datagramPacket":Ljava/net/DatagramPacket;
    .restart local v0    # "datagramPacket":Ljava/net/DatagramPacket;
    move-object v2, v3

    .end local v3    # "datagramSocket":Ljava/net/DatagramSocket;
    .restart local v2    # "datagramSocket":Ljava/net/DatagramSocket;
    goto :goto_2

    .end local v0    # "datagramPacket":Ljava/net/DatagramPacket;
    .end local v2    # "datagramSocket":Ljava/net/DatagramSocket;
    .restart local v1    # "datagramPacket":Ljava/net/DatagramPacket;
    .restart local v3    # "datagramSocket":Ljava/net/DatagramSocket;
    :cond_4
    move-object v0, v1

    .end local v1    # "datagramPacket":Ljava/net/DatagramPacket;
    .restart local v0    # "datagramPacket":Ljava/net/DatagramPacket;
    move-object v2, v3

    .end local v3    # "datagramSocket":Ljava/net/DatagramSocket;
    .restart local v2    # "datagramSocket":Ljava/net/DatagramSocket;
    goto :goto_0
.end method
