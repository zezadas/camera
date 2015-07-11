.class Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnPreAutoFocusCallback;
.super Ljava/lang/Object;
.source "CameraDeviceHandler.java"

# interfaces
.implements Lcom/sonyericsson/cameraextension/CameraExtension$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnPreAutoFocusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)V
    .locals 0

    .prologue
    .line 1792
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnPreAutoFocusCallback;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(Lcom/sonyericsson/cameraextension/CameraExtension$AutoFocusResult;)V
    .locals 2
    .param p1, "result"    # Lcom/sonyericsson/cameraextension/CameraExtension$AutoFocusResult;

    .prologue
    .line 1800
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnPreAutoFocusCallback;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    const/4 v1, 0x0

    # setter for: Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mOnPreAutoFocusCallback:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnPreAutoFocusCallback;
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->access$2602(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnPreAutoFocusCallback;)Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnPreAutoFocusCallback;

    .line 1803
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnPreAutoFocusCallback;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;->PRE_SCAN_DONE:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->changePreProcessStateTo(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;)V
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->access$2700(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;)V

    .line 1804
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnPreAutoFocusCallback;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {p1}, Lcom/sonyericsson/cameraextension/CameraExtension$AutoFocusResult;->isFocused()Z

    move-result v1

    # setter for: Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mIsPreScanSucceeded:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->access$2802(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;Z)Z

    .line 1807
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnPreAutoFocusCallback;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->access$2900(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1812
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnPreAutoFocusCallback;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mIsPreScanSucceeded:Z
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->access$2800(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1813
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnPreAutoFocusCallback;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->resetShutterSound()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->access$3000(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)V

    .line 1816
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnPreAutoFocusCallback;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->access$2900(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonyericsson/cameraextension/CameraExtension$AutoFocusResult;->isFocused()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->onInitialAutoFocusDone(Z)V

    .line 1825
    :cond_1
    return-void
.end method
