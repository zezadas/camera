.class public Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata;
.super Lcom/sonyericsson/cameracommon/status/EnumValue;
.source "Metadata.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/status/EachCameraStatusValue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata$Value;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonyericsson/cameracommon/status/EnumValue",
        "<",
        "Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata$Value;",
        ">;",
        "Lcom/sonyericsson/cameracommon/status/EachCameraStatusValue;"
    }
.end annotation


# static fields
.field public static final DEFAULT_VALUE:Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata$Value;

.field public static final KEY:Ljava/lang/String; = "metadata"

.field private static REQUIRED_PROVIDER_VERSION:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata$Value;->OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata$Value;

    sput-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata;->DEFAULT_VALUE:Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata$Value;

    .line 25
    const/16 v0, 0xa

    sput v0, Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata;->REQUIRED_PROVIDER_VERSION:I

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata$Value;)V
    .locals 0
    .param p1, "val"    # Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata$Value;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/status/EnumValue;-><init>(Ljava/lang/Enum;)V

    .line 50
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const-string v0, "metadata"

    return-object v0
.end method

.method public minRequiredVersion()I
    .locals 1

    .prologue
    .line 59
    sget v0, Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata;->REQUIRED_PROVIDER_VERSION:I

    return v0
.end method
