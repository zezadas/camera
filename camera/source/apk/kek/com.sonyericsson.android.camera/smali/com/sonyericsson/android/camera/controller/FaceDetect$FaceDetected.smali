.class Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetected;
.super Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetectionAvailable;
.source "FaceDetect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/FaceDetect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FaceDetected"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/FaceDetect;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/controller/FaceDetect;Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;)V
    .locals 1
    .param p2, "result"    # Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;

    .prologue
    .line 560
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetected;->this$0:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetectionAvailable;-><init>(Lcom/sonyericsson/android/camera/controller/FaceDetect;Lcom/sonyericsson/android/camera/controller/FaceDetect$1;)V

    .line 562
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetected;->onFaceDetected(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;)V

    .line 563
    return-void
.end method


# virtual methods
.method public onFaceDetected(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;)V
    .locals 3
    .param p1, "result"    # Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;

    .prologue
    .line 569
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetected;->this$0:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    # invokes: Lcom/sonyericsson/android/camera/controller/FaceDetect;->updateUuidBeforeUpdateView(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;)V
    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->access$1700(Lcom/sonyericsson/android/camera/controller/FaceDetect;Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;)V

    .line 572
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetected;->this$0:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    # invokes: Lcom/sonyericsson/android/camera/controller/FaceDetect;->updateView(Ljava/util/List;Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;Z)V
    invoke-static {v0, v1, p1, v2}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->access$1800(Lcom/sonyericsson/android/camera/controller/FaceDetect;Ljava/util/List;Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;Z)V

    .line 575
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetected;->checkAndChangeFocusedFace(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;)V

    .line 576
    return-void
.end method

.method public onFaceIdentified(Ljava/util/List;)V
    .locals 3
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
    .line 588
    .local p1, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationResult;>;"
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetected;->this$0:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    # invokes: Lcom/sonyericsson/android/camera/controller/FaceDetect;->getFaceDetectionResultCache()Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->access$100(Lcom/sonyericsson/android/camera/controller/FaceDetect;)Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetected;->this$0:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    # invokes: Lcom/sonyericsson/android/camera/controller/FaceDetect;->getFaceDetectionResultCache()Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->access$100(Lcom/sonyericsson/android/camera/controller/FaceDetect;)Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;->extFaceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 601
    :cond_0
    :goto_0
    return-void

    .line 593
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetected;->this$0:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    # getter for: Lcom/sonyericsson/android/camera/controller/FaceDetect;->mFaceIdentification:Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->access$500(Lcom/sonyericsson/android/camera/controller/FaceDetect;)Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetected;->this$0:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetected;->this$0:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    # invokes: Lcom/sonyericsson/android/camera/controller/FaceDetect;->getFaceDetectionResultCache()Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->access$100(Lcom/sonyericsson/android/camera/controller/FaceDetect;)Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;

    move-result-object v1

    const/4 v2, 0x0

    # invokes: Lcom/sonyericsson/android/camera/controller/FaceDetect;->updateView(Ljava/util/List;Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;Z)V
    invoke-static {v0, p1, v1, v2}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->access$1800(Lcom/sonyericsson/android/camera/controller/FaceDetect;Ljava/util/List;Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;Z)V

    .line 599
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetected;->this$0:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    # invokes: Lcom/sonyericsson/android/camera/controller/FaceDetect;->getFaceDetectionResultCache()Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->access$100(Lcom/sonyericsson/android/camera/controller/FaceDetect;)Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetected;->checkAndChangeFocusedFace(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;)V

    goto :goto_0
.end method

.method public onFaceLost()V
    .locals 4

    .prologue
    .line 581
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetected;->this$0:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    # getter for: Lcom/sonyericsson/android/camera/controller/FaceDetect;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->access$000(Lcom/sonyericsson/android/camera/controller/FaceDetect;)Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->clearFaceRectangles()V

    .line 583
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetected;->this$0:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/FaceDetect$NoFaceDetected;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetected;->this$0:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/android/camera/controller/FaceDetect$NoFaceDetected;-><init>(Lcom/sonyericsson/android/camera/controller/FaceDetect;Lcom/sonyericsson/android/camera/controller/FaceDetect$1;)V

    # invokes: Lcom/sonyericsson/android/camera/controller/FaceDetect;->setState(Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetectionState;)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->access$1600(Lcom/sonyericsson/android/camera/controller/FaceDetect;Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetectionState;)V

    .line 584
    return-void
.end method
