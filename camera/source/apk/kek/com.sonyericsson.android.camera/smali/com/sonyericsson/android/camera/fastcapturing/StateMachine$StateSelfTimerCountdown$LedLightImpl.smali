.class Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown$LedLightImpl;
.super Ljava/lang/Object;
.source "StateMachine.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/selftimerfeedback/LedLight;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LedLightImpl"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown;)V
    .locals 0

    .prologue
    .line 1794
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown$LedLightImpl;->this$1:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown;
    .param p2, "x1"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$1;

    .prologue
    .line 1794
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown$LedLightImpl;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown;)V

    return-void
.end method


# virtual methods
.method public turnOff()V
    .locals 2

    .prologue
    .line 1803
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown$LedLightImpl;->this$1:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->setTorch(Z)V

    .line 1804
    return-void
.end method

.method public turnOn()V
    .locals 2

    .prologue
    .line 1798
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown$LedLightImpl;->this$1:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->setTorch(Z)V

    .line 1799
    return-void
.end method
