.class Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$LoadSettingsThread;
.super Ljava/lang/Thread;
.source "CameraDeviceHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadSettingsThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)V
    .locals 0

    .prologue
    .line 712
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$LoadSettingsThread;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;
    .param p2, "x1"    # Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$1;

    .prologue
    .line 712
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$LoadSettingsThread;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 719
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$LoadSettingsThread;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->loadSettings()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->access$2000(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)V

    .line 722
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$LoadSettingsThread;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mFastCaptureSetting:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->access$700(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    if-ne v0, v1, :cond_1

    .line 724
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$LoadSettingsThread;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mCommonSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->access$2100(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->GEO_TAG:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->get(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$LoadSettingsThread;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->access$1000(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/PresetConfigurationResolver;->isGeoTagEnabled(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 727
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$LoadSettingsThread;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    new-instance v1, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$LoadSettingsThread;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->access$1000(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->access$2202(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;)Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    .line 728
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$LoadSettingsThread;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->access$2200(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->assignResource()V

    .line 730
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$LoadSettingsThread;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mUiThreadHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->access$2300(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$LoadSettingsThread$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$LoadSettingsThread$1;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$LoadSettingsThread;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 753
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$LoadSettingsThread;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$FastCaptureOrientation;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$LoadSettingsThread;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$LoadSettingsThread;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->access$1000(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$FastCaptureOrientation;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;Landroid/content/Context;)V

    # setter for: Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mFastCaptureOrientation:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$FastCaptureOrientation;
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->access$2402(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$FastCaptureOrientation;)Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$FastCaptureOrientation;

    .line 754
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$LoadSettingsThread;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mFastCaptureOrientation:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$FastCaptureOrientation;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->access$2400(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$FastCaptureOrientation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$FastCaptureOrientation;->enable()V

    .line 759
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$LoadSettingsThread;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mIsSmartCoverCamera:Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->access$2500(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 760
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$LoadSettingsThread;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->overlaySmartCoverCameraSetting()V

    .line 765
    :cond_2
    return-void
.end method
