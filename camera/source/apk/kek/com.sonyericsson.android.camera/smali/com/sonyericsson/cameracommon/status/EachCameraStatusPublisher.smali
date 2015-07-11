.class public Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;
.super Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;
.source "EachCameraStatusPublisher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher",
        "<",
        "Lcom/sonyericsson/cameracommon/status/EachCameraStatusValue;",
        ">;"
    }
.end annotation


# instance fields
.field private final mKeyPrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cameraId"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;-><init>(Landroid/content/Context;)V

    .line 54
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->getCameraCommonVersion()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->mKeyPrefix:Ljava/lang/String;

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->mKeyPrefix:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected keyPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->mKeyPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public putDefaultAll()Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher",
            "<",
            "Lcom/sonyericsson/cameracommon/status/EachCameraStatusValue;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 93
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus;

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus;->DEFAULT_VALUE:Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/DeviceStatus$Value;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .line 94
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/PreviewResolution;

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/PreviewResolution;->DEFAULT_VALUE:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/PreviewResolution;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .line 95
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/PictureResolution;

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/PictureResolution;->DEFAULT_VALUE:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/PictureResolution;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .line 96
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoResolution;

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoResolution;->DEFAULT_VALUE:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoResolution;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .line 97
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/PreviewMaxFps;

    invoke-direct {v0, v2}, Lcom/sonyericsson/cameracommon/status/eachcamera/PreviewMaxFps;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .line 98
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoRecordingFps;

    invoke-direct {v0, v2}, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoRecordingFps;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .line 99
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/BurstShooting;

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/BurstShooting;->DEFAULT_VALUE:Lcom/sonyericsson/cameracommon/status/eachcamera/BurstShooting$Value;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/BurstShooting;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/BurstShooting$Value;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .line 100
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/FaceIdentification;

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/FaceIdentification;->DEFAULT_VALUE:Lcom/sonyericsson/cameracommon/status/eachcamera/FaceIdentification$Value;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/FaceIdentification;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/FaceIdentification$Value;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .line 101
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/FaceDetection;

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/FaceDetection;->DEFAULT_VALUE:Lcom/sonyericsson/cameracommon/status/eachcamera/FaceDetection$Value;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/FaceDetection;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/FaceDetection$Value;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .line 102
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/SceneRecognition;

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/SceneRecognition;->DEFAULT_VALUE:Lcom/sonyericsson/cameracommon/status/eachcamera/SceneRecognition$Value;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/SceneRecognition;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/SceneRecognition$Value;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .line 103
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/ObjectTracking;

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/ObjectTracking;->DEFAULT_VALUE:Lcom/sonyericsson/cameracommon/status/eachcamera/ObjectTracking$Value;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/ObjectTracking;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/ObjectTracking$Value;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .line 104
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoStabilizerStatus;

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoStabilizerStatus;->DEFAULT_VALUE:Lcom/sonyericsson/cameracommon/status/eachcamera/VideoStabilizerStatus$Value;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoStabilizerStatus;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/VideoStabilizerStatus$Value;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .line 105
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/PhotoLight;

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/PhotoLight;->DEFAULT_VALUE:Lcom/sonyericsson/cameracommon/status/eachcamera/PhotoLight$Value;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/PhotoLight;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/PhotoLight$Value;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .line 106
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoNoiseReduction;

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoNoiseReduction;->DEFAULT_VALUE:Lcom/sonyericsson/cameracommon/status/eachcamera/VideoNoiseReduction$Value;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/VideoNoiseReduction;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/VideoNoiseReduction$Value;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .line 107
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata;

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata;->DEFAULT_VALUE:Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata$Value;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/Metadata$Value;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .line 108
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/ArtFilter;

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/ArtFilter;->DEFAULT_VALUE:Lcom/sonyericsson/cameracommon/status/eachcamera/ArtFilter$Value;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/ArtFilter;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/ArtFilter$Value;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .line 109
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/TimeShift;

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/TimeShift;->DEFAULT_VALUE:Lcom/sonyericsson/cameracommon/status/eachcamera/TimeShift$Value;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/TimeShift;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/TimeShift$Value;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .line 110
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/SoundPhoto;

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/SoundPhoto;->DEFAULT_VALUE:Lcom/sonyericsson/cameracommon/status/eachcamera/SoundPhoto$Value;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/SoundPhoto;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/SoundPhoto$Value;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .line 111
    new-instance v0, Lcom/sonyericsson/cameracommon/status/eachcamera/OnlineRemote;

    sget-object v1, Lcom/sonyericsson/cameracommon/status/eachcamera/OnlineRemote;->DEFAULT_VALUE:Lcom/sonyericsson/cameracommon/status/eachcamera/OnlineRemote$Value;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/OnlineRemote;-><init>(Lcom/sonyericsson/cameracommon/status/eachcamera/OnlineRemote$Value;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .line 112
    return-object p0
.end method

.method public putFromParameter(Landroid/hardware/Camera$Parameters;)Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;
    .locals 4
    .param p1, "param"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 73
    if-eqz p1, :cond_0

    .line 74
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 75
    .local v1, "previewSize":Landroid/hardware/Camera$Size;
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 76
    .local v0, "pictureSize":Landroid/hardware/Camera$Size;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 77
    new-instance v2, Lcom/sonyericsson/cameracommon/status/eachcamera/PreviewResolution;

    invoke-direct {v2, v1}, Lcom/sonyericsson/cameracommon/status/eachcamera/PreviewResolution;-><init>(Landroid/hardware/Camera$Size;)V

    invoke-virtual {p0, v2}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .line 78
    new-instance v2, Lcom/sonyericsson/cameracommon/status/eachcamera/PictureResolution;

    invoke-direct {v2, v0}, Lcom/sonyericsson/cameracommon/status/eachcamera/PictureResolution;-><init>(Landroid/hardware/Camera$Size;)V

    invoke-virtual {p0, v2}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .line 79
    new-instance v2, Lcom/sonyericsson/cameracommon/status/eachcamera/PreviewMaxFps;

    invoke-static {p1}, Lcom/sonyericsson/cameracommon/device/CameraParameterUtil;->getPreviewMasFps(Landroid/hardware/Camera$Parameters;)I

    move-result v3

    invoke-direct {v2, v3}, Lcom/sonyericsson/cameracommon/status/eachcamera/PreviewMaxFps;-><init>(I)V

    invoke-virtual {p0, v2}, Lcom/sonyericsson/cameracommon/status/EachCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .line 82
    .end local v0    # "pictureSize":Landroid/hardware/Camera$Size;
    .end local v1    # "previewSize":Landroid/hardware/Camera$Size;
    :cond_0
    return-object p0
.end method
