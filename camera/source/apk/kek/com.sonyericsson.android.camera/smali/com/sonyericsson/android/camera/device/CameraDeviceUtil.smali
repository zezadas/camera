.class public Lcom/sonyericsson/android/camera/device/CameraDeviceUtil;
.super Ljava/lang/Object;
.source "CameraDeviceUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/device/CameraDeviceUtil$OpenCameraTask;
    }
.end annotation


# static fields
.field public static final ERROR_SET_PREVIEW_DISPLAY:I = -0x100

.field public static final ERROR_START_PREVIEW:I = -0xff

.field public static final FOCUS_AREA_WEIGHT_DEFAULT:I = 0x0

.field public static final FOCUS_AREA_WEIGHT_USER:I = 0x3e8

.field public static final FPS_RANGE_MAX:I = 0x3c

.field public static final FPS_RANGE_MIN:I = 0x0

.field public static final OBJECT_TRACKING_LOW_PASS_FILTER_STRENGTH:I = 0x4b

.field public static final OBJECT_TRACKING_MINIMAL_INTERVAL_MS:I = 0x64

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/sonyericsson/android/camera/device/CameraDeviceUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method

.method public static computePreviewFpsRange(ILjava/util/List;)[I
    .locals 4
    .param p0, "targetFps"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<[I>;)[I"
        }
    .end annotation

    .prologue
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<[I>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 150
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 151
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 152
    .local v0, "value":[I
    aget v1, v0, v3

    aget v2, v0, v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceUtil;->getFpsRange(II)[I

    move-result-object v1

    .line 166
    .end local v0    # "value":[I
    :goto_0
    return-object v1

    .line 157
    :cond_0
    mul-int/lit16 p0, p0, 0x3e8

    .line 158
    if-gez p0, :cond_1

    .line 159
    const p0, 0x7fffffff

    .line 162
    :cond_1
    if-nez p0, :cond_2

    .line 163
    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceUtil;->getMinFpsRange(ILjava/util/List;)[I

    move-result-object v1

    goto :goto_0

    .line 166
    :cond_2
    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceUtil;->getMaxFpsRange(ILjava/util/List;)[I

    move-result-object v1

    goto :goto_0
.end method

.method public static execute(Landroid/content/Context;Ljava/util/concurrent/Callable;)Landroid/hardware/Camera;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Callable",
            "<",
            "Landroid/hardware/Camera;",
            ">;)",
            "Landroid/hardware/Camera;"
        }
    .end annotation

    .prologue
    .local p1, "task":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Landroid/hardware/Camera;>;"
    const/4 v9, 0x1

    .line 102
    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceUtil;->isCameraDisabled(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 103
    const/4 v2, 0x0

    .line 124
    :goto_0
    return-object v2

    .line 107
    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    .line 108
    .local v4, "executor":Ljava/util/concurrent/ExecutorService;
    invoke-interface {v4, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v5

    .line 110
    .local v5, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Landroid/hardware/Camera;>;"
    const/4 v2, 0x0

    .line 112
    .local v2, "camera":Landroid/hardware/Camera;
    const-wide/16 v6, 0xfa0

    :try_start_0
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, v6, v7, v8}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/hardware/Camera;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    invoke-interface {v5, v9}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 121
    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    goto :goto_0

    .line 113
    :catch_0
    move-exception v3

    .line 114
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_1
    sget-object v6, Lcom/sonyericsson/android/camera/device/CameraDeviceUtil;->TAG:Ljava/lang/String;

    const-string v7, "Open camera has been interrupted."

    invoke-static {v6, v7, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    invoke-interface {v5, v9}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 121
    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    goto :goto_0

    .line 115
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v3

    .line 116
    .local v3, "e":Ljava/util/concurrent/ExecutionException;
    :try_start_2
    sget-object v6, Lcom/sonyericsson/android/camera/device/CameraDeviceUtil;->TAG:Ljava/lang/String;

    const-string v7, "Open camera failed."

    invoke-static {v6, v7, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 120
    invoke-interface {v5, v9}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 121
    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    goto :goto_0

    .line 117
    .end local v3    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_2
    move-exception v3

    .line 118
    .local v3, "e":Ljava/util/concurrent/TimeoutException;
    :try_start_3
    sget-object v6, Lcom/sonyericsson/android/camera/device/CameraDeviceUtil;->TAG:Ljava/lang/String;

    const-string v7, "Open camera failed."

    invoke-static {v6, v7, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 120
    invoke-interface {v5, v9}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 121
    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    goto :goto_0

    .line 120
    .end local v3    # "e":Ljava/util/concurrent/TimeoutException;
    :catchall_0
    move-exception v6

    invoke-interface {v5, v9}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 121
    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    throw v6
.end method

.method public static getFpsRange(II)[I
    .locals 3
    .param p0, "adjustedMaxFps"    # I
    .param p1, "adjustedMinFps"    # I

    .prologue
    const/4 v2, 0x0

    .line 223
    if-lez p0, :cond_0

    .line 224
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 225
    .local v0, "fpsRange":[I
    const/4 v1, 0x1

    aput p0, v0, v1

    .line 226
    aput p1, v0, v2

    .line 230
    .end local v0    # "fpsRange":[I
    :goto_0
    return-object v0

    :cond_0
    new-array v0, v2, [I

    goto :goto_0
.end method

.method public static getMaxFpsRange(ILjava/util/List;)[I
    .locals 7
    .param p0, "targetFps"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<[I>;)[I"
        }
    .end annotation

    .prologue
    .line 170
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<[I>;"
    const/4 v0, 0x0

    .line 171
    .local v0, "adjustedMaxFps":I
    const/4 v1, 0x0

    .line 173
    .local v1, "adjustedMinFps":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    .line 174
    .local v5, "value":[I
    const/4 v6, 0x1

    aget v3, v5, v6

    .line 175
    .local v3, "supportedMaxFps":I
    const/4 v6, 0x0

    aget v4, v5, v6

    .line 180
    .local v4, "supportedMinFps":I
    if-gt v3, p0, :cond_0

    if-gt v0, v3, :cond_0

    .line 186
    move v0, v3

    .line 187
    move v1, v4

    goto :goto_0

    .line 191
    .end local v3    # "supportedMaxFps":I
    .end local v4    # "supportedMinFps":I
    .end local v5    # "value":[I
    :cond_1
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceUtil;->getFpsRange(II)[I

    move-result-object v6

    return-object v6
.end method

.method public static getMinFpsRange(ILjava/util/List;)[I
    .locals 7
    .param p0, "targetFps"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<[I>;)[I"
        }
    .end annotation

    .prologue
    .line 195
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<[I>;"
    const v0, 0x7fffffff

    .line 196
    .local v0, "adjustedMaxFps":I
    const v1, 0x7fffffff

    .line 198
    .local v1, "adjustedMinFps":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    .line 199
    .local v5, "value":[I
    const/4 v6, 0x1

    aget v3, v5, v6

    .line 200
    .local v3, "supportedMaxFps":I
    const/4 v6, 0x0

    aget v4, v5, v6

    .line 205
    .local v4, "supportedMinFps":I
    if-le v3, p0, :cond_0

    if-lt v0, v3, :cond_0

    .line 211
    move v0, v3

    .line 212
    move v1, v4

    goto :goto_0

    .line 216
    .end local v3    # "supportedMaxFps":I
    .end local v4    # "supportedMinFps":I
    .end local v5    # "value":[I
    :cond_1
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceUtil;->getFpsRange(II)[I

    move-result-object v6

    return-object v6
.end method

.method public static getParams(Landroid/content/Context;I)Landroid/hardware/Camera$Parameters;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cameraId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/android/camera/device/CameraDeviceException;
        }
    .end annotation

    .prologue
    .line 56
    new-instance v2, Lcom/sonyericsson/android/camera/device/CameraDeviceUtil$OpenCameraTask;

    invoke-direct {v2, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceUtil$OpenCameraTask;-><init>(I)V

    invoke-static {p0, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceUtil;->execute(Landroid/content/Context;Ljava/util/concurrent/Callable;)Landroid/hardware/Camera;

    move-result-object v0

    .line 58
    .local v0, "camera":Landroid/hardware/Camera;
    if-nez v0, :cond_0

    .line 59
    new-instance v2, Lcom/sonyericsson/android/camera/device/CameraDeviceException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Open camera["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] failed."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sonyericsson/android/camera/device/CameraDeviceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 62
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 63
    .local v1, "params":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 65
    if-nez v1, :cond_1

    .line 66
    new-instance v2, Lcom/sonyericsson/android/camera/device/CameraDeviceException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No Parameters["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] obtained."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sonyericsson/android/camera/device/CameraDeviceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 69
    :cond_1
    return-object v1
.end method

.method public static isCameraDisabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    const-string v1, "device_policy"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 37
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceUtil;->TAG:Ljava/lang/String;

    const-string v2, "[CameraNotAvailable] Camera is Disabled."

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->errorLogForNonUserVariant(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const/4 v1, 0x1

    .line 44
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
