.class public final enum Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;
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
    name = "FaceFusionOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;",
        ">;",
        "Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$UserOperation;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

.field public static final enum FACECHANGED:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

.field public static final enum FACECHANGE_RECORDING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

.field public static final enum FACECHANGE_RECORDING_VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

.field public static final enum FACECHANGE_SHOOTING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

.field public static final enum FACECHANGE_SHOOTING_RECORDING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

.field public static final enum FACECHANGE_SHOOTING_RECORDING_VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

.field public static final enum FACECHANGE_SHOOTING_VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

.field public static final enum FACECHANGE_VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

.field public static final enum RECORDING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

.field public static final enum RECORDING_VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

.field public static final enum SHOOTING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

.field public static final enum SHOOTING_RECORDING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

.field public static final enum SHOOTING_RECORDING_VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

.field public static final enum SHOOTING_VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

.field public static final enum VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;


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

    .line 255
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

    const-string v1, "FACECHANGED"

    invoke-direct {v0, v1, v5, v6, v5}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->FACECHANGED:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

    .line 257
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

    const-string v1, "SHOOTING"

    invoke-direct {v0, v1, v6, v7, v6}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->SHOOTING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

    .line 259
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

    const-string v1, "FACECHANGE_SHOOTING"

    sget-object v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->FACECHANGED:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

    iget v2, v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->mValue:I

    sget-object v3, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->SHOOTING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

    iget v3, v3, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->mValue:I

    or-int/2addr v2, v3

    invoke-direct {v0, v1, v7, v2, v5}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->FACECHANGE_SHOOTING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

    .line 261
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

    const-string v1, "RECORDING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v8, v5}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->RECORDING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

    .line 263
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

    const-string v1, "FACECHANGE_RECORDING"

    sget-object v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->FACECHANGED:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

    iget v2, v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->mValue:I

    sget-object v3, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->RECORDING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

    iget v3, v3, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->mValue:I

    or-int/2addr v2, v3

    invoke-direct {v0, v1, v8, v2, v5}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->FACECHANGE_RECORDING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

    .line 265
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

    const-string v1, "SHOOTING_RECORDING"

    const/4 v2, 0x5

    sget-object v3, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->SHOOTING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

    iget v3, v3, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->mValue:I

    sget-object v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->RECORDING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

    iget v4, v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->mValue:I

    or-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->SHOOTING_RECORDING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

    .line 267
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

    const-string v1, "FACECHANGE_SHOOTING_RECORDING"

    const/4 v2, 0x6

    sget-object v3, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->FACECHANGED:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

    iget v3, v3, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->mValue:I

    sget-object v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->SHOOTING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

    iget v4, v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->mValue:I

    or-int/2addr v3, v4

    sget-object v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->RECORDING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

    iget v4, v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->mValue:I

    or-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->FACECHANGE_SHOOTING_RECORDING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

    .line 269
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

    const-string v1, "VIEWER"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v9, v5}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

    .line 271
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

    const-string v1, "FACECHANGE_VIEWER"

    sget-object v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->FACECHANGED:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

    iget v2, v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->mValue:I

    sget-object v3, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

    iget v3, v3, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->mValue:I

    or-int/2addr v2, v3

    invoke-direct {v0, v1, v9, v2, v5}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->FACECHANGE_VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

    .line 273
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

    const-string v1, "SHOOTING_VIEWER"

    const/16 v2, 0x9

    sget-object v3, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->SHOOTING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

    iget v3, v3, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->mValue:I

    sget-object v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

    iget v4, v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->mValue:I

    or-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->SHOOTING_VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

    .line 275
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

    const-string v1, "FACECHANGE_SHOOTING_VIEWER"

    const/16 v2, 0xa

    sget-object v3, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->FACECHANGED:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

    iget v3, v3, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->mValue:I

    sget-object v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->SHOOTING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

    iget v4, v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->mValue:I

    or-int/2addr v3, v4

    sget-object v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

    iget v4, v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->mValue:I

    or-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->FACECHANGE_SHOOTING_VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

    .line 277
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

    const-string v1, "RECORDING_VIEWER"

    const/16 v2, 0xb

    sget-object v3, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->RECORDING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

    iget v3, v3, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->mValue:I

    sget-object v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

    iget v4, v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->mValue:I

    or-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->RECORDING_VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

    .line 279
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

    const-string v1, "FACECHANGE_RECORDING_VIEWER"

    const/16 v2, 0xc

    sget-object v3, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->FACECHANGED:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

    iget v3, v3, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->mValue:I

    sget-object v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->RECORDING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

    iget v4, v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->mValue:I

    or-int/2addr v3, v4

    sget-object v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

    iget v4, v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->mValue:I

    or-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->FACECHANGE_RECORDING_VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

    .line 281
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

    const-string v1, "SHOOTING_RECORDING_VIEWER"

    const/16 v2, 0xd

    sget-object v3, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->SHOOTING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

    iget v3, v3, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->mValue:I

    sget-object v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->RECORDING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

    iget v4, v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->mValue:I

    or-int/2addr v3, v4

    sget-object v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

    iget v4, v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->mValue:I

    or-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->SHOOTING_RECORDING_VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

    .line 283
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

    const-string v1, "FACECHANGE_SHOOTING_RECORDING_VIEWER"

    const/16 v2, 0xe

    sget-object v3, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->FACECHANGED:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

    iget v3, v3, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->mValue:I

    sget-object v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->SHOOTING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

    iget v4, v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->mValue:I

    or-int/2addr v3, v4

    sget-object v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->RECORDING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

    iget v4, v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->mValue:I

    or-int/2addr v3, v4

    sget-object v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

    iget v4, v4, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->mValue:I

    or-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->FACECHANGE_SHOOTING_RECORDING_VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

    .line 254
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

    sget-object v1, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->FACECHANGED:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->SHOOTING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->FACECHANGE_SHOOTING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

    aput-object v1, v0, v7

    const/4 v1, 0x3

    sget-object v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->RECORDING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

    aput-object v2, v0, v1

    sget-object v1, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->FACECHANGE_RECORDING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->SHOOTING_RECORDING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->FACECHANGE_SHOOTING_RECORDING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

    aput-object v2, v0, v1

    sget-object v1, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->FACECHANGE_VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

    aput-object v1, v0, v9

    const/16 v1, 0x9

    sget-object v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->SHOOTING_VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->FACECHANGE_SHOOTING_VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->RECORDING_VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->FACECHANGE_RECORDING_VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->SHOOTING_RECORDING_VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->FACECHANGE_SHOOTING_RECORDING_VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->$VALUES:[Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

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
    .line 290
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 291
    iput p3, p0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->mValue:I

    .line 292
    iput-boolean p4, p0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->mIsShooting:Z

    .line 293
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 254
    const-class v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;
    .locals 1

    .prologue
    .line 254
    sget-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->$VALUES:[Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

    invoke-virtual {v0}, [Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

    return-object v0
.end method


# virtual methods
.method public getCategory()Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;
    .locals 1

    .prologue
    .line 312
    sget-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;->FACE_FUSION_OPERATION:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 297
    iget v0, p0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->mValue:I

    return v0
.end method

.method public getViewer()Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$UserOperation;
    .locals 1

    .prologue
    .line 307
    sget-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->VIEWER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

    return-object v0
.end method

.method public isShooting()Z
    .locals 1

    .prologue
    .line 302
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->mIsShooting:Z

    return v0
.end method

.method public updateOperation(Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$UserOperation;)Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$UserOperation;
    .locals 7
    .param p1, "currentOperation"    # Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$UserOperation;

    .prologue
    .line 318
    invoke-interface {p1}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$UserOperation;->getValue()I

    move-result v5

    .line 319
    .local v5, "updatedOperationValue":I
    iget v6, p0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->mValue:I

    or-int/2addr v5, v6

    .line 322
    const/4 v4, 0x0

    .line 323
    .local v4, "updatedOperation":Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$UserOperation;
    invoke-static {}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->values()[Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;

    move-result-object v0

    .local v0, "arr$":[Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 324
    .local v1, "fo":Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;
    iget v6, v1, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;->mValue:I

    if-ne v6, v5, :cond_1

    .line 325
    move-object v4, v1

    .line 329
    .end local v1    # "fo":Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;
    :cond_0
    return-object v4

    .line 323
    .restart local v1    # "fo":Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$FaceFusionOperation;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
