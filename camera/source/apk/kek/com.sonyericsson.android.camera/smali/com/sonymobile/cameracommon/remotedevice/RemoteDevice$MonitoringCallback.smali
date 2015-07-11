.class Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice$MonitoringCallback;
.super Ljava/lang/Object;
.source "RemoteDevice.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MonitoringCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;)V
    .locals 0

    .prologue
    .line 1341
    iput-object p1, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice$MonitoringCallback;->this$0:Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;
    .param p2, "x1"    # Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice$1;

    .prologue
    .line 1341
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice$MonitoringCallback;-><init>(Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;)V

    return-void
.end method


# virtual methods
.method public onAvailableApiSetChanged(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1378
    .local p1, "apiList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice$MonitoringCallback;->this$0:Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;

    # setter for: Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->mRemoteCameraApiSet:Ljava/util/Set;
    invoke-static {v0, p1}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;->access$202(Lcom/sonymobile/cameracommon/remotedevice/RemoteDevice;Ljava/util/Set;)Ljava/util/Set;

    .line 1379
    return-void
.end method

.method public onCameraStatusChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 1385
    return-void
.end method

.method public onErrorStopped()V
    .locals 0

    .prologue
    .line 1346
    return-void
.end method

.method public onShootModeChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "shootMode"    # Ljava/lang/String;

    .prologue
    .line 1391
    return-void
.end method
