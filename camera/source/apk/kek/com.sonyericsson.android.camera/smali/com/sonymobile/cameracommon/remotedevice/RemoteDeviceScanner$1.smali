.class final Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$1;
.super Ljava/lang/Object;
.source "RemoteDeviceScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner;->notifyCallback(Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$OnRemoteDeviceScannedCallback;Ljava/util/concurrent/ExecutorService;Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$ResultStatus;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$OnRemoteDeviceScannedCallback;

.field final synthetic val$remoteDevices:Ljava/util/List;

.field final synthetic val$resultStatus:Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$ResultStatus;

.field final synthetic val$retryCount:I


# direct methods
.method constructor <init>(Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$OnRemoteDeviceScannedCallback;Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$ResultStatus;Ljava/util/List;I)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$1;->val$callback:Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$OnRemoteDeviceScannedCallback;

    iput-object p2, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$1;->val$resultStatus:Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$ResultStatus;

    iput-object p3, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$1;->val$remoteDevices:Ljava/util/List;

    iput p4, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$1;->val$retryCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 296
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$1;->val$callback:Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$OnRemoteDeviceScannedCallback;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$1;->val$resultStatus:Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$ResultStatus;

    iget-object v2, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$1;->val$remoteDevices:Ljava/util/List;

    iget v3, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$1;->val$retryCount:I

    invoke-interface {v0, v1, v2, v3}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$OnRemoteDeviceScannedCallback;->onRemoteDeviceScanned(Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$ResultStatus;Ljava/util/List;I)V

    .line 297
    return-void
.end method
