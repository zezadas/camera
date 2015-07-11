.class public Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;
.super Ljava/lang/Object;
.source "WifiNetworkEnvironment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$1;,
        Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectivityChangedCallbackImpl;,
        Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$WifiConnectionStatusCallbackImpl;,
        Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectRetryTask;,
        Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectionState;
    }
.end annotation


# static fields
.field private static final CONNECTING_RETRY_COUNT:I = 0x3c

.field private static final CONNECTING_RETRY_INTERVAL:I = 0x3e8

.field private static final CONNECTING_TIMEOUT:I = 0xea60

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBackHandler:Landroid/os/Handler;

.field private mBackThread:Landroid/os/HandlerThread;

.field private mBroadcastReceiver:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiStateChangedBroadcastReceiver;

.field private mCallback:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiConnectionRequestCallback;

.field private mConnectRetryTask:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectRetryTask;

.field private mConnectivityBroadcastReceiver:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/ConnectivityChangedBroadcastReceiver;

.field private mIsConnectedInfoByConnectivityManager:Z

.field private mIsWifiDeviceEnabled:Z

.field private mRetryCount:I

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 40
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mBroadcastReceiver:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiStateChangedBroadcastReceiver;

    .line 42
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mConnectivityBroadcastReceiver:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/ConnectivityChangedBroadcastReceiver;

    .line 44
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mCallback:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiConnectionRequestCallback;

    .line 50
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mIsWifiDeviceEnabled:Z

    .line 53
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mBackThread:Landroid/os/HandlerThread;

    .line 56
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mBackHandler:Landroid/os/Handler;

    .line 59
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mIsConnectedInfoByConnectivityManager:Z

    .line 61
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mConnectRetryTask:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectRetryTask;

    .line 62
    iput v1, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mRetryCount:I

    .line 308
    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;

    .prologue
    .line 28
    iget v0, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mRetryCount:I

    return v0
.end method

