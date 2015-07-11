.class Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient$NegoReceiveCallback;
.super Ljava/lang/Object;
.source "NetworkStateMachine.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/wifip2pcontroller/communication/MessageReceivedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NegoReceiveCallback"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient;)V
    .locals 0

    .prologue
    .line 1091
    iput-object p1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient$NegoReceiveCallback;->this$1:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient;Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient;
    .param p2, "x1"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$1;

    .prologue
    .line 1091
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient$NegoReceiveCallback;-><init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient;)V

    return-void
.end method


# virtual methods
.method public onMessageReceived([BLjava/lang/String;)V
    .locals 4
    .param p1, "message"    # [B
    .param p2, "ipAddress"    # Ljava/lang/String;

    .prologue
    .line 1097
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v2}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoMsg;->decodeFromJson(Ljava/lang/String;)Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoMsg;

    move-result-object v0

    .line 1098
    .local v0, "negoMsg":Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoMsg;
    if-nez v0, :cond_0

    .line 1127
    :goto_0
    return-void

    .line 1108
    :cond_0
    sget-object v2, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$1;->$SwitchMap$com$sonymobile$cameracommon$wifip2pcontroller$common$NegotiationMessage$NegoType:[I

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoMsg;->getMessageType()Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1122
    :pswitch_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Client state received GROUP_CLIENT_IDENTIFIER"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1113
    :pswitch_1
    new-instance v1, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient$HandleNodeStateUpdateTask;

    iget-object v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient$NegoReceiveCallback;->this$1:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient;

    invoke-direct {v1, v2, v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient$HandleNodeStateUpdateTask;-><init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient;Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoMsg;)V

    .line 1114
    .local v1, "task":Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient$HandleNodeStateUpdateTask;
    iget-object v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient$NegoReceiveCallback;->this$1:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient;

    iget-object v2, v2, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;

    # getter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->mBackHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;->access$100(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1118
    .end local v1    # "task":Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$StateGroupClient$HandleNodeStateUpdateTask;
    :pswitch_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Client state received CONNECTION_REQUEST"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1108
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
