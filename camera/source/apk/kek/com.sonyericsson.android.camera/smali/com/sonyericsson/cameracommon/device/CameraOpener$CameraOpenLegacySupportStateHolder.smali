.class Lcom/sonyericsson/cameracommon/device/CameraOpener$CameraOpenLegacySupportStateHolder;
.super Ljava/lang/Object;
.source "CameraOpener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/device/CameraOpener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CameraOpenLegacySupportStateHolder"
.end annotation


# static fields
.field private static final CAMERA_HAL_API_VERSION_1_0_NOT_SUPPORTED:I = -0x1

.field private static final sApiVersion1:I

.field private static final sIsSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    invoke-static {}, Lcom/sonyericsson/cameracommon/device/CameraOpener$CameraOpenLegacySupportStateHolder;->getCameraHalApi1Version()I

    move-result v0

    sput v0, Lcom/sonyericsson/cameracommon/device/CameraOpener$CameraOpenLegacySupportStateHolder;->sApiVersion1:I

    .line 94
    invoke-static {}, Lcom/sonyericsson/cameracommon/device/CameraOpener$CameraOpenLegacySupportStateHolder;->isSupported()Z

    move-result v0

    sput-boolean v0, Lcom/sonyericsson/cameracommon/device/CameraOpener$CameraOpenLegacySupportStateHolder;->sIsSupported:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 91
    sget-boolean v0, Lcom/sonyericsson/cameracommon/device/CameraOpener$CameraOpenLegacySupportStateHolder;->sIsSupported:Z

    return v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 91
    sget v0, Lcom/sonyericsson/cameracommon/device/CameraOpener$CameraOpenLegacySupportStateHolder;->sApiVersion1:I

    return v0
.end method

.method private static getCameraHalApi1Version()I
    .locals 7

    .prologue
    .line 110
    const-class v5, Landroid/hardware/Camera;

    invoke-virtual {v5}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 111
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CAMERA_HAL_API_VERSION_1_0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 113
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    .line 126
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :goto_1
    return v4

    .line 117
    .restart local v1    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v5

    .line 110
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 126
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :cond_1
    const/4 v4, -0x1

    goto :goto_1

    .line 119
    .restart local v1    # "field":Ljava/lang/reflect/Field;
    :catch_1
    move-exception v5

    goto :goto_2
.end method

.method private static isSupported()Z
    .locals 6

    .prologue
    .line 99
    const-class v4, Landroid/hardware/Camera;

    invoke-virtual {v4}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Method;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 100
    .local v3, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "openLegacy"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 101
    invoke-static {}, Lcom/sonyericsson/cameracommon/device/CameraOpener$CameraOpenLegacySupportStateHolder;->getCameraHalApi1Version()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 102
    const/4 v4, 0x1

    .line 106
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :goto_1
    return v4

    .line 99
    .restart local v3    # "method":Ljava/lang/reflect/Method;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method
