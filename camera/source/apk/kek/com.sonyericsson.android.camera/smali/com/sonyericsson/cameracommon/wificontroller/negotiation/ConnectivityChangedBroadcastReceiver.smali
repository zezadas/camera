.class public Lcom/sonyericsson/cameracommon/wificontroller/negotiation/ConnectivityChangedBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityChangedBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/wificontroller/negotiation/ConnectivityChangedBroadcastReceiver$ConnectivityChangedCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCallback:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/ConnectivityChangedBroadcastReceiver$ConnectivityChangedCallback;

.field private final mContext:Landroid/content/Context;

.field private mIsReleased:Z

.field private mTargetSsid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/ConnectivityChangedBroadcastReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/ConnectivityChangedBroadcastReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/wificontroller/negotiation/ConnectivityChangedBroadcastReceiver$ConnectivityChangedCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/sonyericsson/cameracommon/wificontroller/negotiation/ConnectivityChangedBroadcastReceiver$ConnectivityChangedCallback;

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/ConnectivityChangedBroadcastReceiver;->mIsReleased:Z

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/ConnectivityChangedBroadcastReceiver;->mTargetSsid:Ljava/lang/String;

    .line 50
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/ConnectivityChangedBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/ConnectivityChangedBroadcastReceiver;->mCallback:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/ConnectivityChangedBroadcastReceiver$ConnectivityChangedCallback;

    .line 52
    return-void
.end method

.method public static isSameSsid(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "ssidA"    # Ljava/lang/String;
    .param p1, "ssidB"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 139
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    .line 154
    :cond_0
    :goto_0
    return v0

    .line 142
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    .line 143
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 146
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 154
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public initialize()V
    .locals 2

    .prologue
    .line 58
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 59
    .local v0, "intentFileter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/ConnectivityChangedBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 61
    const-string v1, ""

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/ConnectivityChangedBroadcastReceiver;->mTargetSsid:Ljava/lang/String;

    .line 62
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/ConnectivityChangedBroadcastReceiver;->mIsReleased:Z

    .line 64
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 92
    const/4 v5, 0x0

    .line 93
    .local v5, "isTargetSsidNetworkAvailable":Z
    const-string v7, "connectivity"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 95
    .local v2, "cm":Landroid/net/ConnectivityManager;
    if-eqz v2, :cond_2

    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, "activeInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 99
    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/ConnectivityChangedBroadcastReceiver;->mTargetSsid:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/ConnectivityChangedBroadcastReceiver;->isSameSsid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 104
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    .line 110
    :cond_0
    if-nez v5, :cond_2

    .line 112
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v1

    .local v1, "arr$":[Landroid/net/NetworkInfo;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v6, :cond_2

    aget-object v4, v1, v3

    .line 116
    .local v4, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/ConnectivityChangedBroadcastReceiver;->mTargetSsid:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/ConnectivityChangedBroadcastReceiver;->isSameSsid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 117
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    .line 112
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 125
    .end local v0    # "activeInfo":Landroid/net/NetworkInfo;
    .end local v1    # "arr$":[Landroid/net/NetworkInfo;
    .end local v3    # "i$":I
    .end local v4    # "info":Landroid/net/NetworkInfo;
    .end local v6    # "len$":I
    :cond_2
    iget-boolean v7, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/ConnectivityChangedBroadcastReceiver;->mIsReleased:Z

    if-nez v7, :cond_3

    .line 126
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/ConnectivityChangedBroadcastReceiver;->mCallback:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/ConnectivityChangedBroadcastReceiver$ConnectivityChangedCallback;

    invoke-interface {v7, v5}, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/ConnectivityChangedBroadcastReceiver$ConnectivityChangedCallback;->onConnectivityChanged(Z)V

    .line 128
    :cond_3
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/ConnectivityChangedBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/ConnectivityChangedBroadcastReceiver;->mIsReleased:Z

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/ConnectivityChangedBroadcastReceiver;->mTargetSsid:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setTargetSsid(Ljava/lang/String;)V
    .locals 0
    .param p1, "targetSsid"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/ConnectivityChangedBroadcastReceiver;->mTargetSsid:Ljava/lang/String;

    .line 72
    return-void
.end method
