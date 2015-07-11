.class Lcom/sonyericsson/android/camera/CameraActivity$WearableBridgePhotoEventObserver;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$PhotoEventObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WearableBridgePhotoEventObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/CameraActivity;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;)V
    .locals 0

    .prologue
    .line 1886
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$WearableBridgePhotoEventObserver;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/CameraActivity;
    .param p2, "x1"    # Lcom/sonyericsson/android/camera/CameraActivity$1;

    .prologue
    .line 1886
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraActivity$WearableBridgePhotoEventObserver;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;)V

    return-void
.end method


# virtual methods
.method public onPhotoCaptureRequested()V
    .locals 10

    .prologue
    .line 1889
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/Executor;->canHandleCaptureRequest()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1892
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1899
    .local v8, "actionDownEvent":Landroid/view/MotionEvent;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v9

    .line 1906
    .local v9, "actionUpEvent":Landroid/view/MotionEvent;
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$WearableBridgePhotoEventObserver;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera/ControllerManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v8}, Lcom/sonyericsson/android/camera/ControllerManager;->onCaptureButtonEvent(ILandroid/view/MotionEvent;)Z

    .line 1908
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$WearableBridgePhotoEventObserver;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera/ControllerManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v9}, Lcom/sonyericsson/android/camera/ControllerManager;->onCaptureButtonEvent(ILandroid/view/MotionEvent;)Z

    .line 1910
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 1911
    invoke-virtual {v9}, Landroid/view/MotionEvent;->recycle()V

    .line 1918
    .end local v8    # "actionDownEvent":Landroid/view/MotionEvent;
    .end local v9    # "actionUpEvent":Landroid/view/MotionEvent;
    :cond_0
    :goto_0
    return-void

    .line 1914
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$WearableBridgePhotoEventObserver;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getWearableBridge()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1915
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$WearableBridgePhotoEventObserver;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getWearableBridge()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->getPhotoStateNotifier()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$PhotoStateNotifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$PhotoStateNotifier;->onCaptureFailed()V

    goto :goto_0
.end method