.method static synthetic access$208(Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;)I
    .locals 2
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;

    .prologue
    .line 28
    iget v0, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mRetryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mRetryCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mBackHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;)Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectRetryTask;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mConnectRetryTask:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectRetryTask;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;)Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiConnectionRequestCallback;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mCallback:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiConnectionRequestCallback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;Ljava/lang/String;)Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectionState;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->checkState(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectionState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mIsConnectedInfoByConnectivityManager:Z

    return v0
.end method

.method static synthetic access$702(Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mIsConnectedInfoByConnectivityManager:Z

    return p1
.end method

.method static synthetic access$800(Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;)Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiStateChangedBroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mBroadcastReceiver:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiStateChangedBroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->checkAndScanNetwork(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private checkAndScanNetwork(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "passwd"    # Ljava/lang/String;

    .prologue
    .line 210
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->getCodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, "codedSsid":Ljava/lang/String;
    invoke-direct {p0, p2}, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->getCodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "codedPasswd":Ljava/lang/String;
    iget-object v9, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v6

    .line 215
    .local v6, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v6, :cond_2

    .line 216
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 217
    .local v2, "conf":Landroid/net/wifi/WifiConfiguration;
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 220
    iget v9, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-direct {p0, v9}, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->connect(I)V

    .line 250
    .end local v2    # "conf":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    return-void

    .line 227
    :cond_2
    iget-object v9, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 229
    iget-object v9, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v8

    .line 230
    .local v8, "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v8, :cond_1

    .line 231
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/ScanResult;

    .line 232
    .local v7, "result":Landroid/net/wifi/ScanResult;
    iget-object v9, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 234
    new-instance v3, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v3}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 235
    .local v3, "config":Landroid/net/wifi/WifiConfiguration;
    iput-object v1, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 236
    iget-object v9, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/util/BitSet;->set(I)V

    .line 237
    iput-object v0, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 239
    iget-object v9, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9, v3}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v5

    .line 240
    .local v5, "networkId":I
    if-ltz v5, :cond_1

    .line 245
    invoke-direct {p0, v5}, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->connect(I)V

    goto :goto_0
.end method

.method private checkState(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectionState;
    .locals 4
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->getCodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "codedSsid":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 184
    .local v1, "currentConnection":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 188
    sget-object v2, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$1;->$SwitchMap$android$net$wifi$SupplicantState:[I

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 206
    :cond_0
    sget-object v2, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectionState;->DISCONNECTED:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectionState;

    :goto_0
    return-object v2

    .line 190
    :pswitch_0
    sget-object v2, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectionState;->CONNECTED:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectionState;

    goto :goto_0

    .line 201
    :pswitch_1
    sget-object v2, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectionState;->CONNECTING:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectionState;

    goto :goto_0

    .line 188
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private connect(I)V
    .locals 2
    .param p1, "networkId"    # I

    .prologue
    .line 253
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 254
    sget-object v0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->TAG:Ljava/lang/String;

    const-string v1, "Failed enable network."

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    move-result v0

    if-nez v0, :cond_2

    .line 258
    sget-object v0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->TAG:Ljava/lang/String;

    const-string v1, "Failed save configuration."

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 261
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->reconnect()Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    sget-object v0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->TAG:Ljava/lang/String;

    const-string v1, "Failed save configuration."

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private disable()V
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 356
    return-void
.end method

.method private getCodedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cancelConnect()V
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mBroadcastReceiver:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiStateChangedBroadcastReceiver;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiStateChangedBroadcastReceiver;->stopReceiver()V

    .line 274
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mBackHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mConnectRetryTask:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectRetryTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 275
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mConnectRetryTask:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectRetryTask;

    .line 277
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    sget-object v0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->TAG:Ljava/lang/String;

    const-string v1, "Failed cancel connection."

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_0
    return-void
.end method

.method public enable()Z
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    const/4 v0, 0x0

    .line 350
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v0

    goto :goto_0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 77
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "WifiRemoteBackWorker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mBackThread:Landroid/os/HandlerThread;

    .line 78
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mBackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 79
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mBackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mBackHandler:Landroid/os/Handler;

    .line 80
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 83
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->enable()Z

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mIsWifiDeviceEnabled:Z

    .line 91
    :goto_0
    new-instance v0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiStateChangedBroadcastReceiver;

    new-instance v1, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$WifiConnectionStatusCallbackImpl;

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$WifiConnectionStatusCallbackImpl;-><init>(Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$1;)V

    invoke-direct {v0, p1, v1}, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiStateChangedBroadcastReceiver;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiConnectionStatusCallback;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mBroadcastReceiver:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiStateChangedBroadcastReceiver;

    .line 93
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mBroadcastReceiver:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiStateChangedBroadcastReceiver;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiStateChangedBroadcastReceiver;->initialize()V

    .line 94
    new-instance v0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/ConnectivityChangedBroadcastReceiver;

    new-instance v1, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectivityChangedCallbackImpl;

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectivityChangedCallbackImpl;-><init>(Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$1;)V

    invoke-direct {v0, p1, v1}, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/ConnectivityChangedBroadcastReceiver;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/wificontroller/negotiation/ConnectivityChangedBroadcastReceiver$ConnectivityChangedCallback;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mConnectivityBroadcastReceiver:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/ConnectivityChangedBroadcastReceiver;

    .line 96
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mConnectivityBroadcastReceiver:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/ConnectivityChangedBroadcastReceiver;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/ConnectivityChangedBroadcastReceiver;->initialize()V

    .line 97
    return-void

    .line 87
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mIsWifiDeviceEnabled:Z

    goto :goto_0
.end method

.method public isWifiUnavailable()V
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    .line 360
    return-void
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 320
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mConnectRetryTask:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectRetryTask;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mBackHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mConnectRetryTask:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectRetryTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 322
    iput-object v2, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mConnectRetryTask:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectRetryTask;

    .line 325
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mIsWifiDeviceEnabled:Z

    if-nez v0, :cond_1

    .line 326
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->disable()V

    .line 329
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mBroadcastReceiver:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiStateChangedBroadcastReceiver;

    if-eqz v0, :cond_2

    .line 330
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mBroadcastReceiver:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiStateChangedBroadcastReceiver;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiStateChangedBroadcastReceiver;->release()V

    .line 331
    iput-object v2, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mBroadcastReceiver:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiStateChangedBroadcastReceiver;

    .line 334
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mConnectivityBroadcastReceiver:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/ConnectivityChangedBroadcastReceiver;

    if-eqz v0, :cond_3

    .line 335
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mConnectivityBroadcastReceiver:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/ConnectivityChangedBroadcastReceiver;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/ConnectivityChangedBroadcastReceiver;->release()V

    .line 336
    iput-object v2, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mConnectivityBroadcastReceiver:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/ConnectivityChangedBroadcastReceiver;

    .line 337
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mIsConnectedInfoByConnectivityManager:Z

    .line 341
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mBackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 342
    iput-object v2, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mBackThread:Landroid/os/HandlerThread;

    .line 343
    iput-object v2, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mBackHandler:Landroid/os/Handler;

    .line 344
    return-void
.end method

.method public requestConnect(Ljava/lang/String;Ljava/lang/String;Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiConnectionRequestCallback;)V
    .locals 3
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "passwd"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiConnectionRequestCallback;

    .prologue
    .line 100
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mCallback:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiConnectionRequestCallback;

    .line 102
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mBroadcastReceiver:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiStateChangedBroadcastReceiver;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiStateChangedBroadcastReceiver;->stopReceiver()V

    .line 104
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mBackHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mConnectRetryTask:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectRetryTask;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 105
    const/4 v0, 0x0

    .line 106
    .local v0, "shouldWaitConnectivityManagerNotify":Z
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->checkState(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectionState;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectionState;->CONNECTED:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectionState;

    if-eq v1, v2, :cond_0

    .line 107
    const/4 v0, 0x1

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mConnectivityBroadcastReceiver:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/ConnectivityChangedBroadcastReceiver;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/ConnectivityChangedBroadcastReceiver;->setTargetSsid(Ljava/lang/String;)V

    .line 110
    new-instance v1, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectRetryTask;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectRetryTask;-><init>(Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mConnectRetryTask:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectRetryTask;

    .line 111
    const/4 v1, 0x0

    iput v1, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mRetryCount:I

    .line 112
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mBackHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mConnectRetryTask:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectRetryTask;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 113
    return-void
.end method
