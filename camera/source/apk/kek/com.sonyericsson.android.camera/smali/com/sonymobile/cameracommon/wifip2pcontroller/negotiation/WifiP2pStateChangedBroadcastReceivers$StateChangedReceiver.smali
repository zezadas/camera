.class Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers$StateChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiP2pStateChangedBroadcastReceivers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers$StateChangedReceiver;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;
    .param p2, "x1"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers$1;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers$StateChangedReceiver;-><init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 37
    const-string v1, "wifi_p2p_state"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 38
    .local v0, "state":I
    packed-switch v0, :pswitch_data_0

    .line 51
    iget-object v1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers$StateChangedReceiver;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;

    # getter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;->mStateMachineEventPost:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$EventPost;
    invoke-static {v1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;->access$100(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;)Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$EventPost;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$Event;->NETWORK_DISABLED:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$Event;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$EventPost;->postEvent(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$Event;[Ljava/lang/Object;)V

    .line 55
    :goto_0
    return-void

    .line 42
    :pswitch_0
    iget-object v1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers$StateChangedReceiver;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;

    # getter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;->mStateMachineEventPost:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$EventPost;
    invoke-static {v1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;->access$100(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;)Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$EventPost;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$Event;->NETWORK_ENABLED:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$Event;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$EventPost;->postEvent(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$Event;[Ljava/lang/Object;)V

    goto :goto_0

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
