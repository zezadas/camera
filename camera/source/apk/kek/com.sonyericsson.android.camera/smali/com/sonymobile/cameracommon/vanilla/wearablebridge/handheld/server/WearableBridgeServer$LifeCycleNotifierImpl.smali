.class Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer$LifeCycleNotifierImpl;
.super Ljava/lang/Object;
.source "WearableBridgeServer.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$LifeCycleNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LifeCycleNotifierImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer$LifeCycleNotifierImpl;->this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;
    .param p2, "x1"    # Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer$1;

    .prologue
    .line 231
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer$LifeCycleNotifierImpl;-><init>(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;)V

    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 3

    .prologue
    .line 252
    iget-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer$LifeCycleNotifierImpl;->this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;

    const-string v1, "/wearablebridge/lifecycle"

    const-string v2, "msg-life-cycle-on-pause"

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;->submitMessageAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer$LifeCycleNotifierImpl;->this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;->onPause()V

    .line 260
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 237
    iget-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer$LifeCycleNotifierImpl;->this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;->onResume()V

    .line 240
    iget-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer$LifeCycleNotifierImpl;->this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;

    const-string v1, "/wearablebridge/lifecycle"

    const-string v2, "msg-life-cycle-on-resume"

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;->submitMessageAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    return-void
.end method
