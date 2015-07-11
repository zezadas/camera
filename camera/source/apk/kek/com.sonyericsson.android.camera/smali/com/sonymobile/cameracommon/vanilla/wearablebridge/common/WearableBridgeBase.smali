.class public abstract Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;
.super Ljava/lang/Object;
.source "WearableBridgeBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$1;,
        Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnDataChangedCallback;,
        Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnMessageReceivedCallback;,
        Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$SubmitMessageTask;,
        Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnNodeConnectionChangedCallback;,
        Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnConnectionFailedCallback;,
        Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnConnectionChangedCallback;,
        Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$DisconnectionTask;,
        Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$ConnectionTask;,
        Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$ReleaseTask;,
        Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$InitializeTask;,
        Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$ThreadFactoryImpl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final TIMEOUT_DURATION_MILLIS:I = 0xbb8


# instance fields
.field private mBackWorker:Ljava/util/concurrent/ExecutorService;

.field private mContext:Landroid/content/Context;

.field private mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private mIsNowOnResolutionForGooglePlayApiServiceConnection:Z

.field private mOnConnectionChangedCallback:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnConnectionChangedCallback;

.field private mOnConnectionFailedCallback:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnConnectionFailedCallback;

.field private mOnDataChangedCallback:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnDataChangedCallback;

.field private mOnMessageReceivedCallback:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnMessageReceivedCallback;

.field private mOnNodeConnectionChangedCallback:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnNodeConnectionChangedCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v2, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->mContext:Landroid/content/Context;

    .line 44
    iput-object v2, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    .line 50
    iput-object v2, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 53
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->mIsNowOnResolutionForGooglePlayApiServiceConnection:Z

    .line 56
    iput-object v2, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->mOnConnectionChangedCallback:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnConnectionChangedCallback;

    .line 58
    iput-object v2, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->mOnConnectionFailedCallback:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnConnectionFailedCallback;

    .line 61
    iput-object v2, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->mOnNodeConnectionChangedCallback:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnNodeConnectionChangedCallback;

    .line 63
    iput-object v2, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->mOnMessageReceivedCallback:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnMessageReceivedCallback;

    .line 65
    iput-object v2, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->mOnDataChangedCallback:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnDataChangedCallback;

    .line 76
    new-instance v1, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$ThreadFactoryImpl;

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$ThreadFactoryImpl;-><init>(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$1;)V

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    .line 79
    iput-object p1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->mContext:Landroid/content/Context;

    .line 82
    new-instance v1, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnConnectionChangedCallback;

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnConnectionChangedCallback;-><init>(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$1;)V

    iput-object v1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->mOnConnectionChangedCallback:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnConnectionChangedCallback;

    .line 83
    new-instance v1, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnConnectionFailedCallback;

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnConnectionFailedCallback;-><init>(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$1;)V

    iput-object v1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->mOnConnectionFailedCallback:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnConnectionFailedCallback;

    .line 85
    new-instance v1, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnNodeConnectionChangedCallback;

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnNodeConnectionChangedCallback;-><init>(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$1;)V

    iput-object v1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->mOnNodeConnectionChangedCallback:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnNodeConnectionChangedCallback;

    .line 86
    new-instance v1, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnMessageReceivedCallback;

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnMessageReceivedCallback;-><init>(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$1;)V

    iput-object v1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->mOnMessageReceivedCallback:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnMessageReceivedCallback;

    .line 87
    new-instance v1, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnDataChangedCallback;

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnDataChangedCallback;-><init>(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$1;)V

    iput-object v1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->mOnDataChangedCallback:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnDataChangedCallback;

    .line 90
    new-instance v0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$InitializeTask;

    invoke-direct {v0, p0, v2}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$InitializeTask;-><init>(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$1;)V

    .line 91
    .local v0, "initTask":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 94
    return-void
.end method

