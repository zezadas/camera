.class public Lcom/sonyericsson/android/camera/controller/AutoZoom;
.super Ljava/lang/Object;
.source "AutoZoom.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/controller/AutoZoom$1;,
        Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomFront;,
        Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomNotSupported;,
        Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomSupported;,
        Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomState;,
        Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoombarHandler;,
        Lcom/sonyericsson/android/camera/controller/AutoZoom$AutoZoomCallback;
    }
.end annotation


# static fields
.field private static final DELAY_ZOOMBAR_HIDE:I = 0x3e8

.field private static final MIN_ZOOM_STEP:I = 0x0

.field private static final TAG:Ljava/lang/String;

.field private static final TEXT_ZOOM_NOT_SUPPORTED:I = 0x7f0900b0


# instance fields
.field private final mCallback:Lcom/sonyericsson/android/camera/controller/AutoZoom$AutoZoomCallback;

.field private final mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

.field private mCurrentZoomLength:F

.field private mIsDeviceZooming:Z

.field private mIsFocusModeChangedInZoom:Z

.field private mIsUiZooming:Z

.field private mKeepZoomStep:Z

.field private mState:Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomState;

.field private final mZoombarHandler:Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoombarHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/sonyericsson/android/camera/controller/AutoZoom;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/controller/AutoZoom;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/android/camera/controller/CameraFunctions;)V
    .locals 2
    .param p1, "controller"    # Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/sonyericsson/android/camera/controller/AutoZoom$AutoZoomCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/controller/AutoZoom$AutoZoomCallback;-><init>(Lcom/sonyericsson/android/camera/controller/AutoZoom$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom;->mCallback:Lcom/sonyericsson/android/camera/controller/AutoZoom$AutoZoomCallback;

    .line 62
    new-instance v0, Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoombarHandler;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoombarHandler;-><init>(Lcom/sonyericsson/android/camera/controller/AutoZoom;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom;->mZoombarHandler:Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoombarHandler;

    .line 34
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    .line 35
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getZoom()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom;->mCurrentZoomLength:F

    .line 36
    return-void
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/controller/AutoZoom;)Lcom/sonyericsson/android/camera/controller/CameraFunctions;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/controller/AutoZoom;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/controller/AutoZoom;)F
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/controller/AutoZoom;

    .prologue
    .line 21
    iget v0, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom;->mCurrentZoomLength:F

    return v0
.end method

