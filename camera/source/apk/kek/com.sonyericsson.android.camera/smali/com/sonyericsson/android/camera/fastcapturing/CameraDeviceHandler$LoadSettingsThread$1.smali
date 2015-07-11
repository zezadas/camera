.class Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$LoadSettingsThread$1;
.super Ljava/lang/Object;
.source "CameraDeviceHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$LoadSettingsThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$LoadSettingsThread;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$LoadSettingsThread;)V
    .locals 0

    .prologue
    .line 730
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$LoadSettingsThread$1;->this$1:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$LoadSettingsThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 733
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$LoadSettingsThread$1;->this$1:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$LoadSettingsThread;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$LoadSettingsThread;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->access$1000(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$LoadSettingsThread$1;->this$1:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$LoadSettingsThread;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$LoadSettingsThread;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->access$2200(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 734
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$LoadSettingsThread$1;->this$1:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$LoadSettingsThread;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$LoadSettingsThread;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->access$2200(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$LoadSettingsThread$1;->this$1:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$LoadSettingsThread;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$LoadSettingsThread;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->access$1000(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "gps"

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;->isLocationProviderAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$LoadSettingsThread$1;->this$1:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$LoadSettingsThread;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$LoadSettingsThread;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->access$1000(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "network"

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;->isLocationProviderAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->startLocationUpdates(ZZ)V

    .line 746
    :cond_0
    return-void
.end method
