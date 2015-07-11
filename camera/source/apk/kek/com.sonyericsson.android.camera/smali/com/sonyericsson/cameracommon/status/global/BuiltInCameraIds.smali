.class public Lcom/sonyericsson/cameracommon/status/global/BuiltInCameraIds;
.super Lcom/sonyericsson/cameracommon/status/IntegerArrayValue;
.source "BuiltInCameraIds.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/status/GlobalCameraStatusValue;


# static fields
.field public static final DEFAULT_VALUE:[I

.field public static final KEY:Ljava/lang/String; = "built_in_camera_ids"

.field private static REQUIRED_PROVIDER_VERSION:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/cameracommon/status/global/BuiltInCameraIds;->DEFAULT_VALUE:[I

    .line 28
    const/16 v0, 0xa

    sput v0, Lcom/sonyericsson/cameracommon/status/global/BuiltInCameraIds;->REQUIRED_PROVIDER_VERSION:I

    return-void
.end method

.method public varargs constructor <init>([I)V
    .locals 0
    .param p1, "cameraIds"    # [I

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/status/IntegerArrayValue;-><init>([I)V

    .line 35
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const-string v0, "built_in_camera_ids"

    return-object v0
.end method

.method public minRequiredVersion()I
    .locals 1

    .prologue
    .line 44
    sget v0, Lcom/sonyericsson/cameracommon/status/global/BuiltInCameraIds;->REQUIRED_PROVIDER_VERSION:I

    return v0
.end method
