.class Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber$OnPreviewFrameCallback;
.super Ljava/lang/Object;
.source "PreviewFrameGrabber.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnPreviewFrameCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber$OnPreviewFrameCallback;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 2
    .param p1, "yuvData"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 97
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber$OnPreviewFrameCallback;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;->mListener:Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber$OnPreviewFrameGrabbedListener;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;->access$000(Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;)Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber$OnPreviewFrameGrabbedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber$OnPreviewFrameCallback;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;->mListener:Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber$OnPreviewFrameGrabbedListener;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;->access$000(Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;)Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber$OnPreviewFrameGrabbedListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber$OnPreviewFrameGrabbedListener;->onPreviewShutterDone()V

    .line 102
    :cond_0
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber$ConvertYuvToJpegAndCallbackTask;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber$OnPreviewFrameCallback;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;

    invoke-direct {v0, v1, p1}, Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber$ConvertYuvToJpegAndCallbackTask;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;[B)V

    .line 105
    .local v0, "task":Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber$ConvertYuvToJpegAndCallbackTask;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber$OnPreviewFrameCallback;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;->mExecService:Ljava/util/concurrent/ExecutorService;
    invoke-static {v1}, Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;->access$100(Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 106
    return-void
.end method
