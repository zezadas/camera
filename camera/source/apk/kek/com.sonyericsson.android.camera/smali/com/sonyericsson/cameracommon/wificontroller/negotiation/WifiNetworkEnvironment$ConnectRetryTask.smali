.class Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectRetryTask;
.super Ljava/lang/Object;
.source "WifiNetworkEnvironment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectRetryTask"
.end annotation


# instance fields
.field private final mPasswd:Ljava/lang/String;

.field private final mShouldWaitConnectivityManagerNotify:Z

.field private final mSsid:Ljava/lang/String;

.field final synthetic this$0:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "passwd"    # Ljava/lang/String;
    .param p4, "shouldWait"    # Z

    .prologue
    .line 120
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectRetryTask;->this$0:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectRetryTask;->mSsid:Ljava/lang/String;

    .line 122
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectRetryTask;->mPasswd:Ljava/lang/String;

    .line 123
    iput-boolean p4, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectRetryTask;->mShouldWaitConnectivityManagerNotify:Z

    .line 124
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 128
    const/16 v1, 0x3c

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectRetryTask;->this$0:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;

    # getter for: Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mRetryCount:I
    invoke-static {v2}, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->access$200(Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;)I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 130
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectRetryTask;->this$0:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;

    # getter for: Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mBackHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->access$300(Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectRetryTask;->this$0:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;

    # getter for: Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mBackHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->access$300(Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectRetryTask;->this$0:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;

    # getter for: Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mConnectRetryTask:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectRetryTask;
    invoke-static {v2}, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->access$400(Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;)Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectRetryTask;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectRetryTask;->this$0:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;

    # getter for: Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mCallback:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiConnectionRequestCallback;
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->access$500(Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;)Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiConnectionRequestCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiConnectionRequestCallback;->onConnectionFailed()V

    .line 175
    :cond_1
    :goto_0
    return-void

    .line 137
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectRetryTask;->this$0:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectRetryTask;->mSsid:Ljava/lang/String;

    # invokes: Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->checkState(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectionState;
    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->access$600(Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;Ljava/lang/String;)Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectionState;

    move-result-object v0

    .line 138
    .local v0, "state":Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectionState;
    sget-object v1, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$1;->$SwitchMap$com$sonyericsson$cameracommon$wificontroller$negotiation$WifiNetworkEnvironment$ConnectionState:[I

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectionState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 169
    :cond_3
    :goto_1
    :pswitch_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectRetryTask;->this$0:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;

    # operator++ for: Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mRetryCount:I
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->access$208(Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;)I

    .line 170
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectRetryTask;->this$0:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;

    # getter for: Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mBackHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->access$300(Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 171
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectRetryTask;->this$0:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;

    # getter for: Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mBackHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->access$300(Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectRetryTask;->this$0:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;

    # getter for: Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mConnectRetryTask:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectRetryTask;
    invoke-static {v2}, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->access$400(Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;)Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectRetryTask;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 145
    :pswitch_1
    iget-boolean v1, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectRetryTask;->mShouldWaitConnectivityManagerNotify:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectRetryTask;->this$0:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;

    # getter for: Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mIsConnectedInfoByConnectivityManager:Z
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->access$700(Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 149
    :cond_4
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectRetryTask;->this$0:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;

    # getter for: Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mBackHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->access$300(Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 150
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectRetryTask;->this$0:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;

    # getter for: Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mBackHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->access$300(Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectRetryTask;->this$0:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;

    # getter for: Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mConnectRetryTask:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectRetryTask;
    invoke-static {v2}, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->access$400(Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;)Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectRetryTask;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 151
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectRetryTask;->this$0:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;

    # getter for: Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mBroadcastReceiver:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiStateChangedBroadcastReceiver;
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->access$800(Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;)Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiStateChangedBroadcastReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiStateChangedBroadcastReceiver;->startReceiver()V

    .line 153
    :cond_5
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectRetryTask;->this$0:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;

    # getter for: Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mCallback:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiConnectionRequestCallback;
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->access$500(Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;)Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiConnectionRequestCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiConnectionRequestCallback;->onConnected()V

    goto :goto_0

    .line 164
    :pswitch_2
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectRetryTask;->this$0:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectRetryTask;->mSsid:Ljava/lang/String;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectRetryTask;->mPasswd:Ljava/lang/String;

    # invokes: Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->checkAndScanNetwork(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->access$900(Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 138
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
