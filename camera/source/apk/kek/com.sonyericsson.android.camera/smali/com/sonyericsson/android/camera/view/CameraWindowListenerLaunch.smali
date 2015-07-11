.class public Lcom/sonyericsson/android/camera/view/CameraWindowListenerLaunch;
.super Lcom/sonyericsson/android/camera/view/CameraWindowListener;
.source "CameraWindowListenerLaunch.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field final mCameraWindow:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sonyericsson/android/camera/view/CameraWindow;",
            ">;"
        }
    .end annotation
.end field

.field mLatestLocation:Lcom/sonyericsson/android/camera/view/CameraWindowListener$Location;

.field mLatestThermalWarning:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/sonyericsson/android/camera/view/CameraWindowListenerLaunch;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/view/CameraWindowListenerLaunch;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/android/camera/view/CameraWindow;)V
    .locals 2
    .param p1, "window"    # Lcom/sonyericsson/android/camera/view/CameraWindow;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/CameraWindowListener;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindowListenerLaunch;->mLatestLocation:Lcom/sonyericsson/android/camera/view/CameraWindowListener$Location;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindowListenerLaunch;->mLatestThermalWarning:Z

    .line 45
    if-nez p1, :cond_0

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CameraWindow must be inflated."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindowListenerLaunch;->mCameraWindow:Ljava/lang/ref/WeakReference;

    .line 49
    return-void
.end method


# virtual methods
.method public getLocation()Lcom/sonyericsson/android/camera/view/CameraWindowListener$Location;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindowListenerLaunch;->mLatestLocation:Lcom/sonyericsson/android/camera/view/CameraWindowListener$Location;

    return-object v0
.end method

.method public hasWithholdThermalWarning()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindowListenerLaunch;->mLatestThermalWarning:Z

    return v0
.end method

.method public onAcquired(ZZ)V
    .locals 2
    .param p1, "gps"    # Z
    .param p2, "net"    # Z

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindowListenerLaunch;->mLatestLocation:Lcom/sonyericsson/android/camera/view/CameraWindowListener$Location;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/sonyericsson/android/camera/view/CameraWindowListener$Location;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/view/CameraWindowListener$Location;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindowListenerLaunch;->mLatestLocation:Lcom/sonyericsson/android/camera/view/CameraWindowListener$Location;

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindowListenerLaunch;->mLatestLocation:Lcom/sonyericsson/android/camera/view/CameraWindowListener$Location;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sonyericsson/android/camera/view/CameraWindowListener$Location;->mIsAcquired:Z

    .line 58
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindowListenerLaunch;->mLatestLocation:Lcom/sonyericsson/android/camera/view/CameraWindowListener$Location;

    iput-boolean p1, v0, Lcom/sonyericsson/android/camera/view/CameraWindowListener$Location;->mIsGps:Z

    .line 59
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindowListenerLaunch;->mLatestLocation:Lcom/sonyericsson/android/camera/view/CameraWindowListener$Location;

    iput-boolean p2, v0, Lcom/sonyericsson/android/camera/view/CameraWindowListener$Location;->mIsNetwork:Z

    .line 60
    return-void
.end method

.method public onDisabled()V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public onLost()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindowListenerLaunch;->mLatestLocation:Lcom/sonyericsson/android/camera/view/CameraWindowListener$Location;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/sonyericsson/android/camera/view/CameraWindowListener$Location;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/view/CameraWindowListener$Location;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindowListenerLaunch;->mLatestLocation:Lcom/sonyericsson/android/camera/view/CameraWindowListener$Location;

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindowListenerLaunch;->mLatestLocation:Lcom/sonyericsson/android/camera/view/CameraWindowListener$Location;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sonyericsson/android/camera/view/CameraWindowListener$Location;->mIsAcquired:Z

    .line 69
    return-void
.end method

.method public onNotifyThermalNormal()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindowListenerLaunch;->mLatestThermalWarning:Z

    .line 84
    return-void
.end method

.method public onNotifyThermalWarning()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindowListenerLaunch;->mLatestThermalWarning:Z

    .line 89
    return-void
.end method
