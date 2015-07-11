.class abstract Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController$NotifyCallbackBaseTask;
.super Ljava/lang/Object;
.source "EventObserverController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "NotifyCallbackBaseTask"
.end annotation


# instance fields
.field protected final mCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverCallback;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 259
    .local p1, "callbacks":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverCallback;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    if-nez p1, :cond_0

    .line 261
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Callback must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_0
    iput-object p1, p0, Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverController$NotifyCallbackBaseTask;->mCallbacks:Ljava/util/Set;

    .line 265
    return-void
.end method


# virtual methods
.method public abstract run()V
.end method
