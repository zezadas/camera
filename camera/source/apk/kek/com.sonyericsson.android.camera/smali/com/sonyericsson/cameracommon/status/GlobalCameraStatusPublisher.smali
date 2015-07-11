.class public Lcom/sonyericsson/cameracommon/status/GlobalCameraStatusPublisher;
.super Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;
.source "GlobalCameraStatusPublisher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher",
        "<",
        "Lcom/sonyericsson/cameracommon/status/GlobalCameraStatusValue;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method


# virtual methods
.method public putDefaultAll()Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher",
            "<",
            "Lcom/sonyericsson/cameracommon/status/GlobalCameraStatusValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Lcom/sonyericsson/cameracommon/status/global/CameraId;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/status/GlobalCameraStatusPublisher;->getCameraCommonVersion()I

    move-result v1

    invoke-static {v1}, Lcom/sonyericsson/cameracommon/status/global/CameraId;->defaultValue(I)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/global/CameraId;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/status/GlobalCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .line 44
    new-instance v0, Lcom/sonyericsson/cameracommon/status/global/BuiltInCameraIds;

    sget-object v1, Lcom/sonyericsson/cameracommon/status/global/BuiltInCameraIds;->DEFAULT_VALUE:[I

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/global/BuiltInCameraIds;-><init>([I)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/status/GlobalCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .line 45
    new-instance v0, Lcom/sonyericsson/cameracommon/status/global/RemovableCameraClients;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/global/RemovableCameraClients;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/status/GlobalCameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .line 46
    return-object p0
.end method
