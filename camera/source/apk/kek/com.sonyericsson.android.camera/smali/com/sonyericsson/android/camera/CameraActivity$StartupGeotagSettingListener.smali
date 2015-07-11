.class Lcom/sonyericsson/android/camera/CameraActivity$StartupGeotagSettingListener;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartupGeotagSettingListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/CameraActivity;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;)V
    .locals 0

    .prologue
    .line 1847
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$StartupGeotagSettingListener;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/CameraActivity;
    .param p2, "x1"    # Lcom/sonyericsson/android/camera/CameraActivity$1;

    .prologue
    .line 1847
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraActivity$StartupGeotagSettingListener;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;)V

    return-void
.end method


# virtual methods
.method public onSet(Z)V
    .locals 2
    .param p1, "available"    # Z

    .prologue
    .line 1851
    if-eqz p1, :cond_0

    .line 1852
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    .line 1856
    .local v0, "geotag":Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity$StartupGeotagSettingListener;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->getParameterManager()Lcom/sonyericsson/android/camera/parameter/ParameterManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->set(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    .line 1857
    return-void

    .line 1854
    .end local v0    # "geotag":Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    .restart local v0    # "geotag":Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;
    goto :goto_0
.end method
