.class public Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;
.super Ljava/lang/Object;
.source "EvfStreamController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$NotifyEvfFrameTask;,
        Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$NotifyEvfClosedTask;,
        Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$NotifyEvfOpenedTask;,
        Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$LoadEvfFrameTask;,
        Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$InternalExecutorThreadFactory;
    }
.end annotation


# static fields
.field private static final HTTP_CONNECTION_TIMEOUT:I = 0xbb8

.field private static final HTTP_METHOD:Ljava/lang/String; = "GET"

.field private static final IS_DEBUG:Z = false

.field private static final PACKET_HEADER_PAYLOAD_TYPE_LIVEVIEW:B = 0x1t

.field private static final PACKET_HEADER_SIZE_PAYLOAD_TYPE:I = 0x1

.field private static final PACKET_HEADER_SIZE_SEQUENCE_NUMBER:I = 0x2

.field private static final PACKET_HEADER_SIZE_START_BYTE:I = 0x1

.field private static final PACKET_HEADER_SIZE_TIMESTAMP:I = 0x4

.field private static final PACKET_HEADER_START_BYTE:B = -0x1t

.field private static final PAYLOAD_HEADER_SIZE_FLAG:I = 0x1

.field private static final PAYLOAD_HEADER_SIZE_JPEG_DATA_SIZE:I = 0x3

.field private static final PAYLOAD_HEADER_SIZE_PADDING_SIZE:I = 0x1

.field private static final PAYLOAD_HEADER_SIZE_RESERVED_0:I = 0x4

.field private static final PAYLOAD_HEADER_SIZE_RESERVED_1:I = 0x73

.field private static final PAYLOAD_HEADER_SIZE_START_BYTE:I = 0x4

.field private static final PAYLOAD_HEADER_START_BYTE_0:I = 0x24

.field private static final PAYLOAD_HEADER_START_BYTE_1:I = 0x35

.field private static final PAYLOAD_HEADER_START_BYTE_2:I = 0x68

.field private static final PAYLOAD_HEADER_START_BYTE_3:I = 0x79

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCallback:Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamCallback;

.field private mCallbackExecutor:Ljava/util/concurrent/ExecutorService;

.field private mEvfStream:Ljava/io/InputStream;

.field private mEvfStreamUrl:Ljava/lang/String;

.field private mHttpCon:Ljava/net/HttpURLConnection;

.field private mInternalExecutor:Ljava/util/concurrent/ExecutorService;

.field private mIsEvfLoading:Z

