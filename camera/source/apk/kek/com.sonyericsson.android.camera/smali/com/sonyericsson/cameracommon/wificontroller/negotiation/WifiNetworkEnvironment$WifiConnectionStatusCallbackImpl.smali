.class Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$WifiConnectionStatusCallbackImpl;
.super Ljava/lang/Object;
.source "WifiNetworkEnvironment.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiConnectionStatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiConnectionStatusCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$WifiConnectionStatusCallbackImpl;->this$0:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;
    .param p2, "x1"    # Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$1;

    .prologue
    .line 282
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$WifiConnectionStatusCallbackImpl;-><init>(Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;)V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$WifiConnectionStatusCallbackImpl;->this$0:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;

    # getter for: Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mCallback:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiConnectionRequestCallback;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->access$500(Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;)Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiConnectionRequestCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$WifiConnectionStatusCallbackImpl;->this$0:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;

    # getter for: Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mBackHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->access$300(Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$WifiConnectionStatusCallbackImpl;->this$0:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;

    # getter for: Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mConnectRetryTask:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectRetryTask;
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->access$400(Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;)Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectRetryTask;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 288
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$WifiConnectionStatusCallbackImpl;->this$0:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;

    # getter for: Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mCallback:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiConnectionRequestCallback;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->access$500(Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;)Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiConnectionRequestCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiConnectionRequestCallback;->onConnected()V

    .line 290
    :cond_0
    return-void
.end method

.method public onConnectionFailed()V
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$WifiConnectionStatusCallbackImpl;->this$0:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;

    # getter for: Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mCallback:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiConnectionRequestCallback;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->access$500(Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;)Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiConnectionRequestCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$WifiConnectionStatusCallbackImpl;->this$0:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;

    # getter for: Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mBackHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->access$300(Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$WifiConnectionStatusCallbackImpl;->this$0:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;

    # getter for: Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mConnectRetryTask:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectRetryTask;
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->access$400(Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;)Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectRetryTask;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 296
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$WifiConnectionStatusCallbackImpl;->this$0:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;

    # getter for: Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mCallback:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiConnectionRequestCallback;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->access$500(Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;)Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiConnectionRequestCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiConnectionRequestCallback;->onConnectionFailed()V

    .line 298
    :cond_0
    return-void
.end method

.method public onDisconnected()V
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$WifiConnectionStatusCallbackImpl;->this$0:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;

    # getter for: Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mCallback:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiConnectionRequestCallback;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->access$500(Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;)Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiConnectionRequestCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$WifiConnectionStatusCallbackImpl;->this$0:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;

    # getter for: Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->mCallback:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiConnectionRequestCallback;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;->access$500(Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;)Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiConnectionRequestCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiConnectionRequestCallback;->onDisconnected()V

    .line 305
    :cond_0
    return-void
.end method
