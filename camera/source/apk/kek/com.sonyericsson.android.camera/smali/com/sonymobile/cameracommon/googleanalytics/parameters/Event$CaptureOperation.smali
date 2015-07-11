.class public final enum Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;
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
    name = "CaptureOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;",
        ">;",
        "Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$UserOperation;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

.field public static final enum BURST:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

.field public static final enum BURST_VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

.field public static final enum RECORDING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

.field public static final enum RECORDING_BURST:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

.field public static final enum RECORDING_BURST_VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

.field public static final enum RECORDING_VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

.field public static final enum SHOOTING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

.field public static final enum SHOOTING_BURST:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

.field public static final enum SHOOTING_BURST_VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

.field public static final enum SHOOTING_RECORDING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

.field public static final enum SHOOTING_RECORDING_BURST:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

.field public static final enum SHOOTING_RECORDING_BURST_VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

.field public static final enum SHOOTING_RECORDING_VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

.field public static final enum SHOOTING_VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

.field public static final enum VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;


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

    .line 99
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    const-string v1, "SHOOTING"

    invoke-direct {v0, v1, v5, v6, v6}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->SHOOTING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    .line 101
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    const-string v1, "RECORDING"

    invoke-direct {v0, v1, v6, v7, v5}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->RECORDING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    .line 103
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    const-string v1, "SHOOTING_RECORDING"

    sget-object v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->SHOOTING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    iget v2, v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->mValue:I

    sget-object v3, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->RECORDING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    iget v3, v3, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->mValue:I

    or-int/2addr v2, v3

    invoke-direct {v0, v1, v7, v2, v5}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->SHOOTING_RECORDING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    .line 105
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    const-string v1, "BURST"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v8, v5}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->BURST:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    .line 107
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    const-string v1, "SHOOTING_BURST"

    sget-object v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->SHOOTING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    iget v2, v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->mValue:I

    sget-object v3, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->BURST:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    iget v3, v3, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->mValue:I

    or-int/2addr v2, v3

    invoke-direct {v0, v1, v8, v2, v5}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->SHOOTING_BURST:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    .line 109
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    const-string v1, "RECORDING_BURST"

    const/4 v2, 0x5

    sget-object v3, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->RECORDING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    iget v3, v3, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->mValue:I

    sget-object v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->BURST:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    iget v4, v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->mValue:I

    or-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->RECORDING_BURST:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    .line 111
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    const-string v1, "SHOOTING_RECORDING_BURST"

    const/4 v2, 0x6

    sget-object v3, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->SHOOTING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    iget v3, v3, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->mValue:I

    sget-object v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->RECORDING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    iget v4, v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->mValue:I

    or-int/2addr v3, v4

    sget-object v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->BURST:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    iget v4, v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->mValue:I

    or-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->SHOOTING_RECORDING_BURST:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    .line 113
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    const-string v1, "VIEWER"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v9, v5}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    .line 115
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    const-string v1, "SHOOTING_VIEWER"

    sget-object v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->SHOOTING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    iget v2, v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->mValue:I

    sget-object v3, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    iget v3, v3, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->mValue:I

    or-int/2addr v2, v3

    invoke-direct {v0, v1, v9, v2, v5}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->SHOOTING_VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    .line 117
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    const-string v1, "RECORDING_VIEWER"

    const/16 v2, 0x9

    sget-object v3, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->RECORDING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    iget v3, v3, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->mValue:I

    sget-object v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    iget v4, v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->mValue:I

    or-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->RECORDING_VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    .line 119
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    const-string v1, "SHOOTING_RECORDING_VIEWER"

    const/16 v2, 0xa

    sget-object v3, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->SHOOTING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    iget v3, v3, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->mValue:I

    sget-object v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->RECORDING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    iget v4, v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->mValue:I

    or-int/2addr v3, v4

    sget-object v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    iget v4, v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->mValue:I

    or-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->SHOOTING_RECORDING_VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    .line 121
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    const-string v1, "BURST_VIEWER"

    const/16 v2, 0xb

    sget-object v3, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->BURST:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    iget v3, v3, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->mValue:I

    sget-object v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    iget v4, v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->mValue:I

    or-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->BURST_VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    .line 123
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    const-string v1, "SHOOTING_BURST_VIEWER"

    const/16 v2, 0xc

    sget-object v3, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->SHOOTING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    iget v3, v3, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->mValue:I

    sget-object v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->BURST:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    iget v4, v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->mValue:I

    or-int/2addr v3, v4

    sget-object v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    iget v4, v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->mValue:I

    or-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->SHOOTING_BURST_VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    .line 125
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    const-string v1, "RECORDING_BURST_VIEWER"

    const/16 v2, 0xd

    sget-object v3, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->RECORDING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    iget v3, v3, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->mValue:I

    sget-object v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->BURST:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    iget v4, v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->mValue:I

    or-int/2addr v3, v4

    sget-object v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    iget v4, v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->mValue:I

    or-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->RECORDING_BURST_VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    .line 127
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    const-string v1, "SHOOTING_RECORDING_BURST_VIEWER"

    const/16 v2, 0xe

    sget-object v3, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->SHOOTING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    iget v3, v3, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->mValue:I

    sget-object v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->RECORDING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    iget v4, v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->mValue:I

    or-int/2addr v3, v4

    sget-object v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->BURST:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    iget v4, v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->mValue:I

    or-int/2addr v3, v4

    sget-object v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    iget v4, v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->mValue:I

    or-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->SHOOTING_RECORDING_BURST_VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    .line 98
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    sget-object v1, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->SHOOTING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->RECORDING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->SHOOTING_RECORDING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    aput-object v1, v0, v7

    const/4 v1, 0x3

    sget-object v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->BURST:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    aput-object v2, v0, v1

    sget-object v1, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->SHOOTING_BURST:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->RECORDING_BURST:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->SHOOTING_RECORDING_BURST:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    aput-object v2, v0, v1

    sget-object v1, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->SHOOTING_VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    aput-object v1, v0, v9

    const/16 v1, 0x9

    sget-object v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->RECORDING_VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->SHOOTING_RECORDING_VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->BURST_VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->SHOOTING_BURST_VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->RECORDING_BURST_VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->SHOOTING_RECORDING_BURST_VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->$VALUES:[Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

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
    .line 134
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 135
    iput p3, p0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->mValue:I

    .line 136
    iput-boolean p4, p0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->mIsShooting:Z

    .line 137
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 98
    const-class v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->$VALUES:[Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    return-object v0
.end method


# virtual methods
.method public getCategory()Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;->CAPTURE_OPERATION:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->mValue:I

    return v0
.end method

.method public getViewer()Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$UserOperation;
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    return-object v0
.end method

.method public isShooting()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->mIsShooting:Z

    return v0
.end method

.method public updateOperation(Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$UserOperation;)Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$UserOperation;
    .locals 7
    .param p1, "currentOperation"    # Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$UserOperation;

    .prologue
    .line 162
    invoke-interface {p1}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$UserOperation;->getValue()I

    move-result v5

    .line 163
    .local v5, "updatedOperationValue":I
    iget v6, p0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->mValue:I

    or-int/2addr v5, v6

    .line 166
    const/4 v4, 0x0

    .line 167
    .local v4, "updatedOperation":Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$UserOperation;
    invoke-static {}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->values()[Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    move-result-object v0

    .local v0, "arr$":[Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 168
    .local v1, "co":Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;
    iget v6, v1, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->mValue:I

    if-ne v6, v5, :cond_1

    .line 169
    move-object v4, v1

    .line 173
    .end local v1    # "co":Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;
    :cond_0
    return-object v4

    .line 167
    .restart local v1    # "co":Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
