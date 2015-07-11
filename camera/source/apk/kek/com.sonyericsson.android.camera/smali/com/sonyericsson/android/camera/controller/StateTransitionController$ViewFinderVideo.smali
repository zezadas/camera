.class Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderVideo;
.super Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractViewFinder;
.source "StateTransitionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateTransitionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewFinderVideo"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;)V
    .locals 1

    .prologue
    .line 1344
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderVideo;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractViewFinder;-><init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/controller/StateTransitionController;
    .param p2, "x1"    # Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;

    .prologue
    .line 1344
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderVideo;-><init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;)V

    return-void
.end method


# virtual methods
.method public entry()V
    .locals 3

    .prologue
    .line 1348
    invoke-super {p0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractViewFinder;->entry()V

    .line 1351
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderVideo;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->isEnoughStorageSizeAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1352
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_DEVICE_ERROR:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/Executor;->postEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;ILjava/lang/Object;)V

    .line 1355
    :cond_0
    return-void
.end method

.method public handleAfCancel(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 1417
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractViewFinder;->handleAfCancel(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    .line 1418
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderVideo;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->showDefaultView()V

    .line 1419
    return-void
.end method

.method public handleAfStart(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 1411
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractViewFinder;->handleAfStart(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    .line 1412
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderVideo;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->showReadyForRecordView()V

    .line 1413
    return-void
.end method

.method public handleCapture(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 1359
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderVideo;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->updateRemain()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1369
    :cond_0
    :goto_0
    return-void

    .line 1362
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderVideo;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mParameterManager:Lcom/sonyericsson/android/camera/parameter/ParameterManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->isVideoSelfTimerOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1363
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderVideo;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mEventDispatcher:Lcom/sonyericsson/android/camera/controller/EventDispatcher;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->isSelfTimerRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1364
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderVideo;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v1, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mSource:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->selfTimerCapture(Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V

    goto :goto_0

    .line 1368
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderVideo;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    const-class v1, Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingManual;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->startRec(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public handleSelfTimerCapture(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 3
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 1395
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderVideo;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->updateRemain()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1396
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderVideo;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v1, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mSource:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->consumeSelfTimer(Lcom/sonyericsson/android/camera/controller/ControllerEventSource;Z)V

    .line 1397
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderVideo;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    const-class v1, Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingManual;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->startRec(Ljava/lang/Class;)V

    .line 1399
    :cond_0
    return-void
.end method

.method public handleSelfTimerStart(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 7
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 1374
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderVideo;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/media/utility/AudioResourceChecker;->isAudioResourceAvailable(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1375
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderVideo;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v1, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mEventDispatcher:Lcom/sonyericsson/android/camera/controller/EventDispatcher;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderVideo;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mParameterManager:Lcom/sonyericsson/android/camera/parameter/ParameterManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->isSelfTimerOn()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderVideo;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mParameterManager:Lcom/sonyericsson/android/camera/parameter/ParameterManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->isVideoSelfTimerOn()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->setShouldSelfTimerStart(Z)V

    .line 1379
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderVideo;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getMessagePopup()Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    move-result-object v0

    const v1, 0x7f090185

    const v2, 0x7f090092

    const v4, 0x7f0900ad

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showOk(IIZILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 1391
    :goto_1
    return-void

    :cond_1
    move v0, v3

    .line 1375
    goto :goto_0

    .line 1389
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderVideo;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mEventDispatcher:Lcom/sonyericsson/android/camera/controller/EventDispatcher;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->updateTouchCaptureStatus(Z)V

    .line 1390
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractViewFinder;->handleSelfTimerStart(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    goto :goto_1
.end method

.method public handleZoomFinish(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 1403
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractViewFinder;->handleZoomFinish(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    .line 1404
    iget-object v0, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mSource:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->TOUCH:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    if-ne v0, v1, :cond_0

    .line 1405
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderVideo;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mEventDispatcher:Lcom/sonyericsson/android/camera/controller/EventDispatcher;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->resetStatus()V

    .line 1407
    :cond_0
    return-void
.end method
