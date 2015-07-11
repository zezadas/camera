.class Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$1;
.super Ljava/lang/Object;
.source "EvfStreamController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->open()V
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
    .line 135
    iput-object p1, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$1;->this$0:Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$1;->this$0:Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;

    # invokes: Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->doOpen()Z
    invoke-static {v0}, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->access$200(Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController$1;->this$0:Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;

    # invokes: Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->doStartEvfLoading()V
    invoke-static {v0}, Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;->access$300(Lcom/sonymobile/cameracommon/remotedevice/stream/EvfStreamController;)V

    .line 141
    :cond_0
    return-void
.end method
