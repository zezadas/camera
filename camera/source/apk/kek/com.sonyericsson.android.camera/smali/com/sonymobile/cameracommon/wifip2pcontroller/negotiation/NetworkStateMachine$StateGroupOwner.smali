.class Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;
.super Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateUndefined;
.source "NetworkStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateGroupOwner"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner$NegoSubmitCallback;,
        Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner$RemoteConnectionCallback;,
        Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner$NegoReceiveCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NSM.StateGroupOwner"


# instance fields
.field private mNegoSession:Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession;

.field private mNegoSessionSubmitCount:I

.field private final mRemoteConnectionCallback:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner$RemoteConnectionCallback;

.field final synthetic this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;


# direct methods
.method constructor <init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 677
    iput-object p1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateUndefined;-><init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)V

    .line 681
    iput-object v1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;->mNegoSession:Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession;

    .line 684
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;->mNegoSessionSubmitCount:I

    .line 812
    new-instance v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner$RemoteConnectionCallback;

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner$RemoteConnectionCallback;-><init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$1;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;->mRemoteConnectionCallback:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner$RemoteConnectionCallback;

    .line 905
    return-void
.end method

.method static synthetic access$2900(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;

    .prologue
    .line 677
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;->updateGroupedNodeSet()V

    return-void
.end method

.method static synthetic access$3100(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;)Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner$RemoteConnectionCallback;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;

    .prologue
    .line 677
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;->mRemoteConnectionCallback:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner$RemoteConnectionCallback;

    return-object v0
.end method

.method static synthetic access$3406(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;

    .prologue
    .line 677
    iget v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;->mNegoSessionSubmitCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;->mNegoSessionSubmitCount:I

    return v0
.end method

.method private generateAllNodesStatusUpdateNegoMsg()Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoMsg;
    .locals 5

    .prologue
    .line 944
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 947
    .local v0, "allNodes":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;>;"
    iget-object v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    # getter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mGroupedNodeSet:Ljava/util/Set;
    invoke-static {v2}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->access$1700(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 950
    new-instance v1, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoMsg;

    sget-object v3, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoType;->NODE_STATUS_UPDATE:Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoType;

    iget-object v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    # getter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mPassKeyManager:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/PassKeyManager;
    invoke-static {v2}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->access$2800(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/PassKeyManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/PassKeyManager;->getCurrentValidPassKey()I

    move-result v4

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    invoke-direct {v1, v3, v4, v2}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoMsg;-><init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoType;I[Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;)V

    .line 961
    .local v1, "negoMsg":Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoMsg;
    return-object v1
.end method

.method private requestToNotifyAllNodesStatusToAllGroupClient()V
    .locals 9

    .prologue
    .line 879
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;->generateAllNodesStatusUpdateNegoMsg()Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoMsg;

    move-result-object v2

    .line 882
    .local v2, "negoMsg":Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoMsg;
    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoMsg;->encodeToJson()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 885
    .local v3, "serialized":[B
    iget-object v4, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    # getter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mConnectedNodeSet:Ljava/util/Set;
    invoke-static {v4}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->access$1600(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    .line 887
    .local v0, "eachNode":Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->getIpAddress()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 894
    iget v4, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;->mNegoSessionSubmitCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;->mNegoSessionSubmitCount:I

    .line 895
    iget-object v4, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;->mNegoSession:Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->getIpAddress()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x231e

    new-instance v7, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner$NegoSubmitCallback;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner$NegoSubmitCallback;-><init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$1;)V

    invoke-virtual {v4, v3, v5, v6, v7}, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession;->requestSubmitMessage([BLjava/lang/String;ILcom/sonymobile/cameracommon/wifip2pcontroller/communication/MessageSubmittedCallback;)V

    goto :goto_0

    .line 903
    .end local v0    # "eachNode":Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
    :cond_1
    return-void
.end method

.method private updateGroupedNodeSet()V
    .locals 4

    .prologue
    .line 926
    iget-object v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    # getter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mGroupedNodeSet:Ljava/util/Set;
    invoke-static {v2}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->access$1700(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    # getter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mConnectedNodeSet:Ljava/util/Set;
    invoke-static {v3}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->access$1600(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)Ljava/util/Set;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonymobile/cameracommon/wifip2pcontroller/util/Util;->checkDiffWithMacAddressAndGetOnlyIncludedInLeftSet(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 930
    .local v0, "onlyInGrouped":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;>;"
    iget-object v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    # getter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mGroupedNodeSet:Ljava/util/Set;
    invoke-static {v2}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->access$1700(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 933
    iget-object v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    # getter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mGroupedNodeSet:Ljava/util/Set;
    invoke-static {v2}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->access$1700(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    # getter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mThisNode:Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
    invoke-static {v3}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->access$400(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->getMacAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonymobile/cameracommon/wifip2pcontroller/util/Util;->getNetworkNodeWithMacAddress(Ljava/util/Set;Ljava/lang/String;)Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    move-result-object v1

    .line 936
    .local v1, "thisNode":Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
    iget-object v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    # getter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mGroupedNodeSet:Ljava/util/Set;
    invoke-static {v2}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->access$1700(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 937
    iget-object v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    # getter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mGroupedNodeSet:Ljava/util/Set;
    invoke-static {v2}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->access$1700(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    # getter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mThisNode:Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
    invoke-static {v3}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->access$400(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 938
    return-void
.end method


# virtual methods
.method disable()V
    .locals 1

    .prologue
    .line 714
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;->mNegoSession:Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession;->stopReceiveMessage()V

    .line 715
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;->mNegoSession:Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession;->release()V

    .line 716
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;->mNegoSession:Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession;

    .line 717
    return-void
.end method

.method enable()V
    .locals 4

    .prologue
    const/16 v3, 0x2314

    .line 689
    new-instance v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession;

    invoke-direct {v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;->mNegoSession:Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession;

    .line 690
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;->mNegoSession:Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession;

    new-instance v1, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner$NegoReceiveCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner$NegoReceiveCallback;-><init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$1;)V

    invoke-virtual {v0, v3, v1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/UniCastSession;->startReceiveMessage(ILcom/sonymobile/cameracommon/wifip2pcontroller/communication/MessageReceivedCallback;)V

    .line 695
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    # getter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mThisNode:Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->access$400(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->getStateUpdator()Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdator;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdator;->setTcpPort(I)Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdator;

    move-result-object v0

    const/16 v1, 0x2315

    invoke-interface {v0, v1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdator;->setUdpPort(I)Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdator;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdator;->setGroupOwner(Z)Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdator;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdator;->done()V

    .line 702
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;->mNegoSessionSubmitCount:I

    .line 706
    return-void
.end method

.method handleOnChangedToGroupClient()V
    .locals 0

    .prologue
    .line 972
    return-void
.end method

.method handleOnChangedToGroupOwner()V
    .locals 0

    .prologue
    .line 967
    return-void
.end method

.method handleOnChangedToUndefined()V
    .locals 3

    .prologue
    .line 979
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    # getter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mGroupedNodeSet:Ljava/util/Set;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->access$1700(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 980
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    # invokes: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->notifyNodeSetChanged()V
    invoke-static {v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->access$3000(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)V

    .line 982
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    new-instance v1, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateUndefined;

    iget-object v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    invoke-direct {v1, v2}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateUndefined;-><init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)V

    # invokes: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->changeTo(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$State;)V
    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->access$200(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$State;)V

    .line 983
    return-void
.end method

.method handleOnDiscoveryStarted()V
    .locals 0

    .prologue
    .line 845
    return-void
.end method

.method handleOnDiscoveryStopped()V
    .locals 0

    .prologue
    .line 851
    return-void
.end method

.method handleOnPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 0
    .param p1, "deviceList"    # Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .prologue
    .line 832
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;->updateGroupedNodeSet()V

    .line 835
    invoke-super {p0, p1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateUndefined;->handleOnPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V

    .line 838
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;->ping()V

    .line 839
    return-void
.end method

.method handleOnPingRequested()V
    .locals 1

    .prologue
    .line 987
    iget v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;->mNegoSessionSubmitCount:I

    if-gtz v0, :cond_0

    .line 989
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;->requestToNotifyAllNodesStatusToAllGroupClient()V

    .line 991
    :cond_0
    return-void
.end method

.method handleOnThisNetworkNodeUpdated()V
    .locals 0

    .prologue
    .line 872
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;->ping()V

    .line 873
    return-void
.end method

.method handleThisNodeChanged(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 2
    .param p1, "thisDevice"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 856
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    # getter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mThisNode:Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->access$400(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->getStateUpdator()Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdator;

    move-result-object v0

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdator;->setMacAddress(Ljava/lang/String;)Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdator;

    move-result-object v0

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdator;->setScreenName(Ljava/lang/String;)Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdator;

    move-result-object v0

    iget v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    invoke-interface {v0, v1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdator;->setStatus(I)Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdator;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdator;->setGroupOwner(Z)Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdator;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdator;->done()V

    .line 864
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;->ping()V

    .line 865
    return-void
.end method
