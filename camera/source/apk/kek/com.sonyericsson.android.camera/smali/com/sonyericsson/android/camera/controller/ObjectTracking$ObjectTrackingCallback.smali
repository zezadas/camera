.class Lcom/sonyericsson/android/camera/controller/ObjectTracking$ObjectTrackingCallback;
.super Ljava/lang/Object;
.source "ObjectTracking.java"

# interfaces
.implements Lcom/sonyericsson/cameraextension/CameraExtension$ObjectTrackingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/ObjectTracking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ObjectTrackingCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/ObjectTracking;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/ObjectTracking;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/ObjectTracking$ObjectTrackingCallback;->this$0:Lcom/sonyericsson/android/camera/controller/ObjectTracking;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/ObjectTracking;Lcom/sonyericsson/android/camera/controller/ObjectTracking$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/controller/ObjectTracking;
    .param p2, "x1"    # Lcom/sonyericsson/android/camera/controller/ObjectTracking$1;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/ObjectTracking$ObjectTrackingCallback;-><init>(Lcom/sonyericsson/android/camera/controller/ObjectTracking;)V

    return-void
.end method


# virtual methods
.method public onObjectTracked(Lcom/sonyericsson/cameraextension/CameraExtension$ObjectTrackingResult;)V
    .locals 3
    .param p1, "result"    # Lcom/sonyericsson/cameraextension/CameraExtension$ObjectTrackingResult;

    .prologue
    const/4 v2, 0x0

    .line 27
    if-nez p1, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTracking$ObjectTrackingCallback;->this$0:Lcom/sonyericsson/android/camera/controller/ObjectTracking;

    # getter for: Lcom/sonyericsson/android/camera/controller/ObjectTracking;->mShouldWaitForLost:Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/ObjectTracking;->access$000(Lcom/sonyericsson/android/camera/controller/ObjectTracking;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 37
    iget-boolean v0, p1, Lcom/sonyericsson/cameraextension/CameraExtension$ObjectTrackingResult;->mIsLost:Z

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTracking$ObjectTrackingCallback;->this$0:Lcom/sonyericsson/android/camera/controller/ObjectTracking;

    # getter for: Lcom/sonyericsson/android/camera/controller/ObjectTracking;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/ObjectTracking;->access$100(Lcom/sonyericsson/android/camera/controller/ObjectTracking;)Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->stopObjectTrackingCallback()V

    .line 45
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTracking$ObjectTrackingCallback;->this$0:Lcom/sonyericsson/android/camera/controller/ObjectTracking;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/ObjectTracking$ObjectTrackingCallback;->this$0:Lcom/sonyericsson/android/camera/controller/ObjectTracking;

    # getter for: Lcom/sonyericsson/android/camera/controller/ObjectTracking;->mPosition:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/ObjectTracking;->access$200(Lcom/sonyericsson/android/camera/controller/ObjectTracking;)Landroid/graphics/Rect;

    move-result-object v1

    # invokes: Lcom/sonyericsson/android/camera/controller/ObjectTracking;->startTracking(Landroid/graphics/Rect;)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/ObjectTracking;->access$300(Lcom/sonyericsson/android/camera/controller/ObjectTracking;Landroid/graphics/Rect;)V

    .line 46
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTracking$ObjectTrackingCallback;->this$0:Lcom/sonyericsson/android/camera/controller/ObjectTracking;

    # setter for: Lcom/sonyericsson/android/camera/controller/ObjectTracking;->mShouldWaitForLost:Z
    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/controller/ObjectTracking;->access$002(Lcom/sonyericsson/android/camera/controller/ObjectTracking;Z)Z

    .line 51
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTracking$ObjectTrackingCallback;->this$0:Lcom/sonyericsson/android/camera/controller/ObjectTracking;

    # getter for: Lcom/sonyericsson/android/camera/controller/ObjectTracking;->mIsAlreadyLost:Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/ObjectTracking;->access$400(Lcom/sonyericsson/android/camera/controller/ObjectTracking;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Lcom/sonyericsson/cameraextension/CameraExtension$ObjectTrackingResult;->mIsLost:Z

    if-nez v0, :cond_0

    .line 56
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTracking$ObjectTrackingCallback;->this$0:Lcom/sonyericsson/android/camera/controller/ObjectTracking;

    iget-boolean v1, p1, Lcom/sonyericsson/cameraextension/CameraExtension$ObjectTrackingResult;->mIsLost:Z

    # setter for: Lcom/sonyericsson/android/camera/controller/ObjectTracking;->mIsAlreadyLost:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/ObjectTracking;->access$402(Lcom/sonyericsson/android/camera/controller/ObjectTracking;Z)Z

    .line 58
    iget-boolean v0, p1, Lcom/sonyericsson/cameraextension/CameraExtension$ObjectTrackingResult;->mIsLost:Z

    if-eqz v0, :cond_4

    .line 59
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTracking$ObjectTrackingCallback;->this$0:Lcom/sonyericsson/android/camera/controller/ObjectTracking;

    # getter for: Lcom/sonyericsson/android/camera/controller/ObjectTracking;->mHandler:Lcom/sonyericsson/android/camera/controller/ObjectTracking$ObjectTrackingHandler;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/ObjectTracking;->access$500(Lcom/sonyericsson/android/camera/controller/ObjectTracking;)Lcom/sonyericsson/android/camera/controller/ObjectTracking$ObjectTrackingHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/ObjectTracking$ObjectTrackingHandler;->startTimeoutCount()V

    goto :goto_0

    .line 61
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/ObjectTracking$ObjectTrackingCallback;->this$0:Lcom/sonyericsson/android/camera/controller/ObjectTracking;

    # getter for: Lcom/sonyericsson/android/camera/controller/ObjectTracking;->mHandler:Lcom/sonyericsson/android/camera/controller/ObjectTracking$ObjectTrackingHandler;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/ObjectTracking;->access$500(Lcom/sonyericsson/android/camera/controller/ObjectTracking;)Lcom/sonyericsson/android/camera/controller/ObjectTracking$ObjectTrackingHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/ObjectTracking$ObjectTrackingHandler;->stopTimeoutCount()V

    .line 62
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_OBJECT_TRACKING:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    iget-object v1, p1, Lcom/sonyericsson/cameraextension/CameraExtension$ObjectTrackingResult;->mRectOfTrackedObject:Landroid/graphics/Rect;

    invoke-static {v0, v2, v1}, Lcom/sonyericsson/android/camera/controller/Executor;->postEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;ILjava/lang/Object;)V

    goto :goto_0
.end method
