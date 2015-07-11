.class Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner$NegoReceiveCallback;
.super Ljava/lang/Object;
.source "NetworkStateMachine.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/MessageReceivedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NegoReceiveCallback"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;)V
    .locals 0

    .prologue
    .line 719
    iput-object p1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner$NegoReceiveCallback;->this$1:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;
    .param p2, "x1"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$1;

    .prologue
    .line 719
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner$NegoReceiveCallback;-><init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;)V

    return-void
.end method


# virtual methods
.method public onMessageReceived([BLjava/lang/String;)V
    .locals 6
    .param p1, "message"    # [B
    .param p2, "ipAddress"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 725
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v3}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoMsg;->decodeFromJson(Ljava/lang/String;)Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoMsg;

    move-result-object v1

    .line 727
    .local v1, "negoMsg":Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoMsg;
    if-nez v1, :cond_1

    .line 728
    const-string v3, "NSM.StateGroupOwner"

    const-string v4, "Failed to deserialize message."

    invoke-static {v3, v4}, Lcom/sonymobile/cameracommon/wifip2pcontroller/util/Log;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    :cond_0
    :goto_0
    return-void

    .line 743
    :cond_1
    sget-object v3, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$1;->$SwitchMap$com$sonymobile$cameracommon$wifip2pcontroller$common$NegotiationMessage$NegoType:[I

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoMsg;->getMessageType()Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 746
    :pswitch_0
    iget-object v3, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner$NegoReceiveCallback;->this$1:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;

    iget-object v3, v3, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    # getter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mPassKeyManager:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/PassKeyManager;
    invoke-static {v3}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->access$2800(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/PassKeyManager;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoMsg;->getPassKey()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/PassKeyManager;->isValidPassKey(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 747
    const-string v3, "NSM.StateGroupOwner"

    const-string v4, "PassKey is invalid."

    invoke-static {v3, v4}, Lcom/sonymobile/cameracommon/wifip2pcontroller/util/Log;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    const-string v3, "NSM.StateGroupOwner"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PassKeyManager : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner$NegoReceiveCallback;->this$1:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;

    iget-object v5, v5, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    # getter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mPassKeyManager:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/PassKeyManager;
    invoke-static {v5}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->access$2800(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/PassKeyManager;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonymobile/cameracommon/wifip2pcontroller/util/Log;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    iget-object v3, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner$NegoReceiveCallback;->this$1:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;

    iget-object v3, v3, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    # getter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v3}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->access$700(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner$NegoReceiveCallback;->this$1:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;

    iget-object v4, v4, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    # getter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v4}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->access$900(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_0

    .line 756
    :cond_2
    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoMsg;->getNetworkNodeArray()[Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    move-result-object v3

    aget-object v2, v3, v5

    .line 757
    .local v2, "notifiedNode":Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->getStateUpdator()Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdator;

    move-result-object v3

    invoke-interface {v3, p2}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdator;->setIpAddress(Ljava/lang/String;)Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdator;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdator;->done()V

    .line 760
    iget-object v3, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner$NegoReceiveCallback;->this$1:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;

    iget-object v3, v3, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    # getter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mConnectedNodeSet:Ljava/util/Set;
    invoke-static {v3}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->access$1600(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonymobile/cameracommon/wifip2pcontroller/util/Util;->getNetworkNodeWithMacAddress(Ljava/util/Set;Ljava/lang/String;)Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    move-result-object v0

    .line 763
    .local v0, "localNode":Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
    if-eqz v0, :cond_0

    .line 768
    invoke-static {v2, v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->copy(Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;)V

    .line 770
    iget-object v3, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner$NegoReceiveCallback;->this$1:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;

    iget-object v3, v3, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    # getter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mGroupedNodeSet:Ljava/util/Set;
    invoke-static {v3}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->access$1700(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonymobile/cameracommon/wifip2pcontroller/util/Util;->removeNetworkNodeWithMacAddress(Ljava/util/Set;Ljava/lang/String;)V

    .line 773
    iget-object v3, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner$NegoReceiveCallback;->this$1:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;

    iget-object v3, v3, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    # getter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mGroupedNodeSet:Ljava/util/Set;
    invoke-static {v3}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->access$1700(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->clone()Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 776
    iget-object v3, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner$NegoReceiveCallback;->this$1:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;

    # invokes: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;->updateGroupedNodeSet()V
    invoke-static {v3}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;->access$2900(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;)V

    .line 779
    iget-object v3, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner$NegoReceiveCallback;->this$1:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;

    iget-object v3, v3, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    # invokes: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->notifyNodeSetChanged()V
    invoke-static {v3}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->access$3000(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)V

    .line 782
    iget-object v3, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner$NegoReceiveCallback;->this$1:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;

    invoke-virtual {v3}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;->ping()V

    goto/16 :goto_0

    .line 788
    .end local v0    # "localNode":Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
    .end local v2    # "notifiedNode":Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
    :pswitch_1
    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoMsg;->getNetworkNodeArray()[Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    move-result-object v3

    aget-object v2, v3, v5

    .line 791
    .restart local v2    # "notifiedNode":Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
    iget-object v3, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner$NegoReceiveCallback;->this$1:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;

    iget-object v3, v3, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    # getter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mBackHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->access$100(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner$NegoReceiveCallback$1;

    invoke-direct {v4, p0, v2}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner$NegoReceiveCallback$1;-><init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner$NegoReceiveCallback;Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 804
    .end local v2    # "notifiedNode":Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
    :pswitch_2
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Owner state received NODE_STATUS_UPDATE"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 743
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
