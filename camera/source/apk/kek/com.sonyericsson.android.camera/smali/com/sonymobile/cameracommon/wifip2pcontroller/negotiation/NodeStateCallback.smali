.class public interface abstract Lcom/sonymobile/cameracommon/wifip2pcontroller/negotiation/NodeStateCallback;
.super Ljava/lang/Object;
.source "NodeStateCallback.java"


# virtual methods
.method public abstract onRemoteNodeSetChanged(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onThisNodeChanged(Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;)V
.end method