.field private mTargetRemDev:Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamCallback;Ljava/util/concurrent/ExecutorService;)V
    .locals 2
    .param p1, "target"    # Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;
    .param p2, "callback"    # Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamCallback;
    .param p3, "callbackExecutor"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v1, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mTargetRemDev:Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;

    .line 36
    new-instance v0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$InternalExecutorThreadFactory;

    invoke-direct {v0, v1}, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$InternalExecutorThreadFactory;-><init>(Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$1;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mInternalExecutor:Ljava/util/concurrent/ExecutorService;

    .line 48
    iput-object v1, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mCallback:Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamCallback;

    .line 51
    iput-object v1, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    .line 54
    iput-object v1, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mEvfStreamUrl:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mHttpCon:Ljava/net/HttpURLConnection;

    .line 60
    iput-object v1, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mEvfStream:Ljava/io/InputStream;

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mIsEvfLoading:Z

    .line 80
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 81
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "All arguments must be NOT null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_1
    iput-object p1, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mTargetRemDev:Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;

    .line 85
    iput-object p2, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mCallback:Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamCallback;

    .line 86
    iput-object p3, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    .line 87
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->doOpen()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->doStartEvfLoading()V

    return-void
.end method

.method static synthetic access$400(Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->doClose()V

    return-void
.end method

.method static synthetic access$600(Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mIsEvfLoading:Z

    return v0
.end method

.method static synthetic access$700(Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;)Ljava/io/InputStream;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mEvfStream:Ljava/io/InputStream;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;)Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamCallback;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mCallback:Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamCallback;

    return-object v0
.end method

.method private doClose()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 244
    iget-object v2, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mEvfStream:Ljava/io/InputStream;

    if-eqz v2, :cond_0

    .line 246
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mEvfStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :cond_0
    :goto_0
    iput-object v4, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mEvfStream:Ljava/io/InputStream;

    .line 254
    iget-object v2, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mHttpCon:Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_1

    .line 255
    iget-object v2, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mHttpCon:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 257
    :cond_1
    iput-object v4, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mHttpCon:Ljava/net/HttpURLConnection;

    .line 259
    const/4 v1, 0x0

    .line 260
    .local v1, "isSuccess":Z
    iget-object v2, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mTargetRemDev:Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;

    if-eqz v2, :cond_2

    .line 261
    iget-object v2, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mTargetRemDev:Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->stopLiveview()Z

    move-result v1

    .line 263
    :cond_2
    iget-object v2, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v2, :cond_3

    .line 264
    iget-object v2, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$NotifyEvfClosedTask;

    iget-object v4, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mCallback:Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamCallback;

    invoke-direct {v3, p0, v1, v4}, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$NotifyEvfClosedTask;-><init>(Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;ZLcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamCallback;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 266
    :cond_3
    return-void

    .line 247
    .end local v1    # "isSuccess":Z
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->TAG:Ljava/lang/String;

    const-string v3, "Failed to close EVF InputStream."

    invoke-static {v2, v3}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private doOpen()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 147
    iget-object v3, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mTargetRemDev:Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;

    invoke-virtual {v3}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->startLiveview()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mEvfStreamUrl:Ljava/lang/String;

    .line 148
    iget-object v3, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mEvfStreamUrl:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 150
    iget-object v3, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v3, :cond_0

    .line 151
    iget-object v3, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$NotifyEvfOpenedTask;

    iget-object v6, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mCallback:Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamCallback;

    invoke-direct {v4, p0, v5, v6}, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$NotifyEvfOpenedTask;-><init>(Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;ZLcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamCallback;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 223
    :cond_0
    :goto_0
    return v5

    .line 159
    :cond_1
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v3, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mEvfStreamUrl:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 160
    .local v1, "evfUrl":Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    iput-object v3, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mHttpCon:Ljava/net/HttpURLConnection;

    .line 161
    iget-object v3, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mHttpCon:Ljava/net/HttpURLConnection;

    const-string v6, "GET"

    invoke-virtual {v3, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 162
    iget-object v3, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mHttpCon:Ljava/net/HttpURLConnection;

    const/16 v6, 0xbb8

    invoke-virtual {v3, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 163
    iget-object v3, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mHttpCon:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 181
    const/4 v2, 0x0

    .line 183
    .local v2, "isSuccess":Z
    :try_start_1
    iget-object v3, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mHttpCon:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v3

    const/16 v6, 0xc8

    if-ne v3, v6, :cond_2

    move v2, v4

    .line 193
    :goto_1
    if-eqz v2, :cond_3

    .line 195
    :try_start_2
    new-instance v3, Ljava/io/BufferedInputStream;

    iget-object v6, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mHttpCon:Ljava/net/HttpURLConnection;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v3, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mEvfStream:Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 201
    :goto_2
    iget-object v3, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mEvfStream:Ljava/io/InputStream;

    if-nez v3, :cond_4

    .line 203
    sget-object v3, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->TAG:Ljava/lang/String;

    const-string v4, "Failed to get InputStream."

    invoke-static {v3, v4}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->close()V

    .line 205
    iget-object v3, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v3, :cond_0

    .line 206
    iget-object v3, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$NotifyEvfOpenedTask;

    iget-object v6, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mCallback:Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamCallback;

    invoke-direct {v4, p0, v5, v6}, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$NotifyEvfOpenedTask;-><init>(Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;ZLcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamCallback;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 164
    .end local v1    # "evfUrl":Ljava/net/URL;
    .end local v2    # "isSuccess":Z
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/net/MalformedURLException;
    sget-object v3, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->TAG:Ljava/lang/String;

    const-string v4, "EVF URL is malformed."

    invoke-static {v3, v4}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 167
    iget-object v3, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v3, :cond_0

    .line 168
    iget-object v3, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$NotifyEvfOpenedTask;

    iget-object v6, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mCallback:Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamCallback;

    invoke-direct {v4, p0, v5, v6}, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$NotifyEvfOpenedTask;-><init>(Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;ZLcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamCallback;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 171
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v0

    .line 172
    .local v0, "e":Ljava/io/IOException;
    sget-object v3, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->TAG:Ljava/lang/String;

    const-string v4, "Failed to connect EVF URL."

    invoke-static {v3, v4}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 174
    iget-object v3, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v3, :cond_0

    .line 175
    iget-object v3, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$NotifyEvfOpenedTask;

    iget-object v6, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mCallback:Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamCallback;

    invoke-direct {v4, p0, v5, v6}, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$NotifyEvfOpenedTask;-><init>(Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;ZLcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamCallback;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "evfUrl":Ljava/net/URL;
    .restart local v2    # "isSuccess":Z
    :cond_2
    move v2, v5

    .line 183
    goto :goto_1

    .line 184
    :catch_2
    move-exception v0

    .line 185
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v3, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->TAG:Ljava/lang/String;

    const-string v4, "Failed to get response."

    invoke-static {v3, v4}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 187
    iget-object v3, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v3, :cond_0

    .line 188
    iget-object v3, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$NotifyEvfOpenedTask;

    iget-object v6, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mCallback:Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamCallback;

    invoke-direct {v4, p0, v5, v6}, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$NotifyEvfOpenedTask;-><init>(Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;ZLcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamCallback;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 196
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 197
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v3, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->TAG:Ljava/lang/String;

    const-string v6, "Failed to get InputStream."

    invoke-static {v3, v6}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 199
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mEvfStream:Ljava/io/InputStream;

    goto/16 :goto_2

    .line 212
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    sget-object v3, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->TAG:Ljava/lang/String;

    const-string v4, "Failed to connect EVF URL."

    invoke-static {v3, v4}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->close()V

    .line 214
    iget-object v3, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v3, :cond_0

    .line 215
    iget-object v3, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$NotifyEvfOpenedTask;

    iget-object v6, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mCallback:Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamCallback;

    invoke-direct {v4, p0, v5, v6}, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$NotifyEvfOpenedTask;-><init>(Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;ZLcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamCallback;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 220
    :cond_4
    iget-object v3, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v3, :cond_5

    .line 221
    iget-object v3, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$NotifyEvfOpenedTask;

    iget-object v6, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mCallback:Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamCallback;

    invoke-direct {v5, p0, v4, v6}, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$NotifyEvfOpenedTask;-><init>(Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;ZLcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamCallback;)V

    invoke-interface {v3, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_5
    move v5, v4

    .line 223
    goto/16 :goto_0
.end method

.method private doStartEvfLoading()V
    .locals 3

    .prologue
    .line 269
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mInternalExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mInternalExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$LoadEvfFrameTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$LoadEvfFrameTask;-><init>(Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 272
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 233
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mIsEvfLoading:Z

    .line 235
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mInternalExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$2;

    invoke-direct {v1, p0}, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$2;-><init>(Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 241
    return-void
.end method

.method public open()V
    .locals 2

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mIsEvfLoading:Z

    if-eqz v0, :cond_0

    .line 143
    :goto_0
    return-void

    .line 133
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mIsEvfLoading:Z

    .line 135
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mInternalExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$1;-><init>(Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public release()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 95
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mIsEvfLoading:Z

    .line 98
    iget-object v1, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mInternalExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mInternalExecutor:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v2, 0xbb8

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
    sget-object v1, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->TAG:Ljava/lang/String;

    const-string v2, "Executor await() timeout."

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mCallback:Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamCallback;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    iput-object v5, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    .line 116
    iput-object v5, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mTargetRemDev:Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;

    .line 117
    iput-object v5, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->mInternalExecutor:Ljava/util/concurrent/ExecutorService;

    .line 119
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-object v1, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->TAG:Ljava/lang/String;

    const-string v2, "Release is interrupted."

    invoke-static {v1, v2}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
