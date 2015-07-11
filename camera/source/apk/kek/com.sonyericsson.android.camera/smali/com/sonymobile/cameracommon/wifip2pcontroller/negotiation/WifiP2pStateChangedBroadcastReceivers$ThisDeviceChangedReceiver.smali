.class Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers$ThisDeviceChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiP2pStateChangedBroadcastReceivers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThisDeviceChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers$ThisDeviceChangedReceiver;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;
    .param p2, "x1"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers$1;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers$ThisDeviceChangedReceiver;-><init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 102
    const-string v1, "wifiP2pDevice"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 105
    .local v0, "thisDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers$ThisDeviceChangedReceiver;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;

    # getter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;->mStateMachineEventPost:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$EventPost;
    invoke-static {v1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;->access$100(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;)Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$EventPost;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$Event;->THIS_NODE_CHANGED:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$Event;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$EventPost;->postEvent(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$Event;[Ljava/lang/Object;)V

    .line 108
    return-void
.end method
