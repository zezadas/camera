.class public interface abstract Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$OnRemoteDeviceScannedCallback;
.super Ljava/lang/Object;
.source "RemoteDeviceScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnRemoteDeviceScannedCallback"
.end annotation


# virtual methods
.method public abstract onRemoteDeviceScanned(Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$ResultStatus;Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$ResultStatus;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;",
            ">;I)V"
        }
    .end annotation
.end method
