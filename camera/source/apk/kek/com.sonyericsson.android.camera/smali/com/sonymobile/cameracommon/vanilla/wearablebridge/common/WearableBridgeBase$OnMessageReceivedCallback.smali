.class Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnMessageReceivedCallback;
.super Ljava/lang/Object;
.source "WearableBridgeBase.java"

# interfaces
.implements Lcom/google/android/gms/wearable/MessageApi$MessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnMessageReceivedCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;)V
    .locals 0

    .prologue
    .line 380
    iput-object p1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnMessageReceivedCallback;->this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;
    .param p2, "x1"    # Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$1;

    .prologue
    .line 380
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnMessageReceivedCallback;-><init>(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;)V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/google/android/gms/wearable/MessageEvent;)V
    .locals 3
    .param p1, "messageEvent"    # Lcom/google/android/gms/wearable/MessageEvent;

    .prologue
    .line 386
    invoke-interface {p1}, Lcom/google/android/gms/wearable/MessageEvent;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 387
    .local v1, "path":Ljava/lang/String;
    new-instance v0, Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/wearable/MessageEvent;->getData()[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 393
    .local v0, "message":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase$OnMessageReceivedCallback;->this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;

    invoke-virtual {v2, v1, v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/WearableBridgeBase;->onMessageReceived(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    return-void
.end method
