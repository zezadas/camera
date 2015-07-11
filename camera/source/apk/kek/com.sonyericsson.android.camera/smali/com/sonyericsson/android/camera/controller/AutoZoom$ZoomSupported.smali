.class Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomSupported;
.super Ljava/lang/Object;
.source "AutoZoom.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/AutoZoom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomSupported"
.end annotation


# instance fields
.field private mStartZoomValue:I

.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/AutoZoom;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/AutoZoom;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomSupported;->this$0:Lcom/sonyericsson/android/camera/controller/AutoZoom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/AutoZoom;Lcom/sonyericsson/android/camera/controller/AutoZoom$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/controller/AutoZoom;
    .param p2, "x1"    # Lcom/sonyericsson/android/camera/controller/AutoZoom$1;

    .prologue
    .line 289
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomSupported;-><init>(Lcom/sonyericsson/android/camera/controller/AutoZoom;)V

    return-void
.end method


# virtual methods
.method public finishZoom()V
    .locals 4

    .prologue
    .line 344
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomSupported;->this$0:Lcom/sonyericsson/android/camera/controller/AutoZoom;

    # getter for: Lcom/sonyericsson/android/camera/controller/AutoZoom;->mZoombarHandler:Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoombarHandler;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/AutoZoom;->access$500(Lcom/sonyericsson/android/camera/controller/AutoZoom;)Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoombarHandler;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoombarHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 346
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_ZOOM_PROGRESS:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->cancelEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;)V

    .line 347
    return-void
.end method

.method public isZoomAvailable()Z
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x1

    return v0
.end method

.method public prepare()Z
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomSupported;->this$0:Lcom/sonyericsson/android/camera/controller/AutoZoom;

    # getter for: Lcom/sonyericsson/android/camera/controller/AutoZoom;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/AutoZoom;->access$300(Lcom/sonyericsson/android/camera/controller/AutoZoom;)Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getZoom()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomSupported;->mStartZoomValue:I

    .line 301
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomSupported;->this$0:Lcom/sonyericsson/android/camera/controller/AutoZoom;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomSupported;->this$0:Lcom/sonyericsson/android/camera/controller/AutoZoom;

    # getter for: Lcom/sonyericsson/android/camera/controller/AutoZoom;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/AutoZoom;->access$300(Lcom/sonyericsson/android/camera/controller/AutoZoom;)Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    move-result-object v1

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getZoom()I

    move-result v1

    int-to-float v1, v1

    # setter for: Lcom/sonyericsson/android/camera/controller/AutoZoom;->mCurrentZoomLength:F
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/AutoZoom;->access$402(Lcom/sonyericsson/android/camera/controller/AutoZoom;F)F

    .line 302
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomSupported;->this$0:Lcom/sonyericsson/android/camera/controller/AutoZoom;

    # getter for: Lcom/sonyericsson/android/camera/controller/AutoZoom;->mZoombarHandler:Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoombarHandler;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/AutoZoom;->access$500(Lcom/sonyericsson/android/camera/controller/AutoZoom;)Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoombarHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoombarHandler;->removeMessages(I)V

    .line 305
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomSupported;->this$0:Lcom/sonyericsson/android/camera/controller/AutoZoom;

    # getter for: Lcom/sonyericsson/android/camera/controller/AutoZoom;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/AutoZoom;->access$300(Lcom/sonyericsson/android/camera/controller/AutoZoom;)Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->hideFaceRectangles()V

    .line 307
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomSupported;->this$0:Lcom/sonyericsson/android/camera/controller/AutoZoom;

    # getter for: Lcom/sonyericsson/android/camera/controller/AutoZoom;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/AutoZoom;->access$300(Lcom/sonyericsson/android/camera/controller/AutoZoom;)Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-static {}, Lcom/sonyericsson/android/camera/controller/Executor;->isRecording()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->showZoombar(Z)V

    .line 308
    const/4 v0, 0x1

    return v0
.end method

