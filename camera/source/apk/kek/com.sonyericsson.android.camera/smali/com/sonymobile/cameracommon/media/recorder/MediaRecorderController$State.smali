.class final enum Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;
.super Ljava/lang/Enum;
.source "MediaRecorderController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;

.field public static final enum IDLE:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;

.field public static final enum PAUSED:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;

.field public static final enum PREPARED:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;

.field public static final enum RECORDING:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;

.field public static final enum STOPPING:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 143
    new-instance v0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;

    const-string v1, "RECORDING"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;->RECORDING:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;

    .line 144
    new-instance v0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;

    const-string v1, "PAUSED"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;->PAUSED:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;

    .line 145
    new-instance v0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;

    const-string v1, "PREPARED"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;->PREPARED:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;

    .line 146
    new-instance v0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;

    const-string v1, "STOPPING"

    invoke-direct {v0, v1, v5}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;->STOPPING:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;

    .line 147
    new-instance v0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v6}, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;->IDLE:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;

    .line 142
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;

    sget-object v1, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;->RECORDING:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;->PAUSED:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;->PREPARED:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;->STOPPING:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;->IDLE:Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;->$VALUES:[Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;

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
    .line 142
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 142
    const-class v0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;
    .locals 1

    .prologue
    .line 142
    sget-object v0, Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;->$VALUES:[Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/media/recorder/MediaRecorderController$State;

    return-object v0
.end method
