.class public Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner;
.super Ljava/lang/Object;
.source "RemoteDeviceScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$RequestOnBackTask;,
        Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$OnRemoteDeviceScannedCallback;,
        Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$ResultStatus;,
        Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$InternalExecutorThreadFactory;
    }
.end annotation


# static fields
.field private static final IS_DEBUG:Z = false

.field private static final SSDP_ADDRESS:Ljava/lang/String; = "239.255.255.250"

.field private static final SSDP_HEADER_KEY_HOST:Ljava/lang/String; = "HOST"

.field private static final SSDP_HEADER_KEY_LOCATION:Ljava/lang/String; = "LOCATION"

.field private static final SSDP_HEADER_KEY_MAN:Ljava/lang/String; = "MAN"

.field private static final SSDP_HEADER_KEY_MX:Ljava/lang/String; = "MX"

.field private static final SSDP_HEADER_KEY_ST:Ljava/lang/String; = "ST"

.field private static final SSDP_HEADER_KEY_USERAGENT:Ljava/lang/String; = "USER-AGENT"

.field private static final SSDP_HEADER_KEY_USN:Ljava/lang/String; = "USN"

.field private static final SSDP_HEADER_VAL_HOST:Ljava/lang/String; = "239.255.255.250:1900"

.field private static final SSDP_HEADER_VAL_MAN:Ljava/lang/String; = "\"ssdp:discover\""

.field private static final SSDP_HEADER_VAL_MX:Ljava/lang/String; = "1"

.field private static final SSDP_HEADER_VAL_ST:Ljava/lang/String; = "urn:schemas-sony-com:service:ScalarWebAPI:1"

.field private static final SSDP_HEADER_VAL_USERAGENT:Ljava/lang/String; = "OS/Android XPERIA/Anything"

.field private static final SSDP_HTTP_VERSION:Ljava/lang/String; = "HTTP/1.1"

.field private static final SSDP_METHOD:Ljava/lang/String; = "M-SEARCH"

.field private static final SSDP_PACKET_BUFFER_SIZE:I = 0x400

.field private static final SSDP_PORT:I = 0x76c

.field private static final SSDP_UDP_SOCKET_TIMEOUT:I = 0xbb8

.field private static final SSDP_URI:Ljava/lang/String; = "*"

.field private static final TAG:Ljava/lang/String;

