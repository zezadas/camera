.class Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask$RequestInfoCallback;
.super Ljava/lang/Object;
.source "NetworkStateMachine.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestInfoCallback"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask;)V
    .locals 0

    .prologue
    .line 1725
    iput-object p1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask$RequestInfoCallback;->this$1:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask;Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask;
    .param p2, "x1"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$1;

    .prologue
    .line 1725
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask$RequestInfoCallback;-><init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask;)V

    return-void
.end method


# virtual methods
.method public onConnectionInfoAvailable(Landroid/net/wifi/p2p/WifiP2pInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/net/wifi/p2p/WifiP2pInfo;

    .prologue
    const/4 v2, 0x0

    .line 1731
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask$RequestInfoCallback;->this$1:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask;

    iget-object v0, v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    # setter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;
    invoke-static {v0, p1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->access$1302(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;Landroid/net/wifi/p2p/WifiP2pInfo;)Landroid/net/wifi/p2p/WifiP2pInfo;

    .line 1734
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask$RequestInfoCallback;->this$1:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask;

    iget-object v0, v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    # getter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->access$1300(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)Landroid/net/wifi/p2p/WifiP2pInfo;

    move-result-object v0

    iget-boolean v0, v0, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    if-eqz v0, :cond_2

    .line 1735
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask$RequestInfoCallback;->this$1:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask;

    iget-object v0, v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    # getter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->access$1300(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)Landroid/net/wifi/p2p/WifiP2pInfo;

    move-result-object v0

    iget-boolean v0, v0, Landroid/net/wifi/p2p/WifiP2pInfo;->isGroupOwner:Z

    if-eqz v0, :cond_1

    .line 1736
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask$RequestInfoCallback;->this$1:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask;

    iget-object v0, v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    sget-object v1, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$Event;->ON_CHANGED_TO_GROUP_OWNER:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$Event;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->sendEvent(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$Event;[Ljava/lang/Object;)V

    .line 1747
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask$RequestInfoCallback;->this$1:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask;

    iget-object v0, v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    # getter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->access$1300(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)Landroid/net/wifi/p2p/WifiP2pInfo;

    move-result-object v0

    iget-boolean v0, v0, Landroid/net/wifi/p2p/WifiP2pInfo;->isGroupOwner:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask$RequestInfoCallback;->this$1:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask;

    iget-object v0, v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    # getter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mThisNode:Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->access$400(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask$RequestInfoCallback;->this$1:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask;

    iget-object v0, v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    # getter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->access$1300(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)Landroid/net/wifi/p2p/WifiP2pInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pInfo;->groupOwnerAddress:Ljava/net/InetAddress;

    if-eqz v0, :cond_0

    .line 1749
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask$RequestInfoCallback;->this$1:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask;

    iget-object v0, v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    # getter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mThisNode:Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->access$400(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->getStateUpdator()Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdator;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask$RequestInfoCallback;->this$1:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask;

    iget-object v1, v1, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    # getter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;
    invoke-static {v1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->access$1300(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)Landroid/net/wifi/p2p/WifiP2pInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pInfo;->groupOwnerAddress:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdator;->setIpAddress(Ljava/lang/String;)Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdator;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdator;->done()V

    .line 1755
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask$RequestInfoCallback;->this$1:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask;

    iget-object v0, v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    # getter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mEnvironment:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->access$000(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask$RequestInfoCallback;->this$1:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask;

    iget-object v1, v1, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    # getter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;
    invoke-static {v1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->access$1300(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)Landroid/net/wifi/p2p/WifiP2pInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;->onNetworkInfoUpdated(Landroid/net/wifi/p2p/WifiP2pInfo;)V

    .line 1757
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask$RequestInfoCallback;->this$1:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask;

    const/4 v1, 0x1

    # setter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask;->mIsInfoAlreadyDone:Z
    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask;->access$5402(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask;Z)Z

    .line 1760
    return-void

    .line 1738
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask$RequestInfoCallback;->this$1:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask;

    iget-object v0, v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    sget-object v1, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$Event;->ON_CHANGED_TO_GROUP_CLIENT:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$Event;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->sendEvent(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$Event;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1743
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask$RequestInfoCallback;->this$1:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask;

    iget-object v0, v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    sget-object v1, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$Event;->ON_CHANGED_TO_UNDEFINED:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$Event;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->sendEvent(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$Event;[Ljava/lang/Object;)V

    goto :goto_0
.end method
