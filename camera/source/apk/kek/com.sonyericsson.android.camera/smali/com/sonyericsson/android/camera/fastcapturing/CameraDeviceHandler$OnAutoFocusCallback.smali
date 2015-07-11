.class Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnAutoFocusCallback;
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
    name = "OnAutoFocusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)V
    .locals 0

    .prologue
    .line 2655
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnAutoFocusCallback;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(Lcom/sonyericsson/cameraextension/CameraExtension$AutoFocusResult;)V
    .locals 2
    .param p1, "result"    # Lcom/sonyericsson/cameraextension/CameraExtension$AutoFocusResult;

    .prologue
    .line 2661
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnAutoFocusCallback;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->access$2900(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2662
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$OnAutoFocusCallback;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->access$2900(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonyericsson/cameraextension/CameraExtension$AutoFocusResult;->isFocused()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->onAutoFocusDone(Z)V

    .line 2664
    :cond_0
    return-void
.end method
