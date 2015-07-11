.class Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;
.super Ljava/lang/Object;
.source "NetworkStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$1;,
        Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ConnectionRequestCallbackDelayed;,
        Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask;,
        Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;,
        Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient;,
        Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;,
        Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateUndefined;,
        Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateAllBlock;,
        Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$State;,
        Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$Event;,
        Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$EventPost;,
        Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ThisNodeStateChangedCallback;
    }
.end annotation


# static fields
.field private static final CONNECTING_TIMEOUT:I = 0xea60

.field private static final CONTINUOUS_TASK_INTERVAL:I = 0xbb8

.field private static final IS_DEBUG:Z = false

.field private static final RETRY_CYCLE_INTERVAL:I = 0xbb8

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAvailableNodeSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;",
            ">;"
        }
    .end annotation
.end field

.field private mBackHandler:Landroid/os/Handler;

.field private final mClientAppVersionCode:I

.field private mConnectedNodeSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectingWaitTimeoutTask:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ConnectionRequestCallbackDelayed;

.field private mContext:Landroid/content/Context;

.field private mContinuousNetworkScanTask:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask;

.field private mCurrentState:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$State;

.field private mDiscoveryController:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;

.field private mEnvironment:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;

.field private final mGroupedNodeSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupedNodeSetInWaitingStart:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;",
            ">;"
        }
    .end annotation
.end field

.field private mInvitedNodeSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;",
            ">;"
        }
    .end annotation
.end field

.field private mNdefPushMacAddress:Ljava/lang/String;

.field private mPassKeyManager:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/PassKeyManager;

.field private mThisNode:Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

.field private mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(ILandroid/content/Context;Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;Landroid/os/Handler;)V
    .locals 2
    .param p1, "clientAppVersionCode"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "environment"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object v1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mContext:Landroid/content/Context;

    .line 53
    iput-object v1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mEnvironment:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;

    .line 56
    iput-object v1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mBackHandler:Landroid/os/Handler;

    .line 59
    iput-object v1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 62
    iput-object v1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 65
    iput-object v1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    .line 68
    iput-object v1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mDiscoveryController:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;

    .line 71
    new-instance v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateAllBlock;

    invoke-direct {v0, p0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateAllBlock;-><init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mCurrentState:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$State;

    .line 74
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mAvailableNodeSet:Ljava/util/Set;

    .line 77
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mInvitedNodeSet:Ljava/util/Set;

    .line 80
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mConnectedNodeSet:Ljava/util/Set;

    .line 83
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mGroupedNodeSet:Ljava/util/Set;

    .line 86
    iput-object v1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mThisNode:Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    .line 89
    iput-object v1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mPassKeyManager:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/PassKeyManager;

    .line 95
    iput-object v1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mConnectingWaitTimeoutTask:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ConnectionRequestCallbackDelayed;

    .line 101
    iput-object v1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mNdefPushMacAddress:Ljava/lang/String;

    .line 1680
    iput-object v1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mContinuousNetworkScanTask:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask;

    .line 148
    iput p1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mClientAppVersionCode:I

    .line 149
    iput-object p2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mContext:Landroid/content/Context;

    .line 150
    iput-object p3, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mEnvironment:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;

    .line 151
    iput-object p4, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mBackHandler:Landroid/os/Handler;

    .line 152
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mEnvironment:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;)Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;
    .param p1, "x1"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mEnvironment:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mBackHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->startContinuousNetworkScan()V

    return-void
.end method

