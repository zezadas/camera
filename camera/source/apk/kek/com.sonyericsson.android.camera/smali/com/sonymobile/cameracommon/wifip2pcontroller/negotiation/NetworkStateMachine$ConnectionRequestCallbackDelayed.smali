.class Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ConnectionRequestCallbackDelayed;
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
    name = "ConnectionRequestCallbackDelayed"
.end annotation


# instance fields
.field private final mCallback:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/ConnectionRequestCallback;

.field final synthetic this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;


# direct methods
.method public constructor <init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/ConnectionRequestCallback;)V
    .locals 0
    .param p2, "callback"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/ConnectionRequestCallback;

    .prologue
    .line 1783
    iput-object p1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ConnectionRequestCallbackDelayed;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1784
    iput-object p2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ConnectionRequestCallbackDelayed;->mCallback:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/ConnectionRequestCallback;

    .line 1785
    return-void
.end method


# virtual methods
.method public onNodeConnected(Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;)V
    .locals 1
    .param p1, "networkNode"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    .prologue
    .line 1788
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ConnectionRequestCallbackDelayed;->mCallback:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/ConnectionRequestCallback;

    invoke-interface {v0, p1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/ConnectionRequestCallback;->onNodeConnected(Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;)V

    .line 1789
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 1793
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$ConnectionRequestCallbackDelayed;->mCallback:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/ConnectionRequestCallback;

    invoke-interface {v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/ConnectionRequestCallback;->onNodeConnectionFailed()V

    .line 1794
    return-void
.end method
