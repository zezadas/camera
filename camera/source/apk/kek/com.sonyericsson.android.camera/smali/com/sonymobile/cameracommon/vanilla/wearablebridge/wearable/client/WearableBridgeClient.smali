.class public Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient;
.super Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;
.source "WearableBridgeClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient$1;,
        Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient$VideoEventNotifierImpl;,
        Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient$PhotoEventNotifierImpl;,
        Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient$LifeCycleNotiferImpl;,
        Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient$HandleDataTask;,
        Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient$HandleMessageTask;,
        Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient$HandleNodeConnectionTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCallbackHandler:Landroid/os/Handler;

.field private mLifeCycleNotifier:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/NotifyHandheldInterface$LifeCycleNotifier;

.field private mPhotoEventNotifier:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/NotifyHandheldInterface$PhotoEventNotifier;

.field private mPhotoStateObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/ObserveHandheldInterface$PhotoStateObserver;

.field private mVideoEventNotifier:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/NotifyHandheldInterface$VideoEventNotifier;

.field private mVideoStateObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/ObserveHandheldInterface$VideoStateObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/ObserveHandheldInterface$PhotoStateObserver;Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/ObserveHandheldInterface$VideoStateObserver;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callbackHandler"    # Landroid/os/Handler;
    .param p3, "photoStateObserver"    # Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/ObserveHandheldInterface$PhotoStateObserver;
    .param p4, "videoStateObserver"    # Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/ObserveHandheldInterface$VideoStateObserver;

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object v1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient;->mCallbackHandler:Landroid/os/Handler;

    .line 34
    iput-object v1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient;->mPhotoStateObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/ObserveHandheldInterface$PhotoStateObserver;

    .line 36
    iput-object v1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient;->mVideoStateObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/ObserveHandheldInterface$VideoStateObserver;

    .line 39
    iput-object v1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient;->mLifeCycleNotifier:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/NotifyHandheldInterface$LifeCycleNotifier;

    .line 41
    iput-object v1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient;->mPhotoEventNotifier:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/NotifyHandheldInterface$PhotoEventNotifier;

    .line 43
    iput-object v1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient;->mVideoEventNotifier:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/NotifyHandheldInterface$VideoEventNotifier;

    .line 62
    iput-object p2, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient;->mCallbackHandler:Landroid/os/Handler;

    .line 63
    iput-object p3, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient;->mPhotoStateObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/ObserveHandheldInterface$PhotoStateObserver;

    .line 64
    iput-object p4, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient;->mVideoStateObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/ObserveHandheldInterface$VideoStateObserver;

    .line 67
    new-instance v0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient$LifeCycleNotiferImpl;

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient$LifeCycleNotiferImpl;-><init>(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient;Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient$1;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient;->mLifeCycleNotifier:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/NotifyHandheldInterface$LifeCycleNotifier;

    .line 68
    new-instance v0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient$PhotoEventNotifierImpl;

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient$PhotoEventNotifierImpl;-><init>(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient;Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient$1;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient;->mPhotoEventNotifier:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/NotifyHandheldInterface$PhotoEventNotifier;

    .line 69
    new-instance v0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient$VideoEventNotifierImpl;

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient$VideoEventNotifierImpl;-><init>(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient;Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient$1;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient;->mVideoEventNotifier:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/NotifyHandheldInterface$VideoEventNotifier;

    .line 72
    return-void
.end method

.method static synthetic access$300(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient;)Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/ObserveHandheldInterface$PhotoStateObserver;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient;->mPhotoStateObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/ObserveHandheldInterface$PhotoStateObserver;

    return-object v0
.end method


# virtual methods
.method public getLifeCycleNotifier()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/NotifyHandheldInterface$LifeCycleNotifier;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient;->mLifeCycleNotifier:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/NotifyHandheldInterface$LifeCycleNotifier;

    return-object v0
.end method

.method public getPhotoEventNotifier()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/NotifyHandheldInterface$PhotoEventNotifier;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient;->mPhotoEventNotifier:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/NotifyHandheldInterface$PhotoEventNotifier;

    return-object v0
.end method

.method public getVideoEventNotifier()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/NotifyHandheldInterface$VideoEventNotifier;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient;->mVideoEventNotifier:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/NotifyHandheldInterface$VideoEventNotifier;

    return-object v0
.end method

.method public onDataChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/wearable/DataEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 202
    .local p1, "dataEventList":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/wearable/DataEvent;>;"
    new-instance v0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient$HandleDataTask;

    invoke-direct {v0, p0, p1}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient$HandleDataTask;-><init>(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient;Ljava/util/List;)V

    .line 203
    .local v0, "task":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient;->mCallbackHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 204
    iget-object v1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient;->mCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 206
    :cond_0
    return-void
.end method

.method public onMessageReceived(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 143
    new-instance v0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient$HandleMessageTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient$HandleMessageTask;-><init>(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .local v0, "task":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient;->mCallbackHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient;->mCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 147
    :cond_0
    return-void
.end method

.method public onNodeConnected(Lcom/google/android/gms/wearable/Node;)V
    .locals 2
    .param p1, "node"    # Lcom/google/android/gms/wearable/Node;

    .prologue
    .line 104
    new-instance v0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient$HandleNodeConnectionTask;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient$HandleNodeConnectionTask;-><init>(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient;ZLcom/google/android/gms/wearable/Node;)V

    .line 105
    .local v0, "task":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient;->mCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 106
    return-void
.end method

.method public onNodeDisconnected(Lcom/google/android/gms/wearable/Node;)V
    .locals 2
    .param p1, "node"    # Lcom/google/android/gms/wearable/Node;

    .prologue
    .line 110
    new-instance v0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient$HandleNodeConnectionTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient$HandleNodeConnectionTask;-><init>(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient;ZLcom/google/android/gms/wearable/Node;)V

    .line 111
    .local v0, "task":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient;->mCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 112
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 96
    invoke-super {p0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->onResume()V

    .line 99
    iget-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient;->mLifeCycleNotifier:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/NotifyHandheldInterface$LifeCycleNotifier;

    invoke-interface {v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/NotifyHandheldInterface$LifeCycleNotifier;->onResume()V

    .line 100
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-super {p0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->release()V

    .line 82
    iput-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient;->mLifeCycleNotifier:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/NotifyHandheldInterface$LifeCycleNotifier;

    .line 83
    iput-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient;->mPhotoEventNotifier:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/NotifyHandheldInterface$PhotoEventNotifier;

    .line 84
    iput-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient;->mVideoEventNotifier:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/NotifyHandheldInterface$VideoEventNotifier;

    .line 87
    iput-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient;->mCallbackHandler:Landroid/os/Handler;

    .line 88
    iput-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient;->mPhotoStateObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/ObserveHandheldInterface$PhotoStateObserver;

    .line 89
    iput-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient;->mVideoStateObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/ObserveHandheldInterface$VideoStateObserver;

    .line 92
    return-void
.end method
