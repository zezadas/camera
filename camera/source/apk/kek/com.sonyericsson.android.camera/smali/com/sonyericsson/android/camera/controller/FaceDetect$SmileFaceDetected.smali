.class final Lcom/sonyericsson/android/camera/controller/FaceDetect$SmileFaceDetected;
.super Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetected;
.source "FaceDetect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/FaceDetect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SmileFaceDetected"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/FaceDetect;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/controller/FaceDetect;Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;)V
    .locals 0
    .param p2, "result"    # Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;

    .prologue
    .line 606
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect$SmileFaceDetected;->this$0:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    .line 607
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetected;-><init>(Lcom/sonyericsson/android/camera/controller/FaceDetect;Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;)V

    .line 608
    return-void
.end method


# virtual methods
.method public onFaceDetected(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;)V
    .locals 5
    .param p1, "result"    # Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;

    .prologue
    const/4 v4, 0x0

    .line 614
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect$SmileFaceDetected;->this$0:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    # invokes: Lcom/sonyericsson/android/camera/controller/FaceDetect;->updateUuidBeforeUpdateView(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;)V
    invoke-static {v2, p1}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->access$1700(Lcom/sonyericsson/android/camera/controller/FaceDetect;Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;)V

    .line 615
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect$SmileFaceDetected;->this$0:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    # getter for: Lcom/sonyericsson/android/camera/controller/FaceDetect;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->access$000(Lcom/sonyericsson/android/camera/controller/FaceDetect;)Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    move-result-object v2

    iget-object v2, v2, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getTopPriorityFace()Lcom/sonyericsson/cameracommon/focusview/NamedFace;

    move-result-object v1

    .line 617
    .local v1, "topFace":Lcom/sonyericsson/cameracommon/focusview/NamedFace;
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect$SmileFaceDetected;->this$0:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    # getter for: Lcom/sonyericsson/android/camera/controller/FaceDetect;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->access$000(Lcom/sonyericsson/android/camera/controller/FaceDetect;)Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    move-result-object v2

    iget-object v2, v2, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mEventDispatcher:Lcom/sonyericsson/android/camera/controller/EventDispatcher;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->isSelfTimerRunning()Z

    move-result v2

    if-nez v2, :cond_1

    .line 620
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect$SmileFaceDetected;->this$0:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    const/4 v3, 0x1

    # invokes: Lcom/sonyericsson/android/camera/controller/FaceDetect;->updateView(Ljava/util/List;Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;Z)V
    invoke-static {v2, v4, p1, v3}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->access$1800(Lcom/sonyericsson/android/camera/controller/FaceDetect;Ljava/util/List;Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;Z)V

    .line 623
    if-eqz v1, :cond_0

    .line 625
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/controller/FaceDetect$SmileFaceDetected;->checkAndChangeFocusedFace(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;)V

    .line 628
    iget v0, v1, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mSmileScore:I

    .line 629
    .local v0, "score":I
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect$SmileFaceDetected;->this$0:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    # getter for: Lcom/sonyericsson/android/camera/controller/FaceDetect;->mSmileLevel:I
    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->access$1900(Lcom/sonyericsson/android/camera/controller/FaceDetect;)I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 630
    sget-object v2, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_SMILE_CAPTURE:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    sget-object v3, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->OTHER:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera/controller/Executor;->sendEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V

    .line 644
    .end local v0    # "score":I
    :cond_0
    :goto_0
    return-void

    .line 637
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect$SmileFaceDetected;->this$0:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    const/4 v3, 0x0

    # invokes: Lcom/sonyericsson/android/camera/controller/FaceDetect;->updateView(Ljava/util/List;Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;Z)V
    invoke-static {v2, v4, p1, v3}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->access$1800(Lcom/sonyericsson/android/camera/controller/FaceDetect;Ljava/util/List;Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;Z)V

    .line 639
    if-eqz v1, :cond_0

    .line 641
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/controller/FaceDetect$SmileFaceDetected;->checkAndChangeFocusedFace(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;)V

    goto :goto_0
.end method

.method public onFaceLost()V
    .locals 4

    .prologue
    .line 648
    invoke-super {p0}, Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetected;->onFaceLost()V

    .line 649
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect$SmileFaceDetected;->this$0:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/FaceDetect$NoSmileFaceDetected;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect$SmileFaceDetected;->this$0:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/android/camera/controller/FaceDetect$NoSmileFaceDetected;-><init>(Lcom/sonyericsson/android/camera/controller/FaceDetect;Lcom/sonyericsson/android/camera/controller/FaceDetect$1;)V

    # invokes: Lcom/sonyericsson/android/camera/controller/FaceDetect;->setState(Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetectionState;)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->access$1600(Lcom/sonyericsson/android/camera/controller/FaceDetect;Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetectionState;)V

    .line 650
    return-void
.end method
