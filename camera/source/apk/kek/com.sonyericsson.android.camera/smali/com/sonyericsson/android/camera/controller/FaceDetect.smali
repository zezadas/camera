.class public Lcom/sonyericsson/android/camera/controller/FaceDetect;
.super Ljava/lang/Object;
.source "FaceDetect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/controller/FaceDetect$1;,
        Lcom/sonyericsson/android/camera/controller/FaceDetect$SmileFaceDetected;,
        Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetected;,
        Lcom/sonyericsson/android/camera/controller/FaceDetect$NoSmileFaceDetected;,
        Lcom/sonyericsson/android/camera/controller/FaceDetect$NoFaceDetected;,
        Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetectionAvailable;,
        Lcom/sonyericsson/android/camera/controller/FaceDetect$NotAvailable;,
        Lcom/sonyericsson/android/camera/controller/FaceDetect$Unknown;,
        Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetectionState;,
        Lcom/sonyericsson/android/camera/controller/FaceDetect$MyOnPreviewFrameAvarableListener;,
        Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceIdentificationCallback;,
        Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetectionCallback;
    }
.end annotation


# static fields
.field private static final FACE_DETECTION_RESULT_REFRESH_TIMEOUT:I = 0x3e8

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

.field private final mFaceDetectionCallback:Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetectionCallback;

.field private mFaceDetectionResultCache:Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;

.field private mFaceIdentification:Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification;

.field private mIsFaceDetectionIdSupported:Ljava/lang/Boolean;

.field private mIsSmileCaptureOn:Z

.field private final mOnPreviewFrameAvarableListener:Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$OnPreviewFrameAvarableListener;

.field private mSmileLevel:I

.field private mState:Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetectionState;

.field private mUserTouchFaceUuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 161
    const-class v0, Lcom/sonyericsson/android/camera/controller/FaceDetect;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/controller/FaceDetect;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/android/camera/controller/CameraFunctions;)V
    .locals 2
    .param p1, "controller"    # Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    .prologue
    const/4 v1, 0x0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    new-instance v0, Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetectionCallback;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetectionCallback;-><init>(Lcom/sonyericsson/android/camera/controller/FaceDetect;Lcom/sonyericsson/android/camera/controller/FaceDetect$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect;->mFaceDetectionCallback:Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetectionCallback;

    .line 167
    new-instance v0, Lcom/sonyericsson/android/camera/controller/FaceDetect$MyOnPreviewFrameAvarableListener;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/controller/FaceDetect$MyOnPreviewFrameAvarableListener;-><init>(Lcom/sonyericsson/android/camera/controller/FaceDetect;Lcom/sonyericsson/android/camera/controller/FaceDetect$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect;->mOnPreviewFrameAvarableListener:Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$OnPreviewFrameAvarableListener;

    .line 174
    new-instance v0, Lcom/sonyericsson/android/camera/controller/FaceDetect$Unknown;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/controller/FaceDetect$Unknown;-><init>(Lcom/sonyericsson/android/camera/controller/FaceDetect;Lcom/sonyericsson/android/camera/controller/FaceDetect$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect;->mState:Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetectionState;

    .line 176
    iput-object v1, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect;->mFaceIdentification:Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification;

    .line 178
    iput-object v1, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect;->mFaceDetectionResultCache:Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;

    .line 185
    iput-object v1, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect;->mUserTouchFaceUuid:Ljava/lang/String;

    .line 158
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    .line 159
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/controller/FaceDetect;)Lcom/sonyericsson/android/camera/controller/CameraFunctions;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/controller/FaceDetect;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/controller/FaceDetect;)Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/controller/FaceDetect;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->getFaceDetectionResultCache()Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sonyericsson/android/camera/controller/FaceDetect;)Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetectionCallback;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/controller/FaceDetect;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect;->mFaceDetectionCallback:Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetectionCallback;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sonyericsson/android/camera/controller/FaceDetect;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/controller/FaceDetect;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->stopFaceIdentification()V

    return-void
.end method

