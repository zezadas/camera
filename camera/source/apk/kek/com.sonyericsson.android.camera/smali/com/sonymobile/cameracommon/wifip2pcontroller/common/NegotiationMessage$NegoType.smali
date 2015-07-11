.class public final enum Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoType;
.super Ljava/lang/Enum;
.source "NegotiationMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NegoType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoType;

.field public static final enum CONNECTION_REQUEST:Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoType;

.field public static final enum GROUP_CLIENT_IDENTIFIER:Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoType;

.field public static final enum NODE_STATUS_UPDATE:Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-instance v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoType;

    const-string v1, "GROUP_CLIENT_IDENTIFIER"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoType;->GROUP_CLIENT_IDENTIFIER:Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoType;

    .line 34
    new-instance v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoType;

    const-string v1, "NODE_STATUS_UPDATE"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoType;->NODE_STATUS_UPDATE:Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoType;

    .line 39
    new-instance v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoType;

    const-string v1, "CONNECTION_REQUEST"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoType;->CONNECTION_REQUEST:Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoType;

    .line 25
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoType;

    sget-object v1, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoType;->GROUP_CLIENT_IDENTIFIER:Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoType;->NODE_STATUS_UPDATE:Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoType;->CONNECTION_REQUEST:Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoType;->$VALUES:[Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoType;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoType;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoType;->$VALUES:[Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoType;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoType;

    return-object v0
.end method
