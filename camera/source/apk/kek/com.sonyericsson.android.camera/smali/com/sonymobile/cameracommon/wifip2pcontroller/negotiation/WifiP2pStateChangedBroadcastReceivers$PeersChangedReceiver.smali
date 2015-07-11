.class Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers$PeersChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiP2pStateChangedBroadcastReceivers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PeersChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers$PeersChangedReceiver;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;
    .param p2, "x1"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers$1;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers$PeersChangedReceiver;-><init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers$PeersChangedReceiver;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;

    # getter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;->mStateMachineEventPost:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$EventPost;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;->access$100(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;)Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$EventPost;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$Event;->NODE_CHANGED:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$Event;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$EventPost;->postEvent(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$Event;[Ljava/lang/Object;)V

    .line 66
    return-void
.end method
