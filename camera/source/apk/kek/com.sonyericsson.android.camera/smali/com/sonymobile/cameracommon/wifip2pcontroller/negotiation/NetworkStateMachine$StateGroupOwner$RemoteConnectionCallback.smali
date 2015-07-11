.class Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner$RemoteConnectionCallback;
.super Ljava/lang/Object;
.source "NetworkStateMachine.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/ConnectionRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteConnectionCallback"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;)V
    .locals 0

    .prologue
    .line 814
    iput-object p1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner$RemoteConnectionCallback;->this$1:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;
    .param p2, "x1"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$1;

    .prologue
    .line 814
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner$RemoteConnectionCallback;-><init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;)V

    return-void
.end method


# virtual methods
.method public onNodeConnected(Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;)V
    .locals 1
    .param p1, "networkNode"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    .prologue
    .line 820
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner$RemoteConnectionCallback;->this$1:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupOwner;->ping()V

    .line 821
    return-void
.end method

.method public onNodeConnectionFailed()V
    .locals 0

    .prologue
    .line 826
    return-void
.end method
