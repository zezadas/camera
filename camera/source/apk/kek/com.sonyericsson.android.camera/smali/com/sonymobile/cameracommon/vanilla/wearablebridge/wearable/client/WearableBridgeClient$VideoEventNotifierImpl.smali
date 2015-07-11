.class Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient$VideoEventNotifierImpl;
.super Ljava/lang/Object;
.source "WearableBridgeClient.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/NotifyHandheldInterface$VideoEventNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoEventNotifierImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient$VideoEventNotifierImpl;->this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient;Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient;
    .param p2, "x1"    # Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient$1;

    .prologue
    .line 281
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient$VideoEventNotifierImpl;-><init>(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient;)V

    return-void
.end method


# virtual methods
.method public onStartVideoRecRequested()V
    .locals 0

    .prologue
    .line 285
    return-void
.end method

.method public onStopVideoRecRequested()V
    .locals 0

    .prologue
    .line 290
    return-void
.end method
