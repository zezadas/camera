.class Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;
.super Ljava/lang/Object;
.source "NetworkStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NodeDiscoveryController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStopShortTimeDiscoveryTask;,
        Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStartShortTimeDiscoveryTask;,
        Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStopContinuousDiscoveryTask;,
        Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStartContinuousDiscoveryTask;
    }
.end annotation


# static fields
.field private static final SHORT_TIME_NODE_DISCOVERY_REQUEST_INTERVAL:I = 0x2710

.field private static final SHORT_TIME_NODE_DISCOVERY_TIMEOUT:I = 0x3e8

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBackWorker:Landroid/os/Handler;

.field private mStartDiscoveryTask:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStartContinuousDiscoveryTask;

.field private mStartShortTimeDiscoveryTask:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStartShortTimeDiscoveryTask;

.field private mStopDiscoveryTask:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStopContinuousDiscoveryTask;

.field private mStopShortTimeDiscoveryTask:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStopShortTimeDiscoveryTask;

.field private mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1395
    const-class v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/os/Handler;)V
    .locals 1
    .param p1, "manager"    # Landroid/net/wifi/p2p/WifiP2pManager;
    .param p2, "channel"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v0, 0x0

    .line 1428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1404
    iput-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 1407
    iput-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 1410
    iput-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;->mBackWorker:Landroid/os/Handler;

    .line 1412
    iput-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;->mStartDiscoveryTask:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStartContinuousDiscoveryTask;

    .line 1413
    iput-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;->mStopDiscoveryTask:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStopContinuousDiscoveryTask;

    .line 1415
    iput-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;->mStartShortTimeDiscoveryTask:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStartShortTimeDiscoveryTask;

    .line 1416
    iput-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;->mStopShortTimeDiscoveryTask:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStopShortTimeDiscoveryTask;

    .line 1429
    iput-object p1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 1430
    iput-object p2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 1431
    iput-object p3, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;->mBackWorker:Landroid/os/Handler;

    .line 1432
    return-void
.end method

.method static synthetic access$4100(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;)Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;

    .prologue
    .line 1394
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;

    .prologue
    .line 1394
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;

    .prologue
    .line 1394
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;->mBackWorker:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;)Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStartContinuousDiscoveryTask;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;

    .prologue
    .line 1394
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;->mStartDiscoveryTask:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStartContinuousDiscoveryTask;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;)Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStopContinuousDiscoveryTask;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;

    .prologue
    .line 1394
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;->mStopDiscoveryTask:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStopContinuousDiscoveryTask;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;)Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStopShortTimeDiscoveryTask;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;

    .prologue
    .line 1394
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;->mStopShortTimeDiscoveryTask:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStopShortTimeDiscoveryTask;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;)Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStartShortTimeDiscoveryTask;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;

    .prologue
    .line 1394
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;->mStartShortTimeDiscoveryTask:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStartShortTimeDiscoveryTask;

    return-object v0
.end method


# virtual methods
.method public onDiscoveryStarted()V
    .locals 0

    .prologue
    .line 1510
    return-void
.end method

.method public onDiscoveryStopped()V
    .locals 2

    .prologue
    .line 1516
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;->mBackWorker:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1518
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;->mBackWorker:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;->mStartDiscoveryTask:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStartContinuousDiscoveryTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1520
    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1438
    iput-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 1439
    iput-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 1440
    iput-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;->mBackWorker:Landroid/os/Handler;

    .line 1441
    return-void
.end method

.method public startContinuousAvailableNodeDiscovery()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1447
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;->mStartDiscoveryTask:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStartContinuousDiscoveryTask;

    if-nez v0, :cond_0

    .line 1448
    new-instance v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStartContinuousDiscoveryTask;

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStartContinuousDiscoveryTask;-><init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$1;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;->mStartDiscoveryTask:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStartContinuousDiscoveryTask;

    .line 1450
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;->mStopDiscoveryTask:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStopContinuousDiscoveryTask;

    if-nez v0, :cond_1

    .line 1451
    new-instance v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStopContinuousDiscoveryTask;

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStopContinuousDiscoveryTask;-><init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$1;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;->mStopDiscoveryTask:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStopContinuousDiscoveryTask;

    .line 1455
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;->mBackWorker:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;->mStartDiscoveryTask:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStartContinuousDiscoveryTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1456
    return-void
.end method

.method public stopContinuousAvailableNodeDiscovery()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1463
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;->mStartDiscoveryTask:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStartContinuousDiscoveryTask;

    if-eqz v0, :cond_0

    .line 1464
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;->mBackWorker:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;->mStartDiscoveryTask:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStartContinuousDiscoveryTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1466
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;->mStopDiscoveryTask:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStopContinuousDiscoveryTask;

    if-eqz v0, :cond_1

    .line 1467
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;->mBackWorker:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;->mStopDiscoveryTask:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStopContinuousDiscoveryTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1470
    :cond_1
    iput-object v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;->mStartDiscoveryTask:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStartContinuousDiscoveryTask;

    .line 1471
    iput-object v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController;->mStopDiscoveryTask:Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NetworkStateMachine$NodeDiscoveryController$RequestToStopContinuousDiscoveryTask;

    .line 1472
    return-void
.end method
