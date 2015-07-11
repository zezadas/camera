.class public Lcom/sonyericsson/cameracommon/status/eachcamera/PreviewMaxFps;
.super Lcom/sonyericsson/cameracommon/status/IntegerValue;
.source "PreviewMaxFps.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/status/EachCameraStatusValue;


# static fields
.field public static final DEFAULT_VALUE:I = 0x0

.field public static final KEY:Ljava/lang/String; = "preview_max_fps"

.field private static REQUIRED_PROVIDER_VERSION:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    sput v0, Lcom/sonyericsson/cameracommon/status/eachcamera/PreviewMaxFps;->REQUIRED_PROVIDER_VERSION:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "fps"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/status/IntegerValue;-><init>(I)V

    .line 35
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const-string v0, "preview_max_fps"

    return-object v0
.end method

.method public minRequiredVersion()I
    .locals 1

    .prologue
    .line 44
    sget v0, Lcom/sonyericsson/cameracommon/status/eachcamera/PreviewMaxFps;->REQUIRED_PROVIDER_VERSION:I

    return v0
.end method
