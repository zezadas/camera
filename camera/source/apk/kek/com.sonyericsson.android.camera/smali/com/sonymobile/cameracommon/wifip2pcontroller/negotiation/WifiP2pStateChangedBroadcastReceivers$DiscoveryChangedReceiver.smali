.class Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers$DiscoveryChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiP2pStateChangedBroadcastReceivers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DiscoveryChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers$DiscoveryChangedReceiver;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;
    .param p2, "x1"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers$1;

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers$DiscoveryChangedReceiver;-><init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 118
    const-string v1, "discoveryState"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 119
    .local v0, "state":I
    packed-switch v0, :pswitch_data_0

    .line 131
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal Discovery State : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 121
    :pswitch_0
    iget-object v1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers$DiscoveryChangedReceiver;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;

    # getter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;->mStateMachineEventPost:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$EventPost;
    invoke-static {v1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;->access$100(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;)Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$EventPost;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$Event;->ON_DISCOVERY_STARTED:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$Event;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$EventPost;->postEvent(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$Event;[Ljava/lang/Object;)V

    .line 133
    :goto_0
    return-void

    .line 126
    :pswitch_1
    iget-object v1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers$DiscoveryChangedReceiver;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;

    # getter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;->mStateMachineEventPost:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$EventPost;
    invoke-static {v1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;->access$100(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pStateChangedBroadcastReceivers;)Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$EventPost;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$Event;->ON_DISCOVERY_STOPPED:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$Event;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$EventPost;->postEvent(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$Event;[Ljava/lang/Object;)V

    goto :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
