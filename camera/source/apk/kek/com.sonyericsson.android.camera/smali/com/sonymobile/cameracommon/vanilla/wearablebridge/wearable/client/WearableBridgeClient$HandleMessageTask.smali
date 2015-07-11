.class Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient$HandleMessageTask;
.super Ljava/lang/Object;
.source "WearableBridgeClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandleMessageTask"
.end annotation


# instance fields
.field private final mMessage:Ljava/lang/String;

.field private final mPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient;


# direct methods
.method public constructor <init>(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient$HandleMessageTask;->this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-object p2, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient$HandleMessageTask;->mPath:Ljava/lang/String;

    .line 161
    iput-object p3, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient$HandleMessageTask;->mMessage:Ljava/lang/String;

    .line 162
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 168
    iget-object v1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient$HandleMessageTask;->mPath:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    const-string v1, "/wearablebridge/lifecycle"

    iget-object v2, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient$HandleMessageTask;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 173
    const-string v1, "/wearablebridge/photo/state"

    iget-object v2, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient$HandleMessageTask;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 175
    iget-object v1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient$HandleMessageTask;->mMessage:Ljava/lang/String;

    invoke-static {v1}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractPhotoState;->valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractPhotoState;

    move-result-object v0

    .line 176
    .local v0, "photoState":Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractPhotoState;
    iget-object v1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient$HandleMessageTask;->this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient;

    # getter for: Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient;->mPhotoStateObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/ObserveHandheldInterface$PhotoStateObserver;
    invoke-static {v1}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient;->access$300(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient;)Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/ObserveHandheldInterface$PhotoStateObserver;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/ObserveHandheldInterface$PhotoStateObserver;->onStateChanged(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractPhotoState;)V

    goto :goto_0

    .line 177
    .end local v0    # "photoState":Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractPhotoState;
    :cond_2
    const-string v1, "/wearablebridge/photo"

    iget-object v2, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient$HandleMessageTask;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 178
    iget-object v1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient$HandleMessageTask;->mMessage:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 180
    const-string v1, "msg-photo-on-capture-succeeded"

    iget-object v2, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient$HandleMessageTask;->mMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 181
    iget-object v1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient$HandleMessageTask;->this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient;

    # getter for: Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient;->mPhotoStateObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/ObserveHandheldInterface$PhotoStateObserver;
    invoke-static {v1}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient;->access$300(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient;)Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/ObserveHandheldInterface$PhotoStateObserver;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/ObserveHandheldInterface$PhotoStateObserver;->onCaptureSucceeded()V

    goto :goto_0

    .line 182
    :cond_3
    const-string v1, "mst-photo-on-capture-failed"

    iget-object v2, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient$HandleMessageTask;->mMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    iget-object v1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient$HandleMessageTask;->this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient;

    # getter for: Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient;->mPhotoStateObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/ObserveHandheldInterface$PhotoStateObserver;
    invoke-static {v1}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient;->access$300(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient;)Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/ObserveHandheldInterface$PhotoStateObserver;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/ObserveHandheldInterface$PhotoStateObserver;->onCaptureFailed()V

    goto :goto_0

    .line 187
    :cond_4
    const-string v1, "/wearablebridge/video/state"

    iget-object v2, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient$HandleMessageTask;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 189
    const-string v1, "/wearablebridge/video"

    iget-object v2, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/wearable/client/WearableBridgeClient$HandleMessageTask;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method
