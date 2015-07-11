.class public Lcom/sonyericsson/cameracommon/status/global/CameraId;
.super Lcom/sonyericsson/cameracommon/status/IntegerValue;
.source "CameraId.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/status/GlobalCameraStatusValue;


# static fields
.field public static final DEFAULT_VALUE:I = 0x0

.field public static final KEY:Ljava/lang/String; = "camera_id"

.field private static REQUIRED_PROVIDER_VERSION:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x1

    sput v0, Lcom/sonyericsson/cameracommon/status/global/CameraId;->REQUIRED_PROVIDER_VERSION:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "fps"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/status/IntegerValue;-><init>(I)V

    .line 33
    return-void
.end method

.method public static defaultValue(I)I
    .locals 2
    .param p0, "version"    # I

    .prologue
    const/4 v1, 0x0

    .line 46
    const/16 v0, 0xa

    if-lt p0, v0, :cond_0

    .line 49
    :cond_0
    return v1
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-string v0, "camera_id"

    return-object v0
.end method

.method public minRequiredVersion()I
    .locals 1

    .prologue
    .line 42
    sget v0, Lcom/sonyericsson/cameracommon/status/global/CameraId;->REQUIRED_PROVIDER_VERSION:I

    return v0
.end method
