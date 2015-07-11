.class public Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;
.super Ljava/lang/Object;
.source "PreviewFrameGrabber.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber$UiThreadCaptureCallbackTask;,
        Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber$ConvertYuvToJpegAndCallbackTask;,
        Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber$OnPreviewFrameCallback;,
        Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber$OnPreviewFrameGrabbedListener;
    }
.end annotation


# instance fields
.field private mExecService:Ljava/util/concurrent/ExecutorService;

.field private mFrameHeight:I

.field private mFrameWidth:I

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber$OnPreviewFrameGrabbedListener;

.field private mPreviewFormat:I

.field private mSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)V
    .locals 1
    .param p1, "request"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;->mPreviewFormat:I

    .line 32
    iput v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;->mFrameWidth:I

    .line 33
    iput v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;->mFrameHeight:I

    .line 39
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;->mExecService:Ljava/util/concurrent/ExecutorService;

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;->mHandler:Landroid/os/Handler;

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;->mListener:Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber$OnPreviewFrameGrabbedListener;

    .line 46
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;->mSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;)Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber$OnPreviewFrameGrabbedListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;->mListener:Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber$OnPreviewFrameGrabbedListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;->mExecService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;
    .param p1, "x1"    # [B

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;->callbackCaptureToUiThread([B)V

    return-void
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;

    .prologue
    .line 29
    iget v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;->mPreviewFormat:I

    return v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;

    .prologue
    .line 29
    iget v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;->mFrameWidth:I

    return v0
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;

    .prologue
    .line 29
    iget v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;->mFrameHeight:I

    return v0
.end method

.method static synthetic access$600(Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;->mSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    return-object v0
.end method

.method private callbackCaptureToUiThread([B)V
    .locals 2
    .param p1, "jpegData"    # [B

    .prologue
    .line 199
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber$UiThreadCaptureCallbackTask;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber$UiThreadCaptureCallbackTask;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;[B)V

    .line 202
    .local v0, "task":Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber$UiThreadCaptureCallbackTask;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 203
    return-void
.end method


# virtual methods
.method public release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;->mListener:Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber$OnPreviewFrameGrabbedListener;

    .line 51
    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;->mSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    .line 52
    return-void
.end method

.method public requestFrame(Landroid/hardware/Camera;)V
    .locals 3
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 67
    if-nez p1, :cond_0

    .line 68
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Handed camera object is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 72
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 73
    .local v0, "params":Landroid/hardware/Camera$Parameters;
    if-nez v0, :cond_1

    .line 74
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Camera.getParameters() return NULL"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 76
    :cond_1
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    if-nez v1, :cond_2

    .line 77
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Camera.Parameters.getPreviewSize() return NULL"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 81
    :cond_2
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;->mPreviewFormat:I

    .line 82
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    iget v1, v1, Landroid/hardware/Camera$Size;->width:I

    iput v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;->mFrameWidth:I

    .line 83
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    iput v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;->mFrameHeight:I

    .line 86
    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber$OnPreviewFrameCallback;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber$OnPreviewFrameCallback;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;)V

    invoke-virtual {p1, v1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 87
    return-void
.end method

.method public setOnPreviewFrameGrabbedListener(Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber$OnPreviewFrameGrabbedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber$OnPreviewFrameGrabbedListener;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber;->mListener:Lcom/sonyericsson/android/camera/fastcapturing/PreviewFrameGrabber$OnPreviewFrameGrabbedListener;

    .line 64
    return-void
.end method
