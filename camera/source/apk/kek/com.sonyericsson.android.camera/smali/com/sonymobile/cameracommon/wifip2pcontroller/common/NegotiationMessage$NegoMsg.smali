.class public Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoMsg;
.super Ljava/lang/Object;
.source "NegotiationMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NegoMsg"
.end annotation


# instance fields
.field private final mIncrementalCode:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field

.field private final mNetworkNodeJsonStringArray:[Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field

.field private final mPassKey:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field

.field private final mType:Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoType;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoType;I[Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;)V
    .locals 3
    .param p1, "type"    # Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoType;
    .param p2, "passKey"    # I
    .param p3, "networkNodeArray"    # [Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoMsg;->mType:Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoType;

    .line 78
    iput p2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoMsg;->mPassKey:I

    .line 80
    array-length v1, p3

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoMsg;->mNetworkNodeJsonStringArray:[Ljava/lang/String;

    .line 81
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoMsg;->mNetworkNodeJsonStringArray:[Ljava/lang/String;

    aget-object v2, p3, v0

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->encodeToJson()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_0
    # getter for: Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage;->sIncrementalCode:I
    invoke-static {}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage;->access$000()I

    move-result v1

    iput v1, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoMsg;->mIncrementalCode:I

    .line 87
    # ++operator for: Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage;->sIncrementalCode:I
    invoke-static {}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage;->access$004()I

    .line 88
    return-void
.end method

.method public static decodeFromJson(Ljava/lang/String;)Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoMsg;
    .locals 4
    .param p0, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 166
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-class v1, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoMsg;

    invoke-static {v2, v3, p0, v1}, Lcom/sonyericsson/cameracommon/utility/Json;->decodeFromJson(DLjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoMsg;

    .line 170
    .local v0, "negoMsg":Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoMsg;
    return-object v0
.end method


# virtual methods
.method public encodeToJson()Ljava/lang/String;
    .locals 4

    .prologue
    .line 152
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-class v1, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoMsg;

    invoke-static {v2, v3, p0, v1}, Lcom/sonyericsson/cameracommon/utility/Json;->encodeToJson(DLjava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "jsonString":Ljava/lang/String;
    return-object v0
.end method

.method public getMessageType()Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoType;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoMsg;->mType:Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoType;

    return-object v0
.end method

.method public getNetworkNodeArray()[Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
    .locals 3

    .prologue
    .line 114
    iget-object v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoMsg;->mNetworkNodeJsonStringArray:[Ljava/lang/String;

    array-length v2, v2

    new-array v1, v2, [Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    .line 115
    .local v1, "networkNodeArray":[Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoMsg;->mNetworkNodeJsonStringArray:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 116
    iget-object v2, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoMsg;->mNetworkNodeJsonStringArray:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;->decodeFromJson(Ljava/lang/String;)Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NetworkNode;

    move-result-object v2

    aput-object v2, v1, v0

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    :cond_0
    return-object v1
.end method

.method public getPassKey()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoMsg;->mPassKey:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .local v1, "builder":Ljava/lang/StringBuilder;
    const-string v5, "NegoMsg:\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "    TYPE : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoMsg;->mType:Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoType;

    invoke-virtual {v6}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoType;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "    PASS KEY : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoMsg;->mPassKey:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "    INCREMENTAL CODE : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoMsg;->mIncrementalCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    const-string v5, "    NODE JSON STRING :\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    iget-object v5, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoMsg;->mNetworkNodeJsonStringArray:[Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 135
    iget-object v0, p0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoMsg;->mNetworkNodeJsonStringArray:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 136
    .local v2, "eachString":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 143
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "eachString":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
