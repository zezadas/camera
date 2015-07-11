.class Lcom/sonyericsson/android/camera/controller/FaceDetect$MyOnPreviewFrameAvarableListener;
.super Ljava/lang/Object;
.source "FaceDetect.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$OnPreviewFrameAvarableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/FaceDetect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOnPreviewFrameAvarableListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/FaceDetect;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/FaceDetect;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect$MyOnPreviewFrameAvarableListener;->this$0:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/FaceDetect;Lcom/sonyericsson/android/camera/controller/FaceDetect$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/controller/FaceDetect;
    .param p2, "x1"    # Lcom/sonyericsson/android/camera/controller/FaceDetect$1;

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/FaceDetect$MyOnPreviewFrameAvarableListener;-><init>(Lcom/sonyericsson/android/camera/controller/FaceDetect;)V

    return-void
.end method


# virtual methods
.method public onPreviewFrameAvarable(Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;[B)V
    .locals 11
    .param p1, "sender"    # Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;
    .param p2, "yuvData"    # [B

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 113
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect$MyOnPreviewFrameAvarableListener;->this$0:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    # getter for: Lcom/sonyericsson/android/camera/controller/FaceDetect;->mFaceIdentification:Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->access$500(Lcom/sonyericsson/android/camera/controller/FaceDetect;)Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification;

    move-result-object v0

    if-nez v0, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;->getPreviewInfo()Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$PreviewInfo;

    move-result-object v9

    .line 120
    .local v9, "info":Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$PreviewInfo;
    if-eqz p2, :cond_2

    if-nez v9, :cond_5

    .line 121
    :cond_2
    # getter for: Lcom/sonyericsson/android/camera/controller/FaceDetect;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v3, "onPreviewFrame: data or info is null."

    invoke-static {v0, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    # getter for: Lcom/sonyericsson/android/camera/controller/FaceDetect;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->access$600()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data is null = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p2, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "info is null = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez v9, :cond_4

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2

    .line 128
    :cond_5
    iget v0, v9, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$PreviewInfo;->width:I

    if-eqz v0, :cond_0

    iget v0, v9, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$PreviewInfo;->height:I

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect$MyOnPreviewFrameAvarableListener;->this$0:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    # invokes: Lcom/sonyericsson/android/camera/controller/FaceDetect;->getFaceDetectionResultCache()Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->access$100(Lcom/sonyericsson/android/camera/controller/FaceDetect;)Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;

    move-result-object v10

    .line 134
    .local v10, "resultCache":Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;
    if-eqz v10, :cond_0

    .line 135
    invoke-static {v10}, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil;->createFaceIdentificationRequest(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;)Ljava/util/List;

    move-result-object v6

    .line 139
    .local v6, "requestList":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationRequest;>;"
    if-eqz v6, :cond_0

    .line 140
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect$MyOnPreviewFrameAvarableListener;->this$0:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    # getter for: Lcom/sonyericsson/android/camera/controller/FaceDetect;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->access$000(Lcom/sonyericsson/android/camera/controller/FaceDetect;)Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mControllerManager:Lcom/sonyericsson/android/camera/ControllerManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/ControllerManager;->getCameraId()I

    move-result v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getCameraInfo(I)Landroid/hardware/Camera$CameraInfo;

    move-result-object v8

    .line 142
    .local v8, "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    if-eqz v8, :cond_0

    .line 143
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect$MyOnPreviewFrameAvarableListener;->this$0:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    # getter for: Lcom/sonyericsson/android/camera/controller/FaceDetect;->mFaceIdentification:Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->access$500(Lcom/sonyericsson/android/camera/controller/FaceDetect;)Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification;

    move-result-object v0

    iget v2, v9, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$PreviewInfo;->format:I

    iget v3, v9, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$PreviewInfo;->width:I

    iget v4, v9, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$PreviewInfo;->height:I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect$MyOnPreviewFrameAvarableListener;->this$0:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    # getter for: Lcom/sonyericsson/android/camera/controller/FaceDetect;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->access$000(Lcom/sonyericsson/android/camera/controller/FaceDetect;)Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->getOrientation()I

    move-result v5

    new-instance v7, Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceIdentificationCallback;

    const/4 v1, 0x0

    invoke-direct {v7, v1}, Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceIdentificationCallback;-><init>(Lcom/sonyericsson/android/camera/controller/FaceDetect$1;)V

    move-object v1, p2

    invoke-interface/range {v0 .. v7}, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification;->request([BIIIILjava/util/List;Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationCallback;)V

    goto/16 :goto_0
.end method
