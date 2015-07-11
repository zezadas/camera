.class public Lcom/sonyericsson/cameracommon/status/eachcamera/VideoResolution;
.super Lcom/sonyericsson/cameracommon/status/eachcamera/ResolutionValue;
.source "VideoResolution.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/status/EachCameraStatusValue;


# static fields
.field public static final DEFAULT_VALUE:Landroid/graphics/Rect;

.field public static final KEY:Ljava/lang/String; = "video_resolution"

.field private static REQUIRED_PROVIDER_VERSION:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoResolution;->DEFAULT_VALUE:Landroid/graphics/Rect;

    .line 28
    const/4 v0, 0x1

    sput v0, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoResolution;->REQUIRED_PROVIDER_VERSION:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/status/eachcamera/ResolutionValue;-><init>(II)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/status/eachcamera/ResolutionValue;-><init>(Landroid/graphics/Rect;)V

    .line 42
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const-string v0, "video_resolution"

    return-object v0
.end method

.method public minRequiredVersion()I
    .locals 1

    .prologue
    .line 51
    sget v0, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoResolution;->REQUIRED_PROVIDER_VERSION:I

    return v0
.end method
