.class public Lcom/sonyericsson/cameracommon/status/eachcamera/VideoNoiseReduction;
.super Lcom/sonyericsson/cameracommon/status/EnumValue;
.source "VideoNoiseReduction.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/status/EachCameraStatusValue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/status/eachcamera/VideoNoiseReduction$Value;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonyericsson/cameracommon/status/EnumValue",
        "<",
        "Lcom/sonyericsson/cameracommon/status/eachcamera/VideoNoiseReduction$Value;",
        ">;",
        "Lcom/sonyericsson/cameracommon/status/EachCameraStatusValue;"
    }
.end annotation


# static fields
.field public static final DEFAULT_VALUE:Lcom/sonyericsson/cameracommon/status/eachcamera/VideoNoiseReduction$Value;

.field public static final KEY:Ljava/lang/String; = "video_noise_reduction"

.field private static REQUIRED_PROVIDER_VERSION:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoNoiseReduction$Value;->OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/VideoNoiseReduction$Value;

    sput-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoNoiseReduction;->DEFAULT_VALUE:Lcom/sonyericsson/cameracommon/status/eachcamera/VideoNoiseReduction$Value;

    .line 25
    const/16 v0, 0xa

    sput v0, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoNoiseReduction;->REQUIRED_PROVIDER_VERSION:I

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/cameracommon/status/eachcamera/VideoNoiseReduction$Value;)V
    .locals 0
    .param p1, "val"    # Lcom/sonyericsson/cameracommon/status/eachcamera/VideoNoiseReduction$Value;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/status/EnumValue;-><init>(Ljava/lang/Enum;)V

    .line 50
    return-void
.end method

.method public static fromCameraParameter(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/status/eachcamera/VideoNoiseReduction;
    .locals 2
    .param p0, "param"    # Ljava/lang/String;

    .prologue
    .line 58
    if-eqz p0, :cond_0

    const-string v0, "on"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoNoiseReduction;

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoNoiseReduction$Value;->ON:Lcom/sonyericsson/cameracommon/status/eachcamera/VideoNoiseReduction$Value;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoNoiseReduction;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/VideoNoiseReduction$Value;)V

    .line 61
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoNoiseReduction;

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoNoiseReduction$Value;->OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/VideoNoiseReduction$Value;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoNoiseReduction;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/VideoNoiseReduction$Value;)V

    goto :goto_0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const-string v0, "video_noise_reduction"

    return-object v0
.end method

.method public minRequiredVersion()I
    .locals 1

    .prologue
    .line 67
    sget v0, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoNoiseReduction;->REQUIRED_PROVIDER_VERSION:I

    return v0
.end method
