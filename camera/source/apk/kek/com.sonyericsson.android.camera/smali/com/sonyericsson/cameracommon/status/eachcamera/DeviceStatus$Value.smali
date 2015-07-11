.class public final enum Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;
.super Ljava/lang/Enum;
.source "DeviceStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Value"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

.field public static final enum PICTURE_TAKING:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

.field public static final enum PICTURE_TAKING_DURING_VIDEO_RECORDING:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

.field public static final enum POWER_OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

.field public static final enum POWER_ON:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

.field public static final enum STILL_PREVIEW:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

.field public static final enum VIDEO_PREVIEW:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

.field public static final enum VIDEO_RECORDING:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;


# instance fields
.field private final mStringExpression:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 30
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    const-string v1, "POWER_ON"

    const-string v2, "power_on"

    invoke-direct {v0, v1, v4, v2}, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;->POWER_ON:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    .line 31
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    const-string v1, "POWER_OFF"

    const-string v2, "power_off"

    invoke-direct {v0, v1, v5, v2}, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;->POWER_OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    .line 32
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    const-string v1, "STILL_PREVIEW"

    const-string v2, "still_preview"

    invoke-direct {v0, v1, v6, v2}, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;->STILL_PREVIEW:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    .line 33
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    const-string v1, "VIDEO_PREVIEW"

    const-string v2, "video_preview"

    invoke-direct {v0, v1, v7, v2}, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;->VIDEO_PREVIEW:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    .line 34
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    const-string v1, "PICTURE_TAKING"

    const-string v2, "picture_taking"

    invoke-direct {v0, v1, v8, v2}, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;->PICTURE_TAKING:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    .line 35
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    const-string v1, "VIDEO_RECORDING"

    const/4 v2, 0x5

    const-string v3, "video_recording"

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;->VIDEO_RECORDING:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    .line 36
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    const-string v1, "PICTURE_TAKING_DURING_VIDEO_RECORDING"

    const/4 v2, 0x6

    const-string v3, "picture_taking_during_video_recording"

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;->PICTURE_TAKING_DURING_VIDEO_RECORDING:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    .line 29
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;->POWER_ON:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;->POWER_OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;->STILL_PREVIEW:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;->VIDEO_PREVIEW:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;->PICTURE_TAKING:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;->VIDEO_RECORDING:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;->PICTURE_TAKING_DURING_VIDEO_RECORDING:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;->$VALUES:[Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;->mStringExpression:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    const-class v0, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;->$VALUES:[Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;->mStringExpression:Ljava/lang/String;

    return-object v0
.end method
