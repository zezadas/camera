.class Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask;
.super Ljava/lang/Object;
.source "NetworkStateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContinuousNetworkScanTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask$RequestGroupInfoCallback;,
        Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask$RequestInfoCallback;
    }
.end annotation


# instance fields
.field private mIsGroupInfoAlreadyDone:Z

.field private mIsInfoAlreadyDone:Z

.field private volatile mIsReleased:Z

.field private final mRequestGroupInfoCallback:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask$RequestGroupInfoCallback;

.field private final mRequestInfoCallback:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask$RequestInfoCallback;

.field final synthetic this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1681
    iput-object p1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1683
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask;->mIsReleased:Z

    .line 1686
    iput-boolean v1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask;->mIsInfoAlreadyDone:Z

    .line 1689
    iput-boolean v1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask;->mIsGroupInfoAlreadyDone:Z

    .line 1724
    new-instance v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask$RequestInfoCallback;

    invoke-direct {v0, p0, v2}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask$RequestInfoCallback;-><init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask;Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$1;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask;->mRequestInfoCallback:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask$RequestInfoCallback;

    .line 1763
    new-instance v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask$RequestGroupInfoCallback;

    invoke-direct {v0, p0, v2}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask$RequestGroupInfoCallback;-><init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask;Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$1;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask;->mRequestGroupInfoCallback:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask$RequestGroupInfoCallback;

    .line 1765
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;
    .param p2, "x1"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$1;

    .prologue
    .line 1681
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask;-><init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)V

    return-void
.end method

.method static synthetic access$5402(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask;
    .param p1, "x1"    # Z

    .prologue
    .line 1681
    iput-boolean p1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask;->mIsInfoAlreadyDone:Z

    return p1
.end method

.method static synthetic access$5602(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask;
    .param p1, "x1"    # Z

    .prologue
    .line 1681
    iput-boolean p1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask;->mIsGroupInfoAlreadyDone:Z

    return p1
.end method


# virtual methods
.method public release()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1695
    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask;->mIsReleased:Z

    .line 1696
    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask;->mIsInfoAlreadyDone:Z

    .line 1697
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1701
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask;->mIsReleased:Z

    if-eqz v0, :cond_1

    .line 1722
    :cond_0
    :goto_0
    return-void

    .line 1707
    :cond_1
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask;->mIsInfoAlreadyDone:Z

    if-eqz v0, :cond_2

    .line 1708
    iput-boolean v3, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask;->mIsInfoAlreadyDone:Z

    .line 1709
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    # getter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->access$700(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    # getter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->access$900(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask;->mRequestInfoCallback:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask$RequestInfoCallback;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestConnectionInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;)V

    .line 1713
    :cond_2
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask;->mIsGroupInfoAlreadyDone:Z

    if-eqz v0, :cond_3

    .line 1714
    iput-boolean v3, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask;->mIsGroupInfoAlreadyDone:Z

    .line 1715
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    # getter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->access$700(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    # getter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->access$900(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask;->mRequestGroupInfoCallback:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask$RequestGroupInfoCallback;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    .line 1719
    :cond_3
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask;->mIsReleased:Z

    if-nez v0, :cond_0

    .line 1720
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    # getter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mBackHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->access$100(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
