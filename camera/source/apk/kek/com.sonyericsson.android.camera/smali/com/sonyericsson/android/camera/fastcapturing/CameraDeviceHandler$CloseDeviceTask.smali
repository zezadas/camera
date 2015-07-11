.class Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$CloseDeviceTask;
.super Ljava/lang/Object;
.source "CameraDeviceHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CloseDeviceTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)V
    .locals 0

    .prologue
    .line 4111
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$CloseDeviceTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;
    .param p2, "x1"    # Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$1;

    .prologue
    .line 4111
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$CloseDeviceTask;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 4115
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$CloseDeviceTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->awaitFinishingRecording()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->access$3800(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)V

    .line 4117
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$CloseDeviceTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->restoreSettingAfterRecording()V

    .line 4118
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$CloseDeviceTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    # invokes: Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->releaseCamera()V
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->access$3900(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)V

    .line 4120
    return-void
.end method
