.class public Lcom/sonyericsson/android/camera/controller/SceneRecognition;
.super Ljava/lang/Object;
.source "SceneRecognition.java"

# interfaces
.implements Lcom/sonyericsson/cameraextension/CameraExtension$SceneRecognitionCallback;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

.field private mIsSceneRecognition:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/sonyericsson/android/camera/controller/SceneRecognition;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/controller/SceneRecognition;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/android/camera/controller/CameraFunctions;)V
    .locals 0
    .param p1, "controller"    # Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/SceneRecognition;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    .line 28
    return-void
.end method

.method private createResult(Lcom/sonyericsson/cameraextension/CameraExtension$SceneMode;Lcom/sonyericsson/cameraextension/CameraExtension$DeviceStabilityCondition;Z)Lcom/sonyericsson/cameraextension/CameraExtension$SceneRecognitionResult;
    .locals 1
    .param p1, "scene"    # Lcom/sonyericsson/cameraextension/CameraExtension$SceneMode;
    .param p2, "condition"    # Lcom/sonyericsson/cameraextension/CameraExtension$DeviceStabilityCondition;
    .param p3, "isMacroFocus"    # Z

    .prologue
    .line 96
    new-instance v0, Lcom/sonyericsson/cameraextension/CameraExtension$SceneRecognitionResult;

    invoke-direct {v0}, Lcom/sonyericsson/cameraextension/CameraExtension$SceneRecognitionResult;-><init>()V

    .line 97
    .local v0, "result":Lcom/sonyericsson/cameraextension/CameraExtension$SceneRecognitionResult;
    iput-object p1, v0, Lcom/sonyericsson/cameraextension/CameraExtension$SceneRecognitionResult;->sceneMode:Lcom/sonyericsson/cameraextension/CameraExtension$SceneMode;

    .line 98
    iput-object p2, v0, Lcom/sonyericsson/cameraextension/CameraExtension$SceneRecognitionResult;->deviceStabilityCondition:Lcom/sonyericsson/cameraextension/CameraExtension$DeviceStabilityCondition;

    .line 99
    iput-boolean p3, v0, Lcom/sonyericsson/cameraextension/CameraExtension$SceneRecognitionResult;->isMacroRange:Z

    .line 101
    return-object v0
.end method

.method private hideNotification()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 89
    const/4 v1, 0x0

    invoke-direct {p0, v2, v2, v1}, Lcom/sonyericsson/android/camera/controller/SceneRecognition;->createResult(Lcom/sonyericsson/cameraextension/CameraExtension$SceneMode;Lcom/sonyericsson/cameraextension/CameraExtension$DeviceStabilityCondition;Z)Lcom/sonyericsson/cameraextension/CameraExtension$SceneRecognitionResult;

    move-result-object v0

    .line 90
    .local v0, "result":Lcom/sonyericsson/cameraextension/CameraExtension$SceneRecognitionResult;
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/controller/SceneRecognition;->updateNotification(Lcom/sonyericsson/cameraextension/CameraExtension$SceneRecognitionResult;)V

    .line 91
    return-void
.end method

.method private updateNotification(Lcom/sonyericsson/cameraextension/CameraExtension$SceneRecognitionResult;)V
    .locals 3
    .param p1, "result"    # Lcom/sonyericsson/cameraextension/CameraExtension$SceneRecognitionResult;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/SceneRecognition;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    iget-object v1, p1, Lcom/sonyericsson/cameraextension/CameraExtension$SceneRecognitionResult;->sceneMode:Lcom/sonyericsson/cameraextension/CameraExtension$SceneMode;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setNotificationScene(Lcom/sonyericsson/cameraextension/CameraExtension$SceneMode;)V

    .line 84
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/SceneRecognition;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    iget-object v1, p1, Lcom/sonyericsson/cameraextension/CameraExtension$SceneRecognitionResult;->deviceStabilityCondition:Lcom/sonyericsson/cameraextension/CameraExtension$DeviceStabilityCondition;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setNotificationCondition(Lcom/sonyericsson/cameraextension/CameraExtension$DeviceStabilityCondition;)V

    .line 85
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/SceneRecognition;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    iget-boolean v1, p1, Lcom/sonyericsson/cameraextension/CameraExtension$SceneRecognitionResult;->isMacroRange:Z

    iget-object v2, p1, Lcom/sonyericsson/cameraextension/CameraExtension$SceneRecognitionResult;->sceneMode:Lcom/sonyericsson/cameraextension/CameraExtension$SceneMode;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setNotificationMacro(ZLcom/sonyericsson/cameraextension/CameraExtension$SceneMode;)V

    .line 86
    return-void
.end method


# virtual methods
.method public isSceneRecognition()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/SceneRecognition;->mIsSceneRecognition:Z

    return v0
.end method

.method public onRecognizedSceneChanged(Lcom/sonyericsson/cameraextension/CameraExtension$SceneRecognitionResult;)V
    .locals 1
    .param p1, "result"    # Lcom/sonyericsson/cameraextension/CameraExtension$SceneRecognitionResult;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/SceneRecognition;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->isSceneRecognitionRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/SceneRecognition;->updateNotification(Lcom/sonyericsson/cameraextension/CameraExtension$SceneRecognitionResult;)V

    .line 72
    :cond_0
    return-void
.end method

.method public onSceneModeChanged(Lcom/sonyericsson/cameraextension/CameraExtension$SceneRecognitionResult;)V
    .locals 2
    .param p1, "result"    # Lcom/sonyericsson/cameraextension/CameraExtension$SceneRecognitionResult;

    .prologue
    .line 18
    if-nez p1, :cond_0

    .line 24
    :goto_0
    return-void

    .line 23
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_SCENE_CHANGED:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/controller/Executor;->postEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/SceneRecognition;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setSceneRecognitionCallback(Lcom/sonyericsson/cameraextension/CameraExtension$SceneRecognitionCallback;)V

    .line 60
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/SceneRecognition;->hideNotification()V

    .line 61
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/SceneRecognition;->mIsSceneRecognition:Z

    if-nez v0, :cond_0

    .line 46
    :goto_0
    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/SceneRecognition;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setSceneRecognitionCallback(Lcom/sonyericsson/cameraextension/CameraExtension$SceneRecognitionCallback;)V

    .line 45
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/SceneRecognition;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->startSceneRecognition()V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/SceneRecognition;->hideNotification()V

    .line 52
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/SceneRecognition;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->stopSceneRecognition()V

    .line 53
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_SCENE_CHANGED:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->cancelEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;)V

    .line 54
    return-void
.end method

.method public update(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .locals 1
    .param p1, "mode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .prologue
    .line 75
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->isSceneRecognitionRequired(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/SceneRecognition;->mIsSceneRecognition:Z

    .line 76
    return-void
.end method
