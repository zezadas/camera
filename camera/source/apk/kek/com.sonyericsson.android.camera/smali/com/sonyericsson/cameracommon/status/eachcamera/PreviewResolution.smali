.class public Lcom/sonyericsson/cameracommon/status/eachcamera/PreviewResolution;
.super Lcom/sonyericsson/cameracommon/status/eachcamera/ResolutionValue;
.source "PreviewResolution.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/status/EachCameraStatusValue;


# static fields
.field public static final DEFAULT_VALUE:Landroid/graphics/Rect;

.field public static final KEY:Ljava/lang/String; = "preview_resolution"

.field private static REQUIRED_PROVIDER_VERSION:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/sonyericsson/cameracommon/status/eachcamera/PreviewResolution;->DEFAULT_VALUE:Landroid/graphics/Rect;

    .line 30
    const/4 v0, 0x1

    sput v0, Lcom/sonyericsson/cameracommon/status/eachcamera/PreviewResolution;->REQUIRED_PROVIDER_VERSION:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/status/eachcamera/ResolutionValue;-><init>(Landroid/graphics/Rect;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/hardware/Camera$Size;)V
    .locals 0
    .param p1, "size"    # Landroid/hardware/Camera$Size;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/status/eachcamera/ResolutionValue;-><init>(Landroid/hardware/Camera$Size;)V

    .line 37
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const-string v0, "preview_resolution"

    return-object v0
.end method

.method public minRequiredVersion()I
    .locals 1

    .prologue
    .line 53
    sget v0, Lcom/sonyericsson/cameracommon/status/eachcamera/PreviewResolution;->REQUIRED_PROVIDER_VERSION:I

    return v0
.end method
