.class abstract Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractPreviewing;
.super Lcom/sonyericsson/android/camera/controller/StateTransitionController$ActiveState;
.source "StateTransitionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateTransitionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AbstractPreviewing"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;)V
    .locals 1

    .prologue
    .line 757
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractPreviewing;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ActiveState;-><init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/controller/StateTransitionController;
    .param p2, "x1"    # Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;

    .prologue
    .line 757
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractPreviewing;-><init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;)V

    return-void
.end method


# virtual methods
.method public emergencyExit(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 2
    .param p1, "cause"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 767
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ActiveState;->emergencyExit(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    .line 769
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractPreviewing;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mAutoZoom:Lcom/sonyericsson/android/camera/controller/AutoZoom;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/AutoZoom;->stop()V

    .line 770
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractPreviewing;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mAutoZoom:Lcom/sonyericsson/android/camera/controller/AutoZoom;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->OTHER:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/AutoZoom;->finish(Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V

    .line 771
    return-void
.end method

.method public entry()V
    .locals 1

    .prologue
    .line 775
    invoke-super {p0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ActiveState;->entry()V

    .line 777
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractPreviewing;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mEventDispatcher:Lcom/sonyericsson/android/camera/controller/EventDispatcher;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->resetStatus()V

    .line 778
    return-void
.end method

.method public handleClickContentProgress(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 5
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 896
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractPreviewing;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mLastSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->access$2900(Lcom/sonyericsson/android/camera/controller/StateTransitionController;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractPreviewing;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mLastSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->access$2900(Lcom/sonyericsson/android/camera/controller/StateTransitionController;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    move-result-object v1

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    if-nez v1, :cond_1

    .line 938
    :cond_0
    :goto_0
    return-void

    .line 902
    :cond_1
    iget-object v0, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mArg2:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    .line 905
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractPreviewing;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mLastSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->access$2900(Lcom/sonyericsson/android/camera/controller/StateTransitionController;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    move-result-object v1

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mimeType:Ljava/lang/String;

    const-string v2, "image/jpeg"

    if-ne v1, v2, :cond_3

    .line 907
    if-nez v0, :cond_2

    .line 911
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractPreviewing;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v2, v1, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractPreviewing;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mLastSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->access$2900(Lcom/sonyericsson/android/camera/controller/StateTransitionController;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->getImageData()[B

    move-result-object v1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractPreviewing;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mLastSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->access$2900(Lcom/sonyericsson/android/camera/controller/StateTransitionController;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    move-result-object v4

    invoke-virtual {v2, v1, v3, v4}, Lcom/sonyericsson/android/camera/view/CameraWindow;->openInstantViewer([BLjava/lang/String;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;)V

    goto :goto_0

    .line 920
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractPreviewing;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractPreviewing;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mLastSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->access$2900(Lcom/sonyericsson/android/camera/controller/StateTransitionController;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    move-result-object v2

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mimeType:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->launchAlbum(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 926
    :cond_3
    if-eqz v0, :cond_0

    .line 934
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractPreviewing;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractPreviewing;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    # getter for: Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mLastSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->access$2900(Lcom/sonyericsson/android/camera/controller/StateTransitionController;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    move-result-object v2

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mimeType:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->launchAlbum(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleFaceDetect(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 782
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractPreviewing;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v1, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mFaceDetect:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    iget-object v0, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mArg2:Ljava/lang/Object;

    check-cast v0, Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->updateFaceRectangle(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;)V

    .line 783
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractPreviewing;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractPreviewing;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mFaceDetect:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->getFaceDetectionCallback()Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setFaceDetectionCallback(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionCallback;)V

    .line 784
    return-void
.end method

.method public handleFaceDetectChange(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 3
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 788
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractPreviewing;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v1, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mFaceDetect:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    iget-object v0, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mArg2:Ljava/lang/Object;

    check-cast v0, Lcom/sonyericsson/cameracommon/focusview/NamedFace;

    iget-object v2, v0, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mUuid:Ljava/lang/String;

    iget-object v0, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mArg2:Ljava/lang/Object;

    check-cast v0, Lcom/sonyericsson/cameracommon/focusview/NamedFace;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mFacePosition:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v0}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->changeFocusedFace(Ljava/lang/String;Landroid/graphics/Rect;)V

    .line 791
    return-void
.end method

.method public handleObjectTracking(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 795
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractPreviewing;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v1, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mObjectTracking:Lcom/sonyericsson/android/camera/controller/ObjectTracking;

    iget-object v0, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mArg2:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/controller/ObjectTracking;->onObjectTracked(Landroid/graphics/Rect;)V

    .line 796
    return-void
.end method

.method public handleObjectTrackingInvisible(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 800
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractPreviewing;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mObjectTracking:Lcom/sonyericsson/android/camera/controller/ObjectTracking;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/ObjectTracking;->invisible()V

    .line 801
    return-void
.end method

.method public handleObjectTrackingLost(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 805
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractPreviewing;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mObjectTracking:Lcom/sonyericsson/android/camera/controller/ObjectTracking;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/ObjectTracking;->stop(Z)V

    .line 806
    return-void
.end method

.method public handleObjectTrackingStart(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 810
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractPreviewing;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v1, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mObjectTracking:Lcom/sonyericsson/android/camera/controller/ObjectTracking;

    iget-object v0, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mArg2:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/controller/ObjectTracking;->start(Landroid/graphics/Rect;)V

    .line 811
    return-void
.end method

.method protected handleOpenReviewWindow(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 5
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 844
    iget-object v1, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mArg2:Ljava/lang/Object;

    check-cast v1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    .line 845
    .local v1, "result":Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractPreviewing;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->getParams()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getVideoAutoReview()Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;

    if-eq v2, v3, :cond_0

    .line 846
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractPreviewing;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShot()Z

    move-result v2

    if-nez v2, :cond_0

    .line 848
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractPreviewing;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->getParams()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getVideoAutoReview()Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;->EDIT:Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;

    if-ne v2, v3, :cond_1

    .line 849
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractPreviewing;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateTransitionController;->launchEditor(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V
    invoke-static {v2, v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->access$2700(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V

    .line 859
    :cond_0
    :goto_0
    return-void

    .line 851
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractPreviewing;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    iget-object v3, v1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->uri:Landroid/net/Uri;

    iget-object v4, v1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/android/camera/view/CameraWindow;->openReviewWindow(Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 853
    :catch_0
    move-exception v0

    .line 854
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    # getter for: Lcom/sonyericsson/android/camera/controller/StateTransitionController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->access$2800()Ljava/lang/String;

    move-result-object v2

    const-string v3, "openReviewWindow: failed."

    invoke-static {v2, v3, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 855
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractPreviewing;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->getViewFinderState()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/Executor;->setState(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method protected handleOpenReviewWindowOrNot(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 4
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 862
    iget-object v1, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mArg2:Ljava/lang/Object;

    check-cast v1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    .line 863
    .local v1, "result":Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;
    iget-object v2, v1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v0, v2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mimeType:Ljava/lang/String;

    .line 864
    .local v0, "mimeType":Ljava/lang/String;
    const-string v2, "video/mp4"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "video/3gpp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 866
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractPreviewing;->handleOpenReviewWindow(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    .line 889
    :goto_0
    return-void

    .line 868
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractPreviewing;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    new-instance v3, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractPreviewing$1;

    invoke-direct {v3, p0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractPreviewing$1;-><init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractPreviewing;)V

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/view/CameraWindow;->startHideThumbnail(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method public handleSceneChanged(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 815
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractPreviewing;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v1, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mSceneRecognition:Lcom/sonyericsson/android/camera/controller/SceneRecognition;

    iget-object v0, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mArg2:Ljava/lang/Object;

    check-cast v0, Lcom/sonyericsson/cameraextension/CameraExtension$SceneRecognitionResult;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/controller/SceneRecognition;->onRecognizedSceneChanged(Lcom/sonyericsson/cameraextension/CameraExtension$SceneRecognitionResult;)V

    .line 816
    return-void
.end method

.method public handleZoomFinish(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 840
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractPreviewing;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mAutoZoom:Lcom/sonyericsson/android/camera/controller/AutoZoom;

    iget-object v1, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mSource:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/AutoZoom;->finish(Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V

    .line 841
    return-void
.end method

.method public handleZoomPrepare(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 820
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractPreviewing;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mAutoZoom:Lcom/sonyericsson/android/camera/controller/AutoZoom;

    iget-object v1, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mSource:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/AutoZoom;->prepare(Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V

    .line 821
    return-void
.end method

.method public handleZoomProgress(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 3
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 830
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractPreviewing;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v1, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mAutoZoom:Lcom/sonyericsson/android/camera/controller/AutoZoom;

    iget v2, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mArg1:I

    iget-object v0, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mArg2:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/sonyericsson/android/camera/controller/AutoZoom;->onZoomProgress(IZ)V

    .line 831
    return-void
.end method

.method public handleZoomStart(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 825
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractPreviewing;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v1, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mAutoZoom:Lcom/sonyericsson/android/camera/controller/AutoZoom;

    iget-object v0, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mArg2:Ljava/lang/Object;

    check-cast v0, Lcom/sonyericsson/android/camera/controller/ZoomDirection;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/controller/AutoZoom;->start(Lcom/sonyericsson/android/camera/controller/ZoomDirection;)V

    .line 826
    return-void
.end method

.method public handleZoomStop(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 835
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractPreviewing;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mAutoZoom:Lcom/sonyericsson/android/camera/controller/AutoZoom;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/AutoZoom;->stop()V

    .line 836
    return-void
.end method
