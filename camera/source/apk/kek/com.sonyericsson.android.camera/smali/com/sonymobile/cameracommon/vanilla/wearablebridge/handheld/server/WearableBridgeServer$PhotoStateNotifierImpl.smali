.class Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer$PhotoStateNotifierImpl;
.super Ljava/lang/Object;
.source "WearableBridgeServer.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$PhotoStateNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoStateNotifierImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer$PhotoStateNotifierImpl;->this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;
    .param p2, "x1"    # Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer$1;

    .prologue
    .line 263
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer$PhotoStateNotifierImpl;-><init>(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;)V

    return-void
.end method


# virtual methods
.method public onCaptureFailed()V
    .locals 3

    .prologue
    .line 293
    iget-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer$PhotoStateNotifierImpl;->this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;

    const-string v1, "/wearablebridge/photo"

    const-string v2, "mst-photo-on-capture-failed"

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;->submitMessageAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    return-void
.end method

.method public onCaptureSucceeded()V
    .locals 3

    .prologue
    .line 281
    iget-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer$PhotoStateNotifierImpl;->this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;

    const-string v1, "/wearablebridge/photo"

    const-string v2, "msg-photo-on-capture-succeeded"

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;->submitMessageAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    return-void
.end method

.method public onStateChanged(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractPhotoState;)V
    .locals 3
    .param p1, "photoState"    # Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractPhotoState;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer$PhotoStateNotifierImpl;->this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;

    const-string v1, "/wearablebridge/photo/state"

    invoke-virtual {p1}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractPhotoState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;->submitMessageAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    return-void
.end method
