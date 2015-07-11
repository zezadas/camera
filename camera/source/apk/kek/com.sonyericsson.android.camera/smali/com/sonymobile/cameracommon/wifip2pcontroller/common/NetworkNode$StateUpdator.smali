.class public interface abstract Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdator;
.super Ljava/lang/Object;
.source "NetworkNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StateUpdator"
.end annotation


# virtual methods
.method public abstract done()V
.end method

.method public abstract setClientApplicationVersionCode(I)Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdator;
.end method

.method public abstract setGroupOwner(Z)Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdator;
.end method

.method public abstract setIpAddress(Ljava/lang/String;)Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdator;
.end method

.method public abstract setMacAddress(Ljava/lang/String;)Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdator;
.end method

.method public abstract setPublicOpenedStreamSet(Ljava/util/Set;)Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$Stream;",
            ">;)",
            "Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdator;"
        }
    .end annotation
.end method

.method public abstract setRequiredStreamSet(Ljava/util/Set;)Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$Stream;",
            ">;)",
            "Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdator;"
        }
    .end annotation
.end method

.method public abstract setScreenName(Ljava/lang/String;)Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdator;
.end method

.method public abstract setStatus(I)Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdator;
.end method

.method public abstract setTcpPort(I)Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdator;
.end method

.method public abstract setUdpPort(I)Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdator;
.end method
