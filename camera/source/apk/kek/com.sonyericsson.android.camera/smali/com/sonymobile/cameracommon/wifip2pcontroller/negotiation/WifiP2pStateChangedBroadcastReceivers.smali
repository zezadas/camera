.class public Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;
.super Ljava/lang/Object;
.source "WifiP2pStateChangedBroadcastReceivers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers$1;,
        Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers$DiscoveryChangedReceiver;,
        Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers$ThisDeviceChangedReceiver;,
        Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers$ConnectionChangedReceiver;,
        Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers$PeersChangedReceiver;,
        Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers$StateChangedReceiver;
    }
.end annotation


# static fields
.field private static final IS_DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mConnectionChangedReceiver:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers$ConnectionChangedReceiver;

.field private mContext:Landroid/content/Context;

.field private mDiscoveryChangedReceiver:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers$DiscoveryChangedReceiver;

.field private mPeersChangedReceiver:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers$PeersChangedReceiver;

.field private mStateChangedReceiver:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers$StateChangedReceiver;

.field private mStateMachineEventPost:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$EventPost;

.field private mThisDeviceChangedReceiver:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers$ThisDeviceChangedReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;->mContext:Landroid/content/Context;

    .line 29
    iput-object v1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;->mStateMachineEventPost:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$EventPost;

    .line 31
    new-instance v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers$StateChangedReceiver;

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers$StateChangedReceiver;-><init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers$1;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;->mStateChangedReceiver:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers$StateChangedReceiver;

    .line 58
    new-instance v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers$PeersChangedReceiver;

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers$PeersChangedReceiver;-><init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers$1;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;->mPeersChangedReceiver:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers$PeersChangedReceiver;

    .line 69
    new-instance v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers$ConnectionChangedReceiver;

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers$ConnectionChangedReceiver;-><init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers$1;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;->mConnectionChangedReceiver:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers$ConnectionChangedReceiver;

    .line 95
    new-instance v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers$ThisDeviceChangedReceiver;

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers$ThisDeviceChangedReceiver;-><init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers$1;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;->mThisDeviceChangedReceiver:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers$ThisDeviceChangedReceiver;

    .line 111
    new-instance v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers$DiscoveryChangedReceiver;

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers$DiscoveryChangedReceiver;-><init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers$1;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;->mDiscoveryChangedReceiver:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers$DiscoveryChangedReceiver;

    .line 140
    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;)Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$EventPost;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;->mStateMachineEventPost:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$EventPost;

    return-object v0
.end method


# virtual methods
.method public initialize(Landroid/content/Context;Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$EventPost;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "eventPost"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$EventPost;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;->mContext:Landroid/content/Context;

    .line 147
    iput-object p2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;->mStateMachineEventPost:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$EventPost;

    .line 150
    new-instance v3, Landroid/content/IntentFilter;

    const-string v5, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-direct {v3, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 152
    .local v3, "stateChangedFilter":Landroid/content/IntentFilter;
    new-instance v2, Landroid/content/IntentFilter;

    const-string v5, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-direct {v2, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 154
    .local v2, "peersChangedFilter":Landroid/content/IntentFilter;
    new-instance v0, Landroid/content/IntentFilter;

    const-string v5, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-direct {v0, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 156
    .local v0, "connectionChangedFilter":Landroid/content/IntentFilter;
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 158
    .local v4, "thisDeviceChangedFilter":Landroid/content/IntentFilter;
    new-instance v1, Landroid/content/IntentFilter;

    const-string v5, "android.net.wifi.p2p.DISCOVERY_STATE_CHANGE"

    invoke-direct {v1, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 162
    .local v1, "discoveryChangedFilter":Landroid/content/IntentFilter;
    iget-object v5, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;->mStateChangedReceiver:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers$StateChangedReceiver;

    invoke-virtual {p1, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 163
    iget-object v5, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;->mPeersChangedReceiver:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers$PeersChangedReceiver;

    invoke-virtual {p1, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 164
    iget-object v5, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;->mConnectionChangedReceiver:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers$ConnectionChangedReceiver;

    invoke-virtual {p1, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 165
    iget-object v5, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;->mThisDeviceChangedReceiver:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers$ThisDeviceChangedReceiver;

    invoke-virtual {p1, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 166
    iget-object v5, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;->mDiscoveryChangedReceiver:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers$DiscoveryChangedReceiver;

    invoke-virtual {p1, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 169
    return-void
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 179
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;->mStateChangedReceiver:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers$StateChangedReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 180
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;->mPeersChangedReceiver:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers$PeersChangedReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 181
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;->mConnectionChangedReceiver:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers$ConnectionChangedReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 182
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;->mThisDeviceChangedReceiver:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers$ThisDeviceChangedReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 183
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;->mDiscoveryChangedReceiver:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers$DiscoveryChangedReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 185
    iput-object v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;->mContext:Landroid/content/Context;

    .line 186
    iput-object v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;->mStateMachineEventPost:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$EventPost;

    .line 187
    return-void
.end method
