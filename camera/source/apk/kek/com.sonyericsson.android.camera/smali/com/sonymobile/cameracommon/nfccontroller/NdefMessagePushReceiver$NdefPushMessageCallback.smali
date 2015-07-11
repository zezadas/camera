.class Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver$NdefPushMessageCallback;
.super Ljava/lang/Object;
.source "NdefMessagePushReceiver.java"

# interfaces
.implements Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NdefPushMessageCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver$NdefPushMessageCallback;->this$0:Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;
    .param p2, "x1"    # Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver$1;

    .prologue
    .line 247
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver$NdefPushMessageCallback;-><init>(Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;)V

    return-void
.end method


# virtual methods
.method public createNdefMessage(Landroid/nfc/NfcEvent;)Landroid/nfc/NdefMessage;
    .locals 1
    .param p1, "nfcEvent"    # Landroid/nfc/NfcEvent;

    .prologue
    .line 251
    iget-object v0, p0, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver$NdefPushMessageCallback;->this$0:Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;

    # getter for: Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;->mPushMessage:Landroid/nfc/NdefMessage;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;->access$100(Lcom/sonymobile/cameracommon/nfccontroller/NdefMessagePushReceiver;)Landroid/nfc/NdefMessage;

    move-result-object v0

    return-object v0
.end method
