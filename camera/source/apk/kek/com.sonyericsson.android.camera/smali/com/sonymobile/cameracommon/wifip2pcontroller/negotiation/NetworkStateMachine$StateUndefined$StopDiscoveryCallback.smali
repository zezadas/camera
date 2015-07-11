.class Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateUndefined$StopDiscoveryCallback;
.super Ljava/lang/Object;
.source "NetworkStateMachine.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateUndefined;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StopDiscoveryCallback"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateUndefined;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateUndefined;)V
    .locals 0

    .prologue
    .line 454
    iput-object p1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateUndefined$StopDiscoveryCallback;->this$1:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateUndefined;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateUndefined;Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateUndefined;
    .param p2, "x1"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$1;

    .prologue
    .line 454
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateUndefined$StopDiscoveryCallback;-><init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateUndefined;)V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .prologue
    .line 465
    return-void
.end method

.method public onSuccess()V
    .locals 0

    .prologue
    .line 458
    return-void
.end method