.method static synthetic access$102(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mBackHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->stopContinuousNetworkScan()V

    return-void
.end method

.method static synthetic access$1300(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)Landroid/net/wifi/p2p/WifiP2pInfo;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;Landroid/net/wifi/p2p/WifiP2pInfo;)Landroid/net/wifi/p2p/WifiP2pInfo;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pInfo;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mWifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mAvailableNodeSet:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mInvitedNodeSet:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mConnectedNodeSet:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mGroupedNodeSet:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$State;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;
    .param p1, "x1"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$State;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->changeTo(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$State;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->updateNodeSet(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mGroupedNodeSetInWaitingStart:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;
    .param p1, "x1"    # Ljava/util/Set;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mGroupedNodeSetInWaitingStart:Ljava/util/Set;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ConnectionRequestCallbackDelayed;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mConnectingWaitTimeoutTask:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ConnectionRequestCallbackDelayed;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ConnectionRequestCallbackDelayed;)Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ConnectionRequestCallbackDelayed;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;
    .param p1, "x1"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ConnectionRequestCallbackDelayed;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mConnectingWaitTimeoutTask:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ConnectionRequestCallbackDelayed;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mNdefPushMacAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mNdefPushMacAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/PassKeyManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mPassKeyManager:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/PassKeyManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mDiscoveryController:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->notifyNodeSetChanged()V

    return-void
.end method

.method static synthetic access$302(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;)Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;
    .param p1, "x1"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mDiscoveryController:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mThisNode:Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;)Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;
    .param p1, "x1"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mThisNode:Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    .prologue
    .line 42
    iget v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mClientAppVersionCode:I

    return v0
.end method

.method static synthetic access$700(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;Landroid/net/wifi/p2p/WifiP2pManager;)Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pManager;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object p1
.end method

.method static synthetic access$800(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$802(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$900(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object v0
.end method

.method static synthetic access$902(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object p1
.end method

.method private declared-synchronized changeTo(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$State;)V
    .locals 1
    .param p1, "state"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$State;

    .prologue
    .line 1920
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mCurrentState:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$State;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$State;->disable()V

    .line 1922
    iput-object p1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mCurrentState:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$State;

    .line 1924
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mCurrentState:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$State;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$State;->enable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1925
    monitor-exit p0

    return-void

    .line 1920
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static getStatusStringFromActionCallbackErrorCode(I)Ljava/lang/String;
    .locals 3
    .param p0, "errorCode"    # I

    .prologue
    .line 1930
    packed-switch p0, :pswitch_data_0

    .line 1940
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Un-Expected error code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1932
    :pswitch_0
    const-string v0, "BUSY"

    .line 1938
    :goto_0
    return-object v0

    .line 1934
    :pswitch_1
    const-string v0, "ERROR"

    goto :goto_0

    .line 1936
    :pswitch_2
    const-string v0, "NO_SERVICE_REQUESTS"

    goto :goto_0

    .line 1938
    :pswitch_3
    const-string v0, "P2P_UNSUPPORTED"

    goto :goto_0

    .line 1930
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private notifyNodeSetChanged()V
    .locals 5

    .prologue
    .line 1361
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mCurrentState:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$State;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$State;->handleNodeSetChanged()V

    .line 1364
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mEnvironment:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mAvailableNodeSet:Ljava/util/Set;

    iget-object v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mInvitedNodeSet:Ljava/util/Set;

    iget-object v3, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mConnectedNodeSet:Ljava/util/Set;

    iget-object v4, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mGroupedNodeSet:Ljava/util/Set;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;->onRemoteNodeSetChanged(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    .line 1369
    return-void
.end method

.method private static printNodeSet(Ljava/util/Set;Ljava/lang/String;)V
    .locals 5
    .param p1, "title"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1372
    .local p0, "node":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;>;"
    const-string v2, "TraceLog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "######################## "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonymobile/cameracommon/wifip2pcontroller/util/Log;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1375
    .local v1, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1376
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    .line 1377
    .local v0, "eachNode":Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
    sget-object v2, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonymobile/cameracommon/wifip2pcontroller/util/Log;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1379
    .end local v0    # "eachNode":Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
    :cond_0
    return-void
.end method

.method private startContinuousNetworkScan()V
    .locals 2

    .prologue
    .line 1667
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mContinuousNetworkScanTask:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask;

    if-nez v0, :cond_0

    .line 1668
    new-instance v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask;-><init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$1;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mContinuousNetworkScanTask:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask;

    .line 1669
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mBackHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mContinuousNetworkScanTask:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1671
    :cond_0
    return-void
.end method

.method private stopContinuousNetworkScan()V
    .locals 1

    .prologue
    .line 1674
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mContinuousNetworkScanTask:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask;

    if-eqz v0, :cond_0

    .line 1675
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mContinuousNetworkScanTask:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask;->release()V

    .line 1677
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mContinuousNetworkScanTask:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ContinuousNetworkScanTask;

    .line 1678
    return-void
.end method

.method private updateNodeSet(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 8
    .param p1, "deviceList"    # Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .prologue
    .line 1296
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 1297
    .local v2, "newAvailable":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;>;"
    new-instance v4, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 1298
    .local v4, "newInvited":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;>;"
    new-instance v3, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 1301
    .local v3, "newConnected":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;>;"
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1304
    .local v0, "eachDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    new-instance v5, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    invoke-direct {v5}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;-><init>()V

    .line 1305
    .local v5, "node":Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
    invoke-virtual {v5}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->getStateUpdator()Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdator;

    move-result-object v6

    iget-object v7, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-interface {v6, v7}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdator;->setMacAddress(Ljava/lang/String;)Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdator;

    move-result-object v6

    iget-object v7, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-interface {v6, v7}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdator;->setScreenName(Ljava/lang/String;)Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdator;

    move-result-object v6

    iget v7, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    invoke-interface {v6, v7}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdator;->setStatus(I)Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdator;

    move-result-object v6

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupOwner()Z

    move-result v7

    invoke-interface {v6, v7}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdator;->setGroupOwner(Z)Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdator;

    move-result-object v6

    invoke-interface {v6}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdator;->done()V

    .line 1312
    iget v6, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    packed-switch v6, :pswitch_data_0

    .line 1330
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Un-Expected status"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1318
    :pswitch_0
    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1322
    :pswitch_1
    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1326
    :pswitch_2
    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1335
    .end local v0    # "eachDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v5    # "node":Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
    :cond_0
    iget-object v6, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mAvailableNodeSet:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->clear()V

    .line 1336
    iput-object v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mAvailableNodeSet:Ljava/util/Set;

    .line 1339
    iget-object v6, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mInvitedNodeSet:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->clear()V

    .line 1340
    iput-object v4, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mInvitedNodeSet:Ljava/util/Set;

    .line 1343
    iget-object v6, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mConnectedNodeSet:Ljava/util/Set;

    invoke-static {v6, v3}, Lcom/sonymobile/cameracommon/wifip2pcontroller/util/Util;->updateNetworkNodeState(Ljava/util/Set;Ljava/util/Set;)V

    .line 1344
    iget-object v6, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mConnectedNodeSet:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->clear()V

    .line 1345
    iput-object v3, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mConnectedNodeSet:Ljava/util/Set;

    .line 1348
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->notifyNodeSetChanged()V

    .line 1351
    return-void

    .line 1312
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method varargs declared-synchronized sendEvent(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$Event;[Ljava/lang/Object;)V
    .locals 8
    .param p1, "event"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$Event;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    .line 1802
    monitor-enter p0

    :try_start_0
    sget-object v5, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$1;->$SwitchMap$com$sonymobile$cameracommon$wifip2pcontroller$negotiation$NetworkStateMachine$Event:[I

    invoke-virtual {p1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$Event;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 1912
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Un-Expected Event : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1802
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 1805
    :pswitch_0
    :try_start_1
    iget-object v5, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mCurrentState:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$State;

    invoke-virtual {v5}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$State;->handleInitialize()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1914
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1809
    :pswitch_1
    :try_start_2
    iget-object v5, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mCurrentState:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$State;

    invoke-virtual {v5}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$State;->handleRelease()V

    goto :goto_0

    .line 1814
    :pswitch_2
    iget-object v5, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mCurrentState:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$State;

    invoke-virtual {v5}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$State;->handleNetworkEnabled()V

    goto :goto_0

    .line 1818
    :pswitch_3
    iget-object v5, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mCurrentState:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$State;

    invoke-virtual {v5}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$State;->handleNetworkDisabled()V

    goto :goto_0

    .line 1823
    :pswitch_4
    iget-object v5, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mCurrentState:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$State;

    invoke-virtual {v5}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$State;->handleOnDiscoveryStarted()V

    goto :goto_0

    .line 1827
    :pswitch_5
    iget-object v5, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mCurrentState:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$State;

    invoke-virtual {v5}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$State;->handleOnDiscoveryStopped()V

    goto :goto_0

    .line 1832
    :pswitch_6
    iget-object v5, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mCurrentState:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$State;

    invoke-virtual {v5}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$State;->handleChannelDisconnected()V

    goto :goto_0

    .line 1836
    :pswitch_7
    iget-object v5, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mCurrentState:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$State;

    invoke-virtual {v5}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$State;->handleNodeConnected()V

    goto :goto_0

    .line 1840
    :pswitch_8
    iget-object v5, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mCurrentState:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$State;

    invoke-virtual {v5}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$State;->handleNodeDisconnected()V

    goto :goto_0

    .line 1845
    :pswitch_9
    const/4 v5, 0x0

    aget-object v4, p2, v5

    check-cast v4, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/ConnectionRequestCallback;

    .line 1846
    .local v4, "waitCallback":Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/ConnectionRequestCallback;
    iget-object v5, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mCurrentState:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$State;

    invoke-virtual {v5, v4}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$State;->handleWaitConnecting(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/ConnectionRequestCallback;)V

    goto :goto_0

    .line 1850
    .end local v4    # "waitCallback":Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/ConnectionRequestCallback;
    :pswitch_a
    iget-object v5, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mCurrentState:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$State;

    invoke-virtual {v5}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$State;->handleCancelWaitConnecting()V

    goto :goto_0

    .line 1857
    :pswitch_b
    const/4 v5, 0x0

    aget-object v2, p2, v5

    check-cast v2, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    .line 1858
    .local v2, "targetNode":Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
    const/4 v5, 0x1

    aget-object v1, p2, v5

    check-cast v1, Ljava/lang/String;

    .line 1859
    .local v1, "ndefPushMacAddress":Ljava/lang/String;
    const/4 v5, 0x2

    aget-object v0, p2, v5

    check-cast v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/ConnectionRequestCallback;

    .line 1860
    .local v0, "callback":Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/ConnectionRequestCallback;
    iget-object v5, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mCurrentState:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$State;

    invoke-virtual {v5, v2, v1, v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$State;->handleRequestConnection(Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;Ljava/lang/String;Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/ConnectionRequestCallback;)V

    goto :goto_0

    .line 1865
    .end local v0    # "callback":Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/ConnectionRequestCallback;
    .end local v1    # "ndefPushMacAddress":Ljava/lang/String;
    .end local v2    # "targetNode":Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
    :pswitch_c
    iget-object v6, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mCurrentState:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$State;

    const/4 v5, 0x0

    aget-object v5, p2, v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v6, v5}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$State;->handleCancelConnection(Z)V

    goto :goto_0

    .line 1870
    :pswitch_d
    iget-object v5, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mCurrentState:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$State;

    invoke-virtual {v5}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$State;->handleNodeChanged()V

    goto :goto_0

    .line 1876
    :pswitch_e
    iget-object v6, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mCurrentState:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$State;

    const/4 v5, 0x0

    aget-object v5, p2, v5

    check-cast v5, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v6, v5}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$State;->handleOnPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V

    goto :goto_0

    .line 1883
    :pswitch_f
    const/4 v3, 0x0

    .line 1884
    .local v3, "thisDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    if-eqz p2, :cond_0

    array-length v5, p2

    if-gt v7, v5, :cond_0

    .line 1885
    const/4 v5, 0x0

    aget-object v3, p2, v5

    .end local v3    # "thisDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    check-cast v3, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1886
    .restart local v3    # "thisDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v5, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mCurrentState:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$State;

    invoke-virtual {v5, v3}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$State;->handleThisNodeChanged(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    goto/16 :goto_0

    .line 1891
    .end local v3    # "thisDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    :pswitch_10
    iget-object v5, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mCurrentState:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$State;

    invoke-virtual {v5}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$State;->handleOnThisNetworkNodeUpdated()V

    goto/16 :goto_0

    .line 1896
    :pswitch_11
    iget-object v5, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mCurrentState:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$State;

    invoke-virtual {v5}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$State;->handleOnChangedToGroupOwner()V

    goto/16 :goto_0

    .line 1900
    :pswitch_12
    iget-object v5, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mCurrentState:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$State;

    invoke-virtual {v5}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$State;->handleOnChangedToGroupClient()V

    goto/16 :goto_0

    .line 1904
    :pswitch_13
    iget-object v5, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mCurrentState:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$State;

    invoke-virtual {v5}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$State;->handleOnChangedToUndefined()V

    goto/16 :goto_0

    .line 1908
    :pswitch_14
    iget-object v5, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mCurrentState:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$State;

    invoke-virtual {v5}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$State;->handleOnPingRequested()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 1802
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method

.method setPassKeyManager(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/PassKeyManager;)V
    .locals 0
    .param p1, "passKeyManager"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/PassKeyManager;

    .prologue
    .line 1389
    iput-object p1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mPassKeyManager:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/PassKeyManager;

    .line 1390
    return-void
.end method

.method updateThisNode(Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;)V
    .locals 2
    .param p1, "thisNode"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    .prologue
    .line 1382
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mThisNode:Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->getStateUpdator()Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdator;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->getPublicOpenedStreamSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdator;->setPublicOpenedStreamSet(Ljava/util/Set;)Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdator;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->getRequiredStreams()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdator;->setRequiredStreamSet(Ljava/util/Set;)Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdator;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdator;->done()V

    .line 1386
    return-void
.end method
