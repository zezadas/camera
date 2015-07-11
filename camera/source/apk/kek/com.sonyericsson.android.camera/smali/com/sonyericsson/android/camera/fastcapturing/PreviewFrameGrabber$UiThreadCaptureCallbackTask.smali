.class Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber$UiThreadCaptureCallbackTask;
.super Ljava/lang/Object;
.source "PreviewFrameGrabber.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UiThreadCaptureCallbackTask"
.end annotation


# instance fields
.field private final mJpegData:[B

.field final synthetic this$0:Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;[B)V
    .locals 0
    .param p2, "jpegData"    # [B

    .prologue
    .line 209
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber$UiThreadCaptureCallbackTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    iput-object p2, p0, Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber$UiThreadCaptureCallbackTask;->mJpegData:[B

    .line 211
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 215
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber$UiThreadCaptureCallbackTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;->mListener:Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber$OnPreviewFrameGrabbedListener;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;->access$000(Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;)Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber$OnPreviewFrameGrabbedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber$UiThreadCaptureCallbackTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;

    # getter for: Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;->mListener:Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber$OnPreviewFrameGrabbedListener;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;->access$000(Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;)Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber$OnPreviewFrameGrabbedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber$UiThreadCaptureCallbackTask;->this$0:Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber$UiThreadCaptureCallbackTask;->mJpegData:[B

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber$OnPreviewFrameGrabbedListener;->onPreviewFrameGrabbed(Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;[B)V

    .line 218
    :cond_0
    return-void
.end method