.method static synthetic access$1000(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnNodeConnectionChangedCallback;)Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnNodeConnectionChangedCallback;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;
    .param p1, "x1"    # Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnNodeConnectionChangedCallback;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->mOnNodeConnectionChangedCallback:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnNodeConnectionChangedCallback;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnMessageReceivedCallback;)Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnMessageReceivedCallback;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;
    .param p1, "x1"    # Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnMessageReceivedCallback;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->mOnMessageReceivedCallback:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnMessageReceivedCallback;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnDataChangedCallback;)Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnDataChangedCallback;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;
    .param p1, "x1"    # Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnDataChangedCallback;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->mOnDataChangedCallback:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnDataChangedCallback;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->mIsNowOnResolutionForGooglePlayApiServiceConnection:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->mIsNowOnResolutionForGooglePlayApiServiceConnection:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->getTargetNodeId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->setupApiCallbacks()V

    return-void
.end method

.method static synthetic access$2000(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->releaseApiCallbacks()V

    return-void
.end method

.method static synthetic access$700(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;
    .param p1, "x1"    # Lcom/google/android/gms/common/api/GoogleApiClient;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object p1
.end method

.method static synthetic access$800(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;)Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnConnectionFailedCallback;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->mOnConnectionFailedCallback:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnConnectionFailedCallback;

    return-object v0
.end method

.method static synthetic access$802(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnConnectionFailedCallback;)Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnConnectionFailedCallback;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;
    .param p1, "x1"    # Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnConnectionFailedCallback;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->mOnConnectionFailedCallback:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnConnectionFailedCallback;

    return-object p1
.end method

.method static synthetic access$900(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;)Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnConnectionChangedCallback;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->mOnConnectionChangedCallback:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnConnectionChangedCallback;

    return-object v0
.end method

.method static synthetic access$902(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnConnectionChangedCallback;)Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnConnectionChangedCallback;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;
    .param p1, "x1"    # Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnConnectionChangedCallback;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->mOnConnectionChangedCallback:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnConnectionChangedCallback;

    return-object p1
.end method

.method private final getTargetNodeId()Ljava/lang/String;
    .locals 5

    .prologue
    .line 441
    sget-object v3, Lcom/google/android/gms/wearable/Wearable;->NodeApi:Lcom/google/android/gms/wearable/NodeApi;

    iget-object v4, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v3, v4}, Lcom/google/android/gms/wearable/NodeApi;->getConnectedNodes(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/api/PendingResult;->await()Lcom/google/android/gms/common/api/Result;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/wearable/NodeApi$GetConnectedNodesResult;

    .line 443
    .local v1, "nodeResult":Lcom/google/android/gms/wearable/NodeApi$GetConnectedNodesResult;
    invoke-interface {v1}, Lcom/google/android/gms/wearable/NodeApi$GetConnectedNodesResult;->getNodes()Ljava/util/List;

    move-result-object v0

    .line 451
    .local v0, "nodeList":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/wearable/Node;>;"
    const/4 v2, 0x0

    .line 452
    .local v2, "targetNodeId":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 461
    :goto_0
    return-object v2

    .line 456
    :cond_0
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/wearable/Node;

    invoke-interface {v3}, Lcom/google/android/gms/wearable/Node;->getId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private releaseApiCallbacks()V
    .locals 3

    .prologue
    .line 480
    sget-object v0, Lcom/google/android/gms/wearable/Wearable;->NodeApi:Lcom/google/android/gms/wearable/NodeApi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->mOnNodeConnectionChangedCallback:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnNodeConnectionChangedCallback;

    if-eqz v0, :cond_0

    .line 482
    sget-object v0, Lcom/google/android/gms/wearable/Wearable;->NodeApi:Lcom/google/android/gms/wearable/NodeApi;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v2, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->mOnNodeConnectionChangedCallback:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnNodeConnectionChangedCallback;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/wearable/NodeApi;->removeListener(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wearable/NodeApi$NodeListener;)Lcom/google/android/gms/common/api/PendingResult;

    .line 486
    :cond_0
    sget-object v0, Lcom/google/android/gms/wearable/Wearable;->MessageApi:Lcom/google/android/gms/wearable/MessageApi;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->mOnMessageReceivedCallback:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnMessageReceivedCallback;

    if-eqz v0, :cond_1

    .line 488
    sget-object v0, Lcom/google/android/gms/wearable/Wearable;->MessageApi:Lcom/google/android/gms/wearable/MessageApi;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v2, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->mOnMessageReceivedCallback:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnMessageReceivedCallback;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/wearable/MessageApi;->removeListener(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wearable/MessageApi$MessageListener;)Lcom/google/android/gms/common/api/PendingResult;

    .line 492
    :cond_1
    sget-object v0, Lcom/google/android/gms/wearable/Wearable;->DataApi:Lcom/google/android/gms/wearable/DataApi;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->mOnDataChangedCallback:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnDataChangedCallback;

    if-eqz v0, :cond_2

    .line 494
    sget-object v0, Lcom/google/android/gms/wearable/Wearable;->DataApi:Lcom/google/android/gms/wearable/DataApi;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v2, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->mOnDataChangedCallback:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnDataChangedCallback;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/wearable/DataApi;->removeListener(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wearable/DataApi$DataListener;)Lcom/google/android/gms/common/api/PendingResult;

    .line 499
    :cond_2
    return-void
.end method

.method private setupApiCallbacks()V
    .locals 3

    .prologue
    .line 466
    sget-object v0, Lcom/google/android/gms/wearable/Wearable;->NodeApi:Lcom/google/android/gms/wearable/NodeApi;

    if-eqz v0, :cond_0

    .line 467
    sget-object v0, Lcom/google/android/gms/wearable/Wearable;->NodeApi:Lcom/google/android/gms/wearable/NodeApi;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v2, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->mOnNodeConnectionChangedCallback:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnNodeConnectionChangedCallback;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/wearable/NodeApi;->addListener(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wearable/NodeApi$NodeListener;)Lcom/google/android/gms/common/api/PendingResult;

    .line 469
    :cond_0
    sget-object v0, Lcom/google/android/gms/wearable/Wearable;->MessageApi:Lcom/google/android/gms/wearable/MessageApi;

    if-eqz v0, :cond_1

    .line 470
    sget-object v0, Lcom/google/android/gms/wearable/Wearable;->MessageApi:Lcom/google/android/gms/wearable/MessageApi;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v2, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->mOnMessageReceivedCallback:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnMessageReceivedCallback;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/wearable/MessageApi;->addListener(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wearable/MessageApi$MessageListener;)Lcom/google/android/gms/common/api/PendingResult;

    .line 472
    :cond_1
    sget-object v0, Lcom/google/android/gms/wearable/Wearable;->DataApi:Lcom/google/android/gms/wearable/DataApi;

    if-eqz v0, :cond_2

    .line 473
    sget-object v0, Lcom/google/android/gms/wearable/Wearable;->DataApi:Lcom/google/android/gms/wearable/DataApi;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v2, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->mOnDataChangedCallback:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnDataChangedCallback;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/wearable/DataApi;->addListener(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wearable/DataApi$DataListener;)Lcom/google/android/gms/common/api/PendingResult;

    .line 476
    :cond_2
    return-void
.end method


# virtual methods
.method public abstract onDataChanged(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/wearable/DataEvent;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onMessageReceived(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onNodeConnected(Lcom/google/android/gms/wearable/Node;)V
.end method

.method public abstract onNodeDisconnected(Lcom/google/android/gms/wearable/Node;)V
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 200
    new-instance v0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$DisconnectionTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$DisconnectionTask;-><init>(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$1;)V

    .line 201
    .local v0, "disconnectionTask":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 204
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 187
    new-instance v0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$ConnectionTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$ConnectionTask;-><init>(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$1;)V

    .line 188
    .local v0, "connectionTask":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 191
    return-void
.end method

.method public release()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 129
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->releaseApiCallbacks()V

    .line 132
    new-instance v1, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$ReleaseTask;

    invoke-direct {v1, p0, v6}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$ReleaseTask;-><init>(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$1;)V

    .line 133
    .local v1, "releaseTask":Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 136
    iget-object v2, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 138
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v4, 0xbb8

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v4, v5, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_0
    iput-object v6, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    .line 145
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public submitMessageAsync(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 334
    new-instance v0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$SubmitMessageTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$SubmitMessageTask;-><init>(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    .local v0, "task":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 336
    return-void
.end method
