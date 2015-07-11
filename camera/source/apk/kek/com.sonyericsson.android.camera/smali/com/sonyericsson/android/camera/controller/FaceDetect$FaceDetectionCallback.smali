.class Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetectionCallback;
.super Ljava/lang/Object;
.source "FaceDetect.java"

# interfaces
.implements Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/FaceDetect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FaceDetectionCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/FaceDetect;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/FaceDetect;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetectionCallback;->this$0:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/FaceDetect;Lcom/sonyericsson/android/camera/controller/FaceDetect$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/controller/FaceDetect;
    .param p2, "x1"    # Lcom/sonyericsson/android/camera/controller/FaceDetect$1;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetectionCallback;-><init>(Lcom/sonyericsson/android/camera/controller/FaceDetect;)V

    return-void
.end method


# virtual methods
.method public onFaceDetection(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;)V
    .locals 6
    .param p1, "result"    # Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 42
    if-nez p1, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetectionCallback;->this$0:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    # getter for: Lcom/sonyericsson/android/camera/controller/FaceDetect;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;
    invoke-static {v2}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->access$000(Lcom/sonyericsson/android/camera/controller/FaceDetect;)Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->getTimeMillisForLastPictureTaken()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 55
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetectionCallback;->this$0:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    # invokes: Lcom/sonyericsson/android/camera/controller/FaceDetect;->getFaceDetectionResultCache()Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->access$100(Lcom/sonyericsson/android/camera/controller/FaceDetect;)Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetectionCallback;->this$0:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    # invokes: Lcom/sonyericsson/android/camera/controller/FaceDetect;->setFaceDetectionResultCache(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;)V
    invoke-static {v0, v5}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->access$200(Lcom/sonyericsson/android/camera/controller/FaceDetect;Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;)V

    .line 57
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetectionCallback;->this$0:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    # getter for: Lcom/sonyericsson/android/camera/controller/FaceDetect;->mIsSmileCaptureOn:Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->access$300(Lcom/sonyericsson/android/camera/controller/FaceDetect;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_FACE_DETECT:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    invoke-static {v0, v4, v5}, Lcom/sonyericsson/android/camera/controller/Executor;->postEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;ILjava/lang/Object;)V

    goto :goto_0

    .line 64
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetectionCallback;->this$0:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    # getter for: Lcom/sonyericsson/android/camera/controller/FaceDetect;->mIsFaceDetectionIdSupported:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->access$400(Lcom/sonyericsson/android/camera/controller/FaceDetect;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_4

    .line 65
    iget-object v0, p1, Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;->extFaceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 67
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetectionCallback;->this$0:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    invoke-static {p1}, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil;->hasValidFaceId(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;)Ljava/lang/Boolean;

    move-result-object v1

    # setter for: Lcom/sonyericsson/android/camera/controller/FaceDetect;->mIsFaceDetectionIdSupported:Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->access$402(Lcom/sonyericsson/android/camera/controller/FaceDetect;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 77
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetectionCallback;->this$0:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    # invokes: Lcom/sonyericsson/android/camera/controller/FaceDetect;->setFaceDetectionResultCache(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;)V
    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->access$200(Lcom/sonyericsson/android/camera/controller/FaceDetect;Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;)V

    .line 80
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_FACE_DETECT:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    invoke-static {v0, v4, p1}, Lcom/sonyericsson/android/camera/controller/Executor;->postEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;ILjava/lang/Object;)V

    goto :goto_0

    .line 70
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetectionCallback;->this$0:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    # getter for: Lcom/sonyericsson/android/camera/controller/FaceDetect;->mIsFaceDetectionIdSupported:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->access$400(Lcom/sonyericsson/android/camera/controller/FaceDetect;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 72
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil;->setUuidFaceDetectionResult(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;)Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;

    goto :goto_1
.end method
