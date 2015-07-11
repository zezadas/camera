.class Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver$NdefMessageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NdefMessagePushReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NdefMessageReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver$NdefMessageReceiver;->this$0:Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;
    .param p2, "x1"    # Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver$1;

    .prologue
    .line 265
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver$NdefMessageReceiver;-><init>(Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 271
    const-string v2, "android.nfc.extra.NDEF_MESSAGES"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    .line 272
    .local v1, "msgs":[Landroid/os/Parcelable;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 273
    const/4 v2, 0x0

    aget-object v0, v1, v2

    check-cast v0, Landroid/nfc/NdefMessage;

    .line 274
    .local v0, "msg":Landroid/nfc/NdefMessage;
    if-eqz v0, :cond_0

    .line 280
    iget-object v2, p0, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver$NdefMessageReceiver;->this$0:Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;

    # getter for: Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;->mCallback:Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver$OnNdefMessageReceivedCallback;
    invoke-static {v2}, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;->access$300(Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;)Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver$OnNdefMessageReceivedCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 281
    iget-object v2, p0, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver$NdefMessageReceiver;->this$0:Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;

    # getter for: Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;->mCallback:Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver$OnNdefMessageReceivedCallback;
    invoke-static {v2}, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;->access$300(Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;)Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver$OnNdefMessageReceivedCallback;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver$OnNdefMessageReceivedCallback;->onNdefMessageReceived(Landroid/nfc/NdefMessage;)V

    .line 285
    .end local v0    # "msg":Landroid/nfc/NdefMessage;
    :cond_0
    return-void
.end method
