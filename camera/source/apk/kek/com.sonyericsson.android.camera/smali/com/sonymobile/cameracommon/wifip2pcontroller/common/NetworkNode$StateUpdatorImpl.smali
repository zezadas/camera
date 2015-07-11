.class Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdatorImpl;
.super Ljava/lang/Object;
.source "NetworkNode.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateUpdatorImpl"
.end annotation


# instance fields
.field private final mStateBefore:Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

.field final synthetic this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;)V
    .locals 1

    .prologue
    .line 299
    iput-object p1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdatorImpl;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdatorImpl;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->clone()Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdatorImpl;->mStateBefore:Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
    .param p2, "x1"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$1;

    .prologue
    .line 299
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdatorImpl;-><init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;)V

    return-void
.end method


# virtual methods
.method public done()V
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdatorImpl;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    # getter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mCallback:Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$OnNetworkNodeStateChangedCallback;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->access$100(Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;)Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$OnNetworkNodeStateChangedCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdatorImpl;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdatorImpl;->mStateBefore:Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdatorImpl;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    # getter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mCallback:Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$OnNetworkNodeStateChangedCallback;
    invoke-static {v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->access$100(Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;)Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$OnNetworkNodeStateChangedCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdatorImpl;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    invoke-interface {v0, v1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$OnNetworkNodeStateChangedCallback;->onNetworkNodeStateChanged(Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;)V

    .line 308
    :cond_0
    return-void
.end method

.method public setClientApplicationVersionCode(I)Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdator;
    .locals 1
    .param p1, "versionCode"    # I

    .prologue
    .line 312
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdatorImpl;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    # setter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mClientApplicationVersionCode:I
    invoke-static {v0, p1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->access$202(Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;I)I

    .line 313
    return-object p0
.end method

.method public setGroupOwner(Z)Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdator;
    .locals 1
    .param p1, "isGroupOwner"    # Z

    .prologue
    .line 336
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdatorImpl;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    # setter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mIsGroupOwner:Z
    invoke-static {v0, p1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->access$602(Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;Z)Z

    .line 337
    return-object p0
.end method

.method public setIpAddress(Ljava/lang/String;)Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdator;
    .locals 1
    .param p1, "ipAddress"    # Ljava/lang/String;

    .prologue
    .line 342
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdatorImpl;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    # setter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mIpAddress:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->access$702(Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;Ljava/lang/String;)Ljava/lang/String;

    .line 343
    return-object p0
.end method

.method public setMacAddress(Ljava/lang/String;)Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdator;
    .locals 1
    .param p1, "macAddress"    # Ljava/lang/String;

    .prologue
    .line 318
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdatorImpl;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    # setter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mMacAddress:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->access$302(Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;Ljava/lang/String;)Ljava/lang/String;

    .line 319
    return-object p0
.end method

.method public setPublicOpenedStreamSet(Ljava/util/Set;)Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdator;
    .locals 1
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

    .prologue
    .line 360
    .local p1, "streamSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$Stream;>;"
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdatorImpl;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    # setter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mPublicOpenedStreamSet:Ljava/util/Set;
    invoke-static {v0, p1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->access$1002(Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;Ljava/util/Set;)Ljava/util/Set;

    .line 361
    return-object p0
.end method

.method public setRequiredStreamSet(Ljava/util/Set;)Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdator;
    .locals 2
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

    .prologue
    .line 366
    .local p1, "streamSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$Stream;>;"
    if-eqz p1, :cond_0

    .line 367
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdatorImpl;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    # setter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mRequiredStreamSet:Ljava/util/Set;
    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->access$1102(Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;Ljava/util/Set;)Ljava/util/Set;

    .line 369
    :cond_0
    return-object p0
.end method

.method public setScreenName(Ljava/lang/String;)Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdator;
    .locals 1
    .param p1, "screenName"    # Ljava/lang/String;

    .prologue
    .line 324
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdatorImpl;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    # setter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mScreenName:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->access$402(Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;Ljava/lang/String;)Ljava/lang/String;

    .line 325
    return-object p0
.end method

.method public setStatus(I)Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdator;
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 330
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdatorImpl;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    # setter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mStatus:I
    invoke-static {v0, p1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->access$502(Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;I)I

    .line 331
    return-object p0
.end method

.method public setTcpPort(I)Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdator;
    .locals 1
    .param p1, "tcpPort"    # I

    .prologue
    .line 348
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdatorImpl;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    # setter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mTcpPort:I
    invoke-static {v0, p1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->access$802(Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;I)I

    .line 349
    return-object p0
.end method

.method public setUdpPort(I)Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdator;
    .locals 1
    .param p1, "udpPort"    # I

    .prologue
    .line 354
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode$StateUpdatorImpl;->this$0:Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    # setter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->mUdpPort:I
    invoke-static {v0, p1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->access$902(Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;I)I

    .line 355
    return-object p0
.end method
