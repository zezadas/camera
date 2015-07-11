.class public Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;
.super Ljava/lang/Object;
.source "SmoothZoomController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController$SmoothZoomTask;,
        Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController$ZoomCallbackTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBackWorker:Ljava/util/concurrent/ExecutorService;

.field private mCamera:Landroid/hardware/Camera;

.field private mIsSmoothZoomStartRequired:Z

.field private final mIsSmoothZoomSupportedPlatform:Z

.field private mOnZoomChangedCallback:Landroid/hardware/Camera$OnZoomChangeListener;

.field private mUiWorker:Landroid/os/Handler;

.field private mZoomChangeInterval:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/Camera;Landroid/os/Handler;Landroid/hardware/Camera$OnZoomChangeListener;)V
    .locals 3
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "uiWorker"    # Landroid/os/Handler;
    .param p3, "callback"    # Landroid/hardware/Camera$OnZoomChangeListener;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v1, p0, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;->mUiWorker:Landroid/os/Handler;

    .line 27
    iput-object v1, p0, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    .line 30
    iput-object v1, p0, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;->mCamera:Landroid/hardware/Camera;

    .line 33
    iput-boolean v2, p0, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;->mIsSmoothZoomStartRequired:Z

    .line 39
    iput-object v1, p0, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;->mOnZoomChangedCallback:Landroid/hardware/Camera$OnZoomChangeListener;

    .line 42
    const/16 v1, 0x21

    iput v1, p0, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;->mZoomChangeInterval:I

    .line 75
    iput-object p1, p0, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;->mCamera:Landroid/hardware/Camera;

    .line 78
    iget-object v1, p0, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 79
    .local v0, "params":Landroid/hardware/Camera$Parameters;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isSmoothZoomSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;->mIsSmoothZoomSupportedPlatform:Z

    .line 82
    iget-object v1, p0, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, p3}, Landroid/hardware/Camera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 90
    :goto_0
    return-void

    .line 85
    :cond_0
    iput-boolean v2, p0, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;->mIsSmoothZoomSupportedPlatform:Z

    .line 86
    iput-object p2, p0, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;->mUiWorker:Landroid/os/Handler;

    .line 87
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    .line 88
    iput-object p3, p0, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;->mOnZoomChangedCallback:Landroid/hardware/Camera$OnZoomChangeListener;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;)Landroid/hardware/Camera$OnZoomChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;->mOnZoomChangedCallback:Landroid/hardware/Camera$OnZoomChangeListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;->mIsSmoothZoomStartRequired:Z

    return v0
.end method

.method static synthetic access$102(Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;
    .param p1, "x1"    # Z

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;->mIsSmoothZoomStartRequired:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;)Landroid/hardware/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;->mUiWorker:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;

    .prologue
    .line 19
    iget v0, p0, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;->mZoomChangeInterval:I

    return v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public release()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 96
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;->mIsSmoothZoomStartRequired:Z

    .line 97
    iget-object v1, p0, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 100
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v2, 0x1f4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_0
    iput-object v5, p0, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    .line 106
    :cond_0
    iput-object v5, p0, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;->mUiWorker:Landroid/os/Handler;

    .line 107
    iget-object v1, p0, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_1

    .line 108
    iget-object v1, p0, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v5}, Landroid/hardware/Camera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 109
    iput-object v5, p0, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;->mCamera:Landroid/hardware/Camera;

    .line 111
    :cond_1
    iput-object v5, p0, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;->mOnZoomChangedCallback:Landroid/hardware/Camera$OnZoomChangeListener;

    .line 112
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public setZoomChangeInterval(I)V
    .locals 0
    .param p1, "intervalMillis"    # I

    .prologue
    .line 120
    iput p1, p0, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;->mZoomChangeInterval:I

    .line 121
    return-void
.end method

.method public startSmoothZoom(I)V
    .locals 3
    .param p1, "targetZoomIndex"    # I

    .prologue
    .line 129
    iget-boolean v1, p0, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;->mIsSmoothZoomSupportedPlatform:Z

    if-eqz v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->startSmoothZoom(I)V

    .line 142
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-boolean v1, p0, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;->mIsSmoothZoomStartRequired:Z

    if-nez v1, :cond_1

    .line 135
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;->mIsSmoothZoomStartRequired:Z

    .line 136
    new-instance v0, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController$SmoothZoomTask;

    invoke-direct {v0, p0, p1}, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController$SmoothZoomTask;-><init>(Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;I)V

    .line 137
    .local v0, "task":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 139
    .end local v0    # "task":Ljava/lang/Runnable;
    :cond_1
    sget-object v1, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;->TAG:Ljava/lang/String;

    const-string v2, "SmoothZoomController : Already started."

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopSmoothZoom()V
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;->mIsSmoothZoomSupportedPlatform:Z

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopSmoothZoom()V

    .line 158
    :goto_0
    return-void

    .line 153
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/zoom/camera1/SmoothZoomController;->mIsSmoothZoomStartRequired:Z

    goto :goto_0
.end method
