.class Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController$NotifyOnShootModeChangedTask;
.super Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController$NotifyCallbackBaseTask;
.source "EventObserverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotifyOnShootModeChangedTask"
.end annotation


# instance fields
.field private final mNewShootMode:Ljava/lang/String;

.field final synthetic this$0:Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;


# direct methods
.method public constructor <init>(Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;Ljava/util/Set;Ljava/lang/String;)V
    .locals 0
    .param p3, "shootMode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverCallback;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 356
    .local p2, "callbacks":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverCallback;>;"
    iput-object p1, p0, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController$NotifyOnShootModeChangedTask;->this$0:Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;

    .line 357
    invoke-direct {p0, p2}, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController$NotifyCallbackBaseTask;-><init>(Ljava/util/Set;)V

    .line 358
    iput-object p3, p0, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController$NotifyOnShootModeChangedTask;->mNewShootMode:Ljava/lang/String;

    .line 359
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 363
    iget-object v2, p0, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController$NotifyOnShootModeChangedTask;->mCallbacks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverCallback;

    .line 364
    .local v0, "eachCallback":Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverCallback;
    iget-object v2, p0, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController$NotifyOnShootModeChangedTask;->mNewShootMode:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverCallback;->onShootModeChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 366
    .end local v0    # "eachCallback":Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverCallback;
    :cond_0
    return-void
.end method
