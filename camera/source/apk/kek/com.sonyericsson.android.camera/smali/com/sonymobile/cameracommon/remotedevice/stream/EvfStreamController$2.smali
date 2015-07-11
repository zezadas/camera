.class Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$2;
.super Ljava/lang/Object;
.source "EvfStreamController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;


# direct methods
.method constructor <init>(Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$2;->this$0:Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$2;->this$0:Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;

    # invokes: Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->doClose()V
    invoke-static {v0}, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->access$400(Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;)V

    .line 239
    return-void
.end method
