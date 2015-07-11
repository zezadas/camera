.class public Lcom/sonymobile/cameracommon/nfccontroller/NfcStateChangedReceiver;
.super Ljava/lang/Object;
.source "NfcStateChangedReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/nfccontroller/NfcStateChangedReceiver$1;,
        Lcom/sonymobile/cameracommon/nfccontroller/NfcStateChangedReceiver$StateChangedReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mStateCallback:Lcom/sonymobile/cameracommon/nfccontroller/NfcStateCallback;

.field private mStateChangedReceiver:Lcom/sonymobile/cameracommon/nfccontroller/NfcStateChangedReceiver$StateChangedReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/sonymobile/cameracommon/nfccontroller/NfcStateChangedReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/nfccontroller/NfcStateChangedReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/sonymobile/cameracommon/nfccontroller/NfcStateChangedReceiver$StateChangedReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/cameracommon/nfccontroller/NfcStateChangedReceiver$StateChangedReceiver;-><init>(Lcom/sonymobile/cameracommon/nfccontroller/NfcStateChangedReceiver;Lcom/sonymobile/cameracommon/nfccontroller/NfcStateChangedReceiver$1;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/nfccontroller/NfcStateChangedReceiver;->mStateChangedReceiver:Lcom/sonymobile/cameracommon/nfccontroller/NfcStateChangedReceiver$StateChangedReceiver;

    .line 25
    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/cameracommon/nfccontroller/NfcStateChangedReceiver;)Lcom/sonymobile/cameracommon/nfccontroller/NfcStateCallback;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/nfccontroller/NfcStateChangedReceiver;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/sonymobile/cameracommon/nfccontroller/NfcStateChangedReceiver;->mStateCallback:Lcom/sonymobile/cameracommon/nfccontroller/NfcStateCallback;

    return-object v0
.end method


# virtual methods
.method public initialize(Landroid/content/Context;Lcom/sonymobile/cameracommon/nfccontroller/NfcStateCallback;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "stateCallback"    # Lcom/sonymobile/cameracommon/nfccontroller/NfcStateCallback;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/sonymobile/cameracommon/nfccontroller/NfcStateChangedReceiver;->mContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/sonymobile/cameracommon/nfccontroller/NfcStateChangedReceiver;->mStateCallback:Lcom/sonymobile/cameracommon/nfccontroller/NfcStateCallback;

    .line 45
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 49
    .local v0, "stateChangedFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/sonymobile/cameracommon/nfccontroller/NfcStateChangedReceiver;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonymobile/cameracommon/nfccontroller/NfcStateChangedReceiver;->mStateChangedReceiver:Lcom/sonymobile/cameracommon/nfccontroller/NfcStateChangedReceiver$StateChangedReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 50
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonymobile/cameracommon/nfccontroller/NfcStateChangedReceiver;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/sonymobile/cameracommon/nfccontroller/NfcStateChangedReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/nfccontroller/NfcStateChangedReceiver;->mStateChangedReceiver:Lcom/sonymobile/cameracommon/nfccontroller/NfcStateChangedReceiver$StateChangedReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/nfccontroller/NfcStateChangedReceiver;->mContext:Landroid/content/Context;

    .line 61
    :cond_0
    return-void
.end method
