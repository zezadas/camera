.class public Lcom/sonyericsson/cameracommon/status/global/RemovableCameraClients;
.super Lcom/sonyericsson/cameracommon/status/IntegerValue;
.source "RemovableCameraClients.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/status/GlobalCameraStatusValue;


# static fields
.field public static final DEFAULT_VALUE:I = 0x0

.field public static final KEY:Ljava/lang/String; = "removable_camera_clients"

.field private static REQUIRED_PROVIDER_VERSION:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/16 v0, 0xa

    sput v0, Lcom/sonyericsson/cameracommon/status/global/RemovableCameraClients;->REQUIRED_PROVIDER_VERSION:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/status/IntegerValue;-><init>(I)V

    .line 29
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const-string v0, "removable_camera_clients"

    return-object v0
.end method

.method public minRequiredVersion()I
    .locals 1

    .prologue
    .line 38
    sget v0, Lcom/sonyericsson/cameracommon/status/global/RemovableCameraClients;->REQUIRED_PROVIDER_VERSION:I

    return v0
.end method
