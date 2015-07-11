.class Lcom/sonyericsson/android/camera/controller/StateTransitionController$Capturing;
.super Lcom/sonyericsson/android/camera/controller/StateTransitionController$ActiveState;
.source "StateTransitionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateTransitionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Capturing"
.end annotation


# instance fields
.field private mOpenAutoReviewWindow:Z

.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;)V
    .locals 1

    .prologue
    .line 1667
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$Capturing;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ActiveState;-><init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/controller/StateTransitionController;
    .param p2, "x1"    # Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;

    .prologue
    .line 1667
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$Capturing;-><init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;)V

    return-void
.end method


# virtual methods
.method public entry()V
    .locals 2

    .prologue
    .line 1673
    invoke-super {p0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ActiveState;->entry()V

    .line 1676
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$Capturing;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShot()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$Capturing;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->getParams()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getAutoReview()Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    if-eq v0, v1, :cond_0

    .line 1677
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$Capturing;->mOpenAutoReviewWindow:Z

    .line 1682
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$Capturing;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->disableClickOnThumbnail()V

    .line 1683
    return-void

    .line 1679
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$Capturing;->mOpenAutoReviewWindow:Z

    goto :goto_0
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 1687
    invoke-super {p0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ActiveState;->exit()V

    .line 1688
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$Capturing;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->exitFromShooting()V

    .line 1690
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$Capturing;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->getParams()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getAutoReview()Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    if-eq v0, v1, :cond_0

    .line 1695
    :goto_0
    return-void

    .line 1693
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$Capturing;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->startPreview()V

    goto :goto_0
.end method

.method public handleCapture(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 1705
    iget-object v0, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mSource:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->VIDEO_BUTTON:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    if-ne v0, v1, :cond_1

    .line 1714
    :cond_0
    :goto_0
    return-void

    .line 1709
    :cond_1
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$Capturing;->mOpenAutoReviewWindow:Z

    if-nez v0, :cond_0

    .line 1712
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$Capturing;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;->PHOTO:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->addCaptureRequest(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;)V

    goto :goto_0
.end method

.method public handleCompressedData(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 1719
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$Capturing;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mArg2:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    # invokes: Lcom/sonyericsson/android/camera/controller/StateTransitionController;->storeImage([B)Z
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->access$3300(Lcom/sonyericsson/android/camera/controller/StateTransitionController;[B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1720
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$Capturing;->mOpenAutoReviewWindow:Z

    if-eqz v0, :cond_1

    .line 1730
    :cond_0
    :goto_0
    return-void

    .line 1723
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$Capturing;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mShooting:Lcom/sonyericsson/android/camera/controller/Shooting;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$Capturing;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->updateRemain()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/Shooting;->takeNextPicture(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1727
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$Capturing;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->getViewFinderState()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->setState(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public handleControllerPause(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 1734
    iget-object v0, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mArg2:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1735
    iget-object v0, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mArg2:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1737
    const-class v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$Pause;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->setState(Ljava/lang/Class;)V

    .line 1740
    :cond_0
    return-void
.end method

.method public handleShutterDone(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 1744
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$Capturing;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->startCaptureFeedbackAnimation()V

    .line 1745
    return-void
.end method

.method public handleStoreDone(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 4
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 1749
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$Capturing;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShotPhoto()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1759
    :goto_0
    return-void

    .line 1753
    :cond_0
    iget-object v0, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mArg2:Ljava/lang/Object;

    check-cast v0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    .line 1754
    .local v0, "result":Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$Capturing;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->getParams()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getAutoReview()Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->EDIT:Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    if-ne v1, v2, :cond_1

    .line 1755
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$Capturing;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateTransitionController;->launchEditor(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->access$2700(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V

    goto :goto_0

    .line 1757
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$Capturing;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    iget-object v2, v0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->uri:Landroid/net/Uri;

    iget-object v3, v0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/camera/view/CameraWindow;->openReviewWindow(Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;)V

    goto :goto_0
.end method

.method public isBackKeyValid()Z
    .locals 1

    .prologue
    .line 1700
    const/4 v0, 0x0

    return v0
.end method