.method public setZoomStep(I)V
    .locals 3
    .param p1, "step"    # I

    .prologue
    .line 351
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomSupported;->this$0:Lcom/sonyericsson/android/camera/controller/AutoZoom;

    # getter for: Lcom/sonyericsson/android/camera/controller/AutoZoom;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/AutoZoom;->access$300(Lcom/sonyericsson/android/camera/controller/AutoZoom;)Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setZoom(I)V

    .line 352
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomSupported;->this$0:Lcom/sonyericsson/android/camera/controller/AutoZoom;

    # getter for: Lcom/sonyericsson/android/camera/controller/AutoZoom;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/AutoZoom;->access$300(Lcom/sonyericsson/android/camera/controller/AutoZoom;)Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->commitParameters()V

    .line 353
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomSupported;->this$0:Lcom/sonyericsson/android/camera/controller/AutoZoom;

    # getter for: Lcom/sonyericsson/android/camera/controller/AutoZoom;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/AutoZoom;->access$300(Lcom/sonyericsson/android/camera/controller/AutoZoom;)Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomSupported;->this$0:Lcom/sonyericsson/android/camera/controller/AutoZoom;

    # getter for: Lcom/sonyericsson/android/camera/controller/AutoZoom;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/AutoZoom;->access$300(Lcom/sonyericsson/android/camera/controller/AutoZoom;)Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    move-result-object v1

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getMaxZoom()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomSupported;->this$0:Lcom/sonyericsson/android/camera/controller/AutoZoom;

    # getter for: Lcom/sonyericsson/android/camera/controller/AutoZoom;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/AutoZoom;->access$300(Lcom/sonyericsson/android/camera/controller/AutoZoom;)Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    move-result-object v2

    iget-object v2, v2, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getMaxSrZoom()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/sonyericsson/android/camera/view/CameraWindow;->updateZoombar(III)V

    .line 355
    return-void
.end method

