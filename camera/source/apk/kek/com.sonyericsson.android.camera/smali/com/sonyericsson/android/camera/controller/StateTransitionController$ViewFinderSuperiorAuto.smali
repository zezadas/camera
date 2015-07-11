.class Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderSuperiorAuto;
.super Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderPhoto;
.source "StateTransitionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateTransitionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewFinderSuperiorAuto"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;)V
    .locals 1

    .prologue
    .line 1282
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderSuperiorAuto;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderPhoto;-><init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/controller/StateTransitionController;
    .param p2, "x1"    # Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;

    .prologue
    .line 1282
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderSuperiorAuto;-><init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;)V

    return-void
.end method


# virtual methods
.method public handleFaceDetectChange(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 1325
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderSuperiorAuto;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->restoreFocusMode(Z)Z

    .line 1326
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderSuperiorAuto;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mFaceDetect:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderSuperiorAuto;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->getParams()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getFaceIdentify()Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;->getBooleanValue()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->enableFaceIdentification(Z)V

    .line 1327
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderPhoto;->handleFaceDetectChange(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    .line 1328
    return-void
.end method

.method public handleFocusPositionCancel(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 1293
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderPhoto;->handleFocusPositionCancel(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    .line 1295
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderSuperiorAuto;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->finishDragging()V

    .line 1296
    return-void
.end method

.method public handleFocusPositionStart(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 1300
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderSuperiorAuto;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->prepareDragging()V

    .line 1302
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderPhoto;->handleFocusPositionStart(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    .line 1303
    return-void
.end method

.method public handleSelfTimerStart(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 3
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 1307
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderSuperiorAuto;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mEventDispatcher:Lcom/sonyericsson/android/camera/controller/EventDispatcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->updateTouchCaptureStatus(Z)V

    .line 1308
    iget-object v0, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mArg2:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mSource:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->TOUCH_FACE:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    if-eq v0, v1, :cond_0

    .line 1309
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderSuperiorAuto;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mTouchFocus:Lcom/sonyericsson/android/camera/controller/TouchFocus;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderSuperiorAuto;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->getViewRect(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/TouchFocus;->finish(Landroid/graphics/Rect;)V

    .line 1311
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderSuperiorAuto;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget v1, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mArg1:I

    iget-object v2, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mSource:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->startSelfTimer(ILcom/sonyericsson/android/camera/controller/ControllerEventSource;)V

    .line 1312
    return-void
.end method

.method public handleShutterDone(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 1338
    iget-object v0, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mArg2:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 1339
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderSuperiorAuto;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    iget v1, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mArg1:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->countUp(I)V

    .line 1341
    :cond_0
    return-void
.end method

.method public handleStorageError(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 1286
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderPhoto;->handleStorageError(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    .line 1288
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderSuperiorAuto;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->restoreFocusMode(Z)Z

    .line 1289
    return-void
.end method

.method public handleZoomPrepare(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 1316
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderSuperiorAuto;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mEventDispatcher:Lcom/sonyericsson/android/camera/controller/EventDispatcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->updateTouchCaptureStatus(Z)V

    .line 1317
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderSuperiorAuto;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mTouchFocus:Lcom/sonyericsson/android/camera/controller/TouchFocus;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/TouchFocus;->clear()V

    .line 1318
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderSuperiorAuto;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->finishDragging()V

    .line 1320
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderSuperiorAuto;->this$0:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mAutoZoom:Lcom/sonyericsson/android/camera/controller/AutoZoom;

    iget-object v1, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mSource:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/AutoZoom;->prepare(Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V

    .line 1321
    return-void
.end method
