.class Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStopContinuousDiscoveryTask$StopDiscoveryCallback;
.super Ljava/lang/Object;
.source "NetworkStateMachine.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStopContinuousDiscoveryTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StopDiscoveryCallback"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStopContinuousDiscoveryTask;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStopContinuousDiscoveryTask;)V
    .locals 0

    .prologue
    .line 1563
    iput-object p1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStopContinuousDiscoveryTask$StopDiscoveryCallback;->this$1:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStopContinuousDiscoveryTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStopContinuousDiscoveryTask;Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStopContinuousDiscoveryTask;
    .param p2, "x1"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$1;

    .prologue
    .line 1563
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStopContinuousDiscoveryTask$StopDiscoveryCallback;-><init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStopContinuousDiscoveryTask;)V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 2
    .param p1, "error"    # I

    .prologue
    .line 1575
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStopContinuousDiscoveryTask$StopDiscoveryCallback;->this$1:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStopContinuousDiscoveryTask;

    iget-object v0, v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStopContinuousDiscoveryTask;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;

    # getter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;->mBackWorker:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;->access$4400(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStopContinuousDiscoveryTask$StopDiscoveryCallback;->this$1:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStopContinuousDiscoveryTask;

    iget-object v0, v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStopContinuousDiscoveryTask;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;

    # getter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;->mStopDiscoveryTask:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStopContinuousDiscoveryTask;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;->access$4700(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;)Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStopContinuousDiscoveryTask;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1578
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStopContinuousDiscoveryTask$StopDiscoveryCallback;->this$1:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStopContinuousDiscoveryTask;

    iget-object v0, v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStopContinuousDiscoveryTask;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;

    # getter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;->mBackWorker:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;->access$4400(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStopContinuousDiscoveryTask$StopDiscoveryCallback;->this$1:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStopContinuousDiscoveryTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1580
    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 0

    .prologue
    .line 1568
    return-void
.end method
