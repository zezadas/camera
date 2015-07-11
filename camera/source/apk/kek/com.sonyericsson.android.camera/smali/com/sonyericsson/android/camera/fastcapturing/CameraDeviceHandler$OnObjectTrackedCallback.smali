.class Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnObjectTrackedCallback;
.super Ljava/lang/Object;
.source "CameraDeviceHandler.java"

# interfaces
.implements Lcom/sonyericsson/cameraextension/CameraExtension$ObjectTrackingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnObjectTrackedCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)V
    .locals 0

    .prologue
    .line 2942
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnObjectTrackedCallback;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onObjectTracked(Lcom/sonyericsson/cameraextension/CameraExtension$ObjectTrackingResult;)V
    .locals 1
    .param p1, "objectTrackingResult"    # Lcom/sonyericsson/cameraextension/CameraExtension$ObjectTrackingResult;

    .prologue
    .line 2950
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnObjectTrackedCallback;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->access$2900(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 2955
    :cond_0
    :goto_0
    return-void

    .line 2954
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnObjectTrackedCallback;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->access$2900(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->onObjectTracked(Lcom/sonyericsson/cameraextension/CameraExtension$ObjectTrackingResult;)V

    goto :goto_0
.end method