.method static synthetic access$1600(Lcom/sonyericsson/android/camera/controller/FaceDetect;Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetectionState;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/controller/FaceDetect;
    .param p1, "x1"    # Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetectionState;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->setState(Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetectionState;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/sonyericsson/android/camera/controller/FaceDetect;Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/controller/FaceDetect;
    .param p1, "x1"    # Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->updateUuidBeforeUpdateView(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/sonyericsson/android/camera/controller/FaceDetect;Ljava/util/List;Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/controller/FaceDetect;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;
    .param p3, "x3"    # Z

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->updateView(Ljava/util/List;Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/sonyericsson/android/camera/controller/FaceDetect;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/controller/FaceDetect;

    .prologue
    .line 37
    iget v0, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect;->mSmileLevel:I

    return v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/controller/FaceDetect;Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/controller/FaceDetect;
    .param p1, "x1"    # Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->setFaceDetectionResultCache(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/controller/FaceDetect;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/controller/FaceDetect;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect;->mIsSmileCaptureOn:Z

    return v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/controller/FaceDetect;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/controller/FaceDetect;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect;->mIsFaceDetectionIdSupported:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sonyericsson/android/camera/controller/FaceDetect;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/controller/FaceDetect;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect;->mIsFaceDetectionIdSupported:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera/controller/FaceDetect;)Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/controller/FaceDetect;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect;->mFaceIdentification:Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/sonyericsson/android/camera/controller/FaceDetect;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized getFaceDetectionResultCache()Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;
    .locals 1

    .prologue
    .line 195
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect;->mFaceDetectionResultCache:Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setFaceDetectionResultCache(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;)V
    .locals 1
    .param p1, "result"    # Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;

    .prologue
    .line 191
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect;->mFaceDetectionResultCache:Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    monitor-exit p0

    return-void

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setState(Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetectionState;)V
    .locals 0
    .param p1, "state"    # Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetectionState;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect;->mState:Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetectionState;

    .line 219
    return-void
.end method

.method private startFaceIdentification()V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect;->mFaceIdentification:Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification;

    if-nez v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationFactory;->createNewInstance(Landroid/content/Context;)Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect;->mFaceIdentification:Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification;

    .line 213
    :cond_0
    return-void
.end method

.method private stopFaceIdentification()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 199
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect;->mFaceIdentification:Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification;

    if-eqz v0, :cond_0

    .line 200
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->setFaceDetectionResultCache(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;)V

    .line 201
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->faceLost()V

    .line 202
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect;->mFaceIdentification:Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification;

    invoke-interface {v0}, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification;->release()V

    .line 203
    iput-object v1, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect;->mFaceIdentification:Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification;

    .line 205
    :cond_0
    return-void
.end method

.method private updateUuidBeforeUpdateView(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;)V
    .locals 3
    .param p1, "result"    # Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;

    .prologue
    .line 334
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect;->mIsFaceDetectionIdSupported:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 335
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect;->mIsFaceDetectionIdSupported:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil;->isValidFaceDetectionResult(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 341
    iget-object v1, p1, Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;->extFaceList:Ljava/util/List;

    iget v2, p1, Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;->indexOfSelectedFace:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameraextension/CameraExtension$ExtFace;

    iget-object v1, v1, Lcom/sonyericsson/cameraextension/CameraExtension$ExtFace;->face:Landroid/hardware/Camera$Face;

    iget v0, v1, Landroid/hardware/Camera$Face;->id:I

    .line 343
    .local v0, "uuid":I
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect;->mUserTouchFaceUuid:Ljava/lang/String;

    .line 346
    .end local v0    # "uuid":I
    :cond_0
    return-void
.end method

.method private updateView(Ljava/util/List;Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;Z)V
    .locals 4
    .param p2, "detectionResult"    # Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;
    .param p3, "useSmileGauge"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationResult;",
            ">;",
            "Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 354
    .local p1, "identifyResult":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationResult;>;"
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 357
    .local v0, "previewRect":Landroid/graphics/Rect;
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->getFaceDetectionResultCache()Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect;->mUserTouchFaceUuid:Ljava/lang/String;

    invoke-static {p1, v2, v0, v3}, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil;->getFaceInformationList(Ljava/util/List;Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;Landroid/graphics/Rect;Ljava/lang/String;)Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;

    move-result-object v1

    .line 364
    .local v1, "resultList":Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;
    if-nez v1, :cond_0

    .line 372
    :goto_0
    return-void

    .line 368
    :cond_0
    invoke-virtual {v1, p3}, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->setUseSmileGuage(Z)V

    .line 371
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->updateFaceRectangles(Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;)V

    goto :goto_0
.end method


# virtual methods
.method public changeFocusedFace(Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "selectUuid"    # Ljava/lang/String;
    .param p2, "viewRect"    # Landroid/graphics/Rect;

    .prologue
    .line 316
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect;->mUserTouchFaceUuid:Ljava/lang/String;

    .line 319
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->getFaceDetectionResultCache()Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->updateView(Ljava/util/List;Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;Z)V

    .line 321
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect;->mState:Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetectionState;

    invoke-interface {v0, p2}, Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetectionState;->changeFocusedFace(Landroid/graphics/Rect;)V

    .line 322
    return-void
.end method

.method public clear()V
    .locals 0

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->stopFaceIdentification()V

    .line 257
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->stop()V

    .line 258
    return-void
.end method

.method public enableFaceIdentification(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 376
    if-eqz p1, :cond_0

    .line 377
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->startFaceIdentification()V

    .line 381
    :goto_0
    return-void

    .line 379
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->stopFaceIdentification()V

    goto :goto_0
.end method

.method public faceLost()V
    .locals 1

    .prologue
    .line 302
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect;->mUserTouchFaceUuid:Ljava/lang/String;

    .line 304
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->disableTouchDetectedFace()V

    .line 305
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect;->mState:Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetectionState;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetectionState;->onFaceLost()V

    .line 306
    return-void
.end method

.method public getFaceDetectionCallback()Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionCallback;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect;->mFaceDetectionCallback:Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetectionCallback;

    return-object v0
.end method

.method public isFaceDetect()Z
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect;->mState:Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetectionState;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetectionState;->isFaceDetectionAvailable()Z

    move-result v0

    return v0
.end method

.method public requestFaceId(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;)V
    .locals 2
    .param p1, "result"    # Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect;->mFaceIdentification:Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect;->mFaceIdentification:Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification;

    invoke-interface {v0}, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification;->isBusy()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getPreviewFrameRetriever()Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect;->mOnPreviewFrameAvarableListener:Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$OnPreviewFrameAvarableListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever;->request(Lcom/sonyericsson/android/camera/device/PreviewFrameRetriever$OnPreviewFrameAvarableListener;)Z

    .line 92
    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect;->mState:Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetectionState;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetectionState;->start()V

    .line 263
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect;->mState:Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetectionState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect;->mState:Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetectionState;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetectionState;->stop()V

    .line 268
    :cond_0
    return-void
.end method

.method public update(Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;)V
    .locals 3
    .param p1, "focusMode"    # Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;
    .param p2, "smileCapture"    # Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    .prologue
    const/4 v2, 0x0

    .line 235
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mControllerManager:Lcom/sonyericsson/android/camera/ControllerManager;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/ControllerManager;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    .line 236
    .local v0, "mode":Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->isSmileCaptureOn()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect;->mIsSmileCaptureOn:Z

    .line 237
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect;->mIsSmileCaptureOn:Z

    if-eqz v1, :cond_0

    .line 238
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->getIntValue()I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect;->mSmileLevel:I

    .line 239
    new-instance v1, Lcom/sonyericsson/android/camera/controller/FaceDetect$NoSmileFaceDetected;

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/controller/FaceDetect$NoSmileFaceDetected;-><init>(Lcom/sonyericsson/android/camera/controller/FaceDetect;Lcom/sonyericsson/android/camera/controller/FaceDetect$1;)V

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->setState(Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetectionState;)V

    .line 247
    :goto_0
    return-void

    .line 240
    :cond_0
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->FACE_DETECTION:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    if-eq p1, v1, :cond_1

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne v0, v1, :cond_2

    .line 242
    :cond_1
    new-instance v1, Lcom/sonyericsson/android/camera/controller/FaceDetect$NoFaceDetected;

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/controller/FaceDetect$NoFaceDetected;-><init>(Lcom/sonyericsson/android/camera/controller/FaceDetect;Lcom/sonyericsson/android/camera/controller/FaceDetect$1;)V

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->setState(Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetectionState;)V

    .line 243
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect;->mFaceDetectionCallback:Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetectionCallback;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setFaceDetectionCallback(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionCallback;)V

    goto :goto_0

    .line 245
    :cond_2
    new-instance v1, Lcom/sonyericsson/android/camera/controller/FaceDetect$NotAvailable;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/controller/FaceDetect$NotAvailable;-><init>(Lcom/sonyericsson/android/camera/controller/FaceDetect;)V

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->setState(Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetectionState;)V

    goto :goto_0
.end method

.method public updateFaceIdentify(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 330
    .local p1, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentification$FaceIdentificationResult;>;"
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect;->mState:Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetectionState;

    invoke-interface {v0, p1}, Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetectionState;->onFaceIdentified(Ljava/util/List;)V

    .line 331
    return-void
.end method

.method public updateFaceRectangle(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;)V
    .locals 1
    .param p1, "result"    # Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;

    .prologue
    .line 285
    if-nez p1, :cond_0

    .line 286
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->faceLost()V

    .line 295
    :goto_0
    return-void

    .line 290
    :cond_0
    iget-object v0, p1, Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;->extFaceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 291
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/FaceDetect;->mState:Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetectionState;

    invoke-interface {v0, p1}, Lcom/sonyericsson/android/camera/controller/FaceDetect$FaceDetectionState;->onFaceDetected(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;)V

    goto :goto_0

    .line 293
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->faceLost()V

    goto :goto_0
.end method
