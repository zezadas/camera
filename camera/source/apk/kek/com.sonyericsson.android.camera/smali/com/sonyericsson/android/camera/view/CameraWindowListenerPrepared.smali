.class public Lcom/sonyericsson/android/camera/view/CameraWindowListenerPrepared;
.super Lcom/sonyericsson/android/camera/view/CameraWindowListener;
.source "CameraWindowListenerPrepared.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field final mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/sonyericsson/android/camera/view/CameraWindowListenerPrepared;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/view/CameraWindowListenerPrepared;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/android/camera/view/CameraWindow;)V
    .locals 2
    .param p1, "window"    # Lcom/sonyericsson/android/camera/view/CameraWindow;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/CameraWindowListener;-><init>()V

    .line 30
    if-nez p1, :cond_0

    .line 31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CameraWindow must be inflated."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/CameraWindowListenerPrepared;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    .line 34
    return-void
.end method


# virtual methods
.method public getLocation()Lcom/sonyericsson/android/camera/view/CameraWindowListener$Location;
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasWithholdThermalWarning()Z
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public onAcquired(ZZ)V
    .locals 2
    .param p1, "gps"    # Z
    .param p2, "net"    # Z

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindowListenerPrepared;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getGeoTagIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    move-result-object v1

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;->isAcquired(Z)V

    .line 40
    return-void

    .line 39
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDisabled()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public onLost()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindowListenerPrepared;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getGeoTagIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;->isAcquired(Z)V

    .line 46
    return-void
.end method

.method public onNotifyThermalNormal()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindowListenerPrepared;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getThermalIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->set(Z)V

    .line 61
    return-void
.end method

.method public onNotifyThermalWarning()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/CameraWindowListenerPrepared;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getThermalIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->set(Z)V

    .line 66
    return-void
.end method
