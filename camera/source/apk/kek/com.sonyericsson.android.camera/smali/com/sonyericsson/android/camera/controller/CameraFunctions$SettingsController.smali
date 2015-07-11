.class Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;
.super Ljava/lang/Object;
.source "CameraFunctions.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/CameraFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsController"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/controller/CameraFunctions;)V
    .locals 0

    .prologue
    .line 1344
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyAllParameters(Lcom/sonyericsson/android/camera/parameter/Parameters;)V
    .locals 5
    .param p1, "params"    # Lcom/sonyericsson/android/camera/parameter/Parameters;

    .prologue
    .line 1673
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    move-result-object v0

    iget-object v1, p1, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getDisplayOrientation()I

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v3, v3, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getSurfaceRect()Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v4, v4, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->init(ZILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1680
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->hasExtraOutputPath()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1681
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;->FIXED:Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->setSelectability(Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;)V

    .line 1692
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v1, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    invoke-static {}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->getDestinationToSave()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->getType()Landroid/os/storage/StorageManager$StorageType;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->setCurrentStorage(Landroid/os/storage/StorageManager$StorageType;)V

    .line 1696
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getGeotag()Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->isGeotagOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->setGeotag(Z)V

    .line 1699
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getShutterToneGenerator()Lcom/sonyericsson/android/camera/ShutterToneGenerator;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getShutterSound()Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/ShutterToneGenerator;->setShutterSound(Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;)V

    .line 1702
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mEventDispatcher:Lcom/sonyericsson/android/camera/controller/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->updateTouchEventTranslator(Lcom/sonyericsson/android/camera/parameter/Parameters;)V

    .line 1706
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mBurstShooting:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getBurstShot()Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->update(Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;)V

    .line 1708
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->updateFaceDetect(Lcom/sonyericsson/android/camera/parameter/Parameters;)V

    .line 1710
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mSceneRecognition:Lcom/sonyericsson/android/camera/controller/SceneRecognition;

    iget-object v1, p1, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/SceneRecognition;->update(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 1712
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mSelfTimer:Lcom/sonyericsson/android/camera/controller/Selftimer;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getSelfTimer()Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->getDurationInMillisecond()I

    move-result v1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getSelfTimer()Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->getSoundType()Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/Selftimer;->update(ILcom/sonyericsson/android/camera/ShutterToneGenerator$Type;)V

    .line 1714
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mVideoSelfTimer:Lcom/sonyericsson/android/camera/controller/Selftimer;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getVideoSelfTimer()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;->getTime()I

    move-result v1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getVideoSelfTimer()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;->getSoundType()Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/Selftimer;->update(ILcom/sonyericsson/android/camera/ShutterToneGenerator$Type;)V

    .line 1716
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->setCurrentSelftimer(Lcom/sonyericsson/android/camera/parameter/Parameters;)V

    .line 1718
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mShooting:Lcom/sonyericsson/android/camera/controller/Shooting;

    iget-object v1, p1, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/Shooting;->update(I)V

    .line 1719
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mShooting:Lcom/sonyericsson/android/camera/controller/Shooting;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getFocusMode()Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/Shooting;->update(Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;)V

    .line 1720
    return-void

    .line 1684
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->isToggledStorageReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1685
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;->SELECTABLE:Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->setSelectability(Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;)V

    goto/16 :goto_0

    .line 1688
    :cond_1
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;->UNAVAILABLE:Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->setSelectability(Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;)V

    goto/16 :goto_0
.end method

.method public commit()V
    .locals 7

    .prologue
    .line 1641
    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v4, v4, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraDevice;->commit()V

    .line 1642
    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v4, v4, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/view/CameraWindow;->commit()V

    .line 1653
    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v4, v4, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 1654
    .local v2, "params":Landroid/hardware/Camera$Parameters;
    if-eqz v2, :cond_0

    .line 1655
    const-string v4, "sony-vs"

    invoke-virtual {v2, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1656
    .local v3, "vsParam":Ljava/lang/String;
    const-string v4, "sony-video-nr"

    invoke-virtual {v2, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1657
    .local v1, "nrParam":Ljava/lang/String;
    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->getParams()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v4

    iget-object v4, v4, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()I

    move-result v0

    .line 1658
    .local v0, "cameraId":I
    new-instance v4, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v5, v5, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {v4, v5, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4, v2}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->putFromParameter(Landroid/hardware/Camera$Parameters;)Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;

    move-result-object v4

    new-instance v5, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoResolution;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->getParams()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoResolution;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v4, v5}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v4

    new-instance v5, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoRecordingFps;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->getParams()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoFrameRate()I

    move-result v6

    invoke-direct {v5, v6}, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoRecordingFps;-><init>(I)V

    invoke-virtual {v4, v5}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v4

    invoke-static {v3}, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoStabilizerStatus;->fromCameraParameter(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/status/eachcamera/VideoStabilizerStatus;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v4

    invoke-static {v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoNoiseReduction;->fromCameraParameter(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/status/eachcamera/VideoNoiseReduction;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->publish()V

    .line 1667
    .end local v0    # "cameraId":I
    .end local v1    # "nrParam":Ljava/lang/String;
    .end local v3    # "vsParam":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v4, v4, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mEventDispatcher:Lcom/sonyericsson/android/camera/controller/EventDispatcher;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->getParams()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->updateTouchEventTranslator(Lcom/sonyericsson/android/camera/parameter/Parameters;)V

    .line 1668
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;)V
    .locals 1
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    .prologue
    .line 1353
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setAutoReviweDuration(Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;)V

    .line 1354
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/AutoUpload;)V
    .locals 0
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/AutoUpload;

    .prologue
    .line 1349
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;)V
    .locals 4
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;

    .prologue
    .line 1363
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->getParams()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v1

    .line 1366
    .local v1, "params":Lcom/sonyericsson/android/camera/parameter/Parameters;
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getBurstShot()Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;

    move-result-object v0

    .line 1369
    .local v0, "burstShot":Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mBurstShooting:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->update(Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;)V

    .line 1372
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getShutterSound()Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setBurstShutterSound(Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;)V

    .line 1373
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;)V
    .locals 0
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;

    .prologue
    .line 1378
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .locals 5
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .prologue
    const/4 v2, 0x1

    .line 1383
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 1384
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 1388
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->getParams()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setVideoSize(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V

    .line 1390
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mShooting:Lcom/sonyericsson/android/camera/controller/Shooting;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/Shooting;->update(I)V

    .line 1392
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mSceneRecognition:Lcom/sonyericsson/android/camera/controller/SceneRecognition;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/SceneRecognition;->update(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 1394
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mAutoZoom:Lcom/sonyericsson/android/camera/controller/AutoZoom;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/AutoZoom;->update(I)V

    .line 1396
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->getParams()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->updateFaceDetect(Lcom/sonyericsson/android/camera/parameter/Parameters;)V

    .line 1398
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->updateSelftimers()V

    .line 1401
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 1402
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->getParams()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getSmileCapture()Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setPhotoSmileLevel(Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;)V

    .line 1407
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->restoreFocusMode(Z)Z

    .line 1412
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->getParams()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getBurstShot()Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->set(Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;)V

    .line 1414
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getDisplayOrientation()I

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v3, v3, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getSurfaceRect()Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v4, v4, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->init(ZILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1419
    return-void

    .line 1404
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setPhotoSmileLevel(Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;)V

    goto :goto_0
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;)V
    .locals 2
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    .prologue
    .line 1424
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->getType()Landroid/os/storage/StorageManager$StorageType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->setCurrentStorage(Landroid/os/storage/StorageManager$StorageType;)V

    .line 1425
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->requestCheckAll()V

    .line 1426
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/Ev;)V
    .locals 1
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    .prologue
    .line 1431
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setEv(Lcom/sonyericsson/android/camera/configuration/parameters/Ev;)V

    .line 1432
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;)V
    .locals 2
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;

    .prologue
    .line 1438
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mFaceDetect:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;->getBooleanValue()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->enableFaceIdentification(Z)V

    .line 1439
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/Facing;)V
    .locals 0
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/Facing;

    .prologue
    .line 1445
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;)V
    .locals 0
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    .prologue
    .line 1451
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/Flash;)V
    .locals 1
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    .prologue
    .line 1457
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setFlashMode(Lcom/sonyericsson/android/camera/configuration/parameters/Flash;)V

    .line 1458
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;)V
    .locals 2
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    .prologue
    .line 1463
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setFocusMode(Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;)V

    .line 1464
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setFocusMode(Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;)V

    .line 1466
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mShooting:Lcom/sonyericsson/android/camera/controller/Shooting;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/Shooting;->update(Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;)V

    .line 1467
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mObjectTracking:Lcom/sonyericsson/android/camera/controller/ObjectTracking;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/ObjectTracking;->stop(Z)V

    .line 1468
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->getParams()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->updateFaceDetect(Lcom/sonyericsson/android/camera/parameter/Parameters;)V

    .line 1469
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;)V
    .locals 2
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    .prologue
    .line 1481
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->isGeotagOn()Z

    move-result v0

    .line 1484
    .local v0, "geotagOn":Z
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setGeotag(Z)V

    .line 1487
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->setGeotag(Z)V

    .line 1488
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;)V
    .locals 3
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    .prologue
    .line 1494
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setHdr(Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;)V

    .line 1498
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->getParams()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v0

    .line 1499
    .local v0, "params":Lcom/sonyericsson/android/camera/parameter/Parameters;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getResolution()Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setPictureSize(Landroid/graphics/Rect;)V

    .line 1500
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/Iso;)V
    .locals 1
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    .prologue
    .line 1505
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setIso(Lcom/sonyericsson/android/camera/configuration/parameters/Iso;)V

    .line 1506
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/Metering;)V
    .locals 1
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    .prologue
    .line 1511
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setMetering(Lcom/sonyericsson/android/camera/configuration/parameters/Metering;)V

    .line 1512
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/Microphone;)V
    .locals 0
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/Microphone;

    .prologue
    .line 1518
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;)V
    .locals 0
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    .prologue
    .line 1524
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;)V
    .locals 1
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .prologue
    .line 1530
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setResolution(Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;)V

    .line 1531
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setResolution(Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;)V

    .line 1533
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mAutoZoom:Lcom/sonyericsson/android/camera/controller/AutoZoom;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/AutoZoom;->clear()V

    .line 1534
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mTouchFocus:Lcom/sonyericsson/android/camera/controller/TouchFocus;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/TouchFocus;->clear()V

    .line 1535
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/Scene;)V
    .locals 1
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    .prologue
    .line 1540
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setScene(Lcom/sonyericsson/android/camera/configuration/parameters/Scene;)V

    .line 1541
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;)V
    .locals 2
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    .prologue
    .line 1546
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    # invokes: Lcom/sonyericsson/android/camera/controller/CameraFunctions;->updatePhotoSelftimer(Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;)V
    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->access$000(Lcom/sonyericsson/android/camera/controller/CameraFunctions;Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;)V

    .line 1548
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->getParams()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->setCurrentSelftimer(Lcom/sonyericsson/android/camera/parameter/Parameters;)V

    .line 1549
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;)V
    .locals 1
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    .prologue
    .line 1553
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getShutterToneGenerator()Lcom/sonyericsson/android/camera/ShutterToneGenerator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/ShutterToneGenerator;->setShutterSound(Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;)V

    .line 1554
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setShutterSound(Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;)V

    .line 1555
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;)V
    .locals 2
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    .prologue
    .line 1560
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->getParams()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1561
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->applyPhotoSmileCapture(Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;)V

    .line 1563
    :cond_0
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;)V
    .locals 1
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

    .prologue
    .line 1569
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setSoftSkin(Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;)V

    .line 1570
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;)V
    .locals 1
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;

    .prologue
    .line 1575
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setStabilizer(Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;)V

    .line 1576
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;)V
    .locals 0
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;

    .prologue
    .line 1589
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/TouchBlock;)V
    .locals 0
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/TouchBlock;

    .prologue
    .line 1725
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;)V
    .locals 1
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;

    .prologue
    .line 1594
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setTouchCapture(Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;)V

    .line 1595
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;)V
    .locals 1
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setVideoAutoReviweDuration(Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;)V

    .line 1359
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)V
    .locals 1
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    .prologue
    .line 1600
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setVideoHdr(Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)V

    .line 1601
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;)V
    .locals 2
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;

    .prologue
    .line 1606
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    # invokes: Lcom/sonyericsson/android/camera/controller/CameraFunctions;->updateVideoSelftimer(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;)V
    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->access$100(Lcom/sonyericsson/android/camera/controller/CameraFunctions;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;)V

    .line 1608
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->getParams()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->setCurrentSelftimer(Lcom/sonyericsson/android/camera/parameter/Parameters;)V

    .line 1609
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V
    .locals 1
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .prologue
    .line 1615
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setPreviewSizeAndFpsRangeForVideo(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V

    .line 1616
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setVideoSize(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V

    .line 1617
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setVideoSize(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V

    .line 1618
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mAutoZoom:Lcom/sonyericsson/android/camera/controller/AutoZoom;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/AutoZoom;->clear()V

    .line 1619
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;)V
    .locals 0
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    .prologue
    .line 1625
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;)V
    .locals 2
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    .prologue
    .line 1580
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->getParams()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1581
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setSteadyShot(Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;)V

    .line 1583
    :cond_0
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;)V
    .locals 0
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;

    .prologue
    .line 1631
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;)V
    .locals 1
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

    .prologue
    .line 1636
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->this$0:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setWhiteBalance(Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;)V

    .line 1637
    return-void
.end method
