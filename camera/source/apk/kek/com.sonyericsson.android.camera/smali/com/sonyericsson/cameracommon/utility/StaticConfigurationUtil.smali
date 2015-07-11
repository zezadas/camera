.class public Lcom/sonyericsson/cameracommon/utility/StaticConfigurationUtil;
.super Ljava/lang/Object;
.source "StaticConfigurationUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sCameraInfo:Landroid/hardware/Camera$CameraInfo;

.field private static sInstance:Lcom/sonyericsson/cameracommon/utility/StaticConfigurationUtil;


# instance fields
.field private final mIsForceSound:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/sonyericsson/cameracommon/utility/StaticConfigurationUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/StaticConfigurationUtil;->TAG:Ljava/lang/String;

    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/StaticConfigurationUtil;->sInstance:Lcom/sonyericsson/cameracommon/utility/StaticConfigurationUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/16 v2, 0x11

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v2, v3, :cond_3

    .line 40
    sget-object v2, Lcom/sonyericsson/cameracommon/utility/StaticConfigurationUtil;->sCameraInfo:Landroid/hardware/Camera$CameraInfo;

    if-nez v2, :cond_0

    .line 41
    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    sput-object v2, Lcom/sonyericsson/cameracommon/utility/StaticConfigurationUtil;->sCameraInfo:Landroid/hardware/Camera$CameraInfo;

    .line 42
    sget-object v2, Lcom/sonyericsson/cameracommon/utility/StaticConfigurationUtil;->sCameraInfo:Landroid/hardware/Camera$CameraInfo;

    invoke-static {v1, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 50
    :cond_0
    sget-object v2, Lcom/sonyericsson/cameracommon/utility/StaticConfigurationUtil;->sCameraInfo:Landroid/hardware/Camera$CameraInfo;

    if-eqz v2, :cond_2

    .line 51
    sget-object v2, Lcom/sonyericsson/cameracommon/utility/StaticConfigurationUtil;->sCameraInfo:Landroid/hardware/Camera$CameraInfo;

    iget-boolean v2, v2, Landroid/hardware/Camera$CameraInfo;->canDisableShutterSound:Z

    if-nez v2, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/utility/StaticConfigurationUtil;->mIsForceSound:Z

    .line 67
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 51
    goto :goto_0

    .line 56
    :cond_2
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/utility/StaticConfigurationUtil;->mIsForceSound:Z

    goto :goto_1

    .line 62
    :cond_3
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/utility/StaticConfigurationUtil;->mIsForceSound:Z

    goto :goto_1
.end method

.method public static isForceSound()Z
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/StaticConfigurationUtil;->sInstance:Lcom/sonyericsson/cameracommon/utility/StaticConfigurationUtil;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/StaticConfigurationUtil;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/utility/StaticConfigurationUtil;-><init>()V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/StaticConfigurationUtil;->sInstance:Lcom/sonyericsson/cameracommon/utility/StaticConfigurationUtil;

    .line 74
    :cond_0
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/StaticConfigurationUtil;->sInstance:Lcom/sonyericsson/cameracommon/utility/StaticConfigurationUtil;

    iget-boolean v0, v0, Lcom/sonyericsson/cameracommon/utility/StaticConfigurationUtil;->mIsForceSound:Z

    return v0
.end method

.method public static setCameraInfo(Landroid/hardware/Camera$CameraInfo;)V
    .locals 0
    .param p0, "cameraInfo"    # Landroid/hardware/Camera$CameraInfo;

    .prologue
    .line 78
    sput-object p0, Lcom/sonyericsson/cameracommon/utility/StaticConfigurationUtil;->sCameraInfo:Landroid/hardware/Camera$CameraInfo;

    .line 79
    return-void
.end method
