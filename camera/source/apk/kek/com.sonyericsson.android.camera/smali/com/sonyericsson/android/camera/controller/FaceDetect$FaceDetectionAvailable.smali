.class abstract Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetectionAvailable;
.super Ljava/lang/Object;
.source "FaceDetect.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetectionState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/FaceDetect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "FaceDetectionAvailable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/FaceDetect;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/FaceDetect;)V
    .locals 0

    .prologue
    .line 473
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetectionAvailable;->this$0:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/FaceDetect;Lcom/sonyericsson/android/camera/controller/FaceDetect$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/controller/FaceDetect;
    .param p2, "x1"    # Lcom/sonyericsson/android/camera/controller/FaceDetect$1;

    .prologue
    .line 473
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetectionAvailable;-><init>(Lcom/sonyericsson/android/camera/controller/FaceDetect;)V

    return-void
.end method


# virtual methods
.method public changeFocusedFace(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "viewRect"    # Landroid/graphics/Rect;

    .prologue
    .line 499
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->convertFaceToDevice(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 500
    .local v0, "deviceRect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetectionAvailable;->this$0:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    # getter for: Lcom/sonyericsson/android/camera/controller/FaceDetect;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->access$000(Lcom/sonyericsson/android/camera/controller/FaceDetect;)Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    move-result-object v1

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setSelectedFacePosition(II)V

    .line 502
    return-void
.end method

.method protected checkAndChangeFocusedFace(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;)V
    .locals 6
    .param p1, "result"    # Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;

    .prologue
    .line 510
    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetectionAvailable;->this$0:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    # getter for: Lcom/sonyericsson/android/camera/controller/FaceDetect;->mIsFaceDetectionIdSupported:Ljava/lang/Boolean;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->access$400(Lcom/sonyericsson/android/camera/controller/FaceDetect;)Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 511
    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetectionAvailable;->this$0:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    # getter for: Lcom/sonyericsson/android/camera/controller/FaceDetect;->mIsFaceDetectionIdSupported:Ljava/lang/Boolean;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->access$400(Lcom/sonyericsson/android/camera/controller/FaceDetect;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1

    .line 534
    :cond_0
    :goto_0
    return-void

    .line 516
    :cond_1
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil;->isValidFaceDetectionResult(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 520
    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetectionAvailable;->this$0:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    # getter for: Lcom/sonyericsson/android/camera/controller/FaceDetect;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->access$000(Lcom/sonyericsson/android/camera/controller/FaceDetect;)Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    move-result-object v4

    iget-object v4, v4, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getTopPriorityFace()Lcom/sonyericsson/cameracommon/focusview/NamedFace;

    move-result-object v3

    .line 522
    .local v3, "topFace":Lcom/sonyericsson/cameracommon/focusview/NamedFace;
    if-eqz v3, :cond_0

    .line 527
    iget-object v4, p1, Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;->extFaceList:Ljava/util/List;

    iget v5, p1, Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;->indexOfSelectedFace:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameraextension/CameraExtension$ExtFace;

    .line 528
    .local v0, "nowSelectedFace":Lcom/sonyericsson/cameraextension/CameraExtension$ExtFace;
    iget-object v4, v0, Lcom/sonyericsson/cameraextension/CameraExtension$ExtFace;->face:Landroid/hardware/Camera$Face;

    iget v4, v4, Landroid/hardware/Camera$Face;->id:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 530
    .local v1, "nowSelectedUuid":Ljava/lang/String;
    iget-object v4, v3, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mUuid:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 531
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    move-result-object v4

    iget-object v5, v3, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mFacePosition:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->convertToView(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    .line 532
    .local v2, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetectionAvailable;->changeFocusedFace(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public final isFaceDetectionAvailable()Z
    .locals 1

    .prologue
    .line 477
    const/4 v0, 0x1

    return v0
.end method

.method public onFaceIdentified(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 507
    .local p1, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationResult;>;"
    return-void
.end method

.method public final start()V
    .locals 2

    .prologue
    .line 482
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetectionAvailable;->this$0:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    # getter for: Lcom/sonyericsson/android/camera/controller/FaceDetect;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->access$000(Lcom/sonyericsson/android/camera/controller/FaceDetect;)Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetectionAvailable;->this$0:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    # getter for: Lcom/sonyericsson/android/camera/controller/FaceDetect;->mFaceDetectionCallback:Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetectionCallback;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->access$1300(Lcom/sonyericsson/android/camera/controller/FaceDetect;)Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetectionCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setFaceDetectionCallback(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionCallback;)V

    .line 483
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetectionAvailable;->this$0:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    # getter for: Lcom/sonyericsson/android/camera/controller/FaceDetect;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->access$000(Lcom/sonyericsson/android/camera/controller/FaceDetect;)Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->startFaceDetection()V

    .line 484
    return-void
.end method

.method public final stop()V
    .locals 2

    .prologue
    .line 488
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetectionAvailable;->this$0:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    # invokes: Lcom/sonyericsson/android/camera/controller/FaceDetect;->stopFaceIdentification()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->access$1400(Lcom/sonyericsson/android/camera/controller/FaceDetect;)V

    .line 489
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetectionAvailable;->this$0:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    # getter for: Lcom/sonyericsson/android/camera/controller/FaceDetect;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->access$000(Lcom/sonyericsson/android/camera/controller/FaceDetect;)Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setFaceDetectionCallback(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionCallback;)V

    .line 490
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetectionAvailable;->this$0:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    # getter for: Lcom/sonyericsson/android/camera/controller/FaceDetect;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->access$000(Lcom/sonyericsson/android/camera/controller/FaceDetect;)Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->stopFaceDetection()V

    .line 491
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetectionAvailable;->this$0:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    # getter for: Lcom/sonyericsson/android/camera/controller/FaceDetect;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->access$000(Lcom/sonyericsson/android/camera/controller/FaceDetect;)Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->hideFaceRectangles()V

    .line 493
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_FACE_DETECT:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->cancelEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;)V

    .line 494
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_FACE_IDENTIFY:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->cancelEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;)V

    .line 495
    return-void
.end method
