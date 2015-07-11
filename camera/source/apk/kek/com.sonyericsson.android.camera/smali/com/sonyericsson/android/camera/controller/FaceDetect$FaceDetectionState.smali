.class interface abstract Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetectionState;
.super Ljava/lang/Object;
.source "FaceDetect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/FaceDetect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "FaceDetectionState"
.end annotation


# virtual methods
.method public abstract changeFocusedFace(Landroid/graphics/Rect;)V
.end method

.method public abstract isFaceDetectionAvailable()Z
.end method

.method public abstract onFaceDetected(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;)V
.end method

.method public abstract onFaceIdentified(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationResult;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onFaceLost()V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
