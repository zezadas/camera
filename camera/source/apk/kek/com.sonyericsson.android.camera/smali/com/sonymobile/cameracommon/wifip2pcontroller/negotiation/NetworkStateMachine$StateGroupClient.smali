.class Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient;
.super Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateUndefined;
.source "NetworkStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateGroupClient"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient$RequestConnectionCallback;,
        Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient$HandleNodeStateUpdateTask;,
        Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient$NegoReceiveCallback;,
        Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient$RequestNotifyThisNodeCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NSM.StateGroupClient"


# instance fields
.field private mIsAlreadyPingRequested:Z

.field private mNegoSession:Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession;

.field final synthetic this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;


# direct methods
.method constructor <init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)V
    .locals 1

    .prologue
    .line 997
    iput-object p1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateUndefined;-><init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)V

    .line 1001
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient;->mNegoSession:Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession;

    .line 1004
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient;->mIsAlreadyPingRequested:Z

    .line 1236
    return-void
.end method

.method static synthetic access$3702(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient;
    .param p1, "x1"    # Z

    .prologue
    .line 997
    iput-boolean p1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient;->mIsAlreadyPingRequested:Z

    return p1
.end method

.method private doRequestSubmitToGroupOwner([BLcom/sonymobile/cameracommon/wifip2pcontroller/communication/MessageSubmittedCallback;)V
    .locals 3
    .param p1, "message"    # [B
    .param p2, "callback"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/MessageSubmittedCallback;

    .prologue
    .line 1251
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    # getter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->access$1300(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)Landroid/net/wifi/p2p/WifiP2pInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    # getter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->access$1300(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)Landroid/net/wifi/p2p/WifiP2pInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pInfo;->groupOwnerAddress:Ljava/net/InetAddress;

    if-eqz v0, :cond_0

    .line 1252
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient;->mNegoSession:Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    # getter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;
    invoke-static {v1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->access$1300(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)Landroid/net/wifi/p2p/WifiP2pInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pInfo;->groupOwnerAddress:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2314

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession;->requestSubmitMessage([BLjava/lang/String;ILcom/sonymobile/cameracommon/wifip2pcontroller/communication/MessageSubmittedCallback;)V

    .line 1260
    :goto_0
    return-void

    .line 1258
    :cond_0
    invoke-interface {p2}, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/MessageSubmittedCallback;->onSubmitFailed()V

    goto :goto_0
.end method

.method private requestToNotifyThisNodeToGroupOwner()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 1044
    iput-boolean v4, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient;->mIsAlreadyPingRequested:Z

    .line 1046
    iget-object v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    # getter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mThisNode:Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
    invoke-static {v2}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->access$400(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    # getter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mThisNode:Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
    invoke-static {v2}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->access$400(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    # getter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;
    invoke-static {v2}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->access$1300(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)Landroid/net/wifi/p2p/WifiP2pInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    # getter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;
    invoke-static {v2}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->access$1300(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)Landroid/net/wifi/p2p/WifiP2pInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pInfo;->groupOwnerAddress:Ljava/net/InetAddress;

    if-eqz v2, :cond_0

    .line 1049
    new-instance v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoMsg;

    sget-object v2, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoType;->GROUP_CLIENT_IDENTIFIER:Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoType;

    iget-object v3, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    # getter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mPassKeyManager:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/PassKeyManager;
    invoke-static {v3}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->access$2800(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/PassKeyManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/PassKeyManager;->getCurrentValidPassKey()I

    move-result v3

    new-array v4, v4, [Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    # getter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mThisNode:Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
    invoke-static {v6}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->access$400(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {v0, v2, v3, v4}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoMsg;-><init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoType;I[Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;)V

    .line 1055
    .local v0, "negoMsg":Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoMsg;
    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoMsg;->encodeToJson()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 1058
    .local v1, "serialized":[B
    new-instance v2, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient$RequestNotifyThisNodeCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient$RequestNotifyThisNodeCallback;-><init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient;Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$1;)V

    invoke-direct {p0, v1, v2}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient;->doRequestSubmitToGroupOwner([BLcom/sonymobile/cameracommon/wifip2pcontroller/communication/MessageSubmittedCallback;)V

    .line 1068
    .end local v0    # "negoMsg":Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoMsg;
    .end local v1    # "serialized":[B
    :goto_0
    return-void

    .line 1064
    :cond_0
    const/16 v2, 0xbb8

    invoke-virtual {p0, v2}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient;->ping(I)V

    goto :goto_0
.end method


# virtual methods
.method disable()V
    .locals 1

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient;->mNegoSession:Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession;

    if-eqz v0, :cond_0

    .line 1035
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient;->mNegoSession:Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession;->stopReceiveMessage()V

    .line 1036
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient;->mNegoSession:Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession;->release()V

    .line 1037
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient;->mNegoSession:Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession;

    .line 1039
    :cond_0
    return-void
.end method

.method enable()V
    .locals 4

    .prologue
    const/16 v3, 0x231e

    .line 1009
    new-instance v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession;

    invoke-direct {v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient;->mNegoSession:Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession;

    .line 1010
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient;->mNegoSession:Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession;

    new-instance v1, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient$NegoReceiveCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient$NegoReceiveCallback;-><init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient;Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$1;)V

    invoke-virtual {v0, v3, v1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession;->startReceiveMessage(ILcom/sonymobile/cameracommon/wifip2pcontroller/communication/MessageReceivedCallback;)V

    .line 1015
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    # getter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mThisNode:Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->access$400(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->getStateUpdator()Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdator;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdator;->setTcpPort(I)Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdator;

    move-result-object v0

    const/16 v1, 0x231f

    invoke-interface {v0, v1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdator;->setUdpPort(I)Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdator;->setGroupOwner(Z)Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdator;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdator;->done()V

    .line 1022
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient;->ping()V

    .line 1026
    return-void
.end method

.method handleOnChangedToGroupClient()V
    .locals 0

    .prologue
    .line 1270
    return-void
.end method

.method handleOnChangedToGroupOwner()V
    .locals 0

    .prologue
    .line 1265
    return-void
.end method

.method handleOnChangedToUndefined()V
    .locals 3

    .prologue
    .line 1277
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    # getter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mGroupedNodeSet:Ljava/util/Set;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->access$1700(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1278
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    # invokes: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->notifyNodeSetChanged()V
    invoke-static {v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->access$3000(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)V

    .line 1280
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    new-instance v1, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateUndefined;

    iget-object v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    invoke-direct {v1, v2}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateUndefined;-><init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)V

    # invokes: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->changeTo(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$State;)V
    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->access$200(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$State;)V

    .line 1281
    return-void
.end method

.method handleOnDiscoveryStarted()V
    .locals 0

    .prologue
    .line 1188
    return-void
.end method

.method handleOnDiscoveryStopped()V
    .locals 0

    .prologue
    .line 1194
    return-void
.end method

.method handleOnPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 0
    .param p1, "deviceList"    # Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .prologue
    .line 1178
    invoke-super {p0, p1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateUndefined;->handleOnPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V

    .line 1181
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient;->ping()V

    .line 1182
    return-void
.end method

.method handleOnPingRequested()V
    .locals 1

    .prologue
    .line 1285
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient;->mIsAlreadyPingRequested:Z

    if-nez v0, :cond_0

    .line 1287
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient;->requestToNotifyThisNodeToGroupOwner()V

    .line 1289
    :cond_0
    return-void
.end method

.method handleOnThisNetworkNodeUpdated()V
    .locals 0

    .prologue
    .line 1210
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient;->ping()V

    .line 1211
    return-void
.end method

.method handleRequestConnection(Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;Ljava/lang/String;Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/ConnectionRequestCallback;)V
    .locals 6
    .param p1, "targetNode"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
    .param p2, "ndefPushMacAddress"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/ConnectionRequestCallback;

    .prologue
    .line 1222
    new-instance v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoMsg;

    sget-object v2, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoType;->CONNECTION_REQUEST:Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoType;

    iget-object v3, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    # getter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mPassKeyManager:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/PassKeyManager;
    invoke-static {v3}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->access$2800(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/PassKeyManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/PassKeyManager;->getCurrentValidPassKey()I

    move-result v3

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-direct {v0, v2, v3, v4}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoMsg;-><init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoType;I[Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;)V

    .line 1230
    .local v0, "negoMsg":Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoMsg;
    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoMsg;->encodeToJson()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 1233
    .local v1, "serialized":[B
    new-instance v2, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient$RequestConnectionCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient$RequestConnectionCallback;-><init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient;Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$1;)V

    invoke-direct {p0, v1, v2}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient;->doRequestSubmitToGroupOwner([BLcom/sonymobile/cameracommon/wifip2pcontroller/communication/MessageSubmittedCallback;)V

    .line 1234
    return-void
.end method

.method handleThisNodeChanged(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 0
    .param p1, "thisDevice"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 1199
    invoke-super {p0, p1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateUndefined;->handleThisNodeChanged(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 1202
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient;->ping()V

    .line 1203
    return-void
.end method
