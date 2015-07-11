.class final Lcom/sonyericsson/android/camera/controller/FaceDetect$NotAvailable;
.super Lcom/sonyericsson/android/camera/controller/FaceDetect$Unknown;
.source "FaceDetect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/FaceDetect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NotAvailable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/FaceDetect;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/controller/FaceDetect;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 442
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect$NotAvailable;->this$0:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/controller/FaceDetect$Unknown;-><init>(Lcom/sonyericsson/android/camera/controller/FaceDetect;Lcom/sonyericsson/android/camera/controller/FaceDetect$1;)V

    .line 443
    # getter for: Lcom/sonyericsson/android/camera/controller/FaceDetect;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->access$000(Lcom/sonyericsson/android/camera/controller/FaceDetect;)Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setFaceDetectionCallback(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionCallback;)V

    .line 444
    return-void
.end method


# virtual methods
.method public isFaceDetectionAvailable()Z
    .locals 3

    .prologue
    .line 448
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect$NotAvailable;->this$0:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    # getter for: Lcom/sonyericsson/android/camera/controller/FaceDetect;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->access$000(Lcom/sonyericsson/android/camera/controller/FaceDetect;)Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    move-result-object v1

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mParameterManager:Lcom/sonyericsson/android/camera/parameter/ParameterManager;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->getParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v0

    .line 449
    .local v0, "mParams":Lcom/sonyericsson/android/camera/parameter/Parameters;
    iget-object v1, v0, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getFocusMode()Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->FIXED:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    if-eq v1, v2, :cond_1

    :cond_0
    iget-object v1, v0, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getFocusMode()Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->FIXED:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    if-ne v1, v2, :cond_2

    .line 453
    :cond_1
    const/4 v1, 0x1

    .line 455
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 460
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/FaceDetect$NotAvailable;->isFaceDetectionAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect$NotAvailable;->this$0:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    # getter for: Lcom/sonyericsson/android/camera/controller/FaceDetect;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->access$000(Lcom/sonyericsson/android/camera/controller/FaceDetect;)Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->startFaceDetection()V

    .line 463
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/FaceDetect$NotAvailable;->isFaceDetectionAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect$NotAvailable;->this$0:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    # getter for: Lcom/sonyericsson/android/camera/controller/FaceDetect;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->access$000(Lcom/sonyericsson/android/camera/controller/FaceDetect;)Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->stopFaceDetection()V

    .line 470
    :cond_0
    return-void
.end method