.field private static final mInternalExecutor:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    const-class v0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner;->TAG:Ljava/lang/String;

    .line 56
    new-instance v0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$InternalExecutorThreadFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$InternalExecutorThreadFactory;-><init>(Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$1;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner;->mInternalExecutor:Ljava/util/concurrent/ScheduledExecutorService;

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

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$OnRemoteDeviceScannedCallback;Ljava/util/concurrent/ExecutorService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$OnRemoteDeviceScannedCallback;
    .param p1, "x1"    # Ljava/util/concurrent/ExecutorService;
    .param p2, "x2"    # I

    .prologue
    .line 30
    invoke-static {p0, p1, p2}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner;->requestOnBack(Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$OnRemoteDeviceScannedCallback;Ljava/util/concurrent/ExecutorService;I)V

    return-void
.end method

.method private static findValueFromKeyInHttpReqRes(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "httpMessage"    # Ljava/lang/String;
    .param p1, "httpKey"    # Ljava/lang/String;

    .prologue
    const/4 v7, -0x1

    .line 325
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 326
    .local v1, "targetHead":Ljava/lang/String;
    const-string v2, "\r\n"

    .line 328
    .local v2, "targetTail":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int v4, v5, v6

    .line 329
    .local v4, "valueStartIndex":I
    const-string v5, "\r\n"

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 331
    .local v3, "valueEndIndex":I
    const/4 v0, 0x0

    .line 333
    .local v0, "ret":Ljava/lang/String;
    if-eq v4, v7, :cond_0

    if-eq v3, v7, :cond_0

    .line 334
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 340
    :cond_0
    return-object v0
.end method

.method private static getSsdpRequest()Ljava/lang/String;
    .locals 3

    .prologue
    .line 302
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 304
    .local v0, "strBuf":Ljava/lang/StringBuffer;
    const-string v1, "M-SEARCH"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "HTTP/1.1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 309
    const-string v1, "HOST"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "239.255.255.250:1900"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 311
    const-string v1, "MAN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\"ssdp:discover\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 313
    const-string v1, "MX"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 315
    const-string v1, "ST"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "urn:schemas-sony-com:service:ScalarWebAPI:1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 317
    const-string v1, "USER-AGENT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "OS/Android XPERIA/Anything"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 319
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 321
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static notifyCallback(Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$OnRemoteDeviceScannedCallback;Ljava/util/concurrent/ExecutorService;Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$ResultStatus;Ljava/util/List;I)V
    .locals 1
    .param p0, "callback"    # Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$OnRemoteDeviceScannedCallback;
    .param p1, "callbackExecutor"    # Ljava/util/concurrent/ExecutorService;
    .param p2, "resultStatus"    # Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$ResultStatus;
    .param p4, "retryCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$OnRemoteDeviceScannedCallback;",
            "Ljava/util/concurrent/ExecutorService;",
            "Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$ResultStatus;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 293
    .local p3, "remoteDevices":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;>;"
    new-instance v0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$1;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$1;-><init>(Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$OnRemoteDeviceScannedCallback;Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$ResultStatus;Ljava/util/List;I)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 299
    return-void
.end method

.method public static request(Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$OnRemoteDeviceScannedCallback;Ljava/util/concurrent/ExecutorService;I)V
    .locals 5
    .param p0, "callback"    # Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$OnRemoteDeviceScannedCallback;
    .param p1, "callbackExecutor"    # Ljava/util/concurrent/ExecutorService;
    .param p2, "retryCount"    # I

    .prologue
    .line 109
    new-instance v0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$RequestOnBackTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$RequestOnBackTask;-><init>(Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$OnRemoteDeviceScannedCallback;Ljava/util/concurrent/ExecutorService;I)V

    .line 110
    .local v0, "task":Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$RequestOnBackTask;
    if-nez p2, :cond_0

    .line 112
    sget-object v1, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner;->mInternalExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v0, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 116
    :goto_0
    return-void

    .line 114
    :cond_0
    sget-object v1, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner;->mInternalExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v2, 0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v0, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0
.end method

.method private static requestOnBack(Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$OnRemoteDeviceScannedCallback;Ljava/util/concurrent/ExecutorService;I)V
    .locals 22
    .param p0, "callback"    # Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$OnRemoteDeviceScannedCallback;
    .param p1, "callbackExecutor"    # Ljava/util/concurrent/ExecutorService;
    .param p2, "retryCount"    # I

    .prologue
    .line 148
    const/16 v17, 0x0

    .line 149
    .local v17, "udpSocket":Ljava/net/DatagramSocket;
    const/4 v8, 0x0

    .line 150
    .local v8, "isAddress":Ljava/net/InetSocketAddress;
    const/4 v14, 0x0

    .line 151
    .local v14, "sendPacket":Ljava/net/DatagramPacket;
    const/4 v10, 0x0

    .line 155
    .local v10, "receivePacket":Ljava/net/DatagramPacket;
    :try_start_0
    new-instance v18, Ljava/net/DatagramSocket;

    invoke-direct/range {v18 .. v18}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .end local v17    # "udpSocket":Ljava/net/DatagramSocket;
    .local v18, "udpSocket":Ljava/net/DatagramSocket;
    new-instance v8, Ljava/net/InetSocketAddress;

    .end local v8    # "isAddress":Ljava/net/InetSocketAddress;
    const-string v19, "239.255.255.250"

    const/16 v20, 0x76c

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v8, v0, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 168
    .restart local v8    # "isAddress":Ljava/net/InetSocketAddress;
    const/16 v19, 0x400

    move/from16 v0, v19

    new-array v9, v0, [B

    .line 169
    .local v9, "receiveBuf":[B
    new-instance v10, Ljava/net/DatagramPacket;

    .end local v10    # "receivePacket":Ljava/net/DatagramPacket;
    array-length v0, v9

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-direct {v10, v9, v0}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 172
    .restart local v10    # "receivePacket":Ljava/net/DatagramPacket;
    invoke-static {}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner;->getSsdpRequest()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    .line 174
    .local v13, "sendBuf":[B
    :try_start_1
    new-instance v15, Ljava/net/DatagramPacket;

    array-length v0, v13

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-direct {v15, v13, v0, v8}, Ljava/net/DatagramPacket;-><init>([BILjava/net/SocketAddress;)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1

    .line 195
    .end local v14    # "sendPacket":Ljava/net/DatagramPacket;
    .local v15, "sendPacket":Ljava/net/DatagramPacket;
    :try_start_2
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 212
    const/16 v19, 0xbb8

    :try_start_3
    invoke-virtual/range {v18 .. v19}, Ljava/net/DatagramSocket;->setSoTimeout(I)V
    :try_end_3
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_3

    .line 228
    :try_start_4
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 242
    new-instance v16, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual {v10}, Ljava/net/DatagramPacket;->getLength()I

    move-result v21

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .line 249
    .local v16, "ssdpResMessage":Ljava/lang/String;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .local v12, "remoteDevices":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;>;"
    const-string v19, "USN"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner;->findValueFromKeyInHttpReqRes(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 254
    .local v6, "deviceUuid":Ljava/lang/String;
    const-string v19, "LOCATION"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner;->findValueFromKeyInHttpReqRes(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 258
    .local v5, "deviceLocation":Ljava/lang/String;
    if-eqz v6, :cond_6

    if-eqz v5, :cond_6

    .line 259
    invoke-static {v6, v5}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->load(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;

    move-result-object v11

    .line 262
    .local v11, "remoteDevice":Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;
    if-nez v11, :cond_5

    .line 264
    if-eqz v18, :cond_0

    invoke-virtual/range {v18 .. v18}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v19

    if-nez v19, :cond_0

    .line 265
    invoke-virtual/range {v18 .. v18}, Ljava/net/DatagramSocket;->close()V

    .line 269
    :cond_0
    sget-object v19, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$ResultStatus;->NETWORK_ERROR:Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$ResultStatus;

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    move/from16 v4, p2

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner;->notifyCallback(Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$OnRemoteDeviceScannedCallback;Ljava/util/concurrent/ExecutorService;Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$ResultStatus;Ljava/util/List;I)V

    move-object v14, v15

    .end local v15    # "sendPacket":Ljava/net/DatagramPacket;
    .restart local v14    # "sendPacket":Ljava/net/DatagramPacket;
    move-object/from16 v17, v18

    .line 285
    .end local v5    # "deviceLocation":Ljava/lang/String;
    .end local v6    # "deviceUuid":Ljava/lang/String;
    .end local v9    # "receiveBuf":[B
    .end local v11    # "remoteDevice":Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;
    .end local v12    # "remoteDevices":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;>;"
    .end local v13    # "sendBuf":[B
    .end local v16    # "ssdpResMessage":Ljava/lang/String;
    .end local v18    # "udpSocket":Ljava/net/DatagramSocket;
    .restart local v17    # "udpSocket":Ljava/net/DatagramSocket;
    :goto_0
    return-void

    .line 156
    :catch_0
    move-exception v7

    .line 157
    .local v7, "e":Ljava/net/SocketException;
    sget-object v19, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner;->TAG:Ljava/lang/String;

    const-string v20, "Failed to create DatagramSockekt."

    invoke-static/range {v19 .. v20}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {v7}, Ljava/net/SocketException;->printStackTrace()V

    .line 161
    sget-object v19, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$ResultStatus;->NETWORK_ERROR:Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$ResultStatus;

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    move/from16 v4, p2

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner;->notifyCallback(Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$OnRemoteDeviceScannedCallback;Ljava/util/concurrent/ExecutorService;Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$ResultStatus;Ljava/util/List;I)V

    goto :goto_0

    .line 178
    .end local v7    # "e":Ljava/net/SocketException;
    .end local v17    # "udpSocket":Ljava/net/DatagramSocket;
    .restart local v9    # "receiveBuf":[B
    .restart local v13    # "sendBuf":[B
    .restart local v18    # "udpSocket":Ljava/net/DatagramSocket;
    :catch_1
    move-exception v7

    .line 179
    .restart local v7    # "e":Ljava/net/SocketException;
    sget-object v19, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner;->TAG:Ljava/lang/String;

    const-string v20, "Failed to create send packet."

    invoke-static/range {v19 .. v20}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-virtual {v7}, Ljava/net/SocketException;->printStackTrace()V

    .line 182
    if-eqz v18, :cond_1

    invoke-virtual/range {v18 .. v18}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v19

    if-nez v19, :cond_1

    .line 183
    invoke-virtual/range {v18 .. v18}, Ljava/net/DatagramSocket;->close()V

    .line 187
    :cond_1
    sget-object v19, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$ResultStatus;->NETWORK_ERROR:Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$ResultStatus;

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    move/from16 v4, p2

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner;->notifyCallback(Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$OnRemoteDeviceScannedCallback;Ljava/util/concurrent/ExecutorService;Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$ResultStatus;Ljava/util/List;I)V

    move-object/from16 v17, v18

    .line 189
    .end local v18    # "udpSocket":Ljava/net/DatagramSocket;
    .restart local v17    # "udpSocket":Ljava/net/DatagramSocket;
    goto :goto_0

    .line 196
    .end local v7    # "e":Ljava/net/SocketException;
    .end local v14    # "sendPacket":Ljava/net/DatagramPacket;
    .end local v17    # "udpSocket":Ljava/net/DatagramSocket;
    .restart local v15    # "sendPacket":Ljava/net/DatagramPacket;
    .restart local v18    # "udpSocket":Ljava/net/DatagramSocket;
    :catch_2
    move-exception v7

    .line 197
    .local v7, "e":Ljava/io/IOException;
    sget-object v19, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner;->TAG:Ljava/lang/String;

    const-string v20, "Failed to broadcast SSDP packet."

    invoke-static/range {v19 .. v20}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 200
    if-eqz v18, :cond_2

    invoke-virtual/range {v18 .. v18}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v19

    if-nez v19, :cond_2

    .line 201
    invoke-virtual/range {v18 .. v18}, Ljava/net/DatagramSocket;->close()V

    .line 205
    :cond_2
    sget-object v19, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$ResultStatus;->NETWORK_ERROR:Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$ResultStatus;

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    move/from16 v4, p2

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner;->notifyCallback(Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$OnRemoteDeviceScannedCallback;Ljava/util/concurrent/ExecutorService;Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$ResultStatus;Ljava/util/List;I)V

    move-object v14, v15

    .end local v15    # "sendPacket":Ljava/net/DatagramPacket;
    .restart local v14    # "sendPacket":Ljava/net/DatagramPacket;
    move-object/from16 v17, v18

    .line 207
    .end local v18    # "udpSocket":Ljava/net/DatagramSocket;
    .restart local v17    # "udpSocket":Ljava/net/DatagramSocket;
    goto :goto_0

    .line 213
    .end local v7    # "e":Ljava/io/IOException;
    .end local v14    # "sendPacket":Ljava/net/DatagramPacket;
    .end local v17    # "udpSocket":Ljava/net/DatagramSocket;
    .restart local v15    # "sendPacket":Ljava/net/DatagramPacket;
    .restart local v18    # "udpSocket":Ljava/net/DatagramSocket;
    :catch_3
    move-exception v7

    .line 214
    .local v7, "e":Ljava/net/SocketException;
    sget-object v19, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner;->TAG:Ljava/lang/String;

    const-string v20, "Failed to set timeout"

    invoke-static/range {v19 .. v20}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-virtual {v7}, Ljava/net/SocketException;->printStackTrace()V

    .line 217
    if-eqz v18, :cond_3

    invoke-virtual/range {v18 .. v18}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v19

    if-nez v19, :cond_3

    .line 218
    invoke-virtual/range {v18 .. v18}, Ljava/net/DatagramSocket;->close()V

    .line 222
    :cond_3
    sget-object v19, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$ResultStatus;->NETWORK_ERROR:Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$ResultStatus;

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    move/from16 v4, p2

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner;->notifyCallback(Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$OnRemoteDeviceScannedCallback;Ljava/util/concurrent/ExecutorService;Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$ResultStatus;Ljava/util/List;I)V

    move-object v14, v15

    .end local v15    # "sendPacket":Ljava/net/DatagramPacket;
    .restart local v14    # "sendPacket":Ljava/net/DatagramPacket;
    move-object/from16 v17, v18

    .line 224
    .end local v18    # "udpSocket":Ljava/net/DatagramSocket;
    .restart local v17    # "udpSocket":Ljava/net/DatagramSocket;
    goto/16 :goto_0

    .line 229
    .end local v7    # "e":Ljava/net/SocketException;
    .end local v14    # "sendPacket":Ljava/net/DatagramPacket;
    .end local v17    # "udpSocket":Ljava/net/DatagramSocket;
    .restart local v15    # "sendPacket":Ljava/net/DatagramPacket;
    .restart local v18    # "udpSocket":Ljava/net/DatagramSocket;
    :catch_4
    move-exception v7

    .line 230
    .local v7, "e":Ljava/io/IOException;
    sget-object v19, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner;->TAG:Ljava/lang/String;

    const-string v20, "Failed to get receive packet."

    invoke-static/range {v19 .. v20}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 233
    if-eqz v18, :cond_4

    invoke-virtual/range {v18 .. v18}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v19

    if-nez v19, :cond_4

    .line 234
    invoke-virtual/range {v18 .. v18}, Ljava/net/DatagramSocket;->close()V

    .line 238
    :cond_4
    sget-object v19, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$ResultStatus;->TIMEOUTED:Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$ResultStatus;

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    move/from16 v4, p2

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner;->notifyCallback(Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$OnRemoteDeviceScannedCallback;Ljava/util/concurrent/ExecutorService;Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$ResultStatus;Ljava/util/List;I)V

    move-object v14, v15

    .end local v15    # "sendPacket":Ljava/net/DatagramPacket;
    .restart local v14    # "sendPacket":Ljava/net/DatagramPacket;
    move-object/from16 v17, v18

    .line 240
    .end local v18    # "udpSocket":Ljava/net/DatagramSocket;
    .restart local v17    # "udpSocket":Ljava/net/DatagramSocket;
    goto/16 :goto_0

    .line 273
    .end local v7    # "e":Ljava/io/IOException;
    .end local v14    # "sendPacket":Ljava/net/DatagramPacket;
    .end local v17    # "udpSocket":Ljava/net/DatagramSocket;
    .restart local v5    # "deviceLocation":Ljava/lang/String;
    .restart local v6    # "deviceUuid":Ljava/lang/String;
    .restart local v11    # "remoteDevice":Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;
    .restart local v12    # "remoteDevices":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;>;"
    .restart local v15    # "sendPacket":Ljava/net/DatagramPacket;
    .restart local v16    # "ssdpResMessage":Ljava/lang/String;
    .restart local v18    # "udpSocket":Ljava/net/DatagramSocket;
    :cond_5
    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    .end local v11    # "remoteDevice":Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;
    :cond_6
    sget-object v19, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$ResultStatus;->NO_ERROR:Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$ResultStatus;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move/from16 v3, p2

    invoke-static {v0, v1, v2, v12, v3}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner;->notifyCallback(Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$OnRemoteDeviceScannedCallback;Ljava/util/concurrent/ExecutorService;Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$ResultStatus;Ljava/util/List;I)V

    .line 280
    if-eqz v18, :cond_7

    invoke-virtual/range {v18 .. v18}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v19

    if-nez v19, :cond_7

    .line 281
    invoke-virtual/range {v18 .. v18}, Ljava/net/DatagramSocket;->close()V

    :cond_7
    move-object v14, v15

    .end local v15    # "sendPacket":Ljava/net/DatagramPacket;
    .restart local v14    # "sendPacket":Ljava/net/DatagramPacket;
    move-object/from16 v17, v18

    .line 285
    .end local v18    # "udpSocket":Ljava/net/DatagramSocket;
    .restart local v17    # "udpSocket":Ljava/net/DatagramSocket;
    goto/16 :goto_0
.end method
