.class public Lcom/sonyericsson/cameracommon/status/eachcamera/FaceDetection;
.super Lcom/sonyericsson/cameracommon/status/EnumValue;
.source "FaceDetection.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/status/EachCameraStatusValue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/status/eachcamera/FaceDetection$Value;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonyericsson/cameracommon/status/EnumValue",
        "<",
        "Lcom/sonyericsson/cameracommon/status/eachcamera/FaceDetection$Value;",
        ">;",
        "Lcom/sonyericsson/cameracommon/status/EachCameraStatusValue;"
    }
.end annotation


# static fields
.field public static final DEFAULT_VALUE:Lcom/sonyericsson/cameracommon/status/eachcamera/FaceDetection$Value;

.field public static final KEY:Ljava/lang/String; = "face_detection"

.field private static REQUIRED_PROVIDER_VERSION:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/FaceDetection$Value;->OFF:Lcom/sonyericsson/cameracommon/status/eachcamera/FaceDetection$Value;

    sput-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/FaceDetection;->DEFAULT_VALUE:Lcom/sonyericsson/cameracommon/status/eachcamera/FaceDetection$Value;

    .line 27
    const/4 v0, 0x1

    sput v0, Lcom/sonyericsson/cameracommon/status/eachcamera/FaceDetection;->REQUIRED_PROVIDER_VERSION:I

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/cameracommon/status/eachcamera/FaceDetection$Value;)V
    .locals 0
    .param p1, "val"    # Lcom/sonyericsson/cameracommon/status/eachcamera/FaceDetection$Value;

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
    const-string v0, "face_detection"

    return-object v0
.end method

.method public minRequiredVersion()I
    .locals 1

    .prologue
    .line 61
    sget v0, Lcom/sonyericsson/cameracommon/status/eachcamera/FaceDetection;->REQUIRED_PROVIDER_VERSION:I

    return v0
.end method
