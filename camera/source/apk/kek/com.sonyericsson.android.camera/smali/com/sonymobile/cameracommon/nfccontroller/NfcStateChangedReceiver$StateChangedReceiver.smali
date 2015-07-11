.class Lcom/sonymobile/cameracommon/nfccontroller/NfcStateChangedReceiver$StateChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NfcStateChangedReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/nfccontroller/NfcStateChangedReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/cameracommon/nfccontroller/NfcStateChangedReceiver;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/nfccontroller/NfcStateChangedReceiver;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/sonymobile/cameracommon/nfccontroller/NfcStateChangedReceiver$StateChangedReceiver;->this$0:Lcom/sonymobile/cameracommon/nfccontroller/NfcStateChangedReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/nfccontroller/NfcStateChangedReceiver;Lcom/sonymobile/cameracommon/nfccontroller/NfcStateChangedReceiver$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/nfccontroller/NfcStateChangedReceiver;
    .param p2, "x1"    # Lcom/sonymobile/cameracommon/nfccontroller/NfcStateChangedReceiver$1;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/nfccontroller/NfcStateChangedReceiver$StateChangedReceiver;-><init>(Lcom/sonymobile/cameracommon/nfccontroller/NfcStateChangedReceiver;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 28
    const-string v1, "android.nfc.extra.ADAPTER_STATE"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 29
    .local v0, "state":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 30
    iget-object v1, p0, Lcom/sonymobile/cameracommon/nfccontroller/NfcStateChangedReceiver$StateChangedReceiver;->this$0:Lcom/sonymobile/cameracommon/nfccontroller/NfcStateChangedReceiver;

    # getter for: Lcom/sonymobile/cameracommon/nfccontroller/NfcStateChangedReceiver;->mStateCallback:Lcom/sonymobile/cameracommon/nfccontroller/NfcStateCallback;
    invoke-static {v1}, Lcom/sonymobile/cameracommon/nfccontroller/NfcStateChangedReceiver;->access$100(Lcom/sonymobile/cameracommon/nfccontroller/NfcStateChangedReceiver;)Lcom/sonymobile/cameracommon/nfccontroller/NfcStateCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonymobile/cameracommon/nfccontroller/NfcStateCallback;->onTurnOn()V

    .line 34
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 32
    iget-object v1, p0, Lcom/sonymobile/cameracommon/nfccontroller/NfcStateChangedReceiver$StateChangedReceiver;->this$0:Lcom/sonymobile/cameracommon/nfccontroller/NfcStateChangedReceiver;

    # getter for: Lcom/sonymobile/cameracommon/nfccontroller/NfcStateChangedReceiver;->mStateCallback:Lcom/sonymobile/cameracommon/nfccontroller/NfcStateCallback;
    invoke-static {v1}, Lcom/sonymobile/cameracommon/nfccontroller/NfcStateChangedReceiver;->access$100(Lcom/sonymobile/cameracommon/nfccontroller/NfcStateChangedReceiver;)Lcom/sonymobile/cameracommon/nfccontroller/NfcStateCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonymobile/cameracommon/nfccontroller/NfcStateCallback;->onTurnOff()V

    goto :goto_0
.end method
