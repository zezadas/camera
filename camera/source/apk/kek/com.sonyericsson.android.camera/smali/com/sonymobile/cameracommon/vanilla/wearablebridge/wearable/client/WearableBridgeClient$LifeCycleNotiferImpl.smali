.class Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient$LifeCycleNotiferImpl;
.super Ljava/lang/Object;
.source "WearableBridgeClient.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/NotifyHandheldInterface$LifeCycleNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LifeCycleNotiferImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient$LifeCycleNotiferImpl;->this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient;Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient;
    .param p2, "x1"    # Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient$1;

    .prologue
    .line 256
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient$LifeCycleNotiferImpl;-><init>(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient;)V

    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 3

    .prologue
    .line 266
    iget-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient$LifeCycleNotiferImpl;->this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient;

    const-string v1, "/wearablebridge/lifecycle"

    const-string v2, "msg-life-cycle-on-pause"

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient;->submitMessageAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 259
    iget-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient$LifeCycleNotiferImpl;->this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient;

    const-string v1, "/wearablebridge/lifecycle"

    const-string v2, "msg-life-cycle-on-resume"

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient;->submitMessageAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    return-void
.end method
