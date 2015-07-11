.class public Lcom/sonyericsson/cameracommon/device/CameraOpener;
.super Ljava/lang/Object;
.source "CameraOpener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/device/CameraOpener$CameraOpenLegacySupportStateHolder;
    }
.end annotation


# static fields
.field private static final OPEN_LEGACY_METHOD_NAME:Ljava/lang/String; = "openLegacy"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/sonyericsson/cameracommon/device/CameraOpener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/device/CameraOpener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    return-void
.end method

.method private static getCameraHal1ApiVersion()I
    .locals 1

    .prologue
    .line 88
    # getter for: Lcom/sonyericsson/cameracommon/device/CameraOpener$CameraOpenLegacySupportStateHolder;->sApiVersion1:I
    invoke-static {}, Lcom/sonyericsson/cameracommon/device/CameraOpener$CameraOpenLegacySupportStateHolder;->access$100()I

    move-result v0

    return v0
.end method

.method private static isCameraOpenLegacySupported()Z
    .locals 1

    .prologue
    .line 81
    # getter for: Lcom/sonyericsson/cameracommon/device/CameraOpener$CameraOpenLegacySupportStateHolder;->sIsSupported:Z
    invoke-static {}, Lcom/sonyericsson/cameracommon/device/CameraOpener$CameraOpenLegacySupportStateHolder;->access$000()Z

    move-result v0

    return v0
.end method

.method public static open(I)Landroid/hardware/Camera;
    .locals 9
    .param p0, "cameraId"    # I

    .prologue
    .line 41
    const/4 v1, 0x0

    .line 44
    .local v1, "camera":Landroid/hardware/Camera;
    invoke-static {}, Lcom/sonyericsson/cameracommon/device/CameraOpener;->isCameraOpenLegacySupported()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 46
    :try_start_0
    sget-boolean v4, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->isUserdebugOrEngBuild:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/sonyericsson/cameracommon/device/CameraOpener;->TAG:Ljava/lang/String;

    const-string v5, "Camera.openLegacy in"

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_0
    const-class v4, Landroid/hardware/Camera;

    const-string v5, "openLegacy"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 50
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {}, Lcom/sonyericsson/cameracommon/device/CameraOpener;->getCameraHal1ApiVersion()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/hardware/Camera;

    move-object v1, v0

    .line 52
    sget-boolean v4, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->isUserdebugOrEngBuild:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/sonyericsson/cameracommon/device/CameraOpener;->TAG:Ljava/lang/String;

    const-string v5, "Camera.openLegacy out"

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->p(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 74
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :cond_1
    :goto_0
    return-object v1

    .line 58
    :catch_0
    move-exception v2

    .line 60
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    throw v2

    .line 61
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    .line 64
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    const-class v4, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 65
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v4

    check-cast v4, Ljava/lang/RuntimeException;

    throw v4

    .line 70
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_2
    sget-boolean v4, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->isUserdebugOrEngBuild:Z

    if-eqz v4, :cond_3

    sget-object v4, Lcom/sonyericsson/cameracommon/device/CameraOpener;->TAG:Ljava/lang/String;

    const-string v5, "Camera.open in"

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_3
    invoke-static {p0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v1

    .line 72
    sget-boolean v4, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->isUserdebugOrEngBuild:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/sonyericsson/cameracommon/device/CameraOpener;->TAG:Ljava/lang/String;

    const-string v5, "Camera.open out"

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->p(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :catch_2
    move-exception v4

    goto :goto_0

    .line 54
    :catch_3
    move-exception v4

    goto :goto_0
.end method
