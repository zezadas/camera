.class Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$NotifyEvfClosedTask;
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
    name = "NotifyEvfClosedTask"
.end annotation


# instance fields
.field private final mCallback:Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamCallback;

.field private final mIsSuccess:Z

.field final synthetic this$0:Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;


# direct methods
.method public constructor <init>(Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;ZLcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamCallback;)V
    .locals 0
    .param p2, "isSuccess"    # Z
    .param p3, "callback"    # Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamCallback;

    .prologue
    .line 439
    iput-object p1, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$NotifyEvfClosedTask;->this$0:Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 440
    iput-boolean p2, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$NotifyEvfClosedTask;->mIsSuccess:Z

    .line 441
    iput-object p3, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$NotifyEvfClosedTask;->mCallback:Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamCallback;

    .line 442
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 446
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$NotifyEvfClosedTask;->mCallback:Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamCallback;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$NotifyEvfClosedTask;->mCallback:Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamCallback;

    iget-boolean v1, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$NotifyEvfClosedTask;->mIsSuccess:Z

    invoke-interface {v0, v1}, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamCallback;->onEvfClosed(Z)V

    .line 449
    :cond_0
    return-void
.end method
