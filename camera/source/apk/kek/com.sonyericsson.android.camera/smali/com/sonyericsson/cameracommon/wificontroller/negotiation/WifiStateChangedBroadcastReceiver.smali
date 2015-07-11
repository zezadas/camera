.class public Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiStateChangedBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiStateChangedBroadcastReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCallback:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiConnectionStatusCallback;

.field private mContext:Landroid/content/Context;

.field private mIsReceiveStarted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiStateChangedBroadcastReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiStateChangedBroadcastReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiConnectionStatusCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiConnectionStatusCallback;

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiStateChangedBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 30
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiStateChangedBroadcastReceiver;->mCallback:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiConnectionStatusCallback;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiStateChangedBroadcastReceiver;->mIsReceiveStarted:Z

    .line 40
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiStateChangedBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiStateChangedBroadcastReceiver;->mCallback:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiConnectionStatusCallback;

    .line 42
    return-void
.end method


# virtual methods
.method public initialize()V
    .locals 2

    .prologue
    .line 49
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiStateChangedBroadcastReceiver;->mIsReceiveStarted:Z

    .line 50
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 51
    .local v0, "intentFileter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52
    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiStateChangedBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 54
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 80
    iget-boolean v3, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiStateChangedBroadcastReceiver;->mIsReceiveStarted:Z

    if-nez v3, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 86
    const-string v3, "supplicantError"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 87
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiStateChangedBroadcastReceiver;->mCallback:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiConnectionStatusCallback;

    invoke-interface {v3}, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiConnectionStatusCallback;->onConnectionFailed()V

    goto :goto_0

    .line 89
    :cond_2
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 90
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 91
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 94
    const-string v3, "networkInfo"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 95
    .local v2, "info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 97
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 98
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiStateChangedBroadcastReceiver;->mCallback:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiConnectionStatusCallback;

    invoke-interface {v3}, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiConnectionStatusCallback;->onConnected()V

    goto :goto_0

    .line 99
    :cond_3
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    if-nez v3, :cond_0

    .line 100
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiStateChangedBroadcastReceiver;->mCallback:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiConnectionStatusCallback;

    invoke-interface {v3}, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiConnectionStatusCallback;->onDisconnected()V

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiStateChangedBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 63
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiStateChangedBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 64
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiStateChangedBroadcastReceiver;->mCallback:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiConnectionStatusCallback;

    .line 65
    return-void
.end method

.method public startReceiver()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiStateChangedBroadcastReceiver;->mIsReceiveStarted:Z

    .line 69
    return-void
.end method

.method public stopReceiver()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiStateChangedBroadcastReceiver;->mIsReceiveStarted:Z

    .line 73
    return-void
.end method
