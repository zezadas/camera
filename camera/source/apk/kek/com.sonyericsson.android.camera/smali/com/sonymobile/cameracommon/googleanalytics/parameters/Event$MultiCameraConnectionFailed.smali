.class public final enum Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraConnectionFailed;
.super Ljava/lang/Enum;
.source "Event.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MultiCameraConnectionFailed"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraConnectionFailed;",
        ">;",
        "Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Action;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraConnectionFailed;

.field public static final enum APP_VER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraConnectionFailed;

.field public static final enum CONNECTION_FAILURE:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraConnectionFailed;

.field public static final enum DI_CONNECTION:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraConnectionFailed;

.field public static final enum EXCESS_CONNECTION_NUM:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraConnectionFailed;

.field public static final enum EXCESS_DI_CONNECTION_NUM:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraConnectionFailed;

.field public static final enum NFC_LOCKED:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraConnectionFailed;

.field public static final enum WIFI_TETHERING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraConnectionFailed;

.field public static final enum XPERIA_CONNECTION:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraConnectionFailed;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 60
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraConnectionFailed;

    const-string v1, "EXCESS_CONNECTION_NUM"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraConnectionFailed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraConnectionFailed;->EXCESS_CONNECTION_NUM:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraConnectionFailed;

    .line 61
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraConnectionFailed;

    const-string v1, "CONNECTION_FAILURE"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraConnectionFailed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraConnectionFailed;->CONNECTION_FAILURE:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraConnectionFailed;

    .line 62
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraConnectionFailed;

    const-string v1, "XPERIA_CONNECTION"

    invoke-direct {v0, v1, v5}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraConnectionFailed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraConnectionFailed;->XPERIA_CONNECTION:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraConnectionFailed;

    .line 63
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraConnectionFailed;

    const-string v1, "DI_CONNECTION"

    invoke-direct {v0, v1, v6}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraConnectionFailed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraConnectionFailed;->DI_CONNECTION:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraConnectionFailed;

    .line 64
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraConnectionFailed;

    const-string v1, "EXCESS_DI_CONNECTION_NUM"

    invoke-direct {v0, v1, v7}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraConnectionFailed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraConnectionFailed;->EXCESS_DI_CONNECTION_NUM:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraConnectionFailed;

    .line 65
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraConnectionFailed;

    const-string v1, "APP_VER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraConnectionFailed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraConnectionFailed;->APP_VER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraConnectionFailed;

    .line 66
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraConnectionFailed;

    const-string v1, "NFC_LOCKED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraConnectionFailed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraConnectionFailed;->NFC_LOCKED:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraConnectionFailed;

    .line 67
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraConnectionFailed;

    const-string v1, "WIFI_TETHERING"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraConnectionFailed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraConnectionFailed;->WIFI_TETHERING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraConnectionFailed;

    .line 59
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraConnectionFailed;

    sget-object v1, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraConnectionFailed;->EXCESS_CONNECTION_NUM:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraConnectionFailed;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraConnectionFailed;->CONNECTION_FAILURE:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraConnectionFailed;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraConnectionFailed;->XPERIA_CONNECTION:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraConnectionFailed;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraConnectionFailed;->DI_CONNECTION:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraConnectionFailed;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraConnectionFailed;->EXCESS_DI_CONNECTION_NUM:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraConnectionFailed;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraConnectionFailed;->APP_VER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraConnectionFailed;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraConnectionFailed;->NFC_LOCKED:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraConnectionFailed;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraConnectionFailed;->WIFI_TETHERING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraConnectionFailed;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraConnectionFailed;->$VALUES:[Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraConnectionFailed;

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
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraConnectionFailed;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 59
    const-class v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraConnectionFailed;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraConnectionFailed;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraConnectionFailed;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraConnectionFailed;->$VALUES:[Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraConnectionFailed;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraConnectionFailed;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraConnectionFailed;

    return-object v0
.end method
