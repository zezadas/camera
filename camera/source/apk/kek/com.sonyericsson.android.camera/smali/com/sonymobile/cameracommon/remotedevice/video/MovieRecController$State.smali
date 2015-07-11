.class final enum Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;
.super Ljava/lang/Enum;
.source "MovieRecController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;

.field public static final enum IDLE:Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;

.field public static final enum RECORDING:Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;

.field public static final enum REC_START_REQUESTED:Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;

.field public static final enum REC_STOP_REQUESTED:Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;

.field public static final enum WAIT_FOR_READY_TO_RECORD:Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 57
    new-instance v0, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;->IDLE:Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;

    .line 58
    new-instance v0, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;

    const-string v1, "REC_START_REQUESTED"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;->REC_START_REQUESTED:Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;

    .line 59
    new-instance v0, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;

    const-string v1, "WAIT_FOR_READY_TO_RECORD"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;->WAIT_FOR_READY_TO_RECORD:Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;

    .line 60
    new-instance v0, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;

    const-string v1, "RECORDING"

    invoke-direct {v0, v1, v5}, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;->RECORDING:Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;

    .line 61
    new-instance v0, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;

    const-string v1, "REC_STOP_REQUESTED"

    invoke-direct {v0, v1, v6}, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;->REC_STOP_REQUESTED:Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;

    .line 56
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;

    sget-object v1, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;->IDLE:Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;->REC_START_REQUESTED:Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;->WAIT_FOR_READY_TO_RECORD:Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;->RECORDING:Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;->REC_STOP_REQUESTED:Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;->$VALUES:[Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;

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
    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 56
    const-class v0, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;->$VALUES:[Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/remotedevice/video/MovieRecController$State;

    return-object v0
.end method
