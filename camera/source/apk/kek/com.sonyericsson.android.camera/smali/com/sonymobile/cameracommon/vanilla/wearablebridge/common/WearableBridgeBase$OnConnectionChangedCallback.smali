.class Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnConnectionChangedCallback;
.super Ljava/lang/Object;
.source "WearableBridgeBase.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnConnectionChangedCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnConnectionChangedCallback;->this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;
    .param p2, "x1"    # Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$1;

    .prologue
    .line 242
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnConnectionChangedCallback;-><init>(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;)V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "connectionHint"    # Landroid/os/Bundle;

    .prologue
    .line 247
    iget-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnConnectionChangedCallback;->this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;

    const/4 v1, 0x0

    # setter for: Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->mIsNowOnResolutionForGooglePlayApiServiceConnection:Z
    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->access$1702(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;Z)Z

    .line 250
    iget-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnConnectionChangedCallback;->this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;

    # invokes: Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->setupApiCallbacks()V
    invoke-static {v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->access$1900(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;)V

    .line 251
    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 0
    .param p1, "cause"    # I

    .prologue
    .line 258
    return-void
.end method
