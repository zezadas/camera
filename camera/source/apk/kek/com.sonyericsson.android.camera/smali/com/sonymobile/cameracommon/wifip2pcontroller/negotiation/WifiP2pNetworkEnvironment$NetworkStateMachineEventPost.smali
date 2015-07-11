.class Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment$NetworkStateMachineEventPost;
.super Ljava/lang/Object;
.source "WifiP2pNetworkEnvironment.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$EventPost;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkStateMachineEventPost"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment$NetworkStateMachineEventPost;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;
    .param p2, "x1"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment$1;

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment$NetworkStateMachineEventPost;-><init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;)V

    return-void
.end method


# virtual methods
.method public varargs postEvent(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$Event;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "event"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$Event;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment$NetworkStateMachineEventPost;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;->sendEventAsyncToStateMachine(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$Event;[Ljava/lang/Object;)V

    .line 132
    return-void
.end method
