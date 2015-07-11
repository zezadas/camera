.class Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession$SubmitTask;
.super Ljava/lang/Object;
.source "UniCastSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession;
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

.field final synthetic this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession;


# direct methods
.method public constructor <init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession;[BLjava/lang/String;ILcom/sonymobile/cameracommon/wifip2pcontroller/communication/MessageSubmittedCallback;)V
    .locals 0
    .param p2, "message"    # [B
    .param p3, "targetIpAddress"    # Ljava/lang/String;
    .param p4, "targetPort"    # I
    .param p5, "callback"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/MessageSubmittedCallback;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession$SubmitTask;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession$SubmitTask;->mMessage:[B

    .line 94
    iput-object p3, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession$SubmitTask;->mTargetIpAddress:Ljava/lang/String;

    .line 95
    iput p4, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession$SubmitTask;->mTargetPort:I

    .line 96
    iput-object p5, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession$SubmitTask;->mCallback:Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/MessageSubmittedCallback;

    .line 97
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 102
    new-instance v6, Ljava/net/InetSocketAddress;

    iget-object v7, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession$SubmitTask;->mTargetIpAddress:Ljava/lang/String;

    iget v8, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession$SubmitTask;->mTargetPort:I

    invoke-direct {v6, v7, v8}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 106
    .local v6, "targetIpPort":Ljava/net/InetSocketAddress;
    const/4 v2, 0x0

    .line 107
    .local v2, "socket":Ljava/net/Socket;
    const/4 v4, 0x0

    .line 108
    .local v4, "socketOutputStream":Ljava/io/BufferedOutputStream;
    const/4 v1, 0x0

    .line 112
    .local v1, "isSuccess":Z
    :try_start_0
    new-instance v3, Ljava/net/Socket;

    invoke-direct {v3}, Ljava/net/Socket;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    .end local v2    # "socket":Ljava/net/Socket;
    .local v3, "socket":Ljava/net/Socket;
    const/16 v7, 0xbb8

    :try_start_1
    invoke-virtual {v3, v6, v7}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 116
    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 117
    .end local v4    # "socketOutputStream":Ljava/io/BufferedOutputStream;
    .local v5, "socketOutputStream":Ljava/io/BufferedOutputStream;
    :try_start_2
    iget-object v7, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession$SubmitTask;->mMessage:[B

    invoke-virtual {v5, v7}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 118
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V

    .line 119
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 122
    const/4 v1, 0x1

    .line 127
    if-eqz v3, :cond_0

    .line 129
    :try_start_3
    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 135
    :cond_0
    :goto_0
    if-eqz v5, :cond_7

    .line 137
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v4, v5

    .end local v5    # "socketOutputStream":Ljava/io/BufferedOutputStream;
    .restart local v4    # "socketOutputStream":Ljava/io/BufferedOutputStream;
    move-object v2, v3

    .line 146
    .end local v3    # "socket":Ljava/net/Socket;
    .restart local v2    # "socket":Ljava/net/Socket;
    :cond_1
    :goto_1
    iget-object v7, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession$SubmitTask;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession;

    invoke-virtual {v7}, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession;->isSubmitExecutorAvailable()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 147
    iget-object v7, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession$SubmitTask;->mCallback:Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/MessageSubmittedCallback;

    if-eqz v7, :cond_2

    .line 148
    if-eqz v1, :cond_6

    .line 149
    iget-object v7, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession$SubmitTask;->mCallback:Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/MessageSubmittedCallback;

    invoke-interface {v7}, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/MessageSubmittedCallback;->onSubmitSucceeded()V

    .line 155
    :cond_2
    :goto_2
    return-void

    .line 130
    .end local v2    # "socket":Ljava/net/Socket;
    .end local v4    # "socketOutputStream":Ljava/io/BufferedOutputStream;
    .restart local v3    # "socket":Ljava/net/Socket;
    .restart local v5    # "socketOutputStream":Ljava/io/BufferedOutputStream;
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 138
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 140
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .end local v5    # "socketOutputStream":Ljava/io/BufferedOutputStream;
    .restart local v4    # "socketOutputStream":Ljava/io/BufferedOutputStream;
    move-object v2, v3

    .line 141
    .end local v3    # "socket":Ljava/net/Socket;
    .restart local v2    # "socket":Ljava/net/Socket;
    goto :goto_1

    .line 123
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 125
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 127
    if-eqz v2, :cond_3

    .line 129
    :try_start_6
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 135
    :cond_3
    :goto_4
    if-eqz v4, :cond_1

    .line 137
    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1

    .line 138
    :catch_3
    move-exception v0

    .line 140
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 130
    :catch_4
    move-exception v0

    .line 132
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 127
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_5
    if-eqz v2, :cond_4

    .line 129
    :try_start_8
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 135
    :cond_4
    :goto_6
    if-eqz v4, :cond_5

    .line 137
    :try_start_9
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 141
    :cond_5
    :goto_7
    throw v7

    .line 130
    :catch_5
    move-exception v0

    .line 132
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 138
    .end local v0    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v0

    .line 140
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 151
    .end local v0    # "e":Ljava/io/IOException;
    :cond_6
    iget-object v7, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession$SubmitTask;->mCallback:Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/MessageSubmittedCallback;

    invoke-interface {v7}, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/MessageSubmittedCallback;->onSubmitFailed()V

    goto :goto_2

    .line 127
    .end local v2    # "socket":Ljava/net/Socket;
    .restart local v3    # "socket":Ljava/net/Socket;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "socket":Ljava/net/Socket;
    .restart local v2    # "socket":Ljava/net/Socket;
    goto :goto_5

    .end local v2    # "socket":Ljava/net/Socket;
    .end local v4    # "socketOutputStream":Ljava/io/BufferedOutputStream;
    .restart local v3    # "socket":Ljava/net/Socket;
    .restart local v5    # "socketOutputStream":Ljava/io/BufferedOutputStream;
    :catchall_2
    move-exception v7

    move-object v4, v5

    .end local v5    # "socketOutputStream":Ljava/io/BufferedOutputStream;
    .restart local v4    # "socketOutputStream":Ljava/io/BufferedOutputStream;
    move-object v2, v3

    .end local v3    # "socket":Ljava/net/Socket;
    .restart local v2    # "socket":Ljava/net/Socket;
    goto :goto_5

    .line 123
    .end local v2    # "socket":Ljava/net/Socket;
    .restart local v3    # "socket":Ljava/net/Socket;
    :catch_7
    move-exception v0

    move-object v2, v3

    .end local v3    # "socket":Ljava/net/Socket;
    .restart local v2    # "socket":Ljava/net/Socket;
    goto :goto_3

    .end local v2    # "socket":Ljava/net/Socket;
    .end local v4    # "socketOutputStream":Ljava/io/BufferedOutputStream;
    .restart local v3    # "socket":Ljava/net/Socket;
    .restart local v5    # "socketOutputStream":Ljava/io/BufferedOutputStream;
    :catch_8
    move-exception v0

    move-object v4, v5

    .end local v5    # "socketOutputStream":Ljava/io/BufferedOutputStream;
    .restart local v4    # "socketOutputStream":Ljava/io/BufferedOutputStream;
    move-object v2, v3

    .end local v3    # "socket":Ljava/net/Socket;
    .restart local v2    # "socket":Ljava/net/Socket;
    goto :goto_3

    .end local v2    # "socket":Ljava/net/Socket;
    .end local v4    # "socketOutputStream":Ljava/io/BufferedOutputStream;
    .restart local v3    # "socket":Ljava/net/Socket;
    .restart local v5    # "socketOutputStream":Ljava/io/BufferedOutputStream;
    :cond_7
    move-object v4, v5

    .end local v5    # "socketOutputStream":Ljava/io/BufferedOutputStream;
    .restart local v4    # "socketOutputStream":Ljava/io/BufferedOutputStream;
    move-object v2, v3

    .end local v3    # "socket":Ljava/net/Socket;
    .restart local v2    # "socket":Ljava/net/Socket;
    goto :goto_1
.end method