.method static synthetic access$402(Lcom/sonyericsson/android/camera/controller/AutoZoom;F)F
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/controller/AutoZoom;
    .param p1, "x1"    # F

    .prologue
    .line 21
    iput p1, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom;->mCurrentZoomLength:F

    return p1
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera/controller/AutoZoom;)Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoombarHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/controller/AutoZoom;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom;->mZoombarHandler:Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoombarHandler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonyericsson/android/camera/controller/AutoZoom;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/controller/AutoZoom;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/AutoZoom;->getMaxZoom()I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/sonyericsson/android/camera/controller/AutoZoom;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/controller/AutoZoom;
    .param p1, "x1"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/AutoZoom;->startAutoZoom(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/sonyericsson/android/camera/controller/AutoZoom;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/controller/AutoZoom;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/AutoZoom;->stopAutoZoom()V

    return-void
.end method

.method private getMaxZoom()I
    .locals 4

    .prologue
    .line 387
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v3, v3, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mParameterManager:Lcom/sonyericsson/android/camera/parameter/ParameterManager;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->getParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getSuperResolution()Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;

    move-result-object v2

    .line 388
    .local v2, "sr":Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v3, v3, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getZoom()I

    move-result v0

    .line 390
    .local v0, "currentZoom":I
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;

    if-ne v2, v3, :cond_0

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v3, v3, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getMaxSrZoom()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 391
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v3, v3, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getMaxSrZoom()I

    move-result v1

    .line 395
    .local v1, "maxZoom":I
    :goto_0
    return v1

    .line 393
    .end local v1    # "maxZoom":I
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v3, v3, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getMaxZoom()I

    move-result v1

    .restart local v1    # "maxZoom":I
    goto :goto_0
.end method

.method private setFocusMode(Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;)V
    .locals 2
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    .prologue
    .line 234
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->getParams()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getFocusMode()Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->MULTI:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    if-ne v0, v1, :cond_0

    .line 235
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom;->mIsFocusModeChangedInZoom:Z

    if-eqz v0, :cond_1

    .line 236
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom;->mIsFocusModeChangedInZoom:Z

    .line 241
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setFocusMode(Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;)V

    .line 242
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->commitParameters()V

    .line 244
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setFocusMode(Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;)V

    .line 245
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->showCurrentAfRectangle()V

    .line 247
    :cond_0
    return-void

    .line 238
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom;->mIsFocusModeChangedInZoom:Z

    goto :goto_0
.end method

.method private setState(Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomState;)V
    .locals 0
    .param p1, "state"    # Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomState;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom;->mState:Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomState;

    .line 75
    return-void
.end method

.method private startAutoZoom(I)V
    .locals 3
    .param p1, "step"    # I

    .prologue
    .line 203
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom;->mIsDeviceZooming:Z

    if-eqz v1, :cond_0

    .line 223
    :goto_0
    return-void

    .line 211
    :cond_0
    if-eqz p1, :cond_1

    .line 212
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->SINGLE:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/controller/AutoZoom;->setFocusMode(Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;)V

    .line 216
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom;->mCallback:Lcom/sonyericsson/android/camera/controller/AutoZoom$AutoZoomCallback;

    invoke-virtual {v1, p1, v2}, Lcom/sonyericsson/android/camera/device/CameraDevice;->startSmoothZoom(ILandroid/hardware/Camera$OnZoomChangeListener;)V

    .line 217
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom;->mIsDeviceZooming:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 219
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->OTHER:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/controller/AutoZoom;->finish(Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V

    goto :goto_0
.end method

.method private stopAutoZoom()V
    .locals 1

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom;->mIsDeviceZooming:Z

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->stopSmoothZoom()V

    .line 228
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom;->mIsDeviceZooming:Z

    .line 230
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 111
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/AutoZoom;->stop()V

    .line 112
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom;->mZoombarHandler:Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoombarHandler;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoombarHandler;->removeMessages(I)V

    .line 114
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom;->mKeepZoomStep:Z

    if-eqz v0, :cond_0

    .line 122
    :goto_0
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom;->mIsFocusModeChangedInZoom:Z

    .line 123
    return-void

    .line 117
    :cond_0
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/controller/AutoZoom;->setZoom(I)V

    .line 118
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->initZoom()V

    goto :goto_0
.end method

.method public finish(Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V
    .locals 3
    .param p1, "source"    # Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    .prologue
    const/4 v2, 0x0

    .line 159
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom;->mState:Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomState;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom;->mState:Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomState;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomState;->finishZoom()V

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mEventDispatcher:Lcom/sonyericsson/android/camera/controller/EventDispatcher;

    invoke-virtual {v0, v2, p1}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->updateZoomStatus(ZLcom/sonyericsson/android/camera/controller/ControllerEventSource;)V

    .line 163
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom;->mIsUiZooming:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 164
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom;->mIsUiZooming:Z

    .line 166
    :cond_1
    return-void
.end method

.method public isZoomAvailable()Z
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom;->mState:Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomState;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomState;->isZoomAvailable()Z

    move-result v0

    return v0
.end method

.method public isZooming()Z
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom;->mIsUiZooming:Z

    return v0
.end method

.method public keepZoomStep(Z)V
    .locals 0
    .param p1, "keep"    # Z

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom;->mKeepZoomStep:Z

    .line 102
    return-void
.end method

.method public onZoomProgress(IZ)V
    .locals 3
    .param p1, "currentStep"    # I
    .param p2, "stopped"    # Z

    .prologue
    .line 181
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getMaxZoom()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getMaxSrZoom()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/sonyericsson/android/camera/view/CameraWindow;->updateZoombar(III)V

    .line 184
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setZoom(I)V

    .line 186
    if-eqz p2, :cond_0

    .line 189
    if-nez p1, :cond_0

    .line 190
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->MULTI:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/controller/AutoZoom;->setFocusMode(Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;)V

    .line 193
    :cond_0
    return-void
.end method

.method public prepare(Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V
    .locals 2
    .param p1, "source"    # Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    .prologue
    const/4 v1, 0x1

    .line 135
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom;->mState:Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom;->mState:Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomState;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomState;->prepare()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mEventDispatcher:Lcom/sonyericsson/android/camera/controller/EventDispatcher;

    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->updateZoomStatus(ZLcom/sonyericsson/android/camera/controller/ControllerEventSource;)V

    .line 137
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom;->mIsUiZooming:Z

    .line 139
    :cond_0
    return-void
.end method

.method public setZoom(I)V
    .locals 1
    .param p1, "step"    # I

    .prologue
    .line 170
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom;->mState:Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom;->mState:Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomState;

    invoke-interface {v0, p1}, Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomState;->setZoomStep(I)V

    .line 171
    :cond_0
    return-void
.end method

.method public start(Lcom/sonyericsson/android/camera/controller/ZoomDirection;)V
    .locals 2
    .param p1, "direction"    # Lcom/sonyericsson/android/camera/controller/ZoomDirection;

    .prologue
    .line 143
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ZoomDirection;->IN:Lcom/sonyericsson/android/camera/controller/ZoomDirection;

    if-ne p1, v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom;->mState:Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomState;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomState;->startZoomIn()V

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ZoomDirection;->OUT:Lcom/sonyericsson/android/camera/controller/ZoomDirection;

    if-ne p1, v0, :cond_2

    .line 146
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom;->mState:Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomState;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomState;->startZoomOut()V

    goto :goto_0

    .line 147
    :cond_2
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ZoomDirection;->IN_OUT:Lcom/sonyericsson/android/camera/controller/ZoomDirection;

    if-ne p1, v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom;->mState:Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomState;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/ZoomDirection;->getScaleLength()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomState;->startZoom(F)V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom;->mState:Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom;->mState:Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomState;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomState;->stopZoom()V

    .line 155
    :cond_0
    return-void
.end method

.method public update(I)V
    .locals 2
    .param p1, "cameraId"    # I

    .prologue
    const/4 v1, 0x0

    .line 80
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 82
    new-instance v0, Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomFront;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomFront;-><init>(Lcom/sonyericsson/android/camera/controller/AutoZoom;Lcom/sonyericsson/android/camera/controller/AutoZoom$1;)V

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/controller/AutoZoom;->setState(Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomState;)V

    .line 95
    :goto_0
    return-void

    .line 84
    :cond_0
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getCapability(I)Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->SMOOTH_ZOOM:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 86
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/AutoZoom;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getMaxZoom()I

    move-result v0

    if-lez v0, :cond_1

    .line 87
    new-instance v0, Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomSupported;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomSupported;-><init>(Lcom/sonyericsson/android/camera/controller/AutoZoom;Lcom/sonyericsson/android/camera/controller/AutoZoom$1;)V

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/controller/AutoZoom;->setState(Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomState;)V

    goto :goto_0

    .line 89
    :cond_1
    new-instance v0, Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomNotSupported;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomNotSupported;-><init>(Lcom/sonyericsson/android/camera/controller/AutoZoom;)V

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/controller/AutoZoom;->setState(Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomState;)V

    goto :goto_0

    .line 93
    :cond_2
    new-instance v0, Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomNotSupported;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomNotSupported;-><init>(Lcom/sonyericsson/android/camera/controller/AutoZoom;)V

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/controller/AutoZoom;->setState(Lcom/sonyericsson/android/camera/controller/AutoZoom$ZoomState;)V

    goto :goto_0
.end method
