.class public Lcom/sonyericsson/android/camera/controller/TouchFocus;
.super Ljava/lang/Object;
.source "TouchFocus.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

.field private mLastPosition:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/sonyericsson/android/camera/controller/TouchFocus;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/controller/TouchFocus;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/android/camera/controller/CameraFunctions;)V
    .locals 1
    .param p1, "controller"    # Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/TouchFocus;->mLastPosition:Landroid/graphics/Rect;

    .line 15
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/TouchFocus;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    .line 16
    return-void
.end method

.method private setFocusPosition(Landroid/graphics/Rect;Z)V
    .locals 2
    .param p1, "viewRect"    # Landroid/graphics/Rect;
    .param p2, "commit"    # Z

    .prologue
    .line 126
    if-nez p1, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/TouchFocus;->setLastPosition(Landroid/graphics/Rect;)V

    .line 133
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/TouchFocus;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->updateTouchRectangle(Landroid/graphics/Rect;)V

    .line 136
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->convertToDevice(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 139
    .local v0, "deviceRect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/TouchFocus;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setFocusRect(Landroid/graphics/Rect;)V

    .line 140
    if-eqz p2, :cond_0

    .line 141
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/TouchFocus;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->commitParameters()V

    goto :goto_0
.end method

.method private setLastPosition(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "viewRect"    # Landroid/graphics/Rect;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/TouchFocus;->mLastPosition:Landroid/graphics/Rect;

    .line 33
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/TouchFocus;->setFocusPosition(Landroid/graphics/Rect;Z)V

    .line 38
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/TouchFocus;->hideTouchFocusRectangle()V

    .line 39
    return-void
.end method

.method public finish(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "viewRect"    # Landroid/graphics/Rect;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/TouchFocus;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mEventDispatcher:Lcom/sonyericsson/android/camera/controller/EventDispatcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->updateTouchFocusStatus(Z)V

    .line 81
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/TouchFocus;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->startTouchUpAnimation(Landroid/graphics/Rect;)V

    .line 84
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/TouchFocus;->setFocusPosition(Landroid/graphics/Rect;Z)V

    .line 85
    return-void
.end method

.method public getLastPosition()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/TouchFocus;->mLastPosition:Landroid/graphics/Rect;

    return-object v0
.end method

.method public hideTouchFocusRectangle()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/TouchFocus;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mEventDispatcher:Lcom/sonyericsson/android/camera/controller/EventDispatcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->updateTouchFocusStatus(Z)V

    .line 122
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/TouchFocus;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->clearTouchRectangle()V

    .line 123
    return-void
.end method

.method public setFocusPosition(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "viewRect"    # Landroid/graphics/Rect;

    .prologue
    .line 107
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/TouchFocus;->setFocusPosition(Landroid/graphics/Rect;Z)V

    .line 108
    return-void
.end method

.method public singleTapUp(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "viewRect"    # Landroid/graphics/Rect;

    .prologue
    .line 90
    if-nez p1, :cond_0

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/TouchFocus;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->startTouchDownAnimation(Landroid/graphics/Rect;)V

    .line 95
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/TouchFocus;->setFocusPosition(Landroid/graphics/Rect;Z)V

    goto :goto_0
.end method

.method public start(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "viewRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x1

    .line 52
    if-nez p1, :cond_0

    .line 66
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/TouchFocus;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->hideBalloonTips()V

    .line 60
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/TouchFocus;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->startTouchDownAnimation(Landroid/graphics/Rect;)V

    .line 63
    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/controller/TouchFocus;->setFocusPosition(Landroid/graphics/Rect;Z)V

    .line 65
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/TouchFocus;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mEventDispatcher:Lcom/sonyericsson/android/camera/controller/EventDispatcher;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->updateTouchFocusStatus(Z)V

    goto :goto_0
.end method

.method public updateTouchFocusRectangle(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "viewRect"    # Landroid/graphics/Rect;

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/TouchFocus;->setLastPosition(Landroid/graphics/Rect;)V

    .line 114
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/TouchFocus;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->updateTouchRectangle(Landroid/graphics/Rect;)V

    .line 115
    return-void
.end method
