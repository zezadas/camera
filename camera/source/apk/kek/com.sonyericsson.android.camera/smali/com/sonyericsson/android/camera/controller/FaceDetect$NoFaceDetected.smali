.class Lcom/sonyericsson/android/camera/controller/FaceDetect$NoFaceDetected;
.super Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetectionAvailable;
.source "FaceDetect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/FaceDetect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NoFaceDetected"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/FaceDetect;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/FaceDetect;)V
    .locals 1

    .prologue
    .line 537
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect$NoFaceDetected;->this$0:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetectionAvailable;-><init>(Lcom/sonyericsson/android/camera/controller/FaceDetect;Lcom/sonyericsson/android/camera/controller/FaceDetect$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/FaceDetect;Lcom/sonyericsson/android/camera/controller/FaceDetect$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/controller/FaceDetect;
    .param p2, "x1"    # Lcom/sonyericsson/android/camera/controller/FaceDetect$1;

    .prologue
    .line 537
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/FaceDetect$NoFaceDetected;-><init>(Lcom/sonyericsson/android/camera/controller/FaceDetect;)V

    return-void
.end method


# virtual methods
.method public onFaceDetected(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;)V
    .locals 3
    .param p1, "result"    # Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;

    .prologue
    .line 541
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect$NoFaceDetected;->this$0:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetected;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect$NoFaceDetected;->this$0:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    invoke-direct {v1, v2, p1}, Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetected;-><init>(Lcom/sonyericsson/android/camera/controller/FaceDetect;Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;)V

    # invokes: Lcom/sonyericsson/android/camera/controller/FaceDetect;->setState(Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetectionState;)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->access$1600(Lcom/sonyericsson/android/camera/controller/FaceDetect;Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetectionState;)V

    .line 542
    return-void
.end method

.method public onFaceLost()V
    .locals 0

    .prologue
    .line 547
    return-void
.end method
