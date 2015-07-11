.class public Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage;
.super Ljava/lang/Object;
.source "NegotiationMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoMsg;,
        Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage$NegoType;
    }
.end annotation


# static fields
.field private static final NEGO_MSG_VERSION:D = 1.0

.field private static sIncrementalCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage;->sIncrementalCode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 15
    sget v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage;->sIncrementalCode:I

    return v0
.end method

.method static synthetic access$004()I
    .locals 1

    .prologue
    .line 15
    sget v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage;->sIncrementalCode:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/sonymobile/cameracommon/wifip2pcontroller/common/NegotiationMessage;->sIncrementalCode:I

    return v0
.end method
