.class public Lcom/sonyericsson/cameracommon/device/CameraParameterUtil;
.super Ljava/lang/Object;
.source "CameraParameterUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/sonyericsson/cameracommon/device/CameraParameterUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/device/CameraParameterUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPreviewMasFps(Landroid/hardware/Camera$Parameters;)I
    .locals 6
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 31
    const/4 v3, 0x0

    .line 32
    .local v3, "maxFps":I
    if-eqz p0, :cond_1

    .line 33
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v4

    .line 35
    .local v4, "supported":Ljava/util/List;, "Ljava/util/List<[I>;"
    if-eqz v4, :cond_1

    .line 36
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 37
    .local v1, "eachRange":[I
    const/4 v5, 0x1

    aget v5, v1, v5

    div-int/lit16 v0, v5, 0x3e8

    .line 38
    .local v0, "eachMax":I
    if-ge v3, v0, :cond_0

    .line 39
    move v3, v0

    goto :goto_0

    .line 44
    .end local v0    # "eachMax":I
    .end local v1    # "eachRange":[I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "supported":Ljava/util/List;, "Ljava/util/List<[I>;"
    :cond_1
    return v3
.end method
