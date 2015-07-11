.class public Lcom/sonyericsson/cameracommon/status/eachcamera/VideoStabilizerStatus;
.super Lcom/sonyericsson/cameracommon/status/EnumValue;
.source "VideoStabilizerStatus.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/status/EachCameraStatusValue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/status/eachcamera/VideoStabilizerStatus$Value;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonyericsson/cameracommon/status/EnumValue",
        "<",
        "Lcom/sonyericsson/cameracommon/status/eachcamera/VideoStabilizerStatus$Value;",
        ">;",
        "Lcom/sonyericsson/cameracommon/status/EachCameraStatusValue;"
    }
.end annotation


# static fields
.field public static final DEFAULT_VALUE:Lcom/sonyericsson/cameracommon/status/eachcamera/VideoStabilizerStatus$Value;

.field public static final KEY:Ljava/lang/String; = "video_stabilizer"

.field private static REQUIRED_PROVIDER_VERSION:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoStabilizerStatus$Value;->OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/VideoStabilizerStatus$Value;

    sput-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoStabilizerStatus;->DEFAULT_VALUE:Lcom/sonyericsson/cameracommon/status/eachcamera/VideoStabilizerStatus$Value;

    .line 28
    const/4 v0, 0x1

    sput v0, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoStabilizerStatus;->REQUIRED_PROVIDER_VERSION:I

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/cameracommon/status/eachcamera/VideoStabilizerStatus$Value;)V
    .locals 0
    .param p1, "val"    # Lcom/sonyericsson/cameracommon/status/eachcamera/VideoStabilizerStatus$Value;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/status/EnumValue;-><init>(Ljava/lang/Enum;)V

    .line 54
    return-void
.end method

.method public static fromCameraParameter(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/status/eachcamera/VideoStabilizerStatus;
    .locals 2
    .param p0, "param"    # Ljava/lang/String;

    .prologue
    .line 62
    const-string v0, "on"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoStabilizerStatus;

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoStabilizerStatus$Value;->ON:Lcom/sonyericsson/cameracommon/status/eachcamera/VideoStabilizerStatus$Value;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoStabilizerStatus;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/VideoStabilizerStatus$Value;)V

    .line 72
    :goto_0
    return-object v0

    .line 65
    :cond_0
    const-string v0, "on-steady-shot"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoStabilizerStatus;

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoStabilizerStatus$Value;->ON:Lcom/sonyericsson/cameracommon/status/eachcamera/VideoStabilizerStatus$Value;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoStabilizerStatus;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/VideoStabilizerStatus$Value;)V

    goto :goto_0

    .line 68
    :cond_1
    const-string v0, "on-intelligent-active"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 69
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoStabilizerStatus;

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoStabilizerStatus$Value;->INTELLIGENT_ACTIVE:Lcom/sonyericsson/cameracommon/status/eachcamera/VideoStabilizerStatus$Value;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoStabilizerStatus;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/VideoStabilizerStatus$Value;)V

    goto :goto_0

    .line 72
    :cond_2
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoStabilizerStatus;

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoStabilizerStatus$Value;->OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/VideoStabilizerStatus$Value;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoStabilizerStatus;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/VideoStabilizerStatus$Value;)V

    goto :goto_0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-string v0, "video_stabilizer"

    return-object v0
.end method

.method public minRequiredVersion()I
    .locals 1

    .prologue
    .line 78
    sget v0, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoStabilizerStatus;->REQUIRED_PROVIDER_VERSION:I

    return v0
.end method
