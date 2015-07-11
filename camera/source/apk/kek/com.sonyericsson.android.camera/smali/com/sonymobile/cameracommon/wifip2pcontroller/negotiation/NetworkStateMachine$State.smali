.class abstract Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$State;
.super Ljava/lang/Object;
.source "NetworkStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "State"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;


# direct methods
.method constructor <init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$State;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract disable()V
.end method

.method abstract enable()V
.end method

.method handleCancelConnection(Z)V
    .locals 0
    .param p1, "isRemoveGroup"    # Z

    .prologue
    .line 258
    return-void
.end method

.method handleCancelWaitConnecting()V
    .locals 0

    .prologue
    .line 249
    return-void
.end method

.method handleChannelDisconnected()V
    .locals 0

    .prologue
    .line 237
    return-void
.end method

.method handleInitialize()V
    .locals 0

    .prologue
    .line 213
    return-void
.end method

.method handleNetworkDisabled()V
    .locals 0

    .prologue
    .line 224
    return-void
.end method

.method handleNetworkEnabled()V
    .locals 0

    .prologue
    .line 221
    return-void
.end method

.method handleNodeChanged()V
    .locals 0

    .prologue
    .line 266
    return-void
.end method

.method handleNodeConnected()V
    .locals 0

    .prologue
    .line 240
    return-void
.end method

.method handleNodeDisconnected()V
    .locals 0

    .prologue
    .line 243
    return-void
.end method

.method handleNodeSetChanged()V
    .locals 0

    .prologue
    .line 261
    return-void
.end method

.method handleOnChangedToGroupClient()V
    .locals 0

    .prologue
    .line 285
    return-void
.end method

.method handleOnChangedToGroupOwner()V
    .locals 0

    .prologue
    .line 282
    return-void
.end method

.method handleOnChangedToUndefined()V
    .locals 0

    .prologue
    .line 288
    return-void
.end method

.method handleOnDiscoveryStarted()V
    .locals 0

    .prologue
    .line 229
    return-void
.end method

.method handleOnDiscoveryStopped()V
    .locals 0

    .prologue
    .line 232
    return-void
.end method

.method handleOnPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 0
    .param p1, "deviceList"    # Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .prologue
    .line 269
    return-void
.end method

.method handleOnPingRequested()V
    .locals 0

    .prologue
    .line 291
    return-void
.end method

.method handleOnThisNetworkNodeUpdated()V
    .locals 0

    .prologue
    .line 277
    return-void
.end method

.method handleRelease()V
    .locals 0

    .prologue
    .line 216
    return-void
.end method

.method handleRequestConnection(Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;Ljava/lang/String;Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/ConnectionRequestCallback;)V
    .locals 0
    .param p1, "targetNode"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
    .param p2, "ndefPushMacAddress"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/ConnectionRequestCallback;

    .prologue
    .line 255
    return-void
.end method

.method handleThisNodeChanged(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 0
    .param p1, "thisDevice"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 274
    return-void
.end method

.method handleWaitConnecting(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/ConnectionRequestCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/ConnectionRequestCallback;

    .prologue
    .line 246
    return-void
.end method
