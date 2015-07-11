.class Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStartShortTimeDiscoveryTask$StartShortTimeDiscoveryCallback;
.super Ljava/lang/Object;
.source "NetworkStateMachine.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStartShortTimeDiscoveryTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartShortTimeDiscoveryCallback"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStartShortTimeDiscoveryTask;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStartShortTimeDiscoveryTask;)V
    .locals 0

    .prologue
    .line 1597
    iput-object p1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStartShortTimeDiscoveryTask$StartShortTimeDiscoveryCallback;->this$1:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStartShortTimeDiscoveryTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStartShortTimeDiscoveryTask;Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStartShortTimeDiscoveryTask;
    .param p2, "x1"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$1;

    .prologue
    .line 1597
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStartShortTimeDiscoveryTask$StartShortTimeDiscoveryCallback;-><init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStartShortTimeDiscoveryTask;)V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 4
    .param p1, "error"    # I

    .prologue
    .line 1616
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStartShortTimeDiscoveryTask$StartShortTimeDiscoveryCallback;->this$1:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStartShortTimeDiscoveryTask;

    iget-object v0, v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStartShortTimeDiscoveryTask;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;

    # getter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;->mBackWorker:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;->access$4400(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStartShortTimeDiscoveryTask$StartShortTimeDiscoveryCallback;->this$1:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStartShortTimeDiscoveryTask;

    iget-object v0, v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStartShortTimeDiscoveryTask;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;

    # getter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;->mStopShortTimeDiscoveryTask:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStopShortTimeDiscoveryTask;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;->access$4900(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;)Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStopShortTimeDiscoveryTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1617
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStartShortTimeDiscoveryTask$StartShortTimeDiscoveryCallback;->this$1:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStartShortTimeDiscoveryTask;

    iget-object v0, v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStartShortTimeDiscoveryTask;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;

    # getter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;->mBackWorker:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;->access$4400(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStartShortTimeDiscoveryTask$StartShortTimeDiscoveryCallback;->this$1:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStartShortTimeDiscoveryTask;

    iget-object v1, v1, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStartShortTimeDiscoveryTask;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;

    # getter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;->mStopShortTimeDiscoveryTask:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStopShortTimeDiscoveryTask;
    invoke-static {v1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;->access$4900(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;)Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStopShortTimeDiscoveryTask;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1621
    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 4

    .prologue
    .line 1603
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStartShortTimeDiscoveryTask$StartShortTimeDiscoveryCallback;->this$1:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStartShortTimeDiscoveryTask;

    iget-object v0, v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStartShortTimeDiscoveryTask;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;

    # getter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;->mBackWorker:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;->access$4400(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStartShortTimeDiscoveryTask$StartShortTimeDiscoveryCallback;->this$1:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStartShortTimeDiscoveryTask;

    iget-object v0, v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStartShortTimeDiscoveryTask;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;

    # getter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;->mStopShortTimeDiscoveryTask:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStopShortTimeDiscoveryTask;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;->access$4900(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;)Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStopShortTimeDiscoveryTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1604
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStartShortTimeDiscoveryTask$StartShortTimeDiscoveryCallback;->this$1:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStartShortTimeDiscoveryTask;

    iget-object v0, v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStartShortTimeDiscoveryTask;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;

    # getter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;->mBackWorker:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;->access$4400(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStartShortTimeDiscoveryTask$StartShortTimeDiscoveryCallback;->this$1:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStartShortTimeDiscoveryTask;

    iget-object v1, v1, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStartShortTimeDiscoveryTask;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;

    # getter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;->mStopShortTimeDiscoveryTask:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStopShortTimeDiscoveryTask;
    invoke-static {v1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;->access$4900(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;)Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStopShortTimeDiscoveryTask;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1608
    :cond_0
    return-void
.end method
