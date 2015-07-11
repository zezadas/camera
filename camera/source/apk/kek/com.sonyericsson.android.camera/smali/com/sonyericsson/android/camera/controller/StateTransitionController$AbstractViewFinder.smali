.class abstract Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractViewFinder;
.super Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractPreviewing;
.source "StateTransitionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateTransitionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AbstractViewFinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;)V
    .locals 1

    .prologue
    .line 941
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractViewFinder;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractPreviewing;-><init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/controller/StateTransitionController;
    .param p2, "x1"    # Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;

    .prologue
    .line 941
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractViewFinder;-><init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;)V

    return-void
.end method


# virtual methods
.method public emergencyExit(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 2
    .param p1, "cause"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 955
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractPreviewing;->emergencyExit(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    .line 957
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractViewFinder;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCurrentSelfTimer:Lcom/sonyericsson/android/camera/controller/Selftimer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/Selftimer;->stop(Z)V

    .line 958
    return-void
.end method

.method public entry()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 962
    invoke-super {p0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractPreviewing;->entry()V

    .line 964
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/Executor;->clearAutoDispatchEvent()V

    .line 965
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractViewFinder;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mEventDispatcher:Lcom/sonyericsson/android/camera/controller/EventDispatcher;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractViewFinder;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->getParams()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getTouchCapture()Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;->getBooleanValue()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 968
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractViewFinder;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    sget-object v1, Lcom/sonyericsson/cameracommon/focusview/RectangleColor;->NORMAL:Lcom/sonyericsson/cameracommon/focusview/RectangleColor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setRectangleColor(Lcom/sonyericsson/cameracommon/focusview/RectangleColor;Lcom/sonyericsson/android/camera/device/AutoFocusListener$Result;)V

    .line 969
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractViewFinder;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->getParams()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getFocusMode()Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->TOUCH_FOCUS:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    if-ne v0, v1, :cond_1

    .line 970
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractViewFinder;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mEventDispatcher:Lcom/sonyericsson/android/camera/controller/EventDispatcher;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->updateTouchFocusStatus(Z)V

    .line 984
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractViewFinder;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setOrientationFollowingSensor()V

    .line 985
    return-void

    .line 972
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractViewFinder;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mEventDispatcher:Lcom/sonyericsson/android/camera/controller/EventDispatcher;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->updateTouchCaptureStatus(Z)V

    goto :goto_0

    .line 975
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractViewFinder;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->startViewFinder()V

    .line 976
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractViewFinder;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->prepared()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 977
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractViewFinder;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->updateRemain()Z

    move-result v0

    if-nez v0, :cond_0

    .line 979
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_STORAGE_ERROR:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->sendEmptyEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;)V

    goto :goto_0
.end method

.method public handleChangeCapturingMode(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 995
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractViewFinder;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mArg2:Ljava/lang/Object;

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->changeCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 996
    return-void
.end method

.method public handleControllerPause(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 989
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractViewFinder;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->suspendViewFinder()V

    .line 990
    const-class v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$Pause;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->setState(Ljava/lang/Class;)V

    .line 991
    return-void
.end method

.method public handleLaunch(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractViewFinder;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mAutoZoom:Lcom/sonyericsson/android/camera/controller/AutoZoom;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractViewFinder;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->getParams()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v1

    iget-object v1, v1, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/AutoZoom;->update(I)V

    .line 1004
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractViewFinder;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->prepared()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1005
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractViewFinder;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->prepareView()V

    .line 1010
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractViewFinder;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractViewFinder;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->getExtraOperation()Lcom/sonyericsson/android/camera/LaunchConditions$ExtraOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->doExtraOperation(Lcom/sonyericsson/android/camera/LaunchConditions$ExtraOperation;)V

    .line 1011
    return-void

    .line 1007
    :cond_0
    const/16 v0, 0x3e8

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->outResultDelay(I)V

    goto :goto_0
.end method

.method public handleSelfTimerCancel(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    const/4 v1, 0x0

    .line 1015
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractViewFinder;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getWearableBridge()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1016
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractViewFinder;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getWearableBridge()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->getPhotoStateNotifier()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$PhotoStateNotifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$PhotoStateNotifier;->onCaptureFailed()V

    .line 1018
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractViewFinder;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->cancelSelfTimer(Z)V

    .line 1019
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractViewFinder;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mEventDispatcher:Lcom/sonyericsson/android/camera/controller/EventDispatcher;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->updateTouchCaptureStatus(Z)V

    .line 1020
    return-void
.end method

.method public handleSelfTimerCountdown(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 1024
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractViewFinder;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCurrentSelfTimer:Lcom/sonyericsson/android/camera/controller/Selftimer;

    iget v1, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mArg1:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/Selftimer;->countdown(I)V

    .line 1025
    return-void
.end method

.method public handleSelfTimerFinish(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractViewFinder;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->finishSelfTimer()V

    .line 1030
    return-void
.end method

.method public handleSelfTimerStart(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 3
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractViewFinder;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget v1, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mArg1:I

    iget-object v2, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mSource:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->startSelfTimer(ILcom/sonyericsson/android/camera/controller/ControllerEventSource;)V

    .line 1035
    return-void
.end method

.method public handleSmileCapture(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 3
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 1039
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_AF_START:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    const/4 v1, 0x1

    sget-object v2, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->OTHER:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/Executor;->sendEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;ILjava/lang/Object;)V

    .line 1041
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractViewFinder;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->captureAutoTransition()V

    .line 1042
    return-void
.end method

.method public handleStorageShouldChange(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractViewFinder;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->switchStorage()V

    .line 1080
    return-void
.end method

.method public handleStoreDone(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 5
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 1046
    if-nez p1, :cond_0

    .line 1059
    :goto_0
    return-void

    .line 1050
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractViewFinder;->handleOpenReviewWindow(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    .line 1051
    iget-object v0, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mArg2:Ljava/lang/Object;

    check-cast v0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    .line 1052
    .local v0, "result":Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->getTextId()I

    move-result v1

    .line 1053
    .local v1, "textId":I
    if-lez v1, :cond_1

    .line 1054
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractViewFinder;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/CameraActivity;->getMessagePopup()Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;->BOTTOM:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;

    invoke-virtual {v2, v1, v3, v4}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showRotatableToastMessage(IILcom/sonyericsson/cameracommon/rotatableview/RotatableToast$ToastPosition;)V

    .line 1058
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractViewFinder;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateTransitionController;->notifyStoreDone(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)Z
    invoke-static {v2, v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->access$3100(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)Z

    goto :goto_0
.end method

.method public handleSurfaceChanged(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 1063
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractViewFinder;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mArg2:Ljava/lang/Object;

    check-cast v0, Lcom/sonyericsson/android/camera/device/CameraSurfaceHolder;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->startPreview(Lcom/sonyericsson/android/camera/device/CameraSurfaceHolder;)V

    .line 1066
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractViewFinder;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mSceneRecognition:Lcom/sonyericsson/android/camera/controller/SceneRecognition;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/SceneRecognition;->start()V

    .line 1067
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractViewFinder;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mFaceDetect:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractViewFinder;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->getParams()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getFaceIdentify()Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;->getBooleanValue()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->enableFaceIdentification(Z)V

    .line 1068
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractViewFinder;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mFaceDetect:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->start()V

    .line 1069
    return-void
.end method

.method public handleZoomFinish(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 1073
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractPreviewing;->handleZoomFinish(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    .line 1074
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractViewFinder;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->showDefaultView()V

    .line 1075
    return-void
.end method

.method public isMenuAvailable()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 944
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractViewFinder;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mEventDispatcher:Lcom/sonyericsson/android/camera/controller/EventDispatcher;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->isSelfTimerRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 950
    :cond_0
    :goto_0
    return v0

    .line 947
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractViewFinder;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mEventDispatcher:Lcom/sonyericsson/android/camera/controller/EventDispatcher;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->isCaptureValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 948
    const/4 v0, 0x1

    goto :goto_0
.end method
