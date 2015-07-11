.class Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnFaceDetectionCallback;
.super Ljava/lang/Object;
.source "CameraDeviceHandler.java"

# interfaces
.implements Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnFaceDetectionCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)V
    .locals 0

    .prologue
    .line 2906
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnFaceDetectionCallback;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFaceDetection(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;)V
    .locals 1
    .param p1, "faceDetectionResult"    # Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;

    .prologue
    .line 2914
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnFaceDetectionCallback;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->access$2900(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 2921
    :cond_0
    :goto_0
    return-void

    .line 2919
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnFaceDetectionCallback;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->access$2900(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->onFaceDetected(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;)V

    goto :goto_0
.end method
