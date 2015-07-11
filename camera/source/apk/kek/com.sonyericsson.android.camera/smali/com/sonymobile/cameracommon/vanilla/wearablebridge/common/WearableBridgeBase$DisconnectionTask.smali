.class Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$DisconnectionTask;
.super Ljava/lang/Object;
.source "WearableBridgeBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisconnectionTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$DisconnectionTask;->this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;
    .param p2, "x1"    # Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$1;

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$DisconnectionTask;-><init>(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$DisconnectionTask;->this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;

    # getter for: Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->access$700(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$DisconnectionTask;->this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;

    # getter for: Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->access$700(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 236
    return-void
.end method
