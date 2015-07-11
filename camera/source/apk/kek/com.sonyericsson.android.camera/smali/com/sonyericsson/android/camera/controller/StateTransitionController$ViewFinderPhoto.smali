.class Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderPhoto;
.super Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractViewFinder;
.source "StateTransitionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateTransitionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewFinderPhoto"
.end annotation


# instance fields
.field private mOpenAutoReviewWindow:Z

.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;)V
    .locals 1

    .prologue
    .line 1083
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderPhoto;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractViewFinder;-><init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/controller/StateTransitionController;
    .param p2, "x1"    # Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;

    .prologue
    .line 1083
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderPhoto;-><init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;)V

    return-void
.end method


# virtual methods
.method public canHandleCaptureRequest()Z
    .locals 1

    .prologue
    .line 1103
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderPhoto;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mAutoZoom:Lcom/sonyericsson/android/camera/controller/AutoZoom;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/AutoZoom;->isZooming()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public entry()V
    .locals 2

    .prologue
    .line 1089
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderPhoto;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->notifyStateIdleToWearable()V

    .line 1090
    invoke-super {p0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractViewFinder;->entry()V

    .line 1093
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderPhoto;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShot()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderPhoto;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->getParams()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getAutoReview()Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    if-eq v0, v1, :cond_0

    .line 1094
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderPhoto;->mOpenAutoReviewWindow:Z

    .line 1098
    :goto_0
    return-void

    .line 1096
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderPhoto;->mOpenAutoReviewWindow:Z

    goto :goto_0
.end method

.method public exit()V
    .locals 1

    .prologue
    .line 1108
    invoke-super {p0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractViewFinder;->exit()V

    .line 1109
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderPhoto;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->notifyStateBlockedToWearable()V

    .line 1110
    return-void
.end method

.method public handleAfCancel(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 1114
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderPhoto;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mEventDispatcher:Lcom/sonyericsson/android/camera/controller/EventDispatcher;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->isSelfTimerRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1115
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderPhoto;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->cancelSelfTimer(Z)V

    .line 1117
    :cond_0
    iget-object v0, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mSource:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->VIDEO_BUTTON:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    if-ne v0, v1, :cond_1

    .line 1118
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderPhoto;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->showDefaultView()V

    .line 1120
    :cond_1
    return-void
.end method

.method public handleAfStart(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 3
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    const/4 v2, 0x1

    .line 1124
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderPhoto;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mEventDispatcher:Lcom/sonyericsson/android/camera/controller/EventDispatcher;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->isSelfTimerRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1125
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderPhoto;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCurrentSelfTimer:Lcom/sonyericsson/android/camera/controller/Selftimer;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/controller/Selftimer;->stop(Z)V

    .line 1126
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderPhoto;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v1, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mSource:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->consumeSelfTimer(Lcom/sonyericsson/android/camera/controller/ControllerEventSource;Z)V

    .line 1128
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderPhoto;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v1, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mSource:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->startAf(Lcom/sonyericsson/android/camera/controller/ControllerEventSource;Z)V

    .line 1129
    iget-object v0, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mSource:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->VIDEO_BUTTON:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    if-ne v0, v1, :cond_1

    .line 1130
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderPhoto;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->showReadyForRecordView()V

    .line 1132
    :cond_1
    return-void
.end method

.method public handleCapture(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 1136
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderPhoto;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->updateRemain()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1150
    :goto_0
    return-void

    .line 1140
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderPhoto;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mEventDispatcher:Lcom/sonyericsson/android/camera/controller/EventDispatcher;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->isSelfTimerRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1141
    iget-object v0, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mSource:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->VIDEO_BUTTON:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    if-ne v0, v1, :cond_1

    .line 1142
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderPhoto;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mParameterManager:Lcom/sonyericsson/android/camera/parameter/ParameterManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->isVideoSelfTimerOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1143
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderPhoto;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v1, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mSource:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->selfTimerCapture(Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V

    goto :goto_0

    .line 1147
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderPhoto;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCurrentSelfTimer:Lcom/sonyericsson/android/camera/controller/Selftimer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/Selftimer;->stop(Z)V

    .line 1149
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderPhoto;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v1, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mSource:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->captureInPhotoPreview(Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V

    goto :goto_0
.end method

.method public handleCompressedData(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 1248
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderPhoto;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mArg2:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    # invokes: Lcom/sonyericsson/android/camera/controller/StateTransitionController;->storeImage([B)Z
    invoke-static {v1, v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->access$3300(Lcom/sonyericsson/android/camera/controller/StateTransitionController;[B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1249
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderPhoto;->mOpenAutoReviewWindow:Z

    if-eqz v0, :cond_1

    .line 1259
    :cond_0
    :goto_0
    return-void

    .line 1252
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderPhoto;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mShooting:Lcom/sonyericsson/android/camera/controller/Shooting;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderPhoto;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->updateRemain()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/Shooting;->takeNextPicture(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public handleFaceDetect(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 1154
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractViewFinder;->handleFaceDetect(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    .line 1156
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderPhoto;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v1, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mFaceDetect:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    iget-object v0, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mArg2:Ljava/lang/Object;

    check-cast v0, Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->requestFaceId(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;)V

    .line 1157
    return-void
.end method

.method public handleFaceIdentify(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 1162
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderPhoto;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v1, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mFaceDetect:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    iget-object v0, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mArg2:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->updateFaceIdentify(Ljava/util/List;)V

    .line 1163
    return-void
.end method

.method public handleFocusPositionCancel(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 1167
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderPhoto;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->notifyStateIdleToWearable()V

    .line 1168
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderPhoto;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mTouchFocus:Lcom/sonyericsson/android/camera/controller/TouchFocus;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/TouchFocus;->clear()V

    .line 1169
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderPhoto;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->showDefaultView()V

    .line 1170
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderPhoto;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->updateStatus()V

    .line 1171
    return-void
.end method

.method public handleFocusPositionChange(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderPhoto;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mTouchFocus:Lcom/sonyericsson/android/camera/controller/TouchFocus;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderPhoto;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->getViewRect(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/TouchFocus;->setFocusPosition(Landroid/graphics/Rect;)V

    .line 1176
    return-void
.end method

.method public handleFocusPositionContinue(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 1180
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderPhoto;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mTouchFocus:Lcom/sonyericsson/android/camera/controller/TouchFocus;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderPhoto;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->getViewRect(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/TouchFocus;->updateTouchFocusRectangle(Landroid/graphics/Rect;)V

    .line 1181
    return-void
.end method

.method public handleFocusPositionFinish(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 1185
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderPhoto;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->notifyStateIdleToWearable()V

    .line 1186
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderPhoto;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->showDefaultView()V

    .line 1187
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderPhoto;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mTouchFocus:Lcom/sonyericsson/android/camera/controller/TouchFocus;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderPhoto;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->getViewRect(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/TouchFocus;->finish(Landroid/graphics/Rect;)V

    .line 1188
    return-void
.end method

.method public handleFocusPositionStart(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 1192
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderPhoto;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mTouchFocus:Lcom/sonyericsson/android/camera/controller/TouchFocus;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderPhoto;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->getViewRect(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/TouchFocus;->start(Landroid/graphics/Rect;)V

    .line 1193
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderPhoto;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->notifyStateBlockedToWearable()V

    .line 1194
    return-void
.end method

.method public handleObjectTrackingStart(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 1198
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractViewFinder;->handleObjectTrackingStart(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    .line 1200
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderPhoto;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mParameterManager:Lcom/sonyericsson/android/camera/parameter/ParameterManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->isSelfTimerOn()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderPhoto;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mParameterManager:Lcom/sonyericsson/android/camera/parameter/ParameterManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->isVideoSelfTimerOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1205
    :cond_0
    :goto_0
    return-void

    .line 1202
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderPhoto;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->getParams()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getTouchCapture()Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;->getBooleanValue()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1203
    const-class v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ObjectSearching;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->setState(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public handleSelfTimerCapture(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 3
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 1209
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderPhoto;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->updateRemain()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1210
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderPhoto;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v1, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mSource:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->consumeSelfTimer(Lcom/sonyericsson/android/camera/controller/ControllerEventSource;Z)V

    .line 1211
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderPhoto;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v1, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mSource:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->captureInPhotoPreview(Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V

    .line 1213
    :cond_0
    return-void
.end method

.method public handleSelfTimerStart(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 4
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 1217
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderPhoto;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mEventDispatcher:Lcom/sonyericsson/android/camera/controller/EventDispatcher;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->updateTouchCaptureStatus(Z)V

    .line 1218
    iget-object v1, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mArg2:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 1219
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderPhoto;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->getViewRect(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1220
    .local v0, "position":Landroid/graphics/Rect;
    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$FocusMode:[I

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderPhoto;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->getParams()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getFocusMode()Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1230
    .end local v0    # "position":Landroid/graphics/Rect;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderPhoto;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget v2, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mArg1:I

    iget-object v3, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mSource:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->startSelfTimer(ILcom/sonyericsson/android/camera/controller/ControllerEventSource;)V

    .line 1231
    return-void

    .line 1222
    .restart local v0    # "position":Landroid/graphics/Rect;
    :pswitch_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderPhoto;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mTouchFocus:Lcom/sonyericsson/android/camera/controller/TouchFocus;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/controller/TouchFocus;->finish(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1220
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public handleStoreDone(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 3
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 1263
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderPhoto;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShotPhoto()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1279
    :goto_0
    return-void

    .line 1268
    :cond_0
    iget-object v1, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mArg2:Ljava/lang/Object;

    check-cast v1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    .line 1269
    .local v1, "result":Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;
    iget-object v2, v1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v0, v2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mimeType:Ljava/lang/String;

    .line 1271
    .local v0, "mimeType":Ljava/lang/String;
    const-string v2, "video/mp4"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "video/3gpp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1273
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderPhoto;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateTransitionController;->openVideoReviewWindow(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    invoke-static {v2, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->access$3400(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    .line 1278
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderPhoto;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateTransitionController;->notifyStoreDone(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)Z
    invoke-static {v2, v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->access$3100(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)Z

    goto :goto_0

    .line 1274
    :cond_3
    const-string v2, "image/jpeg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1275
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderPhoto;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    # invokes: Lcom/sonyericsson/android/camera/controller/StateTransitionController;->openPhotoReviewWindow(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    invoke-static {v2, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->access$3500(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    goto :goto_1
.end method

.method public handleZoomFinish(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 1242
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderPhoto;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->notifyStateIdleToWearable()V

    .line 1243
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractViewFinder;->handleZoomFinish(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    .line 1244
    return-void
.end method

.method public handleZoomPrepare(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 1235
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderPhoto;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mEventDispatcher:Lcom/sonyericsson/android/camera/controller/EventDispatcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->updateTouchCaptureStatus(Z)V

    .line 1236
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderPhoto;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mTouchFocus:Lcom/sonyericsson/android/camera/controller/TouchFocus;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/TouchFocus;->clear()V

    .line 1237
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderPhoto;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mAutoZoom:Lcom/sonyericsson/android/camera/controller/AutoZoom;

    iget-object v1, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mSource:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/AutoZoom;->prepare(Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V

    .line 1238
    return-void
.end method
