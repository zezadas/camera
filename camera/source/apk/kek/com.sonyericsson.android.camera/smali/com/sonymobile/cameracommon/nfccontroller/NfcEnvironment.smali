.class public Lcom/sonymobile/cameracommon/nfccontroller/NfcEnvironment;
.super Ljava/lang/Object;
.source "NfcEnvironment.java"


# instance fields
.field private mIsNfcDeviceEnableInInitialized:Z

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/nfccontroller/NfcEnvironment;->mIsNfcDeviceEnableInInitialized:Z

    return-void
.end method


# virtual methods
.method public disable()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sonymobile/cameracommon/nfccontroller/NfcEnvironment;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disable()Z

    .line 46
    return-void
.end method

.method public enable()Z
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sonymobile/cameracommon/nfccontroller/NfcEnvironment;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/sonymobile/cameracommon/nfccontroller/NfcEnvironment;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enable()Z

    move-result v0

    .line 41
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/nfccontroller/NfcEnvironment;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 30
    iget-object v0, p0, Lcom/sonymobile/cameracommon/nfccontroller/NfcEnvironment;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/nfccontroller/NfcEnvironment;->mIsNfcDeviceEnableInInitialized:Z

    .line 35
    :goto_0
    return-void

    .line 33
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/nfccontroller/NfcEnvironment;->mIsNfcDeviceEnableInInitialized:Z

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/nfccontroller/NfcEnvironment;->mIsNfcDeviceEnableInInitialized:Z

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/nfccontroller/NfcEnvironment;->enable()Z

    .line 57
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/nfccontroller/NfcEnvironment;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 58
    return-void

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/nfccontroller/NfcEnvironment;->disable()V

    goto :goto_0
.end method
