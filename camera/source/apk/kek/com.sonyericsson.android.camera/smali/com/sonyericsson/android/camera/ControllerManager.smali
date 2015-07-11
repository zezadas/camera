.class public Lcom/sonyericsson/android/camera/ControllerManager;
.super Ljava/lang/Object;
.source "ControllerManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

.field private mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

.field private mController:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

.field private final mEventDispatcher:Lcom/sonyericsson/android/camera/controller/EventDispatcher;

.field private mMainPhotoMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/sonyericsson/android/camera/ControllerManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/ControllerManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/sonyericsson/android/camera/CameraActivity;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->UNKNOWN:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/ControllerManager;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 51
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->UNKNOWN:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/ControllerManager;->mMainPhotoMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 59
    iput-object p1, p0, Lcom/sonyericsson/android/camera/ControllerManager;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 60
    new-instance v0, Lcom/sonyericsson/android/camera/controller/EventDispatcher;

    invoke-direct {v0, p1}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/ControllerManager;->mEventDispatcher:Lcom/sonyericsson/android/camera/controller/EventDispatcher;

    .line 61
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/Executor;->create(Landroid/content/Context;)V

    .line 62
    return-void
.end method

.method public static isMenuAvailable()Z
    .locals 1

    .prologue
    .line 135
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/Executor;->isMenuAvailable()Z

    move-result v0

    return v0
.end method

.method public static resume()V
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_CONTROLLER_RESUME:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->sendEmptyEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;)V

    .line 132
    return-void
.end method

.method public static suspend()V
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_CONTROLLER_PAUSE:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->sendEmptyEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;)V

    .line 128
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sonyericsson/android/camera/ControllerManager;->mEventDispatcher:Lcom/sonyericsson/android/camera/controller/EventDispatcher;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->cancel()V

    .line 123
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_ABORT:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->sendEmergencyEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;)V

    .line 124
    return-void
.end method

.method public changeCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .locals 2
    .param p1, "mode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sonyericsson/android/camera/ControllerManager;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne v0, p1, :cond_0

    .line 115
    :goto_0
    return-void

    .line 114
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_CHANGE_CAPTURING_MODE:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/controller/Executor;->sendEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public createController()V
    .locals 3

    .prologue
    .line 72
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/ControllerManager;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/ControllerManager;->mEventDispatcher:Lcom/sonyericsson/android/camera/controller/EventDispatcher;

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/controller/EventDispatcher;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/ControllerManager;->mController:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    .line 73
    iget-object v0, p0, Lcom/sonyericsson/android/camera/ControllerManager;->mController:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->setInitState(Z)V

    .line 74
    return-void
.end method

.method public getCameraId()I
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/sonyericsson/android/camera/ControllerManager;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()I

    move-result v0

    return v0
.end method

.method public getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/sonyericsson/android/camera/ControllerManager;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    return-object v0
.end method

.method public getMainPhotoMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/sonyericsson/android/camera/ControllerManager;->mMainPhotoMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    return-object v0
.end method

.method public getParameterListener()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/sonyericsson/android/camera/ControllerManager;->mController:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->getParameterListener()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;

    move-result-object v0

    return-object v0
.end method

.method public getStorageListener()Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/sonyericsson/android/camera/ControllerManager;->mEventDispatcher:Lcom/sonyericsson/android/camera/controller/EventDispatcher;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/sonyericsson/android/camera/ControllerManager;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result v0

    return v0
.end method

.method public isControllerReleased()Z
    .locals 2

    .prologue
    .line 84
    iget-object v1, p0, Lcom/sonyericsson/android/camera/ControllerManager;->mController:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 86
    .local v0, "released":Z
    :goto_0
    return v0

    .line 84
    .end local v0    # "released":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public launch(Lcom/sonyericsson/android/camera/parameter/Parameters;)V
    .locals 2
    .param p1, "params"    # Lcom/sonyericsson/android/camera/parameter/Parameters;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sonyericsson/android/camera/ControllerManager;->mEventDispatcher:Lcom/sonyericsson/android/camera/controller/EventDispatcher;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/ControllerManager;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->getContentView()Lcom/sonyericsson/android/camera/view/CameraWindow;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->init(Lcom/sonyericsson/android/camera/view/CameraWindow;)V

    .line 100
    iget-object v0, p0, Lcom/sonyericsson/android/camera/ControllerManager;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->UNKNOWN:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne v0, v1, :cond_0

    .line 106
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/ControllerManager;->mController:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->applyAllParameters(Lcom/sonyericsson/android/camera/parameter/Parameters;)V

    goto :goto_0
.end method

.method public onCaptureButtonEvent(ILandroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "type"    # I
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/sonyericsson/android/camera/ControllerManager;->mEventDispatcher:Lcom/sonyericsson/android/camera/controller/EventDispatcher;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->onCaptureButtonEvent(ILandroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sonyericsson/android/camera/ControllerManager;->mEventDispatcher:Lcom/sonyericsson/android/camera/controller/EventDispatcher;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/sonyericsson/android/camera/ControllerManager;->mEventDispatcher:Lcom/sonyericsson/android/camera/controller/EventDispatcher;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onReachHighTemperature()V
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_REACH_HIGH_TEMPERATURE:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->sendEmptyEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;)V

    .line 140
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sonyericsson/android/camera/ControllerManager;->mEventDispatcher:Lcom/sonyericsson/android/camera/controller/EventDispatcher;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->release()V

    .line 69
    return-void
.end method

.method public releaseController()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sonyericsson/android/camera/ControllerManager;->mController:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/sonyericsson/android/camera/ControllerManager;->mController:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->pauseSceneRecognition()V

    .line 80
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/ControllerManager;->mController:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    .line 81
    return-void
.end method

.method public stopObjectTracking(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "resolution"    # Landroid/graphics/Rect;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sonyericsson/android/camera/ControllerManager;->mController:Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->stopObjectTracking(Landroid/graphics/Rect;)V

    .line 119
    return-void
.end method

.method public storeCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .locals 0
    .param p1, "mode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/sonyericsson/android/camera/ControllerManager;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 172
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/ControllerManager;->storeMainPhotoMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 173
    return-void
.end method

.method public storeMainPhotoMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .locals 1
    .param p1, "mode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .prologue
    .line 195
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isMainPhoto()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iput-object p1, p0, Lcom/sonyericsson/android/camera/ControllerManager;->mMainPhotoMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 200
    :cond_0
    return-void
.end method
