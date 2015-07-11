.class Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer$HandleMessageTask;
.super Ljava/lang/Object;
.source "WearableBridgeServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandleMessageTask"
.end annotation


# instance fields
.field private final mMessage:Ljava/lang/String;

.field private final mPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;


# direct methods
.method public constructor <init>(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer$HandleMessageTask;->this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-object p2, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer$HandleMessageTask;->mPath:Ljava/lang/String;

    .line 158
    iput-object p3, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer$HandleMessageTask;->mMessage:Ljava/lang/String;

    .line 159
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer$HandleMessageTask;->mPath:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    const-string v0, "/wearablebridge/lifecycle"

    iget-object v1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer$HandleMessageTask;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 168
    iget-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer$HandleMessageTask;->mMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 170
    const-string v0, "msg-life-cycle-on-resume"

    iget-object v1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer$HandleMessageTask;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 171
    iget-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer$HandleMessageTask;->this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;

    # getter for: Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;->mLifeCycleObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$LifeCycleObserver;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;->access$300(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;)Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$LifeCycleObserver;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$LifeCycleObserver;->onResume()V

    goto :goto_0

    .line 172
    :cond_2
    const-string v0, "msg-life-cycle-on-pause"

    iget-object v1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer$HandleMessageTask;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer$HandleMessageTask;->this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;

    # getter for: Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;->mLifeCycleObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$LifeCycleObserver;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;->access$300(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;)Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$LifeCycleObserver;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$LifeCycleObserver;->onPause()V

    goto :goto_0

    .line 177
    :cond_3
    const-string v0, "/wearablebridge/photo"

    iget-object v1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer$HandleMessageTask;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 178
    iget-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer$HandleMessageTask;->mMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 180
    const-string v0, "msg-photo-on-capture-requested"

    iget-object v1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer$HandleMessageTask;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer$HandleMessageTask;->this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;

    # getter for: Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;->mPhotoEventObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$PhotoEventObserver;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;->access$400(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;)Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$PhotoEventObserver;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$PhotoEventObserver;->onPhotoCaptureRequested()V

    goto :goto_0

    .line 185
    :cond_4
    const-string v0, "/wearablebridge/video"

    iget-object v1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer$HandleMessageTask;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer$HandleMessageTask;->mMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 188
    const-string v0, "msg-video-on-start-rec-requested"

    iget-object v1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer$HandleMessageTask;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 189
    iget-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer$HandleMessageTask;->this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;

    # getter for: Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;->mVideoEventObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$VideoEventObserver;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;->access$500(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;)Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$VideoEventObserver;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$VideoEventObserver;->onStartVideoRecRequested()V

    goto :goto_0

    .line 190
    :cond_5
    const-string v0, "msg-video-on-stop-rec-requested"

    iget-object v1, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer$HandleMessageTask;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer$HandleMessageTask;->this$0:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;

    # getter for: Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;->mVideoEventObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$VideoEventObserver;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;->access$500(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/server/WearableBridgeServer;)Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$VideoEventObserver;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$VideoEventObserver;->onStopVideoRecRequested()V

    goto/16 :goto_0
.end method
