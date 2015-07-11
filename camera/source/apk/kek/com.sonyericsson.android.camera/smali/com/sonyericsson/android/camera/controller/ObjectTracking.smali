.class public Lcom/sonyericsson/android/camera/controller/ObjectTracking;
.super Ljava/lang/Object;
.source "ObjectTracking.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/controller/ObjectTracking$1;,
        Lcom/sonyericsson/android/camera/controller/ObjectTracking$ObjectTrackingHandler;,
        Lcom/sonyericsson/android/camera/controller/ObjectTracking$ObjectTrackingCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCallback:Lcom/sonyericsson/android/camera/controller/ObjectTracking$ObjectTrackingCallback;

.field private final mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

.field private final mHandler:Lcom/sonyericsson/android/camera/controller/ObjectTracking$ObjectTrackingHandler;

.field private mIsAlreadyLost:Z

.field private mPosition:Landroid/graphics/Rect;

.field private mShouldWaitForLost:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const-class v0, Lcom/sonyericsson/android/camera/controller/ObjectTracking;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/controller/ObjectTracking;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/android/camera/controller/CameraFunctions;)V
    .locals 2
    .param p1, "controller"    # Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTracking;->mIsAlreadyLost:Z

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTracking;->mShouldWaitForLost:Z

    .line 76
    iput-object v1, p0, Lcom/sonyericsson/android/camera/controller/ObjectTracking;->mCallback:Lcom/sonyericsson/android/camera/controller/ObjectTracking$ObjectTrackingCallback;

    .line 78
    new-instance v0, Lcom/sonyericsson/android/camera/controller/ObjectTracking$ObjectTrackingHandler;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/controller/ObjectTracking$ObjectTrackingHandler;-><init>(Lcom/sonyericsson/android/camera/controller/ObjectTracking;Lcom/sonyericsson/android/camera/controller/ObjectTracking$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTracking;->mHandler:Lcom/sonyericsson/android/camera/controller/ObjectTracking$ObjectTrackingHandler;

    .line 69
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/ObjectTracking;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/controller/ObjectTracking;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/controller/ObjectTracking;

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTracking;->mShouldWaitForLost:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sonyericsson/android/camera/controller/ObjectTracking;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/controller/ObjectTracking;
    .param p1, "x1"    # Z

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/ObjectTracking;->mShouldWaitForLost:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/controller/ObjectTracking;)Lcom/sonyericsson/android/camera/controller/CameraFunctions;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/controller/ObjectTracking;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTracking;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/controller/ObjectTracking;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/controller/ObjectTracking;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTracking;->mPosition:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/controller/ObjectTracking;Landroid/graphics/Rect;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/controller/ObjectTracking;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/ObjectTracking;->startTracking(Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/controller/ObjectTracking;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/controller/ObjectTracking;

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTracking;->mIsAlreadyLost:Z

    return v0
.end method

.method static synthetic access$402(Lcom/sonyericsson/android/camera/controller/ObjectTracking;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/controller/ObjectTracking;
    .param p1, "x1"    # Z

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/ObjectTracking;->mIsAlreadyLost:Z

    return p1
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera/controller/ObjectTracking;)Lcom/sonyericsson/android/camera/controller/ObjectTracking$ObjectTrackingHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/controller/ObjectTracking;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTracking;->mHandler:Lcom/sonyericsson/android/camera/controller/ObjectTracking$ObjectTrackingHandler;

    return-object v0
.end method

.method private startTracking(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "position"    # Landroid/graphics/Rect;

    .prologue
    .line 97
    new-instance v0, Lcom/sonyericsson/android/camera/controller/ObjectTracking$ObjectTrackingCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/controller/ObjectTracking$ObjectTrackingCallback;-><init>(Lcom/sonyericsson/android/camera/controller/ObjectTracking;Lcom/sonyericsson/android/camera/controller/ObjectTracking$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTracking;->mCallback:Lcom/sonyericsson/android/camera/controller/ObjectTracking$ObjectTrackingCallback;

    .line 98
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTracking;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->startObjectTrackingAnimation(Landroid/graphics/Rect;)V

    .line 99
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTracking;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->convertFaceToDevice(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/ObjectTracking;->mCallback:Lcom/sonyericsson/android/camera/controller/ObjectTracking$ObjectTrackingCallback;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDevice;->startObjectTracking(Landroid/graphics/Rect;Lcom/sonyericsson/cameraextension/CameraExtension$ObjectTrackingCallback;)V

    .line 102
    return-void
.end method


# virtual methods
.method public invisible()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTracking;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->hideObjectRectangles()V

    .line 132
    return-void
.end method

.method public onObjectTracked(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "position"    # Landroid/graphics/Rect;

    .prologue
    .line 122
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTracking;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->hideObjectRectangles()V

    .line 128
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTracking;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->convertDeviceToFace(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->updateObjectRectangles(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public start(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "position"    # Landroid/graphics/Rect;

    .prologue
    .line 82
    if-eqz p1, :cond_0

    .line 83
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/ObjectTracking;->mPosition:Landroid/graphics/Rect;

    .line 84
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTracking;->mIsAlreadyLost:Z

    if-eqz v0, :cond_1

    .line 85
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/ObjectTracking;->startTracking(Landroid/graphics/Rect;)V

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/controller/ObjectTracking;->stop(Z)V

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTracking;->mShouldWaitForLost:Z

    goto :goto_0
.end method

.method public stop(Z)V
    .locals 1
    .param p1, "doStopCallback"    # Z

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTracking;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->stopObjectTracking(Z)V

    .line 107
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTracking;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->clearObjectRectangles()V

    .line 108
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_OBJECT_TRACKING:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->cancelEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;)V

    .line 109
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTracking;->mHandler:Lcom/sonyericsson/android/camera/controller/ObjectTracking$ObjectTrackingHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/ObjectTracking$ObjectTrackingHandler;->stopTimeoutCount()V

    .line 110
    if-eqz p1, :cond_0

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTracking;->mShouldWaitForLost:Z

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTracking;->mIsAlreadyLost:Z

    .line 115
    :cond_0
    return-void
.end method
