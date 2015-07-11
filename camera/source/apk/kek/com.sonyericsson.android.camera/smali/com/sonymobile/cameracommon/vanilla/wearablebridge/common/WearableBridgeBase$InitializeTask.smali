.class Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$InitializeTask;
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
    name = "InitializeTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$InitializeTask;->this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;
    .param p2, "x1"    # Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$1;

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$InitializeTask;-><init>(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$InitializeTask;->this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;

    new-instance v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    iget-object v2, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$InitializeTask;->this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;

    # getter for: Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->access$1000(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/google/android/gms/wearable/Wearable;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$InitializeTask;->this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;

    # getter for: Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->mOnConnectionChangedCallback:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnConnectionChangedCallback;
    invoke-static {v2}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->access$900(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;)Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnConnectionChangedCallback;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$InitializeTask;->this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;

    # getter for: Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->mOnConnectionFailedCallback:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnConnectionFailedCallback;
    invoke-static {v2}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->access$800(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;)Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnConnectionFailedCallback;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    # setter for: Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;
    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->access$702(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 119
    return-void
.end method
