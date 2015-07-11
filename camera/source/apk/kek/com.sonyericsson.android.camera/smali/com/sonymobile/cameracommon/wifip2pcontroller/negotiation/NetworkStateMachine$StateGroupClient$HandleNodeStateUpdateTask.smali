.class Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient$HandleNodeStateUpdateTask;
.super Ljava/lang/Object;
.source "NetworkStateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandleNodeStateUpdateTask"
.end annotation


# instance fields
.field private final mNegoMsg:Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoMsg;

.field final synthetic this$1:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient;


# direct methods
.method constructor <init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient;Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoMsg;)V
    .locals 0
    .param p2, "negoMsg"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoMsg;

    .prologue
    .line 1139
    iput-object p1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient$HandleNodeStateUpdateTask;->this$1:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1140
    iput-object p2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient$HandleNodeStateUpdateTask;->mNegoMsg:Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoMsg;

    .line 1141
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1146
    iget-object v5, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient$HandleNodeStateUpdateTask;->this$1:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient;

    iget-object v5, v5, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    # getter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mGroupedNodeSet:Ljava/util/Set;
    invoke-static {v5}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->access$1700(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->clear()V

    .line 1149
    iget-object v5, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient$HandleNodeStateUpdateTask;->mNegoMsg:Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoMsg;

    invoke-virtual {v5}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoMsg;->getNetworkNodeArray()[Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    move-result-object v4

    .line 1151
    .local v4, "notifiedNodeArray":[Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
    move-object v0, v4

    .local v0, "arr$":[Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 1153
    .local v1, "eachNotifiedNode":Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
    iget-object v5, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient$HandleNodeStateUpdateTask;->this$1:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient;

    iget-object v5, v5, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    # getter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mGroupedNodeSet:Ljava/util/Set;
    invoke-static {v5}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->access$1700(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1156
    iget-object v5, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient$HandleNodeStateUpdateTask;->this$1:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient;

    iget-object v5, v5, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    # getter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mThisNode:Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
    invoke-static {v5}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->access$400(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->equalsWithMacAddress(Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1158
    iget-object v5, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient$HandleNodeStateUpdateTask;->this$1:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient;

    iget-object v5, v5, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    # getter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mThisNode:Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
    invoke-static {v5}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->access$400(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->getStateUpdator()Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdator;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->getIpAddress()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdator;->setIpAddress(Ljava/lang/String;)Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdator;

    move-result-object v5

    invoke-interface {v5}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdator;->done()V

    .line 1163
    iget-object v5, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient$HandleNodeStateUpdateTask;->this$1:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient;

    iget-object v5, v5, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    # getter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mThisNode:Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
    invoke-static {v5}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->access$400(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1165
    iget-object v5, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient$HandleNodeStateUpdateTask;->this$1:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient;

    invoke-virtual {v5}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient;->ping()V

    .line 1151
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1171
    .end local v1    # "eachNotifiedNode":Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
    :cond_1
    iget-object v5, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient$HandleNodeStateUpdateTask;->this$1:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient;

    iget-object v5, v5, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    # invokes: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->notifyNodeSetChanged()V
    invoke-static {v5}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->access$3000(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)V

    .line 1172
    return-void
.end method
