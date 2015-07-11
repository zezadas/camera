.class Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$NotifyEvfFrameTask;
.super Ljava/lang/Object;
.source "EvfStreamController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotifyEvfFrameTask"
.end annotation


# instance fields
.field private final mCallback:Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamCallback;

.field private final mFrame:[B

.field final synthetic this$0:Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;


# direct methods
.method public constructor <init>(Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;[BLcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamCallback;)V
    .locals 0
    .param p2, "frame"    # [B
    .param p3, "callback"    # Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamCallback;

    .prologue
    .line 466
    iput-object p1, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$NotifyEvfFrameTask;->this$0:Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 467
    iput-object p2, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$NotifyEvfFrameTask;->mFrame:[B

    .line 468
    iput-object p3, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$NotifyEvfFrameTask;->mCallback:Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamCallback;

    .line 469
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 473
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$NotifyEvfFrameTask;->mCallback:Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamCallback;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$NotifyEvfFrameTask;->mCallback:Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamCallback;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$NotifyEvfFrameTask;->mFrame:[B

    invoke-interface {v0, v1}, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamCallback;->onEvfFrame([B)V

    .line 476
    :cond_0
    return-void
.end method