.method public startZoom(F)V
    .locals 6
    .param p1, "scaleLength"    # F

    .prologue
    const/4 v5, 0x0

    .line 359
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomSupported;->this$0:Lcom/sonyericsson/android/camera/controller/AutoZoom;

    # getter for: Lcom/sonyericsson/android/camera/controller/AutoZoom;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/controller/AutoZoom;->access$300(Lcom/sonyericsson/android/camera/controller/AutoZoom;)Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    move-result-object v3

    iget-object v3, v3, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mParameterManager:Lcom/sonyericsson/android/camera/parameter/ParameterManager;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->getParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getSuperResolution()Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;

    move-result-object v2

    .line 361
    .local v2, "sr":Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomSupported;->this$0:Lcom/sonyericsson/android/camera/controller/AutoZoom;

    # getter for: Lcom/sonyericsson/android/camera/controller/AutoZoom;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/controller/AutoZoom;->access$300(Lcom/sonyericsson/android/camera/controller/AutoZoom;)Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    move-result-object v3

    iget-object v3, v3, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getZoom()I

    move-result v0

    .line 364
    .local v0, "currentZoom":I
    cmpl-float v3, p1, v5

    if-lez v3, :cond_0

    .line 365
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;

    if-ne v2, v3, :cond_0

    .line 366
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomSupported;->this$0:Lcom/sonyericsson/android/camera/controller/AutoZoom;

    # getter for: Lcom/sonyericsson/android/camera/controller/AutoZoom;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/controller/AutoZoom;->access$300(Lcom/sonyericsson/android/camera/controller/AutoZoom;)Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    move-result-object v3

    iget-object v3, v3, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getMaxSrZoom()I

    move-result v3

    if-ne v0, v3, :cond_0

    iget v3, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomSupported;->mStartZoomValue:I

    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomSupported;->this$0:Lcom/sonyericsson/android/camera/controller/AutoZoom;

    # getter for: Lcom/sonyericsson/android/camera/controller/AutoZoom;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;
    invoke-static {v4}, Lcom/sonyericsson/android/camera/controller/AutoZoom;->access$300(Lcom/sonyericsson/android/camera/controller/AutoZoom;)Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    move-result-object v4

    iget-object v4, v4, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getMaxSrZoom()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 383
    :goto_0
    return-void

    .line 372
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomSupported;->this$0:Lcom/sonyericsson/android/camera/controller/AutoZoom;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomSupported;->this$0:Lcom/sonyericsson/android/camera/controller/AutoZoom;

    # getter for: Lcom/sonyericsson/android/camera/controller/AutoZoom;->mCurrentZoomLength:F
    invoke-static {v4}, Lcom/sonyericsson/android/camera/controller/AutoZoom;->access$400(Lcom/sonyericsson/android/camera/controller/AutoZoom;)F

    move-result v4

    invoke-static {v4, p1}, Lcom/sonyericsson/cameracommon/controller/ZoomController;->getZoomValue(FF)F

    move-result v4

    # setter for: Lcom/sonyericsson/android/camera/controller/AutoZoom;->mCurrentZoomLength:F
    invoke-static {v3, v4}, Lcom/sonyericsson/android/camera/controller/AutoZoom;->access$402(Lcom/sonyericsson/android/camera/controller/AutoZoom;F)F

    .line 374
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomSupported;->this$0:Lcom/sonyericsson/android/camera/controller/AutoZoom;

    # getter for: Lcom/sonyericsson/android/camera/controller/AutoZoom;->mCurrentZoomLength:F
    invoke-static {v3}, Lcom/sonyericsson/android/camera/controller/AutoZoom;->access$400(Lcom/sonyericsson/android/camera/controller/AutoZoom;)F

    move-result v3

    cmpg-float v3, v3, v5

    if-gez v3, :cond_2

    .line 375
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomSupported;->this$0:Lcom/sonyericsson/android/camera/controller/AutoZoom;

    # setter for: Lcom/sonyericsson/android/camera/controller/AutoZoom;->mCurrentZoomLength:F
    invoke-static {v3, v5}, Lcom/sonyericsson/android/camera/controller/AutoZoom;->access$402(Lcom/sonyericsson/android/camera/controller/AutoZoom;F)F

    .line 382
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomSupported;->this$0:Lcom/sonyericsson/android/camera/controller/AutoZoom;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomSupported;->this$0:Lcom/sonyericsson/android/camera/controller/AutoZoom;

    # getter for: Lcom/sonyericsson/android/camera/controller/AutoZoom;->mCurrentZoomLength:F
    invoke-static {v4}, Lcom/sonyericsson/android/camera/controller/AutoZoom;->access$400(Lcom/sonyericsson/android/camera/controller/AutoZoom;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    # invokes: Lcom/sonyericsson/android/camera/controller/AutoZoom;->startAutoZoom(I)V
    invoke-static {v3, v4}, Lcom/sonyericsson/android/camera/controller/AutoZoom;->access$700(Lcom/sonyericsson/android/camera/controller/AutoZoom;I)V

    goto :goto_0

    .line 377
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomSupported;->this$0:Lcom/sonyericsson/android/camera/controller/AutoZoom;

    # invokes: Lcom/sonyericsson/android/camera/controller/AutoZoom;->getMaxZoom()I
    invoke-static {v3}, Lcom/sonyericsson/android/camera/controller/AutoZoom;->access$600(Lcom/sonyericsson/android/camera/controller/AutoZoom;)I

    move-result v1

    .line 378
    .local v1, "maxZoom":I
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomSupported;->this$0:Lcom/sonyericsson/android/camera/controller/AutoZoom;

    # getter for: Lcom/sonyericsson/android/camera/controller/AutoZoom;->mCurrentZoomLength:F
    invoke-static {v3}, Lcom/sonyericsson/android/camera/controller/AutoZoom;->access$400(Lcom/sonyericsson/android/camera/controller/AutoZoom;)F

    move-result v3

    int-to-float v4, v1

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 379
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomSupported;->this$0:Lcom/sonyericsson/android/camera/controller/AutoZoom;

    int-to-float v4, v1

    # setter for: Lcom/sonyericsson/android/camera/controller/AutoZoom;->mCurrentZoomLength:F
    invoke-static {v3, v4}, Lcom/sonyericsson/android/camera/controller/AutoZoom;->access$402(Lcom/sonyericsson/android/camera/controller/AutoZoom;F)F

    goto :goto_1
.end method

.method public startZoomIn()V
    .locals 4

    .prologue
    .line 313
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomSupported;->this$0:Lcom/sonyericsson/android/camera/controller/AutoZoom;

    # getter for: Lcom/sonyericsson/android/camera/controller/AutoZoom;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/AutoZoom;->access$300(Lcom/sonyericsson/android/camera/controller/AutoZoom;)Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    move-result-object v2

    iget-object v2, v2, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mParameterManager:Lcom/sonyericsson/android/camera/parameter/ParameterManager;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->getParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getSuperResolution()Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;

    move-result-object v1

    .line 314
    .local v1, "sr":Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomSupported;->this$0:Lcom/sonyericsson/android/camera/controller/AutoZoom;

    # getter for: Lcom/sonyericsson/android/camera/controller/AutoZoom;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/AutoZoom;->access$300(Lcom/sonyericsson/android/camera/controller/AutoZoom;)Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    move-result-object v2

    iget-object v2, v2, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getZoom()I

    move-result v0

    .line 318
    .local v0, "currentZoom":I
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;

    if-ne v1, v2, :cond_0

    .line 319
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomSupported;->this$0:Lcom/sonyericsson/android/camera/controller/AutoZoom;

    # getter for: Lcom/sonyericsson/android/camera/controller/AutoZoom;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/AutoZoom;->access$300(Lcom/sonyericsson/android/camera/controller/AutoZoom;)Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    move-result-object v2

    iget-object v2, v2, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getMaxSrZoom()I

    move-result v2

    if-ne v0, v2, :cond_0

    iget v2, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomSupported;->mStartZoomValue:I

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomSupported;->this$0:Lcom/sonyericsson/android/camera/controller/AutoZoom;

    # getter for: Lcom/sonyericsson/android/camera/controller/AutoZoom;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;
    invoke-static {v3}, Lcom/sonyericsson/android/camera/controller/AutoZoom;->access$300(Lcom/sonyericsson/android/camera/controller/AutoZoom;)Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    move-result-object v3

    iget-object v3, v3, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getMaxSrZoom()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 327
    :goto_0
    return-void

    .line 326
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomSupported;->this$0:Lcom/sonyericsson/android/camera/controller/AutoZoom;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomSupported;->this$0:Lcom/sonyericsson/android/camera/controller/AutoZoom;

    # invokes: Lcom/sonyericsson/android/camera/controller/AutoZoom;->getMaxZoom()I
    invoke-static {v3}, Lcom/sonyericsson/android/camera/controller/AutoZoom;->access$600(Lcom/sonyericsson/android/camera/controller/AutoZoom;)I

    move-result v3

    # invokes: Lcom/sonyericsson/android/camera/controller/AutoZoom;->startAutoZoom(I)V
    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera/controller/AutoZoom;->access$700(Lcom/sonyericsson/android/camera/controller/AutoZoom;I)V

    goto :goto_0
.end method

.method public startZoomOut()V
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomSupported;->this$0:Lcom/sonyericsson/android/camera/controller/AutoZoom;

    # getter for: Lcom/sonyericsson/android/camera/controller/AutoZoom;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/AutoZoom;->access$300(Lcom/sonyericsson/android/camera/controller/AutoZoom;)Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getZoom()I

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomSupported;->this$0:Lcom/sonyericsson/android/camera/controller/AutoZoom;

    const/4 v1, 0x0

    # invokes: Lcom/sonyericsson/android/camera/controller/AutoZoom;->startAutoZoom(I)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/AutoZoom;->access$700(Lcom/sonyericsson/android/camera/controller/AutoZoom;I)V

    .line 334
    :cond_0
    return-void
.end method

.method public stopZoom()V
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomSupported;->this$0:Lcom/sonyericsson/android/camera/controller/AutoZoom;

    # invokes: Lcom/sonyericsson/android/camera/controller/AutoZoom;->stopAutoZoom()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/AutoZoom;->access$800(Lcom/sonyericsson/android/camera/controller/AutoZoom;)V

    .line 339
    return-void
.end method
