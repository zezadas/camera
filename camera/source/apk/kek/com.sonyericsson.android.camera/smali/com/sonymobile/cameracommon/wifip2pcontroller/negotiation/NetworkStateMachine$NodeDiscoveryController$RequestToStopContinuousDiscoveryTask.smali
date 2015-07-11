.class Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStopContinuousDiscoveryTask;
.super Ljava/lang/Object;
.source "NetworkStateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestToStopContinuousDiscoveryTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStopContinuousDiscoveryTask$StopDiscoveryCallback;
    }
.end annotation


# instance fields
.field private final mStopDiscoveryCallback:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStopContinuousDiscoveryTask$StopDiscoveryCallback;

.field final synthetic this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;)V
    .locals 2

    .prologue
    .line 1552
    iput-object p1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStopContinuousDiscoveryTask;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1561
    new-instance v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStopContinuousDiscoveryTask$StopDiscoveryCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStopContinuousDiscoveryTask$StopDiscoveryCallback;-><init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStopContinuousDiscoveryTask;Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$1;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStopContinuousDiscoveryTask;->mStopDiscoveryCallback:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStopContinuousDiscoveryTask$StopDiscoveryCallback;

    .line 1563
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;
    .param p2, "x1"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$1;

    .prologue
    .line 1552
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStopContinuousDiscoveryTask;-><init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1556
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStopContinuousDiscoveryTask;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;

    # getter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;->access$4100(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1557
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStopContinuousDiscoveryTask;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;

    # getter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;->access$4100(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStopContinuousDiscoveryTask;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;

    # getter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;->access$4200(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStopContinuousDiscoveryTask;->mStopDiscoveryCallback:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStopContinuousDiscoveryTask$StopDiscoveryCallback;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 1559
    :cond_0
    return-void
.end method
