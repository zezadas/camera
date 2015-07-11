.class Lcom/sonyericsson/android/camera/controller/FaceDetect$Unknown;
.super Ljava/lang/Object;
.source "FaceDetect.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetectionState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/FaceDetect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Unknown"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/FaceDetect;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/FaceDetect;)V
    .locals 0

    .prologue
    .line 402
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect$Unknown;->this$0:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/FaceDetect;Lcom/sonyericsson/android/camera/controller/FaceDetect$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/controller/FaceDetect;
    .param p2, "x1"    # Lcom/sonyericsson/android/camera/controller/FaceDetect$1;

    .prologue
    .line 402
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/FaceDetect$Unknown;-><init>(Lcom/sonyericsson/android/camera/controller/FaceDetect;)V

    return-void
.end method


# virtual methods
.method public changeFocusedFace(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "viewRect"    # Landroid/graphics/Rect;

    .prologue
    .line 437
    return-void
.end method

.method public isFaceDetectionAvailable()Z
    .locals 1

    .prologue
    .line 406
    const/4 v0, 0x0

    return v0
.end method

.method public onFaceDetected(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;)V
    .locals 0
    .param p1, "result"    # Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;

    .prologue
    .line 427
    return-void
.end method

.method public onFaceIdentified(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 422
    .local p1, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationResult;>;"
    return-void
.end method

.method public onFaceLost()V
    .locals 0

    .prologue
    .line 432
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 412
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 417
    return-void
.end method
