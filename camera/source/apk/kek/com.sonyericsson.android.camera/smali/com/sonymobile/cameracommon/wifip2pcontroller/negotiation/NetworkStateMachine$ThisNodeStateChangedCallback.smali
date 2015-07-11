.class Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ThisNodeStateChangedCallback;
.super Ljava/lang/Object;
.source "NetworkStateMachine.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$OnNetworkNodeStateChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThisNodeStateChangedCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ThisNodeStateChangedCallback;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;
    .param p2, "x1"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$1;

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ThisNodeStateChangedCallback;-><init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)V

    return-void
.end method


# virtual methods
.method public onNetworkNodeStateChanged(Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;)V
    .locals 3
    .param p1, "node"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    .prologue
    .line 110
    invoke-virtual {p1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->clone()Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    move-result-object v0

    .line 111
    .local v0, "notifier":Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->setOnNetworkNodeStateChangedCallback(Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$OnNetworkNodeStateChangedCallback;)V

    .line 114
    iget-object v1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ThisNodeStateChangedCallback;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    # getter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mEnvironment:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;
    invoke-static {v1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->access$000(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;->onThisNodeChanged(Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;)V

    .line 117
    iget-object v1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ThisNodeStateChangedCallback;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    # getter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mBackHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->access$100(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ThisNodeStateChangedCallback$1;

    invoke-direct {v2, p0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ThisNodeStateChangedCallback$1;-><init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ThisNodeStateChangedCallback;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 123
    return-void
.end method
