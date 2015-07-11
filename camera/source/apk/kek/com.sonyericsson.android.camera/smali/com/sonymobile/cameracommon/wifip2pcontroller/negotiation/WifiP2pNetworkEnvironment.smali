.class public Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;
.super Ljava/lang/Object;
.source "WifiP2pNetworkEnvironment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment$1;,
        Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment$SendEventToStateMachineTask;,
        Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment$NetworkStateMachineEventPost;
    }
.end annotation


# static fields
.field private static final IS_DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBackHandler:Landroid/os/Handler;

.field private mBackThread:Landroid/os/HandlerThread;

.field private mBroadcastReceivers:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;

.field private mNetworkStateCallback:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateCallback;

.field private mNetworkStateMachine:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

.field private mNodeStateCallback:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NodeStateCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;->mBackThread:Landroid/os/HandlerThread;

    .line 35
    iput-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;->mBackHandler:Landroid/os/Handler;

    .line 38
    iput-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;->mNetworkStateCallback:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateCallback;

    .line 41
    iput-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;->mNodeStateCallback:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NodeStateCallback;

    .line 44
    iput-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;->mBroadcastReceivers:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;

    .line 47
    iput-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;->mNetworkStateMachine:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    .line 54
    return-void
.end method

.method private static newSetWithCloneElements(Ljava/util/Set;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 212
    .local p0, "src":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 213
    .local v2, "newSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;>;"
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    .line 214
    .local v0, "eachNode":Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->clone()Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 216
    .end local v0    # "eachNode":Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
    :cond_0
    return-object v2
.end method


# virtual methods
.method public cancelConnect(Z)V
    .locals 4
    .param p1, "isRemoveGroup"    # Z

    .prologue
    .line 241
    sget-object v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$Event;->CANCEL_CONNECTION:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$Event;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;->sendEventAsyncToStateMachine(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$Event;[Ljava/lang/Object;)V

    .line 244
    return-void
.end method

.method public cancelWaitConnecting()V
    .locals 2

    .prologue
    .line 260
    sget-object v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$Event;->CANCEL_WAIT_CONNECTING:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$Event;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;->sendEventAsyncToStateMachine(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$Event;[Ljava/lang/Object;)V

    .line 262
    return-void
.end method

.method public initialize(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "clientAppVersionCode"    # I

    .prologue
    .line 66
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "WifiP2pBackWorker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;->mBackThread:Landroid/os/HandlerThread;

    .line 67
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;->mBackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 68
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;->mBackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 69
    const-string v0, "TraceLog"

    const-string v1, "###### getLooper() is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_0
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;->mBackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;->mBackHandler:Landroid/os/Handler;

    .line 74
    new-instance v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;->mBackHandler:Landroid/os/Handler;

    invoke-direct {v0, p2, p1, p0, v1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;-><init>(ILandroid/content/Context;Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;->mNetworkStateMachine:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    .line 79
    sget-object v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$Event;->INITIALIZE:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$Event;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;->sendEventAsyncToStateMachine(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$Event;[Ljava/lang/Object;)V

    .line 82
    new-instance v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;

    invoke-direct {v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;->mBroadcastReceivers:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;

    .line 83
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;->mBroadcastReceivers:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;

    new-instance v1, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment$NetworkStateMachineEventPost;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment$NetworkStateMachineEventPost;-><init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment$1;)V

    invoke-virtual {v0, p1, v1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;->initialize(Landroid/content/Context;Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$EventPost;)V

    .line 84
    return-void
.end method

.method onGroupInfoUpdated(Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 1
    .param p1, "group"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    .prologue
    .line 283
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;->mNetworkStateCallback:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateCallback;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;->mNetworkStateCallback:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateCallback;

    invoke-interface {v0, p1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateCallback;->onGroupInfoUpdated(Landroid/net/wifi/p2p/WifiP2pGroup;)V

    .line 286
    :cond_0
    return-void
.end method

.method onNetworkDisabled()V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;->mNetworkStateCallback:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateCallback;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;->mNetworkStateCallback:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateCallback;

    invoke-interface {v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateCallback;->onNetworkDisabled()V

    .line 274
    :cond_0
    return-void
.end method

.method onNetworkEnabled()V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;->mNetworkStateCallback:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateCallback;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;->mNetworkStateCallback:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateCallback;

    invoke-interface {v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateCallback;->onNetworkEnabled()V

    .line 268
    :cond_0
    return-void
.end method

.method onNetworkInfoUpdated(Landroid/net/wifi/p2p/WifiP2pInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/net/wifi/p2p/WifiP2pInfo;

    .prologue
    .line 277
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;->mNetworkStateCallback:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateCallback;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;->mNetworkStateCallback:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateCallback;

    invoke-interface {v0, p1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateCallback;->onNetworkInfoUpdated(Landroid/net/wifi/p2p/WifiP2pInfo;)V

    .line 280
    :cond_0
    return-void
.end method

.method onRemoteNodeSetChanged(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 195
    .local p1, "availableSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;>;"
    .local p2, "invitedSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;>;"
    .local p3, "connectedSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;>;"
    .local p4, "groupedSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;>;"
    iget-object v4, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;->mNodeStateCallback:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NodeStateCallback;

    if-eqz v4, :cond_0

    .line 197
    invoke-static {p1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;->newSetWithCloneElements(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 198
    .local v0, "available":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;>;"
    invoke-static {p2}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;->newSetWithCloneElements(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    .line 199
    .local v3, "invited":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;>;"
    invoke-static {p3}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;->newSetWithCloneElements(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 200
    .local v1, "connected":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;>;"
    invoke-static {p4}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;->newSetWithCloneElements(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 203
    .local v2, "grouped":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;>;"
    iget-object v4, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;->mNodeStateCallback:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NodeStateCallback;

    invoke-interface {v4, v0, v3, v1, v2}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NodeStateCallback;->onRemoteNodeSetChanged(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    .line 209
    .end local v0    # "available":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;>;"
    .end local v1    # "connected":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;>;"
    .end local v2    # "grouped":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;>;"
    .end local v3    # "invited":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;>;"
    :cond_0
    return-void
.end method

.method onThisNodeChanged(Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;)V
    .locals 1
    .param p1, "thisNode"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;->mNodeStateCallback:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NodeStateCallback;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;->mNodeStateCallback:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NodeStateCallback;

    invoke-interface {v0, p1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NodeStateCallback;->onThisNodeChanged(Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;)V

    .line 169
    :cond_0
    return-void
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 104
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;->mBroadcastReceivers:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;->mBroadcastReceivers:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;->release()V

    .line 106
    iput-object v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;->mBroadcastReceivers:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;->mNetworkStateMachine:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    if-eqz v0, :cond_1

    .line 111
    sget-object v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$Event;->RELEASE:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$Event;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;->sendEventAsyncToStateMachine(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$Event;[Ljava/lang/Object;)V

    .line 112
    iput-object v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;->mNetworkStateMachine:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;->mBackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 117
    iput-object v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;->mBackThread:Landroid/os/HandlerThread;

    .line 118
    iput-object v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;->mBackHandler:Landroid/os/Handler;

    .line 121
    iput-object v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;->mNetworkStateCallback:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateCallback;

    .line 122
    iput-object v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;->mNodeStateCallback:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NodeStateCallback;

    .line 123
    return-void
.end method

.method public requestConnect(Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;Ljava/lang/String;Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/ConnectionRequestCallback;)V
    .locals 3
    .param p1, "target"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
    .param p2, "ndefPushMacAddress"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/ConnectionRequestCallback;

    .prologue
    .line 230
    sget-object v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$Event;->REQUEST_CONNECTION:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$Event;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;->sendEventAsyncToStateMachine(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$Event;[Ljava/lang/Object;)V

    .line 235
    return-void
.end method

.method public requestWaitConnecting(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/ConnectionRequestCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/ConnectionRequestCallback;

    .prologue
    .line 251
    sget-object v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$Event;->WAIT_CONNECTING:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$Event;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;->sendEventAsyncToStateMachine(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$Event;[Ljava/lang/Object;)V

    .line 254
    return-void
.end method

.method varargs sendEventAsyncToStateMachine(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$Event;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "event"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$Event;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 141
    new-instance v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment$SendEventToStateMachineTask;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;->mNetworkStateMachine:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    invoke-direct {v0, v1, p1, p2}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment$SendEventToStateMachineTask;-><init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$Event;[Ljava/lang/Object;)V

    .line 142
    .local v0, "task":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;->mBackHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 143
    return-void
.end method

.method public setCallbacks(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateCallback;Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NodeStateCallback;)V
    .locals 0
    .param p1, "networkStateCallback"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateCallback;
    .param p2, "nodeStateCallback"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NodeStateCallback;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;->mNetworkStateCallback:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateCallback;

    .line 96
    iput-object p2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;->mNodeStateCallback:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NodeStateCallback;

    .line 97
    return-void
.end method

.method public setPassKeyManager(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/PassKeyManager;)V
    .locals 1
    .param p1, "passKeyManager"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/PassKeyManager;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;->mNetworkStateMachine:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    invoke-virtual {v0, p1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->setPassKeyManager(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/PassKeyManager;)V

    .line 188
    return-void
.end method

.method public updateThisNode(Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;)V
    .locals 1
    .param p1, "thisNode"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;->mNetworkStateMachine:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    invoke-virtual {v0, p1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->updateThisNode(Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;)V

    .line 178
    return-void
.end method
