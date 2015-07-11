.class public Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServerBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WearableBridgeServerBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServerBroadcastReceiver$1;,
        Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServerBroadcastReceiver$VideoEventObserverImpl;,
        Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServerBroadcastReceiver$PhotoEventObserverImpl;,
        Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServerBroadcastReceiver$LifeCycleObserverImpl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mClientPackageName:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static mLifeCycleObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$LifeCycleObserver;

.field private static mPhotoEventObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$PhotoEventObserver;

.field private static mVideoEventObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$VideoEventObserver;

.field private static mWearableBridgeServer:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    const-class v0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServerBroadcastReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServerBroadcastReceiver;->TAG:Ljava/lang/String;

    .line 33
    sput-object v1, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServerBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 36
    sput-object v1, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServerBroadcastReceiver;->mClientPackageName:Ljava/lang/String;

    .line 40
    sput-object v1, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServerBroadcastReceiver;->mWearableBridgeServer:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;

    .line 43
    sput-object v1, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServerBroadcastReceiver;->mLifeCycleObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$LifeCycleObserver;

    .line 45
    sput-object v1, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServerBroadcastReceiver;->mPhotoEventObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$PhotoEventObserver;

    .line 47
    sput-object v1, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServerBroadcastReceiver;->mVideoEventObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$VideoEventObserver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 57
    return-void
.end method

