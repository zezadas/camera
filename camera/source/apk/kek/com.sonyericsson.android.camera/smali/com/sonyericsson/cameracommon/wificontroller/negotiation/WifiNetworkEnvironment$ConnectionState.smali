.class final enum Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectionState;
.super Ljava/lang/Enum;
.source "WifiNetworkEnvironment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ConnectionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectionState;

.field public static final enum CONNECTED:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectionState;

.field public static final enum CONNECTING:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectionState;

.field public static final enum DISCONNECTED:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectionState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 65
    new-instance v0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectionState;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectionState;->CONNECTED:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectionState;

    .line 66
    new-instance v0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectionState;

    const-string v1, "CONNECTING"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectionState;->CONNECTING:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectionState;

    .line 67
    new-instance v0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectionState;

    const-string v1, "DISCONNECTED"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectionState;->DISCONNECTED:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectionState;

    .line 64
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectionState;

    sget-object v1, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectionState;->CONNECTED:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectionState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectionState;->CONNECTING:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectionState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectionState;->DISCONNECTED:Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectionState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectionState;->$VALUES:[Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectionState;

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
    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectionState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 64
    const-class v0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectionState;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectionState;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectionState;->$VALUES:[Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectionState;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/wificontroller/negotiation/WifiNetworkEnvironment$ConnectionState;

    return-object v0
.end method
