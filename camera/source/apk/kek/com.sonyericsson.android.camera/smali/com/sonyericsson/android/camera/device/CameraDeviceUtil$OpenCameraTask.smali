.class Lcom/sonyericsson/android/camera/device/CameraDeviceUtil$OpenCameraTask;
.super Ljava/lang/Object;
.source "CameraDeviceUtil.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraDeviceUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OpenCameraTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Landroid/hardware/Camera;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCameraId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "cameraId"    # I

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceUtil$OpenCameraTask;->mCameraId:I

    .line 77
    return-void
.end method


# virtual methods
.method public call()Landroid/hardware/Camera;
    .locals 6

    .prologue
    .line 81
    const/4 v0, 0x0

    .line 82
    .local v0, "camera":Landroid/hardware/Camera;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x5

    if-ge v2, v3, :cond_0

    .line 85
    :try_start_0
    iget v3, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceUtil$OpenCameraTask;->mCameraId:I

    invoke-static {v3}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 97
    :cond_0
    return-object v0

    .line 87
    :catch_0
    move-exception v1

    .line 91
    .local v1, "e":Ljava/lang/RuntimeException;
    const-wide/16 v4, 0x1f4

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 82
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 92
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceUtil$OpenCameraTask;->call()Landroid/hardware/Camera;

    move-result-object v0

    return-object v0
.end method
