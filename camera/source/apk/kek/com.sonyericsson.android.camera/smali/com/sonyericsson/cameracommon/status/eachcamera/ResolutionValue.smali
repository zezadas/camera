.class public abstract Lcom/sonyericsson/cameracommon/status/eachcamera/ResolutionValue;
.super Ljava/lang/Object;
.source "ResolutionValue.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/status/CameraStatusValue;
.implements Lcom/sonyericsson/cameracommon/status/EachCameraStatusValue;


# static fields
.field private static REQUIRED_PROVIDER_VERSION:I


# instance fields
.field private mHeight:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    sput v0, Lcom/sonyericsson/cameracommon/status/eachcamera/ResolutionValue;->REQUIRED_PROVIDER_VERSION:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lcom/sonyericsson/cameracommon/status/eachcamera/ResolutionValue;->mWidth:I

    .line 47
    iput p2, p0, Lcom/sonyericsson/cameracommon/status/eachcamera/ResolutionValue;->mHeight:I

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/cameracommon/status/eachcamera/ResolutionValue;->mWidth:I

    .line 55
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/cameracommon/status/eachcamera/ResolutionValue;->mHeight:I

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/hardware/Camera$Size;)V
    .locals 1
    .param p1, "size"    # Landroid/hardware/Camera$Size;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iget v0, p1, Landroid/hardware/Camera$Size;->width:I

    iput v0, p0, Lcom/sonyericsson/cameracommon/status/eachcamera/ResolutionValue;->mWidth:I

    .line 39
    iget v0, p1, Landroid/hardware/Camera$Size;->height:I

    iput v0, p0, Lcom/sonyericsson/cameracommon/status/eachcamera/ResolutionValue;->mHeight:I

    .line 40
    return-void
.end method


# virtual methods
.method public getValueForDebug()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/status/eachcamera/ResolutionValue;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public minRequiredVersion()I
    .locals 1

    .prologue
    .line 88
    sget v0, Lcom/sonyericsson/cameracommon/status/eachcamera/ResolutionValue;->REQUIRED_PROVIDER_VERSION:I

    return v0
.end method

.method public putInto(Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 2
    .param p1, "cv"    # Landroid/content/ContentValues;
    .param p2, "keyPrefix"    # Ljava/lang/String;

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/status/eachcamera/ResolutionValue;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/status/eachcamera/ResolutionValue;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/cameracommon/status/eachcamera/ResolutionValue;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/cameracommon/status/eachcamera/ResolutionValue;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
