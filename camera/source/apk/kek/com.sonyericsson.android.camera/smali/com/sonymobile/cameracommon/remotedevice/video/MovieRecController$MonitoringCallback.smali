.class Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$MonitoringCallback;
.super Ljava/lang/Object;
.source "MovieRecController.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MonitoringCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$MonitoringCallback;->this$0:Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;
    .param p2, "x1"    # Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$1;

    .prologue
    .line 211
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$MonitoringCallback;-><init>(Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;)V

    return-void
.end method


# virtual methods
.method public onAvailableApiSetChanged(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 222
    .local p1, "apiList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    return-void
.end method

.method public onCameraStatusChanged(Ljava/lang/String;)V
    .locals 3
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 228
    sget-object v0, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$3;->$SwitchMap$com$sonymobile$cameracommon$remotedevice$video$MovieRecController$State:[I

    iget-object v1, p0, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$MonitoringCallback;->this$0:Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;

    # getter for: Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;->mCurrentState:Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;
    invoke-static {v1}, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;->access$500(Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;)Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 268
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected state."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :pswitch_0
    const-string v0, "MovieRecording"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$MonitoringCallback;->this$0:Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;

    # getter for: Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;->mCallbackExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;->access$700(Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$NotifyOnMovieRecStartedTask;

    iget-object v2, p0, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$MonitoringCallback;->this$0:Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;

    # getter for: Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;->mCallback:Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecCallback;
    invoke-static {v2}, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;->access$600(Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;)Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecCallback;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$NotifyOnMovieRecStartedTask;-><init>(Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 238
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$MonitoringCallback;->this$0:Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;

    sget-object v1, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;->RECORDING:Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;

    # invokes: Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;->changeStateTo(Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;)V
    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;->access$800(Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;)V

    .line 270
    :cond_0
    :goto_0
    :pswitch_1
    return-void

    .line 243
    :pswitch_2
    const-string v0, "IDLE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$MonitoringCallback;->this$0:Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;

    # invokes: Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;->doStartMovieRecInternal()V
    invoke-static {v0}, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;->access$900(Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;)V

    .line 247
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$MonitoringCallback;->this$0:Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;

    sget-object v1, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;->REC_START_REQUESTED:Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;

    # invokes: Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;->changeStateTo(Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;)V
    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;->access$800(Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;)V

    goto :goto_0

    .line 256
    :pswitch_3
    const-string v0, "IDLE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$MonitoringCallback;->this$0:Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;

    # getter for: Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;->mCallbackExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;->access$700(Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$NotifyOnMovieRecStoppedTask;

    iget-object v2, p0, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$MonitoringCallback;->this$0:Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;

    # getter for: Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;->mCallback:Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecCallback;
    invoke-static {v2}, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;->access$600(Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;)Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecCallback;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$NotifyOnMovieRecStoppedTask;-><init>(Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 261
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$MonitoringCallback;->this$0:Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;

    const/4 v1, 0x0

    # setter for: Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;->mCallback:Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecCallback;
    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;->access$602(Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecCallback;)Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecCallback;

    .line 263
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$MonitoringCallback;->this$0:Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;

    sget-object v1, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;->IDLE:Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;

    # invokes: Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;->changeStateTo(Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;)V
    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;->access$800(Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;)V

    goto :goto_0

    .line 228
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onErrorStopped()V
    .locals 0

    .prologue
    .line 216
    return-void
.end method

.method public onShootModeChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "shootMode"    # Ljava/lang/String;

    .prologue
    .line 276
    iget-object v0, p0, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$MonitoringCallback;->this$0:Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;

    # setter for: Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;->mCurrentShootMode:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;->access$1002(Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;Ljava/lang/String;)Ljava/lang/String;

    .line 277
    return-void
.end method
