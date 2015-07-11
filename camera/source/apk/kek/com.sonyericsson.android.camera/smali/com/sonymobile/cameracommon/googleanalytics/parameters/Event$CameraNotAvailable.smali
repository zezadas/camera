.class public final enum Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CameraNotAvailable;
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
    name = "CameraNotAvailable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CameraNotAvailable;",
        ">;",
        "Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Action;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CameraNotAvailable;

.field public static final enum FAILED_TO_OPEN:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CameraNotAvailable;

.field public static final enum OTHER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CameraNotAvailable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 71
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CameraNotAvailable;

    const-string v1, "FAILED_TO_OPEN"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CameraNotAvailable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CameraNotAvailable;->FAILED_TO_OPEN:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CameraNotAvailable;

    .line 72
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CameraNotAvailable;

    const-string v1, "OTHER"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CameraNotAvailable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CameraNotAvailable;->OTHER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CameraNotAvailable;

    .line 70
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CameraNotAvailable;

    sget-object v1, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CameraNotAvailable;->FAILED_TO_OPEN:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CameraNotAvailable;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CameraNotAvailable;->OTHER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CameraNotAvailable;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CameraNotAvailable;->$VALUES:[Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CameraNotAvailable;

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
    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getType(Z)Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CameraNotAvailable;
    .locals 1
    .param p0, "isFailedToOpen"    # Z

    .prologue
    .line 76
    if-eqz p0, :cond_0

    sget-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CameraNotAvailable;->FAILED_TO_OPEN:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CameraNotAvailable;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CameraNotAvailable;->OTHER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CameraNotAvailable;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CameraNotAvailable;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 70
    const-class v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CameraNotAvailable;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CameraNotAvailable;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CameraNotAvailable;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CameraNotAvailable;->$VALUES:[Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CameraNotAvailable;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CameraNotAvailable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CameraNotAvailable;

    return-object v0
.end method
