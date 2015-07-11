.class Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$RequestOnBackTask;
.super Ljava/lang/Object;
.source "RemoteDeviceScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestOnBackTask"
.end annotation


# instance fields
.field private mCallback:Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$OnRemoteDeviceScannedCallback;

.field private mCallbackExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mRetryCount:I


# direct methods
.method public constructor <init>(Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$OnRemoteDeviceScannedCallback;Ljava/util/concurrent/ExecutorService;I)V
    .locals 1
    .param p1, "callback"    # Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$OnRemoteDeviceScannedCallback;
    .param p2, "callbackExecutor"    # Ljava/util/concurrent/ExecutorService;
    .param p3, "retryCount"    # I

    .prologue
    const/4 v0, 0x0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$RequestOnBackTask;->mCallback:Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$OnRemoteDeviceScannedCallback;

    .line 120
    iput-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$RequestOnBackTask;->mCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    .line 130
    iput-object p1, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$RequestOnBackTask;->mCallback:Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$OnRemoteDeviceScannedCallback;

    .line 131
    iput-object p2, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$RequestOnBackTask;->mCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    .line 132
    iput p3, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$RequestOnBackTask;->mRetryCount:I

    .line 133
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 138
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$RequestOnBackTask;->mCallback:Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$OnRemoteDeviceScannedCallback;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$RequestOnBackTask;->mCallbackExecutor:Ljava/util/concurrent/ExecutorService;

    iget v2, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$RequestOnBackTask;->mRetryCount:I

    # invokes: Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner;->requestOnBack(Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$OnRemoteDeviceScannedCallback;Ljava/util/concurrent/ExecutorService;I)V
    invoke-static {v0, v1, v2}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner;->access$200(Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$OnRemoteDeviceScannedCallback;Ljava/util/concurrent/ExecutorService;I)V

    .line 139
    return-void
.end method
