.class Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$ReleaseTask;
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
    name = "ReleaseTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$ReleaseTask;->this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;
    .param p2, "x1"    # Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$1;

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$ReleaseTask;-><init>(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 153
    iget-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$ReleaseTask;->this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;

    # getter for: Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->access$700(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 154
    iget-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$ReleaseTask;->this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;

    # getter for: Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->access$700(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$ReleaseTask;->this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;

    # getter for: Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->mOnConnectionChangedCallback:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnConnectionChangedCallback;
    invoke-static {v1}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->access$900(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;)Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnConnectionChangedCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnectionCallbacksRegistered(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$ReleaseTask;->this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;

    # getter for: Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->access$700(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$ReleaseTask;->this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;

    # getter for: Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->mOnConnectionChangedCallback:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnConnectionChangedCallback;
    invoke-static {v1}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->access$900(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;)Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnConnectionChangedCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->unregisterConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$ReleaseTask;->this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;

    # getter for: Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->access$700(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$ReleaseTask;->this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;

    # getter for: Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->mOnConnectionFailedCallback:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnConnectionFailedCallback;
    invoke-static {v1}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->access$800(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;)Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnConnectionFailedCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$ReleaseTask;->this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;

    # getter for: Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->access$700(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$ReleaseTask;->this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;

    # getter for: Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->mOnConnectionFailedCallback:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnConnectionFailedCallback;
    invoke-static {v1}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->access$800(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;)Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnConnectionFailedCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->unregisterConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$ReleaseTask;->this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;

    # setter for: Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;
    invoke-static {v0, v2}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->access$702(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 166
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$ReleaseTask;->this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;

    # setter for: Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->mOnConnectionChangedCallback:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnConnectionChangedCallback;
    invoke-static {v0, v2}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->access$902(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnConnectionChangedCallback;)Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnConnectionChangedCallback;

    .line 167
    iget-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$ReleaseTask;->this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;

    # setter for: Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->mOnConnectionFailedCallback:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnConnectionFailedCallback;
    invoke-static {v0, v2}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->access$802(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnConnectionFailedCallback;)Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnConnectionFailedCallback;

    .line 169
    iget-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$ReleaseTask;->this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;

    # setter for: Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->mOnNodeConnectionChangedCallback:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnNodeConnectionChangedCallback;
    invoke-static {v0, v2}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->access$1202(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnNodeConnectionChangedCallback;)Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnNodeConnectionChangedCallback;

    .line 170
    iget-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$ReleaseTask;->this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;

    # setter for: Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->mOnMessageReceivedCallback:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnMessageReceivedCallback;
    invoke-static {v0, v2}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->access$1302(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnMessageReceivedCallback;)Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnMessageReceivedCallback;

    .line 171
    iget-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$ReleaseTask;->this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;

    # setter for: Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->mOnDataChangedCallback:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnDataChangedCallback;
    invoke-static {v0, v2}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->access$1402(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnDataChangedCallback;)Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnDataChangedCallback;

    .line 174
    iget-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$ReleaseTask;->this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;

    # setter for: Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->mContext:Landroid/content/Context;
    invoke-static {v0, v2}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->access$1002(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;Landroid/content/Context;)Landroid/content/Context;

    .line 177
    return-void
.end method
