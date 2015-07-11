.class Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController$NotifyOnAvailableApiSetChangedTask;
.super Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController$NotifyCallbackBaseTask;
.source "EventObserverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NotifyOnAvailableApiSetChangedTask"
.end annotation


# instance fields
.field private final mNewApiSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Set;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverCallback;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 305
    .local p1, "callbacks":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverCallback;>;"
    .local p2, "newApiSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController$NotifyCallbackBaseTask;-><init>(Ljava/util/Set;)V

    .line 306
    iput-object p2, p0, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController$NotifyOnAvailableApiSetChangedTask;->mNewApiSet:Ljava/util/Set;

    .line 307
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 311
    iget-object v2, p0, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController$NotifyOnAvailableApiSetChangedTask;->mCallbacks:Ljava/util/Set;

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

    .line 312
    .local v0, "eachCallback":Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverCallback;
    iget-object v2, p0, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController$NotifyOnAvailableApiSetChangedTask;->mNewApiSet:Ljava/util/Set;

    invoke-interface {v0, v2}, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverCallback;->onAvailableApiSetChanged(Ljava/util/Set;)V

    goto :goto_0

    .line 314
    .end local v0    # "eachCallback":Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverCallback;
    :cond_0
    return-void
.end method
