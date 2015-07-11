.class public Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnZoomChangedCallback;
.super Ljava/lang/Object;
.source "CameraDeviceHandler.java"

# interfaces
.implements Landroid/hardware/Camera$OnZoomChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnZoomChangedCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)V
    .locals 0

    .prologue
    .line 2958
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnZoomChangedCallback;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onZoomChange(IZLandroid/hardware/Camera;)V
    .locals 2
    .param p1, "zoomValue"    # I
    .param p2, "stopped"    # Z
    .param p3, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 2965
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnZoomChangedCallback;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getLatestCachedParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 2966
    .local v0, "params":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 2968
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnZoomChangedCallback;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->access$2900(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2969
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnZoomChangedCallback;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->access$2900(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->onZoomChange(IZLandroid/hardware/Camera;)V

    .line 2971
    :cond_0
    return-void
.end method