.method static synthetic access$300(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServerBroadcastReceiver;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServerBroadcastReceiver;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServerBroadcastReceiver;->getNotifierIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()Landroid/content/Context;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServerBroadcastReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getNotifierIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 163
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 164
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServerBroadcastReceiver;->mClientPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 63
    sput-object p1, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServerBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 66
    invoke-static {p1}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableUtil;->isGooglePlayServiceAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 67
    sget-object v0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServerBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "Google Play Service is not available."

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/vanilla/util/Log;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 75
    .local v6, "action":Ljava/lang/String;
    if-nez v6, :cond_4

    .line 109
    :cond_2
    :goto_1
    sget-object v0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServerBroadcastReceiver;->mWearableBridgeServer:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;

    if-eqz v0, :cond_0

    .line 111
    if-eqz v6, :cond_3

    sget-object v0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServerBroadcastReceiver;->mWearableBridgeServer:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;->getPhotoStateNotifier()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$PhotoStateNotifier;

    move-result-object v0

    if-nez v0, :cond_8

    .line 131
    :cond_3
    :goto_2
    if-eqz v6, :cond_0

    .line 133
    const-string v0, "com.sonymobile.cameracommon.wearablebridge.CLIENT_VIDEO_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 134
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "wearable-bridge-video-state-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 136
    .local v9, "videoState":Ljava/lang/String;
    sget-object v0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServerBroadcastReceiver;->mWearableBridgeServer:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;->getVideoStateNotifier()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$VideoStateNotifier;

    move-result-object v0

    invoke-static {v9}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractVideoState;->valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractVideoState;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$VideoStateNotifier;->onStateChanged(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractVideoState;)V

    goto :goto_0

    .line 77
    .end local v9    # "videoState":Ljava/lang/String;
    :cond_4
    const-string v0, "com.sonymobile.cameracommon.wearablebridge.CLIENT_LIFECYCLE_ON_RESUME"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 78
    sget-object v0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServerBroadcastReceiver;->mWearableBridgeServer:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;

    if-eqz v0, :cond_5

    .line 79
    sget-object v0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServerBroadcastReceiver;->mWearableBridgeServer:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;->release()V

    .line 82
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "wearable-bridge-client-package-name-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServerBroadcastReceiver;->mClientPackageName:Ljava/lang/String;

    .line 84
    new-instance v0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServerBroadcastReceiver$LifeCycleObserverImpl;

    invoke-direct {v0, p0, v2}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServerBroadcastReceiver$LifeCycleObserverImpl;-><init>(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServerBroadcastReceiver;Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServerBroadcastReceiver$1;)V

    sput-object v0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServerBroadcastReceiver;->mLifeCycleObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$LifeCycleObserver;

    .line 85
    new-instance v0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServerBroadcastReceiver$PhotoEventObserverImpl;

    invoke-direct {v0, p0, v2}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServerBroadcastReceiver$PhotoEventObserverImpl;-><init>(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServerBroadcastReceiver;Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServerBroadcastReceiver$1;)V

    sput-object v0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServerBroadcastReceiver;->mPhotoEventObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$PhotoEventObserver;

    .line 86
    new-instance v0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServerBroadcastReceiver$VideoEventObserverImpl;

    invoke-direct {v0, p0, v2}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServerBroadcastReceiver$VideoEventObserverImpl;-><init>(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServerBroadcastReceiver;Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServerBroadcastReceiver$1;)V

    sput-object v0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServerBroadcastReceiver;->mVideoEventObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$VideoEventObserver;

    .line 87
    new-instance v0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;

    sget-object v1, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServerBroadcastReceiver;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    sget-object v3, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServerBroadcastReceiver;->mLifeCycleObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$LifeCycleObserver;

    sget-object v4, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServerBroadcastReceiver;->mPhotoEventObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$PhotoEventObserver;

    sget-object v5, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServerBroadcastReceiver;->mVideoEventObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$VideoEventObserver;

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$LifeCycleObserver;Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$PhotoEventObserver;Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$VideoEventObserver;)V

    sput-object v0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServerBroadcastReceiver;->mWearableBridgeServer:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;

    .line 93
    sget-object v0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServerBroadcastReceiver;->mWearableBridgeServer:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;->getLifeCycleNotifier()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$LifeCycleNotifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$LifeCycleNotifier;->onResume()V

    goto :goto_1

    .line 94
    :cond_6
    const-string v0, "com.sonymobile.cameracommon.wearablebridge.CLIENT_LIFECYCLE_ON_PAUSE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    sget-object v0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServerBroadcastReceiver;->mWearableBridgeServer:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;

    if-eqz v0, :cond_7

    .line 96
    sget-object v0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServerBroadcastReceiver;->mWearableBridgeServer:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;->getLifeCycleNotifier()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$LifeCycleNotifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$LifeCycleNotifier;->onPause()V

    .line 97
    sget-object v0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServerBroadcastReceiver;->mWearableBridgeServer:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;->release()V

    .line 98
    sput-object v2, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServerBroadcastReceiver;->mWearableBridgeServer:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;

    .line 100
    :cond_7
    sput-object v2, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServerBroadcastReceiver;->mClientPackageName:Ljava/lang/String;

    .line 101
    sput-object v2, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServerBroadcastReceiver;->mLifeCycleObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$LifeCycleObserver;

    .line 102
    sput-object v2, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServerBroadcastReceiver;->mPhotoEventObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$PhotoEventObserver;

    .line 103
    sput-object v2, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServerBroadcastReceiver;->mVideoEventObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$VideoEventObserver;

    goto/16 :goto_1

    .line 113
    :cond_8
    const-string v0, "com.sonymobile.cameracommon.wearablebridge.CLIENT_PHOTO_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 114
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "wearable-bridge-photo-state-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 116
    .local v8, "photoState":Ljava/lang/String;
    sget-object v0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServerBroadcastReceiver;->mWearableBridgeServer:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;->getPhotoStateNotifier()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$PhotoStateNotifier;

    move-result-object v0

    invoke-static {v8}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractPhotoState;->valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractPhotoState;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$PhotoStateNotifier;->onStateChanged(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractPhotoState;)V

    goto/16 :goto_2

    .line 118
    .end local v8    # "photoState":Ljava/lang/String;
    :cond_9
    const-string v0, "com.sonymobile.cameracommon.wearablebridge.CLIENT_PHOTO_CAPTURE_COMPLETED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 119
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "wearable-bridge-completion-status-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 121
    .local v7, "isSuccess":Z
    if-eqz v7, :cond_a

    .line 122
    sget-object v0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServerBroadcastReceiver;->mWearableBridgeServer:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;->getPhotoStateNotifier()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$PhotoStateNotifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$PhotoStateNotifier;->onCaptureSucceeded()V

    goto/16 :goto_2

    .line 124
    :cond_a
    sget-object v0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServerBroadcastReceiver;->mWearableBridgeServer:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;->getPhotoStateNotifier()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$PhotoStateNotifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$PhotoStateNotifier;->onCaptureFailed()V

    goto/16 :goto_2

    .line 138
    .end local v7    # "isSuccess":Z
    :cond_b
    const-string v0, "com.sonymobile.cameracommon.wearablebridge.CLIENT_VIDEO_START_REC_COMPLETED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 139
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "wearable-bridge-completion-status-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 141
    .restart local v7    # "isSuccess":Z
    if-eqz v7, :cond_c

    .line 142
    sget-object v0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServerBroadcastReceiver;->mWearableBridgeServer:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;->getVideoStateNotifier()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$VideoStateNotifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$VideoStateNotifier;->onStartRecordingSucceeded()V

    goto/16 :goto_0

    .line 144
    :cond_c
    sget-object v0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServerBroadcastReceiver;->mWearableBridgeServer:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;->getVideoStateNotifier()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$VideoStateNotifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$VideoStateNotifier;->onStartRecordingFailed()V

    goto/16 :goto_0

    .line 146
    .end local v7    # "isSuccess":Z
    :cond_d
    const-string v0, "com.sonymobile.cameracommon.wearablebridge.CLIENT_VIDEO_STOP_REC_COMPLETED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "wearable-bridge-completion-status-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 149
    .restart local v7    # "isSuccess":Z
    if-eqz v7, :cond_e

    .line 150
    sget-object v0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServerBroadcastReceiver;->mWearableBridgeServer:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;->getVideoStateNotifier()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$VideoStateNotifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$VideoStateNotifier;->onStopRecordingSucceeded()V

    goto/16 :goto_0

    .line 152
    :cond_e
    sget-object v0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServerBroadcastReceiver;->mWearableBridgeServer:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;->getVideoStateNotifier()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$VideoStateNotifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$VideoStateNotifier;->onStopRecordingFailed()V

    goto/16 :goto_0
.end method
