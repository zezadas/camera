.class public Lcom/sonyericsson/cameracommon/status/eachcamera/PhotoLight;
.super Lcom/sonyericsson/cameracommon/status/EnumValue;
.source "PhotoLight.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/status/EachCameraStatusValue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/status/eachcamera/PhotoLight$Value;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonyericsson/cameracommon/status/EnumValue",
        "<",
        "Lcom/sonyericsson/cameracommon/status/eachcamera/PhotoLight$Value;",
        ">;",
        "Lcom/sonyericsson/cameracommon/status/EachCameraStatusValue;"
    }
.end annotation


# static fields
.field public static final DEFAULT_VALUE:Lcom/sonyericsson/cameracommon/status/eachcamera/PhotoLight$Value;

.field public static final KEY:Ljava/lang/String; = "photo_light"

.field private static REQUIRED_PROVIDER_VERSION:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/PhotoLight$Value;->OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/PhotoLight$Value;

    sput-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/PhotoLight;->DEFAULT_VALUE:Lcom/sonyericsson/cameracommon/status/eachcamera/PhotoLight$Value;

    .line 27
    const/4 v0, 0x1

    sput v0, Lcom/sonyericsson/cameracommon/status/eachcamera/PhotoLight;->REQUIRED_PROVIDER_VERSION:I

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/cameracommon/status/eachcamera/PhotoLight$Value;)V
    .locals 0
    .param p1, "val"    # Lcom/sonyericsson/cameracommon/status/eachcamera/PhotoLight$Value;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/status/EnumValue;-><init>(Ljava/lang/Enum;)V

    .line 52
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    const-string v0, "photo_light"

    return-object v0
.end method

.method public minRequiredVersion()I
    .locals 1

    .prologue
    .line 61
    sget v0, Lcom/sonyericsson/cameracommon/status/eachcamera/PhotoLight;->REQUIRED_PROVIDER_VERSION:I

    return v0
.end method
