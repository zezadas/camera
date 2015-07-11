.class Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController$MonitoringCallback;
.super Ljava/lang/Object;
.source "TakePictureController.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MonitoringCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController$MonitoringCallback;->this$0:Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController;Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController;
    .param p2, "x1"    # Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController$1;

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController$MonitoringCallback;-><init>(Lcom/sonymobile/cameracommon/remotedevice/photo/TakePictureController;)V

    return-void
.end method


# virtual methods
.method public onAvailableApiSetChanged(Ljava/util/Set;)V
    .locals 0
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
    .line 208
    .local p1, "apiList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    return-void
.end method

.method public onCameraStatusChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 214
    return-void
.end method

.method public onErrorStopped()V
    .locals 0

    .prologue
    .line 202
    return-void
.end method

.method public onShootModeChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "shootMode"    # Ljava/lang/String;

    .prologue
    .line 220
    return-void
.end method
