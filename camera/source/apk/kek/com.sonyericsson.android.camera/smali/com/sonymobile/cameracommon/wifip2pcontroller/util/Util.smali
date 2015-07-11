.class public Lcom/sonymobile/cameracommon/wifip2pcontroller/util/Util;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/wifip2pcontroller/util/Util$IntentionalThreadFactory;
    }
.end annotation


# static fields
.field private static final NODE_ID_DELIMITER:Ljava/lang/String; = "/"

.field public static final STREAM_ID_REMOTE_DEVICE:I = 0xc8

.field public static final STREAM_ID_XPERIA:I = 0xc9


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method

.method public static byteArray2Integer([BII)I
    .locals 4
    .param p0, "bytes"    # [B
    .param p1, "start"    # I
    .param p2, "size"    # I

    .prologue
    .line 36
    const/4 v1, 0x0

    .line 38
    .local v1, "ret":I
    move v0, p1

    .local v0, "i":I
    :goto_0
    add-int v2, p1, p2

    if-ge v0, v2, :cond_0

    .line 39
    shl-int/lit8 v2, v1, 0x8

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    or-int v1, v2, v3

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 42
    :cond_0
    return v1
.end method

.method public static checkDiffWithMacAddressAndGetOnlyIncludedInLeftSet(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .locals 8
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
            ">;)",
            "Ljava/util/Set",
            "<",
            "Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    .local p0, "inputSetLeft":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;>;"
    .local p1, "inputSetRight":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;>;"
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 198
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Arguments must not be NULL."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 201
    :cond_1
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 203
    .local v4, "onlyLeftSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;>;"
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 204
    .local v3, "leftItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;>;"
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 205
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    .line 207
    .local v0, "eachLeftNode":Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
    const/4 v2, 0x0

    .line 208
    .local v2, "isHit":Z
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 210
    .local v5, "rightItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;>;"
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 211
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    .line 213
    .local v1, "eachRightNode":Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->equalsWithMacAddress(Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 215
    const/4 v2, 0x1

    .line 220
    .end local v1    # "eachRightNode":Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
    :cond_4
    if-nez v2, :cond_2

    .line 222
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 226
    .end local v0    # "eachLeftNode":Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
    .end local v2    # "isHit":Z
    .end local v5    # "rightItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;>;"
    :cond_5
    return-object v4
.end method

.method public static getLayoutNodeId(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "macAddress"    # Ljava/lang/String;
    .param p1, "streamId"    # I

    .prologue
    .line 282
    const/16 v1, 0xc8

    if-eq p1, v1, :cond_0

    .line 283
    const/16 p1, 0xc9

    .line 286
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 287
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getNetworkNodeWithIpAddress(Ljava/util/Set;Ljava/lang/String;)Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
    .locals 5
    .param p1, "targetIpAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;"
        }
    .end annotation

    .prologue
    .line 142
    .local p0, "targetSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;>;"
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 143
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Arguments must not be NULL."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 146
    :cond_1
    const/4 v1, 0x0

    .line 148
    .local v1, "hitNode":Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 149
    .local v2, "targetItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 150
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    .line 151
    .local v0, "eachNode":Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->getIpAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 152
    move-object v1, v0

    .line 157
    .end local v0    # "eachNode":Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
    :cond_3
    return-object v1
.end method

.method public static getNetworkNodeWithMacAddress(Ljava/util/Set;Ljava/lang/String;)Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
    .locals 5
    .param p1, "targetMacAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;"
        }
    .end annotation

    .prologue
    .line 114
    .local p0, "targetSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;>;"
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 115
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Arguments must not be NULL."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 118
    :cond_1
    const/4 v1, 0x0

    .line 120
    .local v1, "hitNode":Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 121
    .local v2, "targetItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 122
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    .line 123
    .local v0, "eachNode":Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->getMacAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 124
    move-object v1, v0

    .line 129
    .end local v0    # "eachNode":Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
    :cond_3
    return-object v1
.end method

.method public static integer2ByteArray(I)[B
    .locals 1
    .param p0, "integer"    # I

    .prologue
    .line 52
    const/4 v0, 0x4

    invoke-static {v0, p0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/util/Util;->integer2ByteArray(II)[B

    move-result-object v0

    return-object v0
.end method

.method public static integer2ByteArray(II)[B
    .locals 4
    .param p0, "byteLength"    # I
    .param p1, "integer"    # I

    .prologue
    .line 63
    new-array v2, p0, [B

    .line 65
    .local v2, "ret":[B
    const/4 v0, 0x0

    .line 66
    .local v0, "bitShiftSize":I
    add-int/lit8 v1, p0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 67
    shr-int v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 68
    add-int/lit8 v0, v0, 0x8

    .line 66
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 71
    :cond_0
    return-object v2
.end method

.method public static isEqualEachNodesWithMacAddress(Ljava/util/Set;Ljava/util/Set;)Z
    .locals 4
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
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "nodeSet0":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;>;"
    .local p1, "nodeSet1":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;>;"
    const/4 v2, 0x0

    .line 261
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-eq v1, v3, :cond_0

    move v1, v2

    .line 269
    :goto_0
    return v1

    .line 263
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 264
    .local v0, "nodes1":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 265
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/util/Util;->getNetworkNodeWithMacAddress(Ljava/util/Set;Ljava/lang/String;)Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    move-result-object v1

    if-nez v1, :cond_1

    move v1, v2

    .line 266
    goto :goto_0

    .line 269
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isIdenticalFrameId(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 5
    .param p0, "macAddress"    # Ljava/lang/String;
    .param p1, "streamId"    # I
    .param p2, "frameId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 296
    const-string v3, "/"

    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, "split":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v3, v0

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    .line 301
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Frame ID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 304
    :cond_1
    aget-object v3, v0, v2

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    aget-object v3, v0, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, p1, :cond_2

    .line 309
    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public static removeNetworkNodeWithMacAddress(Ljava/util/Set;Ljava/lang/String;)V
    .locals 5
    .param p1, "targetMacAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 169
    .local p0, "targetSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;>;"
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 170
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Arguments must not be NULL."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 173
    :cond_1
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 174
    .local v2, "targetItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;>;"
    const/4 v1, 0x0

    .line 175
    .local v1, "removeNode":Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 176
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    .line 177
    .local v0, "eachNode":Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->getMacAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 178
    move-object v1, v0

    .line 182
    .end local v0    # "eachNode":Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
    :cond_3
    if-eqz v1, :cond_4

    .line 183
    invoke-interface {p0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 185
    :cond_4
    return-void
.end method

.method public static updateNetworkNodeState(Ljava/util/Set;Ljava/util/Set;)V
    .locals 5
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
            ">;)V"
        }
    .end annotation

    .prologue
    .line 236
    .local p0, "fromSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;>;"
    .local p1, "toSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;>;"
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 238
    .local v2, "fromItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 239
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    .line 241
    .local v0, "eachFromNode":Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 242
    .local v3, "toItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;>;"
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 243
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    .line 245
    .local v1, "eachToNode":Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->equalsWithMacAddress(Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 246
    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->copy(Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;)V

    goto :goto_0

    .line 251
    .end local v0    # "eachFromNode":Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
    .end local v1    # "eachToNode":Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
    .end local v3    # "toItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;>;"
    :cond_2
    return-void
.end method
