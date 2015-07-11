.class Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectivityChangedCallbackImpl;
.super Ljava/lang/Object;
.source "WifiNetworkEnvironment.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/wificontroller/negotiation/ConnectivityChangedBroadcastReceiver$ConnectivityChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectivityChangedCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;)V
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectivityChangedCallbackImpl;->this$0:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;
    .param p2, "x1"    # Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$1;

    .prologue
    .line 308
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectivityChangedCallbackImpl;-><init>(Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;)V

    return-void
.end method


# virtual methods
.method public onConnectivityChanged(Z)V
    .locals 1
    .param p1, "isConnected"    # Z

    .prologue
    .line 311
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectivityChangedCallbackImpl;->this$0:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;

    # setter for: Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mIsConnectedInfoByConnectivityManager:Z
    invoke-static {v0, p1}, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->access$702(Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;Z)Z

    .line 312
    return-void
.end method
