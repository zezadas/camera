.class public Lcom/sonyericsson/android/camera/controller/Shooting;
.super Ljava/lang/Object;
.source "Shooting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/controller/Shooting$1;,
        Lcom/sonyericsson/android/camera/controller/Shooting$TakePictureRequest;,
        Lcom/sonyericsson/android/camera/controller/Shooting$CaptureRequest;,
        Lcom/sonyericsson/android/camera/controller/Shooting$ShutterCallback;,
        Lcom/sonyericsson/android/camera/controller/Shooting$AutoFocusCallback;
    }
.end annotation


# static fields
.field private static final AF_AEAWBLOCK:[Z

.field private static final AF_ALLLOCK:[Z

.field private static final MAX_CAPTURE_REQUEST:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAfLock:[Z

.field private mAfSource:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

.field private mAfStarted:Z

.field private final mAutoFocusCallback:Lcom/sonyericsson/android/camera/device/AutoFocusListener;

.field private mCaptureRequestQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonyericsson/android/camera/controller/Shooting$CaptureRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

.field private mIsSuccessSound:Z

.field private mIsTakePictureRequested:Z

.field private mIsVideoSnapshotSupported:Z

.field private mTimeForLastPictureTaken:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 36
    const-class v0, Lcom/sonyericsson/android/camera/controller/Shooting;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/controller/Shooting;->TAG:Ljava/lang/String;

    .line 61
    new-array v0, v1, [Z

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sonyericsson/android/camera/controller/Shooting;->AF_ALLLOCK:[Z

    .line 63
    new-array v0, v1, [Z

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sonyericsson/android/camera/controller/Shooting;->AF_AEAWBLOCK:[Z

    return-void

    .line 61
    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
    .end array-data

    .line 63
    :array_1
    .array-data 1
        0x1t
        0x1t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/sonyericsson/android/camera/controller/CameraFunctions;)V
    .locals 2
    .param p1, "controller"    # Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sonyericsson/android/camera/controller/Shooting;->mTimeForLastPictureTaken:J

    .line 59
    new-instance v0, Lcom/sonyericsson/android/camera/controller/Shooting$AutoFocusCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/controller/Shooting$AutoFocusCallback;-><init>(Lcom/sonyericsson/android/camera/controller/Shooting$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/Shooting;->mAutoFocusCallback:Lcom/sonyericsson/android/camera/device/AutoFocusListener;

    .line 65
    sget-object v0, Lcom/sonyericsson/android/camera/controller/Shooting;->AF_ALLLOCK:[Z

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/Shooting;->mAfLock:[Z

    .line 219
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/Shooting;->mCaptureRequestQueue:Ljava/util/LinkedList;

    .line 33
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/Shooting;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    .line 34
    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/controller/Shooting;)Lcom/sonyericsson/android/camera/controller/CameraFunctions;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/controller/Shooting;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/Shooting;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sonyericsson/android/camera/controller/Shooting;J)J
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/controller/Shooting;
    .param p1, "x1"    # J

    .prologue
    .line 30
    iput-wide p1, p0, Lcom/sonyericsson/android/camera/controller/Shooting;->mTimeForLastPictureTaken:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/controller/Shooting;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/controller/Shooting;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/Shooting;->mCaptureRequestQueue:Ljava/util/LinkedList;

    return-object v0
.end method

.method private capture(ZZ)Z
    .locals 3
    .param p1, "firstCapture"    # Z
    .param p2, "isStorageAvailable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 296
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/Shooting;->mCaptureRequestQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 319
    :goto_0
    return v1

    .line 301
    :cond_0
    if-eqz p2, :cond_2

    .line 303
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/Shooting;->mCaptureRequestQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/controller/Shooting$CaptureRequest;

    .line 305
    .local v0, "request":Lcom/sonyericsson/android/camera/controller/Shooting$CaptureRequest;
    if-nez p1, :cond_1

    .line 307
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/Shooting;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->startPreview()V

    .line 311
    :cond_1
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/Shooting$CaptureRequest;->capture()V

    .line 313
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/Shooting;->sendGoogleAnalyticsEvents()V

    .line 315
    const/4 v1, 0x1

    goto :goto_0

    .line 318
    .end local v0    # "request":Lcom/sonyericsson/android/camera/controller/Shooting$CaptureRequest;
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/Shooting;->clearCaptureRequest()V

    goto :goto_0
.end method

.method private sendGoogleAnalyticsEvents()V
    .locals 2

    .prologue
    .line 327
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/Executor;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    .line 328
    invoke-static {}, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;->getInstance()Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;->sendEventSettings()V

    .line 329
    invoke-static {}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->getInstance()Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->SHOOTING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->setUserOperation(Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$UserOperation;)V

    .line 331
    :cond_0
    return-void
.end method


# virtual methods
.method public addCaptureRequest(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)V
    .locals 3
    .param p1, "request"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    .prologue
    .line 273
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/Shooting;->mIsTakePictureRequested:Z

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/Shooting;->mCaptureRequestQueue:Ljava/util/LinkedList;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/Shooting$TakePictureRequest;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1}, Lcom/sonyericsson/android/camera/controller/Shooting$TakePictureRequest;-><init>(Lcom/sonyericsson/android/camera/controller/Shooting;ZLcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 276
    :cond_0
    return-void
.end method

.method public canAcceptNextCaptureRequest()Z
    .locals 3

    .prologue
    .line 289
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/Shooting;->mCaptureRequestQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/controller/Shooting$CaptureRequest;

    .line 290
    .local v0, "request":Lcom/sonyericsson/android/camera/controller/Shooting$CaptureRequest;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/Shooting;->mCaptureRequestQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clearCaptureRequest()V
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/Shooting;->mCaptureRequestQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 282
    return-void
.end method

.method public getAfTrigger()Lcom/sonyericsson/android/camera/controller/ControllerEventSource;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/Shooting;->mAfSource:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    return-object v0
.end method

.method public getCaptureRequestQueueSize()I
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/Shooting;->mCaptureRequestQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public getTimeMillisForLastPictureTaken()J
    .locals 2

    .prologue
    .line 323
    iget-wide v0, p0, Lcom/sonyericsson/android/camera/controller/Shooting;->mTimeForLastPictureTaken:J

    return-wide v0
.end method

.method public onAutoFocus(ILcom/sonyericsson/android/camera/device/AutoFocusListener$Result;)V
    .locals 3
    .param p1, "resultCode"    # I
    .param p2, "result"    # Lcom/sonyericsson/android/camera/device/AutoFocusListener$Result;

    .prologue
    .line 111
    if-nez p1, :cond_2

    .line 113
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/Shooting;->mIsSuccessSound:Z

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/Shooting;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getShutterToneGenerator()Lcom/sonyericsson/android/camera/ShutterToneGenerator;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;->SOUND_AF_SUCCESS:Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/ShutterToneGenerator;->play(Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;)V

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/Shooting;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    sget-object v1, Lcom/sonyericsson/cameracommon/focusview/RectangleColor;->AF_SUCCESS:Lcom/sonyericsson/cameracommon/focusview/RectangleColor;

    invoke-virtual {v0, v1, p2}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setRectangleColor(Lcom/sonyericsson/cameracommon/focusview/RectangleColor;Lcom/sonyericsson/android/camera/device/AutoFocusListener$Result;)V

    .line 121
    :cond_1
    :goto_0
    return-void

    .line 118
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/Shooting;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    sget-object v1, Lcom/sonyericsson/cameracommon/focusview/RectangleColor;->AF_FAIL:Lcom/sonyericsson/cameracommon/focusview/RectangleColor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setRectangleColor(Lcom/sonyericsson/cameracommon/focusview/RectangleColor;Lcom/sonyericsson/android/camera/device/AutoFocusListener$Result;)V

    goto :goto_0
.end method

.method public startAutoFocus(Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V
    .locals 6
    .param p1, "source"    # Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/Shooting;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/Shooting;->mAutoFocusCallback:Lcom/sonyericsson/android/camera/device/AutoFocusListener;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/Shooting;->mAfLock:[Z

    const/4 v3, 0x0

    aget-boolean v2, v2, v3

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/Shooting;->mAfLock:[Z

    const/4 v4, 0x1

    aget-boolean v3, v3, v4

    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/Shooting;->mAfLock:[Z

    const/4 v5, 0x2

    aget-boolean v4, v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonyericsson/android/camera/device/CameraDevice;->startAutoFocus(Lcom/sonyericsson/android/camera/device/AutoFocusListener;ZZZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/Shooting;->mAfStarted:Z

    .line 89
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/Shooting;->mAfStarted:Z

    if-eqz v0, :cond_0

    .line 90
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/Shooting;->mAfSource:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_DEVICE_ERROR:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->postEmptyEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;)V

    goto :goto_0
.end method

.method public stopAutoFocus()V
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/Shooting;->mAfStarted:Z

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/Shooting;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->stopAutoFocus()V

    .line 102
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/Shooting;->mAfStarted:Z

    .line 103
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->UNKNOWN:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/Shooting;->mAfSource:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    .line 104
    return-void
.end method

.method public storePicture([B)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;
    .locals 3
    .param p1, "image"    # [B

    .prologue
    const/4 v1, 0x0

    .line 258
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/Shooting;->mCaptureRequestQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/controller/Shooting$CaptureRequest;

    .line 259
    .local v0, "request":Lcom/sonyericsson/android/camera/controller/Shooting$CaptureRequest;
    if-nez p1, :cond_1

    .line 267
    :cond_0
    :goto_0
    return-object v1

    .line 263
    :cond_1
    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/Shooting$CaptureRequest;->store([B)V

    .line 265
    iget-object v1, v0, Lcom/sonyericsson/android/camera/controller/Shooting$CaptureRequest;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    goto :goto_0
.end method

.method public takeNextPicture(Z)Z
    .locals 1
    .param p1, "isStorageAvailable"    # Z

    .prologue
    .line 253
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/controller/Shooting;->capture(ZZ)Z

    move-result v0

    return v0
.end method

.method public takePicture(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)V
    .locals 3
    .param p1, "request"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    .prologue
    const/4 v2, 0x1

    .line 234
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/Shooting;->mCaptureRequestQueue:Ljava/util/LinkedList;

    new-instance v1, Lcom/sonyericsson/android/camera/controller/Shooting$TakePictureRequest;

    invoke-direct {v1, p0, v2, p1}, Lcom/sonyericsson/android/camera/controller/Shooting$TakePictureRequest;-><init>(Lcom/sonyericsson/android/camera/controller/Shooting;ZLcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 235
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/controller/Shooting;->mIsTakePictureRequested:Z

    .line 237
    invoke-direct {p0, v2, v2}, Lcom/sonyericsson/android/camera/controller/Shooting;->capture(ZZ)Z

    .line 238
    return-void
.end method

.method public takeScreenShot(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)V
    .locals 1
    .param p1, "request"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/Shooting;->mIsVideoSnapshotSupported:Z

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/controller/Shooting;->takePicture(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)V

    .line 250
    :cond_0
    return-void
.end method

.method public update(I)V
    .locals 1
    .param p1, "cameraId"    # I

    .prologue
    .line 228
    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getCapability(I)Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->VIDEO_SNAPSHOT:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/Shooting;->mIsVideoSnapshotSupported:Z

    .line 229
    return-void
.end method

.method public update(Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;)V
    .locals 1
    .param p1, "focusMode"    # Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    .prologue
    .line 76
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->FIXED:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    if-ne p1, v0, :cond_0

    .line 77
    sget-object v0, Lcom/sonyericsson/android/camera/controller/Shooting;->AF_AEAWBLOCK:[Z

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/Shooting;->mAfLock:[Z

    .line 81
    :goto_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->isSuccessSound()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/Shooting;->mIsSuccessSound:Z

    .line 82
    return-void

    .line 79
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/controller/Shooting;->AF_ALLLOCK:[Z

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/Shooting;->mAfLock:[Z

    goto :goto_0
.end method
