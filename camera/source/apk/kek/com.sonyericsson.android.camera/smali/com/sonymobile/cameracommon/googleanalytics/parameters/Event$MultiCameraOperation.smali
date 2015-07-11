.class public final enum Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;
.super Ljava/lang/Enum;
.source "Event.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$UserOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MultiCameraOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;",
        ">;",
        "Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$UserOperation;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

.field public static final enum CONNECTED:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

.field public static final enum CONNECTING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

.field public static final enum CONNECTING_CONNECTED:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

.field public static final enum CONNECTING_CONNECTED_RECORDING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

.field public static final enum CONNECTING_CONNECTED_RECORDING_VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

.field public static final enum CONNECTING_CONNECTED_SHOOTING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

.field public static final enum CONNECTING_CONNECTED_SHOOTING_RECORDING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

.field public static final enum CONNECTING_CONNECTED_SHOOTING_RECORDING_VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

.field public static final enum CONNECTING_CONNECTED_SHOOTING_VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

.field public static final enum CONNECTING_CONNECTED_VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

.field public static final enum RECORDING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

.field public static final enum SHOOTING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

.field public static final enum VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;


# instance fields
.field private final mIsShooting:Z

.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 178
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

    const-string v1, "CONNECTING"

    invoke-direct {v0, v1, v5, v6, v5}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->CONNECTING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

    .line 180
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v6, v7, v5}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->CONNECTED:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

    .line 182
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

    const-string v1, "CONNECTING_CONNECTED"

    sget-object v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->CONNECTING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

    iget v2, v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->mValue:I

    sget-object v3, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->CONNECTED:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

    iget v3, v3, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->mValue:I

    or-int/2addr v2, v3

    invoke-direct {v0, v1, v7, v2, v5}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->CONNECTING_CONNECTED:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

    .line 184
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

    const-string v1, "SHOOTING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v8, v6}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->SHOOTING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

    .line 186
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

    const-string v1, "CONNECTING_CONNECTED_SHOOTING"

    sget-object v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->CONNECTING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

    iget v2, v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->mValue:I

    sget-object v3, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->CONNECTED:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

    iget v3, v3, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->mValue:I

    or-int/2addr v2, v3

    sget-object v3, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->SHOOTING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

    iget v3, v3, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->mValue:I

    or-int/2addr v2, v3

    invoke-direct {v0, v1, v8, v2, v5}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->CONNECTING_CONNECTED_SHOOTING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

    .line 188
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

    const-string v1, "RECORDING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v9, v5}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->RECORDING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

    .line 190
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

    const-string v1, "CONNECTING_CONNECTED_RECORDING"

    const/4 v2, 0x6

    sget-object v3, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->CONNECTING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

    iget v3, v3, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->mValue:I

    sget-object v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->CONNECTED:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

    iget v4, v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->mValue:I

    or-int/2addr v3, v4

    sget-object v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->RECORDING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

    iget v4, v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->mValue:I

    or-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->CONNECTING_CONNECTED_RECORDING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

    .line 192
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

    const-string v1, "CONNECTING_CONNECTED_SHOOTING_RECORDING"

    const/4 v2, 0x7

    sget-object v3, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->CONNECTING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

    iget v3, v3, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->mValue:I

    sget-object v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->CONNECTED:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

    iget v4, v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->mValue:I

    or-int/2addr v3, v4

    sget-object v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->SHOOTING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

    iget v4, v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->mValue:I

    or-int/2addr v3, v4

    sget-object v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->RECORDING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

    iget v4, v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->mValue:I

    or-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->CONNECTING_CONNECTED_SHOOTING_RECORDING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

    .line 195
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

    const-string v1, "VIEWER"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v9, v2, v5}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

    .line 197
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

    const-string v1, "CONNECTING_CONNECTED_VIEWER"

    const/16 v2, 0x9

    sget-object v3, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->CONNECTING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

    iget v3, v3, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->mValue:I

    sget-object v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->CONNECTED:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

    iget v4, v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->mValue:I

    or-int/2addr v3, v4

    sget-object v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

    iget v4, v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->mValue:I

    or-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->CONNECTING_CONNECTED_VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

    .line 199
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

    const-string v1, "CONNECTING_CONNECTED_SHOOTING_VIEWER"

    const/16 v2, 0xa

    sget-object v3, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->CONNECTING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

    iget v3, v3, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->mValue:I

    sget-object v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->CONNECTED:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

    iget v4, v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->mValue:I

    or-int/2addr v3, v4

    sget-object v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->SHOOTING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

    iget v4, v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->mValue:I

    or-int/2addr v3, v4

    sget-object v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

    iget v4, v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->mValue:I

    or-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->CONNECTING_CONNECTED_SHOOTING_VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

    .line 201
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

    const-string v1, "CONNECTING_CONNECTED_RECORDING_VIEWER"

    const/16 v2, 0xb

    sget-object v3, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->CONNECTING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

    iget v3, v3, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->mValue:I

    sget-object v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->CONNECTED:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

    iget v4, v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->mValue:I

    or-int/2addr v3, v4

    sget-object v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->RECORDING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

    iget v4, v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->mValue:I

    or-int/2addr v3, v4

    sget-object v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

    iget v4, v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->mValue:I

    or-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->CONNECTING_CONNECTED_RECORDING_VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

    .line 203
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

    const-string v1, "CONNECTING_CONNECTED_SHOOTING_RECORDING_VIEWER"

    const/16 v2, 0xc

    sget-object v3, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->CONNECTING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

    iget v3, v3, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->mValue:I

    sget-object v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->CONNECTED:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

    iget v4, v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->mValue:I

    or-int/2addr v3, v4

    sget-object v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->SHOOTING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

    iget v4, v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->mValue:I

    or-int/2addr v3, v4

    sget-object v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->RECORDING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

    iget v4, v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->mValue:I

    or-int/2addr v3, v4

    sget-object v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

    iget v4, v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->mValue:I

    or-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->CONNECTING_CONNECTED_SHOOTING_RECORDING_VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

    .line 177
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

    sget-object v1, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->CONNECTING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->CONNECTED:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->CONNECTING_CONNECTED:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

    aput-object v1, v0, v7

    const/4 v1, 0x3

    sget-object v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->SHOOTING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

    aput-object v2, v0, v1

    sget-object v1, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->CONNECTING_CONNECTED_SHOOTING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->RECORDING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->CONNECTING_CONNECTED_RECORDING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->CONNECTING_CONNECTED_SHOOTING_RECORDING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

    aput-object v2, v0, v1

    sget-object v1, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

    aput-object v1, v0, v9

    const/16 v1, 0x9

    sget-object v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->CONNECTING_CONNECTED_VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->CONNECTING_CONNECTED_SHOOTING_VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->CONNECTING_CONNECTED_RECORDING_VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->CONNECTING_CONNECTED_SHOOTING_RECORDING_VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->$VALUES:[Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0
    .param p3, "value"    # I
    .param p4, "isShooting"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    .prologue
    .line 211
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 212
    iput p3, p0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->mValue:I

    .line 213
    iput-boolean p4, p0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->mIsShooting:Z

    .line 214
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 177
    const-class v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;
    .locals 1

    .prologue
    .line 177
    sget-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->$VALUES:[Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

    return-object v0
.end method


# virtual methods
.method public getCategory()Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;
    .locals 1

    .prologue
    .line 233
    sget-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;->MUlTI_CAMERA_OPERATION:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->mValue:I

    return v0
.end method

.method public getViewer()Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$UserOperation;
    .locals 1

    .prologue
    .line 228
    sget-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

    return-object v0
.end method

.method public isShooting()Z
    .locals 1

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->mIsShooting:Z

    return v0
.end method

.method public updateOperation(Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$UserOperation;)Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$UserOperation;
    .locals 7
    .param p1, "currentOperation"    # Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$UserOperation;

    .prologue
    .line 239
    invoke-interface {p1}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$UserOperation;->getValue()I

    move-result v5

    .line 240
    .local v5, "updatedOperationValue":I
    iget v6, p0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->mValue:I

    or-int/2addr v5, v6

    .line 243
    const/4 v4, 0x0

    .line 244
    .local v4, "updatedOperation":Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$UserOperation;
    invoke-static {}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->values()[Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;

    move-result-object v0

    .local v0, "arr$":[Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 245
    .local v3, "mo":Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;
    iget v6, v3, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;->mValue:I

    if-ne v6, v5, :cond_1

    .line 246
    move-object v4, v3

    .line 250
    .end local v3    # "mo":Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;
    :cond_0
    return-object v4

    .line 244
    .restart local v3    # "mo":Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraOperation;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
