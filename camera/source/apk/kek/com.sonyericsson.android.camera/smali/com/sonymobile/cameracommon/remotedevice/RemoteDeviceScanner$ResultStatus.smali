.class public final enum Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$ResultStatus;
.super Ljava/lang/Enum;
.source "RemoteDeviceScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResultStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$ResultStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$ResultStatus;

.field public static final enum NETWORK_ERROR:Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$ResultStatus;

.field public static final enum NO_ERROR:Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$ResultStatus;

.field public static final enum TIMEOUTED:Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$ResultStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 75
    new-instance v0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$ResultStatus;

    const-string v1, "NO_ERROR"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$ResultStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$ResultStatus;->NO_ERROR:Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$ResultStatus;

    .line 80
    new-instance v0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$ResultStatus;

    const-string v1, "TIMEOUTED"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$ResultStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$ResultStatus;->TIMEOUTED:Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$ResultStatus;

    .line 85
    new-instance v0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$ResultStatus;

    const-string v1, "NETWORK_ERROR"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$ResultStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$ResultStatus;->NETWORK_ERROR:Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$ResultStatus;

    .line 71
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$ResultStatus;

    sget-object v1, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$ResultStatus;->NO_ERROR:Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$ResultStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$ResultStatus;->TIMEOUTED:Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$ResultStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$ResultStatus;->NETWORK_ERROR:Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$ResultStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$ResultStatus;->$VALUES:[Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$ResultStatus;

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
    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$ResultStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 71
    const-class v0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$ResultStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$ResultStatus;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$ResultStatus;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$ResultStatus;->$VALUES:[Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$ResultStatus;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$ResultStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/remotedevice/RemoteDeviceScanner$ResultStatus;

    return-object v0
.end method
