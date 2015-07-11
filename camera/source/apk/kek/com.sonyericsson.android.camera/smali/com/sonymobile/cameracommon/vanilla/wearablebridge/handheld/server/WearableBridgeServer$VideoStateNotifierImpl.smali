.class Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer$VideoStateNotifierImpl;
.super Ljava/lang/Object;
.source "WearableBridgeServer.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$VideoStateNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoStateNotifierImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer$VideoStateNotifierImpl;->this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;
    .param p2, "x1"    # Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer$1;

    .prologue
    .line 301
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer$VideoStateNotifierImpl;-><init>(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;)V

    return-void
.end method


# virtual methods
.method public onStartRecordingFailed()V
    .locals 0

    .prologue
    .line 315
    return-void
.end method

.method public onStartRecordingSucceeded()V
    .locals 0

    .prologue
    .line 310
    return-void
.end method

.method public onStateChanged(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractVideoState;)V
    .locals 0
    .param p1, "videoState"    # Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractVideoState;

    .prologue
    .line 305
    return-void
.end method

.method public onStopRecordingFailed()V
    .locals 0

    .prologue
    .line 325
    return-void
.end method

.method public onStopRecordingSucceeded()V
    .locals 0

    .prologue
    .line 320
    return-void
.end method
