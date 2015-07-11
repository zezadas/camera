.class public Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController;
.super Ljava/lang/Object;
.source "TakePictureController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController$NotifyOnPictureTakenTask;,
        Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController$NotifyCallbackBaseTask;,
        Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController$MonitoringCallback;,
        Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController$InternalExecutorThreadFactory;
    }
.end annotation


# static fields
.field private static final IS_DEBUG:Z = false

.field private static final TAG:Ljava/lang/String;

.field private static final TIMEOUT:I = 0xbb8


# instance fields
.field private mCallback:Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureCallback;

.field private mCallbackExecutor:Ljava/util/concurrent/ExecutorService;

.field private mInternalExecutor:Ljava/util/concurrent/ExecutorService;

.field private mIsAlreadyCapturing:Z

.field private mMonitoringCallback:Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController$MonitoringCallback;

.field private mTargetRemDev:Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;Ljava/util/concurrent/ExecutorService;)V
    .locals 2
    .param p1, "target"    # Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;
    .param p2, "callbackExecutor"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object v1, p0, Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController;->mTargetRemDev:Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;

    .line 38
    new-instance v0, Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController$InternalExecutorThreadFactory;

    invoke-direct {v0, v1}, Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController$InternalExecutorThreadFactory;-><init>(Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController$1;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController;->mInternalExecutor:Ljava/util/concurrent/ExecutorService;

    .line 50
    iput-object v1, p0, Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController;->mCallback:Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureCallback;

    .line 53
    iput-object v1, p0, Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController;->mCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController;->mIsAlreadyCapturing:Z

    .line 186
    new-instance v0, Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController$MonitoringCallback;

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController$MonitoringCallback;-><init>(Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController;Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController$1;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController;->mMonitoringCallback:Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController$MonitoringCallback;

    .line 70
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "All arguments must be NOT null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_1
    iput-object p1, p0, Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController;->mTargetRemDev:Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;

    .line 75
    iput-object p2, p0, Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController;->mCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    .line 76
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController;->doTakePicture()V

    return-void
.end method

.method private doTakePicture()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 128
    const/4 v3, 0x0

    .line 129
    .local v3, "jpegBuffer":[B
    iget-object v9, p0, Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController;->mTargetRemDev:Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;

    invoke-virtual {v9}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->rpcActTakePicture()Lorg/json/JSONObject;

    move-result-object v7

    .line 131
    .local v7, "resJson":Lorg/json/JSONObject;
    if-nez v7, :cond_0

    .line 132
    sget-object v9, Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController;->TAG:Ljava/lang/String;

    const-string v10, "TakePicture failed. NULL result."

    invoke-static {v9, v10}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :goto_0
    iget-object v9, p0, Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController;->mCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v10, Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController$NotifyOnPictureTakenTask;

    iget-object v11, p0, Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController;->mCallback:Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureCallback;

    invoke-direct {v10, v11, v3}, Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController$NotifyOnPictureTakenTask;-><init>(Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureCallback;[B)V

    invoke-interface {v9, v10}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 170
    iput-boolean v12, p0, Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController;->mIsAlreadyCapturing:Z

    .line 173
    return-void

    .line 135
    :cond_0
    invoke-static {v7}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->getPostImageUrlFrom(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    .line 137
    .local v5, "postImageUrl":Ljava/lang/String;
    if-nez v5, :cond_1

    .line 138
    sget-object v9, Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController;->TAG:Ljava/lang/String;

    const-string v10, "TakePicture failed. Post image URL is null."

    invoke-static {v9, v10}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :cond_1
    :try_start_0
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 144
    .local v8, "url":Ljava/net/URL;
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v8}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 145
    .local v2, "inStream":Ljava/io/InputStream;
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 147
    .local v4, "outStream":Ljava/io/ByteArrayOutputStream;
    const/16 v9, 0x1000

    new-array v0, v9, [B

    .line 149
    .local v0, "buffer":[B
    :goto_1
    const/4 v9, -0x1

    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .local v6, "readCount":I
    if-eq v9, v6, :cond_2

    .line 150
    const/4 v9, 0x0

    invoke-virtual {v4, v0, v9, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 156
    .end local v0    # "buffer":[B
    .end local v2    # "inStream":Ljava/io/InputStream;
    .end local v4    # "outStream":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "readCount":I
    .end local v8    # "url":Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 157
    .local v1, "e":Ljava/net/MalformedURLException;
    sget-object v9, Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController;->TAG:Ljava/lang/String;

    const-string v10, "Post image URL is malformed."

    invoke-static {v9, v10}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 152
    .end local v1    # "e":Ljava/net/MalformedURLException;
    .restart local v0    # "buffer":[B
    .restart local v2    # "inStream":Ljava/io/InputStream;
    .restart local v4    # "outStream":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "readCount":I
    .restart local v8    # "url":Ljava/net/URL;
    :cond_2
    :try_start_1
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 153
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 154
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 155
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 159
    .end local v0    # "buffer":[B
    .end local v2    # "inStream":Ljava/io/InputStream;
    .end local v4    # "outStream":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "readCount":I
    .end local v8    # "url":Ljava/net/URL;
    :catch_1
    move-exception v1

    .line 160
    .local v1, "e":Ljava/io/IOException;
    sget-object v9, Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController;->TAG:Ljava/lang/String;

    const-string v10, "Failed to download post image."

    invoke-static {v9, v10}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getEventObserverCallback()Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController$MonitoringCallback;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController;->mMonitoringCallback:Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController$MonitoringCallback;

    return-object v0
.end method

.method public release()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 83
    iget-object v1, p0, Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController;->mInternalExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 85
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController;->mInternalExecutor:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v2, 0xbb8

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    iput-object v5, p0, Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController;->mCallback:Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureCallback;

    .line 95
    iput-object v5, p0, Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController;->mCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    .line 97
    iput-object v5, p0, Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController;->mTargetRemDev:Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;

    .line 98
    iput-object v5, p0, Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController;->mInternalExecutor:Ljava/util/concurrent/ExecutorService;

    .line 99
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-object v1, Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController;->TAG:Ljava/lang/String;

    const-string v2, "Release is interrupted."

    invoke-static {v1, v2}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public takePicture(Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureCallback;

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController;->mIsAlreadyCapturing:Z

    if-eqz v0, :cond_0

    .line 110
    sget-object v0, Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController;->TAG:Ljava/lang/String;

    const-string v1, "Already in another capture sequence."

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/remotedevice/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :goto_0
    return-void

    .line 114
    :cond_0
    iput-object p1, p0, Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController;->mCallback:Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureCallback;

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController;->mIsAlreadyCapturing:Z

    .line 117
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController;->mInternalExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController$1;-><init>(Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
