.class Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment$SendEventToStateMachineTask;
.super Ljava/lang/Object;
.source "WifiP2pNetworkEnvironment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SendEventToStateMachineTask"
.end annotation


# instance fields
.field private final mArgs:[Ljava/lang/Object;

.field private final mEvent:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$Event;

.field private final mStateMachine:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;


# direct methods
.method varargs constructor <init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$Event;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "stateMachine"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;
    .param p2, "event"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$Event;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment$SendEventToStateMachineTask;->mStateMachine:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    .line 155
    iput-object p2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment$SendEventToStateMachineTask;->mEvent:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$Event;

    .line 156
    iput-object p3, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment$SendEventToStateMachineTask;->mArgs:[Ljava/lang/Object;

    .line 157
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 161
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment$SendEventToStateMachineTask;->mStateMachine:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment$SendEventToStateMachineTask;->mEvent:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$Event;

    iget-object v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/WifiP2pNetworkEnvironment$SendEventToStateMachineTask;->mArgs:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->sendEvent(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$Event;[Ljava/lang/Object;)V

    .line 162
    return-void
.end method
