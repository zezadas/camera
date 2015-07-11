.class public interface abstract Lcom/sonymobile/cameracommon/remotedevice/event/EventObserverCallback;
.super Ljava/lang/Object;
.source "EventObserverCallback.java"


# virtual methods
.method public abstract onAvailableApiSetChanged(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onCameraStatusChanged(Ljava/lang/String;)V
.end method

.method public abstract onErrorStopped()V
.end method

.method public abstract onShootModeChanged(Ljava/lang/String;)V
.end method
