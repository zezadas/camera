.class public Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
.super Ljava/lang/Object;
.source "StateMachine.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;
.implements Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest$StoreDataCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$5;,
        Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingPausing;,
        Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$FaceIdCallback;,
        Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$ChangeCameraModeTask;,
        Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TrackedObjectLostTimeoutTask;,
        Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$RequestStoreTask;,
        Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StartRecordingTask;,
        Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$DoFastestCamcordTask;,
        Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateFinalize;,
        Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateWarning;,
        Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePause;,
        Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoStore;,
        Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoZoomingInTouchWhileRecording;,
        Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoZoomingWhileRecording;,
        Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoCaptureWhileRecording;,
        Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecording;,
        Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingStarting;,
        Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingStartingFromFastestCamcord;,
        Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoZoomingBase;,
        Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoBase;,
        Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoStore;,
        Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureHighSpeedBurst;,
        Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureBestEffortBurst;,
        Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureWaitForNextCapture;,
        Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCapture;,
        Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureWaitForAfDone;,
        Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfDoneInTouch;,
        Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfDone;,
        Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoZoomingInTouch;,
        Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfSearchInTouchDraggingFocusPosition;,
        Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfSearchInTouch;,
        Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoAfSearch;,
        Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoWaitingTrackedObjectForAfStart;,
        Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoStandbyDialog;,
        Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoZooming;,
        Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoReadyForRecording;,
        Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateSelfTimerCountdown;,
        Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateStandby;,
        Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoZoomingBase;,
        Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoBase;,
        Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateResume;,
        Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateCameraSwitching;,
        Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$NotifyDelayedEventTask;,
        Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateInitialize;,
        Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateNone;,
        Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;,
        Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$OnStateChangedListener;,
        Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TouchEventSource;,
        Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$ErrorCode;,
        Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;,
        Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;,
        Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;
    }
.end annotation


# static fields
.field private static final OBJECT_TRACKING_ENGINE_RESET_TIMEOUT_COUNT:I = 0xbb8

.field private static final PREPARE_PINCH_ZOOM_TIMEOUT_COUNT:I = 0x64

.field private static final RESUME_TIMEOUT:I = 0x1388

.field private static final TAG:Ljava/lang/String;


# instance fields
.field mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

.field private mBurstCoverResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

.field private mBurstPictureCount:I

.field mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

.field private mChangeCameraModeTask:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$ChangeCameraModeTask;

.field private mChapterThumbnail:Lcom/sonyericsson/android/camera/fastcapturing/ChapterThumbnail;

.field private mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

.field mConversationReader:Lcom/sonyericsson/android/camera/configuration/ConversationReader;

.field private mCurrentCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

.field private mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

.field private mCurrentZoomLength:F

.field private mExecService:Ljava/util/concurrent/ExecutorService;

.field private mHandler:Landroid/os/Handler;

.field private mIsInModeLessRecording:Z

.field private mIsStopBurstRequested:Z

.field private mLastPhotoSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

.field private mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;

.field private final mNotifyResumeTimeoutTask:Ljava/lang/Runnable;

.field private mOnStateChangedListenerSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$OnStateChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPhotoSavingRequestList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecorderListener:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$RecorderListener;

.field private mStartRecordingTask:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StartRecordingTask;

.field private mTargetCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

.field private mTrackedObjectLostTimeoutTask:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TrackedObjectLostTimeoutTask;

.field private mUpdateProgressCount:I

.field mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 128
    const-class v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;)V
    .locals 3
    .param p1, "activity"    # Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mConversationReader:Lcom/sonyericsson/android/camera/configuration/ConversationReader;

    .line 152
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mHandler:Landroid/os/Handler;

    .line 155
    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mLastPhotoSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    .line 156
    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;

    .line 159
    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    .line 162
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mExecService:Ljava/util/concurrent/ExecutorService;

    .line 165
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mIsInModeLessRecording:Z

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mPhotoSavingRequestList:Ljava/util/List;

    .line 177
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateNone;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateNone;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    .line 180
    iput v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mUpdateProgressCount:I

    .line 192
    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mChangeCameraModeTask:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$ChangeCameraModeTask;

    .line 194
    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mStartRecordingTask:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StartRecordingTask;

    .line 463
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mOnStateChangedListenerSet:Ljava/util/Set;

    .line 1201
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$1;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mNotifyResumeTimeoutTask:Ljava/lang/Runnable;

    .line 3185
    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mChapterThumbnail:Lcom/sonyericsson/android/camera/fastcapturing/ChapterThumbnail;

    .line 5099
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$2;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mRecorderListener:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$RecorderListener;

    .line 5641
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TrackedObjectLostTimeoutTask;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TrackedObjectLostTimeoutTask;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mTrackedObjectLostTimeoutTask:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TrackedObjectLostTimeoutTask;

    .line 6163
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 6164
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mTargetCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 477
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    .line 478
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->cancelAutoFocus(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mIsStopBurstRequested:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mNotifyResumeTimeoutTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mIsStopBurstRequested:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Landroid/view/SurfaceHolder;Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
    .param p1, "x1"    # Landroid/view/SurfaceHolder;
    .param p2, "x2"    # Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;
    .param p3, "x3"    # Z

    .prologue
    .line 126
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->startFastCapture(Landroid/view/SurfaceHolder;Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->isPhotoSelfTimerEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->startAutoFocus()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->canInvokePhotoSelfTimer()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->isLazyInitializationRunning()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->isSmoothZoomEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->doSuperResolutionZoomIn()V

    return-void
.end method

.method static synthetic access$1800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->doZoomIn()V

    return-void
.end method

.method static synthetic access$1900(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->doZoomOut()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    .prologue
    .line 126
    iget v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mBurstPictureCount:I

    return v0
.end method

.method static synthetic access$2000(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->getOrientation()I

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 126
    iput p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mBurstPictureCount:I

    return p1
.end method

.method static synthetic access$2200(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Landroid/graphics/Point;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
    .param p1, "x1"    # Landroid/graphics/Point;

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->doChangeSelectedFace(Landroid/graphics/Point;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Landroid/graphics/PointF;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
    .param p1, "x1"    # Landroid/graphics/PointF;

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->doSelectObject(Landroid/graphics/PointF;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->doDeselectObject()V

    return-void
.end method

.method static synthetic access$2502(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;F)F
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
    .param p1, "x1"    # F

    .prologue
    .line 126
    iput p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentZoomLength:F

    return p1
.end method

.method static synthetic access$2600(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->switchCamera()V

    return-void
.end method

.method static synthetic access$2700(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mLastPhotoSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
    .param p1, "x1"    # Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->launchEditor(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->stopPlaySound()V

    return-void
.end method

.method static synthetic access$3300(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->doStartRecordingInPhotoMode()V

    return-void
.end method

.method static synthetic access$3400(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->doStopZoom()V

    return-void
.end method

.method static synthetic access$3500(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->requestPlayAutoFocusSuccessSound(Z)V

    return-void
.end method

.method static synthetic access$3600(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->isBurstShotEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->doCaptureBestEffortBurst(Z)V

    return-void
.end method

.method static synthetic access$3800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
    .param p1, "x1"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;
    .param p2, "x2"    # Z

    .prologue
    .line 126
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->doStartHighSpeedBurst(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;Z)V

    return-void
.end method

.method static synthetic access$3900(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;IF)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
    .param p1, "x1"    # I
    .param p2, "x2"    # F

    .prologue
    .line 126
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->doZoom(IF)V

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
    .param p1, "x1"    # Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->doStoreComplete(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->doCapture()V

    return-void
.end method

.method static synthetic access$4100(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
    .param p1, "x1"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->requestStorePicture(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->clearBurst()V

    return-void
.end method

.method static synthetic access$4400(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->doStopBestEffortBurst()V

    return-void
.end method

.method static synthetic access$4500(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
    .param p1, "x1"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->updateDateTaken(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 126
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->calculateRemainStorage(ZZ)V

    return-void
.end method

.method static synthetic access$4900(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->doStopHighSpeedBurst()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
    .param p1, "x1"    # Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->notifyStoreDone(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5002(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/ChapterThumbnail;)Lcom/sonyericsson/android/camera/fastcapturing/ChapterThumbnail;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
    .param p1, "x1"    # Lcom/sonyericsson/android/camera/fastcapturing/ChapterThumbnail;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mChapterThumbnail:Lcom/sonyericsson/android/camera/fastcapturing/ChapterThumbnail;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->doStopRecording()V

    return-void
.end method

.method static synthetic access$5200(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
    .param p1, "x1"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->requestStoreVideo(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;)V

    return-void
.end method

.method static synthetic access$5302(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mIsInModeLessRecording:Z

    return p1
.end method

.method static synthetic access$5400(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->doCaptureWhileRecording()V

    return-void
.end method

.method static synthetic access$5500(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->doPauseRecording()V

    return-void
.end method

.method static synthetic access$5600(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->doHandleRecordingError()V

    return-void
.end method

.method static synthetic access$5700(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;IZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .prologue
    .line 126
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeCameraModeTo(IZZ)V

    return-void
.end method

.method static synthetic access$5802(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
    .param p1, "x1"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    return-object p1
.end method

.method static synthetic access$5902(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
    .param p1, "x1"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mTargetCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    return-object p1
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$RecorderListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mRecorderListener:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$RecorderListener;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
    .param p1, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->doStartRecording([Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$6400(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->updateRecordingProgress(I)V

    return-void
.end method

.method static synthetic access$6500(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
    .param p1, "x1"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->storePicture(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)V

    return-void
.end method

.method static synthetic access$6600(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mPhotoSavingRequestList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->doResumeRecording()V

    return-void
.end method

.method static synthetic access$700(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;
    .param p1, "x1"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;
    .param p2, "x2"    # [Ljava/lang/Object;

    .prologue
    .line 126
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    return-void
.end method

.method private calculateRemainStorage(ZZ)V
    .locals 7
    .param p1, "updateUi"    # Z
    .param p2, "notify"    # Z

    .prologue
    const/4 v6, 0x0

    .line 5854
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getCamcordRect()Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    if-nez v2, :cond_1

    .line 5883
    :cond_0
    :goto_0
    return-void

    .line 5863
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getStorageManager()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5, p2}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->updateRemain(JZ)J

    move-result-wide v0

    .line 5866
    .local v0, "capacity":J
    if-eqz p1, :cond_2

    .line 5867
    const-wide/32 v2, 0x25800

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    .line 5868
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    sget-object v3, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_REQUEST_HIDE_REMAIN_INDICATOR:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 5876
    :cond_2
    :goto_1
    const-wide/32 v2, 0xf000

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 5878
    sget-object v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_STORAGE_ERROR:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 5879
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->disableAutoOffTimer()V

    goto :goto_0

    .line 5871
    :cond_3
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    sget-object v3, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_REQUEST_SHOW_REMAIN_INDICATOR:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private canInvokePhotoSelfTimer()Z
    .locals 1

    .prologue
    .line 6241
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->isLazyInitializationRunning()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->isPhotoSelfTimerEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cancelAutoFocus(Z)V
    .locals 1
    .param p1, "isResetFocusModeNecessary"    # Z

    .prologue
    .line 4811
    if-eqz p1, :cond_0

    .line 4813
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->resetFocusMode()V

    .line 4816
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->cancelAutoFocus()V

    .line 4817
    return-void
.end method

.method private changeCameraModeTo(IZZ)V
    .locals 3
    .param p1, "cameraType"    # I
    .param p2, "changeToStandby"    # Z
    .param p3, "isModelessRecording"    # Z

    .prologue
    .line 5748
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->willPreviewBeRestarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5750
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_REQUEST_HIDE_SURFACE:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 5754
    :cond_0
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$ChangeCameraModeTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$ChangeCameraModeTask;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;IZZ)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mChangeCameraModeTask:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$ChangeCameraModeTask;

    .line 5758
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mChangeCameraModeTask:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$ChangeCameraModeTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5759
    return-void
.end method

.method private varargs declared-synchronized changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "nextState"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;
    .param p2, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 4454
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->exit()V

    .line 4457
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    .line 4460
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mOnStateChangedListenerSet:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$OnStateChangedListener;

    .line 4461
    .local v1, "listener":Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$OnStateChangedListener;
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->getCaptureState()Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$OnStateChangedListener;->onStateChanged(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 4454
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$OnStateChangedListener;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 4465
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->entry()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4466
    monitor-exit p0

    return-void
.end method

.method private changeToBackCameraMode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4585
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mTargetCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 4587
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateCameraSwitching;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateCameraSwitching;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    new-array v1, v3, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    .line 4588
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;->LAUNCH_ONLY:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->prepareCameraDeviceHandler(Landroid/content/Context;Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;I)V

    .line 4590
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->checkSurfaceIsPreparedOrNot()V

    .line 4591
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mTargetCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 4592
    return-void
.end method

.method private changeToFrontCameraMode()V
    .locals 4

    .prologue
    .line 4595
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mTargetCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 4597
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateCameraSwitching;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateCameraSwitching;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    .line 4598
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;->LAUNCH_ONLY:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->prepareCameraDeviceHandler(Landroid/content/Context;Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;I)V

    .line 4600
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->checkSurfaceIsPreparedOrNot()V

    .line 4601
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mTargetCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 4602
    return-void
.end method

.method private checkCallback(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;)V
    .locals 0
    .param p1, "savingRequest"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    .prologue
    .line 5465
    invoke-virtual {p1, p0}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->addCallback(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest$StoreDataCallback;)V

    .line 5466
    return-void
.end method

.method private clearBurst()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 197
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mIsStopBurstRequested:Z

    .line 198
    iput v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mBurstPictureCount:I

    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mLastPhotoSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    .line 200
    return-void
.end method

.method private createBurstSavingRequest(I)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    .locals 3
    .param p1, "requestId"    # I

    .prologue
    .line 5189
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;->BURST:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->createPhotoSavingRequest(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    move-result-object v0

    .line 5190
    .local v0, "request":Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    if-eqz v0, :cond_0

    .line 5191
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->setSomcType(I)V

    .line 5193
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getLatestCachedParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->applySavingRequest(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;Landroid/hardware/Camera$Parameters;)V

    .line 5196
    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->setRequestId(I)V

    .line 5198
    :cond_0
    return-object v0
.end method

.method private createPhotoSavingRequest(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    .locals 7
    .param p1, "savedFileType"    # Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;

    .prologue
    .line 5250
    const/4 v6, 0x0

    .line 5251
    .local v6, "savingRequest":Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$5;->$SwitchMap$com$sonyericsson$cameracommon$mediasaving$SavingTaskManager$SavedFileType:[I

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 5269
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5257
    :pswitch_0
    new-instance v6, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    .end local v6    # "savingRequest":Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v2

    const-string v3, "image/jpeg"

    const-string v4, ".JPG"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->createTakenStatusCommon(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    invoke-direct {v1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;-><init>()V

    invoke-direct {v6, v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;)V

    .line 5266
    .restart local v6    # "savingRequest":Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    invoke-virtual {v6, p0}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->addCallback(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest$StoreDataCallback;)V

    .line 5271
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getExtraOutput()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->setExtraOutput(Landroid/net/Uri;)V

    .line 5272
    return-object v6

    .line 5251
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private createTakenStatusCommon(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;
    .locals 15
    .param p1, "savedFileType"    # Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;
    .param p2, "takenRect"    # Landroid/graphics/Rect;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "fileExtension"    # Ljava/lang/String;
    .param p5, "filePath"    # Ljava/lang/String;

    .prologue
    .line 5208
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 5211
    .local v2, "takenTimeMillis":J
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->getOrientation()I

    move-result v4

    .line 5214
    .local v4, "orientation":I
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getGeoTagManager()Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v5

    .line 5217
    .local v5, "location":Landroid/location/Location;
    const/4 v13, 0x0

    .line 5218
    .local v13, "addToMediaStore":Z
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->isSuperResolutionZoom()Z

    move-result v14

    .line 5220
    .local v14, "isSuperResolutionZoom":Z
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$5;->$SwitchMap$com$sonyericsson$cameracommon$mediasaving$SavingTaskManager$SavedFileType:[I

    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 5232
    :goto_0
    :pswitch_0
    new-instance v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v7

    const-string v12, ""

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p1

    move-object/from16 v11, p5

    invoke-direct/range {v1 .. v14}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;-><init>(JILandroid/location/Location;IILjava/lang/String;Ljava/lang/String;Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-object v1

    .line 5222
    :pswitch_1
    const/4 v13, 0x1

    .line 5223
    goto :goto_0

    .line 5225
    :pswitch_2
    const/4 v14, 0x0

    .line 5226
    goto :goto_0

    .line 5220
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private createVideoSavingRequest(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;
    .locals 13
    .param p1, "savedFileType"    # Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;

    .prologue
    .line 5278
    const/4 v7, 0x0

    .line 5281
    .local v7, "savingRequest":Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;
    const/4 v3, 0x0

    .line 5282
    .local v3, "mimeType":Ljava/lang/String;
    const/4 v4, 0x0

    .line 5283
    .local v4, "fileExtension":Ljava/lang/String;
    const-wide/16 v10, 0x0

    .line 5284
    .local v10, "maxFileSizeBytes":J
    const-wide/16 v8, 0x0

    .line 5286
    .local v8, "maxDurationMills":J
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getCamcordRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 5287
    .local v2, "capRect":Landroid/graphics/Rect;
    const/4 v6, 0x0

    .line 5288
    .local v6, "currentVideoSize":Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    if-eqz v2, :cond_1

    .line 5289
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getValueFromFrameSize(II)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v6

    .line 5292
    if-eqz v6, :cond_1

    .line 5294
    invoke-direct {p0, v6}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->getMaxFileSizeBytesForCamcord(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)J

    move-result-wide v10

    .line 5295
    invoke-direct {p0, v6, v10, v11}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->getMaxDurationMillisecondForCamcord(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;J)J

    move-result-wide v8

    .line 5298
    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->isConstraint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5300
    const-string v3, "video/3gpp"

    .line 5301
    const-string v4, ".3gp"

    .line 5308
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-static {v4, v0}, Lcom/sonyericsson/cameracommon/utility/RecordingUtil;->getOutputFile(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 5310
    .local v5, "filePath":Ljava/lang/String;
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$5;->$SwitchMap$com$sonyericsson$cameracommon$mediasaving$SavingTaskManager$SavedFileType:[I

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 5326
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unexpected type : "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5304
    .end local v5    # "filePath":Ljava/lang/String;
    :cond_0
    const-string v3, "video/mp4"

    .line 5305
    const-string v4, ".mp4"

    goto :goto_0

    .line 5312
    .restart local v5    # "filePath":Ljava/lang/String;
    :pswitch_0
    new-instance v7, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;

    .end local v7    # "savingRequest":Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;
    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->createTakenStatusCommon(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;

    invoke-direct {v1, v8, v9, v10, v11}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;-><init>(JJ)V

    invoke-direct {v7, v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;)V

    .line 5323
    .restart local v7    # "savingRequest":Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;
    invoke-virtual {v7, p0}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;->addCallback(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest$StoreDataCallback;)V

    move-object v0, v7

    .line 5331
    .end local v5    # "filePath":Ljava/lang/String;
    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 5310
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private doCapture()V
    .locals 3

    .prologue
    .line 4878
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;->PHOTO:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->createPhotoSavingRequest(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mLastPhotoSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    .line 4880
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mLastPhotoSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    if-eqz v0, :cond_0

    .line 4882
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mLastPhotoSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getLatestCachedParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->applySavingRequest(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;Landroid/hardware/Camera$Parameters;)V

    .line 4886
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mLastPhotoSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->takePicture(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)V

    .line 4888
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendGoogleAnalyticsCaptureEvents()V

    .line 4890
    :cond_0
    return-void
.end method

.method private doCaptureBestEffortBurst(Z)V
    .locals 6
    .param p1, "isCover"    # Z

    .prologue
    const/4 v5, 0x0

    .line 4823
    const/4 v0, -0x1

    .line 4824
    .local v0, "id":I
    if-eqz p1, :cond_2

    .line 4825
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    invoke-interface {v1, v5}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->getRequestId(Z)I

    move-result v0

    .line 4831
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->createBurstSavingRequest(I)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mLastPhotoSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    .line 4833
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mLastPhotoSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    if-eqz v1, :cond_1

    .line 4835
    if-eqz p1, :cond_3

    .line 4836
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mLastPhotoSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->setSomcType(I)V

    .line 4838
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    sget-object v2, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVEVT_REQUEST_ADD_COUNT_UP_VIEW:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mLastPhotoSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->getRequestId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 4848
    :goto_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mLastPhotoSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->takePicture(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)V

    .line 4850
    iget v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mBurstPictureCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mBurstPictureCount:I

    .line 4852
    :cond_1
    return-void

    .line 4826
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mLastPhotoSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    if-eqz v1, :cond_0

    .line 4827
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mLastPhotoSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->getRequestId()I

    move-result v0

    goto :goto_0

    .line 4842
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mLastPhotoSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    const/16 v2, 0x81

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->setSomcType(I)V

    goto :goto_1
.end method

.method private doCaptureWhileRecording()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 4899
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;->PHOTO_DURING_REC:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->createPhotoSavingRequest(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    move-result-object v0

    .line 4900
    .local v0, "request":Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    if-eqz v0, :cond_1

    .line 4901
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->getRequestId(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->setRequestId(I)V

    .line 4902
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    if-eqz v1, :cond_0

    .line 4903
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->hideThumbnail()V

    .line 4905
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->onShutterDone(Z)V

    .line 4908
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->captureWhileRecording(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)V

    .line 4910
    :cond_1
    return-void
.end method

.method private doChangeSelectedFace(Landroid/graphics/Point;)V
    .locals 4
    .param p1, "selectedFacePosition"    # Landroid/graphics/Point;

    .prologue
    const/4 v3, 0x0

    .line 4740
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->deselectObject()Z

    .line 4743
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_ON_FOCUS_POSITION_RELEASED_EXCEPT_FACE:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 4747
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_ON_FACE_DETECTION_STARTED:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 4751
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->setSelectedFacePosition(II)V

    .line 4754
    return-void
.end method

.method private doDeselectObject()V
    .locals 4

    .prologue
    .line 4774
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    if-nez v1, :cond_1

    .line 4788
    :cond_0
    :goto_0
    return-void

    .line 4779
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->deselectObject()Z

    move-result v0

    .line 4780
    .local v0, "isSuccess":Z
    if-eqz v0, :cond_0

    .line 4786
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    sget-object v2, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_ON_FOCUS_POSITION_RELEASED:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private doFastestCamcord()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4644
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getStorageManager()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4672
    :goto_0
    return-void

    .line 4650
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->pauseAudioPlayback()V

    .line 4654
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getOrientation()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->setRecordingOrientation(I)V

    .line 4656
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingStartingFromFastestCamcord;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingStartingFromFastestCamcord;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Z)V

    new-array v1, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    .line 4659
    invoke-direct {p0, v2, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->calculateRemainStorage(ZZ)V

    .line 4664
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;->VIDEO:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->createVideoSavingRequest(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;

    .line 4667
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    if-eqz v0, :cond_1

    .line 4668
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->disableClick()V

    .line 4671
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mExecService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$DoFastestCamcordTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$DoFastestCamcordTask;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private doFastestCapture()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4606
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getStorageManager()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4608
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateWarning;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateWarning;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    new-array v1, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    .line 4641
    :goto_0
    return-void

    .line 4612
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$5;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$CameraDeviceHandler$PreProcessState:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getPreProcessState()Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 4638
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Un-Expected state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getPreProcessState()Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler$PreProcessState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4615
    :pswitch_0
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureWaitForAfDone;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCaptureWaitForAfDone;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;ZZ)V

    new-array v1, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4620
    :pswitch_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->doCapture()V

    .line 4621
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCapture;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCapture;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    new-array v1, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4626
    :pswitch_2
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCapture;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCapture;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    new-array v1, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4632
    :pswitch_3
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCapture;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StatePhotoCapture;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    new-array v1, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4612
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private doHandleRecordingError()V
    .locals 2

    .prologue
    .line 5095
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getMessagePopup()Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showUnknownErrorMessage()V

    .line 5096
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateWarning;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateWarning;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    .line 5097
    return-void
.end method

.method private doPauseRecording()V
    .locals 2

    .prologue
    .line 5083
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->pauseRecording()V

    .line 5084
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingPausing;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingPausing;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    .line 5086
    return-void
.end method

.method private doResumeRecording()V
    .locals 2

    .prologue
    .line 5089
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->resumeRecording()V

    .line 5090
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecording;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecording;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    .line 5092
    return-void
.end method

.method private doSelectObject(Landroid/graphics/PointF;)V
    .locals 5
    .param p1, "positionRatioOnPreview"    # Landroid/graphics/PointF;

    .prologue
    const/4 v4, 0x0

    .line 4758
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->selectObject(Landroid/graphics/PointF;)Z

    move-result v0

    .line 4759
    .local v0, "isSuccess":Z
    if-nez v0, :cond_0

    .line 4770
    :goto_0
    return-void

    .line 4765
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    sget-object v2, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_ON_FOCUS_POSITION_RELEASED:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 4768
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    sget-object v2, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_ON_OBJECT_TRACKING_STARTED:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private doStartHighSpeedBurst(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;Z)V
    .locals 11
    .param p1, "next"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;
    .param p2, "startAnimation"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 5962
    iget-object v6, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    invoke-interface {v6, v10}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->getRequestId(Z)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->createBurstSavingRequest(I)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    move-result-object v4

    .line 5963
    .local v4, "request":Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    iput-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mLastPhotoSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    .line 5966
    new-instance v1, Lcom/sonyericsson/android/camera/burst/BurstInfoUpdator;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-direct {v1, v6, v4}, Lcom/sonyericsson/android/camera/burst/BurstInfoUpdator;-><init>(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)V

    .line 5968
    .local v1, "burstInfoUpdator":Lcom/sonyericsson/android/camera/burst/BurstInfoUpdator;
    iget-object v6, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getSavingTaskManager()Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/android/camera/mediasaving/BurstSavingTaskManager;

    invoke-virtual {v6, v1}, Lcom/sonyericsson/android/camera/mediasaving/BurstSavingTaskManager;->setUpdator(Lcom/sonyericsson/android/camera/burst/BurstInfoUpdator;)V

    .line 5970
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/burst/BurstInfoUpdator;->prepareBulkInsert()V

    .line 5973
    const/4 v3, 0x0

    .line 5975
    .local v3, "pathBuilder":Lcom/sonyericsson/android/camera/burst/BurstShotPathBuilder;
    :try_start_0
    new-instance v3, Lcom/sonyericsson/android/camera/burst/BurstShotPathBuilder;

    .end local v3    # "pathBuilder":Lcom/sonyericsson/android/camera/burst/BurstShotPathBuilder;
    invoke-direct {v3}, Lcom/sonyericsson/android/camera/burst/BurstShotPathBuilder;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5982
    .restart local v3    # "pathBuilder":Lcom/sonyericsson/android/camera/burst/BurstShotPathBuilder;
    :goto_0
    const/4 v5, 0x0

    .line 5983
    .local v5, "success":Z
    if-eqz v3, :cond_0

    .line 5984
    iget-object v6, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v6, v3, v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->startBurstCapture(Lcom/sonyericsson/cameraextension/CameraExtension$FilePathGenerator;Lcom/sonyericsson/cameraextension/CameraExtension$MediaProviderUpdator;)I

    move-result v0

    .line 5985
    .local v0, "burstId":I
    const/4 v6, -0x1

    if-eq v0, v6, :cond_0

    .line 5987
    const/4 v5, 0x1

    .line 5991
    .end local v0    # "burstId":I
    :cond_0
    if-eqz v5, :cond_2

    .line 5992
    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-direct {p0, p1, v6}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    .line 5993
    if-eqz v4, :cond_1

    .line 5994
    iget-object v6, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    sget-object v7, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVEVT_REQUEST_ADD_COUNT_UP_VIEW:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->getRequestId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-interface {v6, v7, v8}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 6000
    :cond_1
    :goto_1
    return-void

    .line 5976
    .end local v3    # "pathBuilder":Lcom/sonyericsson/android/camera/burst/BurstShotPathBuilder;
    .end local v5    # "success":Z
    :catch_0
    move-exception v2

    .line 5977
    .local v2, "e":Ljava/io/IOException;
    invoke-direct {p0, v10}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->cancelAutoFocus(Z)V

    .line 5978
    const/4 v3, 0x0

    .restart local v3    # "pathBuilder":Lcom/sonyericsson/android/camera/burst/BurstShotPathBuilder;
    goto :goto_0

    .line 5998
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v5    # "success":Z
    :cond_2
    new-instance v6, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateWarning;

    invoke-direct {v6, p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateWarning;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    new-array v7, v10, [Ljava/lang/Object;

    invoke-direct {p0, v6, v7}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private varargs doStartRecording([Ljava/lang/Object;)V
    .locals 14
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    const v2, 0x7f090092

    const/4 v3, 0x0

    .line 4914
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->killStartUpNotifierImmediately()V

    .line 4917
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    if-eqz v0, :cond_0

    .line 4918
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->disableClick()V

    .line 4922
    :cond_0
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;->VIDEO:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->createVideoSavingRequest(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;

    .line 4926
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getOrientation()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->setRecordingOrientation(I)V

    .line 4928
    const/4 v11, 0x0

    .line 4929
    .local v11, "success":Z
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;

    if-eqz v0, :cond_3

    .line 4931
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->width:I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->height:I

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getValueFromFrameSize(II)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v7

    .line 4934
    .local v7, "cap":Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    const/4 v9, 0x0

    .line 4935
    .local v9, "isConstraint":Z
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-ne v7, v0, :cond_1

    .line 4936
    const/4 v9, 0x1

    .line 4939
    :cond_1
    const/4 v10, 0x0

    .line 4940
    .local v10, "isVideoHdr":Z
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getVideoHdr()Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-ne v0, v1, :cond_2

    .line 4941
    const/4 v10, 0x1

    .line 4943
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_REQUEST_PREPARE_RECORDING_INDICATOR:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;

    iget-object v6, v6, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;->video:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;

    iget-wide v12, v6, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;->maxDurationMills:J

    long-to-int v6, v12

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v3

    const/4 v6, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v4, v6

    const/4 v6, 0x2

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v4, v6

    invoke-interface {v0, v1, v4}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 4951
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mRecorderListener:Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$RecorderListener;

    invoke-virtual {v0, v1, v4}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->startRecording(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;Lcom/sonymobile/cameracommon/media/recorder/RecorderInterface$RecorderListener;)V

    .line 4955
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->updateDateTaken(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4957
    const/4 v11, 0x1

    .line 4985
    .end local v7    # "cap":Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    .end local v9    # "isConstraint":Z
    .end local v10    # "isVideoHdr":Z
    :cond_3
    :goto_0
    if-eqz v11, :cond_6

    .line 4986
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingStarting;

    invoke-direct {v0, p0, v3}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateVideoRecordingStarting;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Z)V

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    .line 4990
    :goto_1
    return-void

    .line 4958
    .restart local v7    # "cap":Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    .restart local v9    # "isConstraint":Z
    .restart local v10    # "isVideoHdr":Z
    :catch_0
    move-exception v8

    .line 4959
    .local v8, "e":Ljava/lang/RuntimeException;
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->TAG:Ljava/lang/String;

    const-string v1, "Start recording failed."

    invoke-static {v0, v1, v8}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4960
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    if-eqz v0, :cond_4

    .line 4961
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->enableClick()V

    .line 4964
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/media/utility/AudioResourceChecker;->isAudioResourceAvailable(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4965
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getMessagePopup()Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    move-result-object v0

    const v1, 0x7f09006f

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showErrorUncancelable(IIZ)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 4970
    invoke-static {}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->getInstance()Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->sendCameraNotAvailableEvent()V

    goto :goto_0

    .line 4972
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getMessagePopup()Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    move-result-object v0

    const v1, 0x7f090185

    const v4, 0x7f0900ad

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showOk(IIZILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 4979
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateStandby;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateStandby;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    new-array v1, v3, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_1

    .line 4988
    .end local v7    # "cap":Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    .end local v8    # "e":Ljava/lang/RuntimeException;
    .end local v9    # "isConstraint":Z
    .end local v10    # "isVideoHdr":Z
    :cond_6
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateWarning;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateWarning;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    new-array v1, v3, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private doStartRecordingInPhotoMode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4993
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->hideHudIcons()V

    .line 4995
    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateNone;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateNone;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    new-array v2, v3, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    .line 4998
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getLatestCachedParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/fastcapturing/PlatformDependencyResolver;->isAutoSceneRecogntionDuringRecSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    .line 5001
    .local v0, "isAsrRecSupported":Z
    if-nez v0, :cond_0

    .line 5002
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->stopSceneRecognition()V

    .line 5006
    :cond_0
    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mIsInModeLessRecording:Z

    invoke-direct {p0, v1, v3, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeCameraModeTo(IZZ)V

    .line 5009
    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StartRecordingTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StartRecordingTask;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$1;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mStartRecordingTask:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StartRecordingTask;

    .line 5010
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mStartRecordingTask:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StartRecordingTask;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5011
    return-void
.end method

.method private doStopBestEffortBurst()V
    .locals 1

    .prologue
    .line 4856
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->cancelAutoFocus(Z)V

    .line 4858
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->fadeoutCounter()V

    .line 4860
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->onBurstShootingDone()V

    .line 4862
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendGoogleAnalyticsBurstEvent()V

    .line 4863
    return-void
.end method

.method private doStopHighSpeedBurst()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 6004
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->stopBurstCapture()I

    move-result v0

    .line 6007
    .local v0, "burstId":I
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->cancelAutoFocus(Z)V

    .line 6009
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->onBurstShootingDone()V

    .line 6011
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendGoogleAnalyticsBurstEvent()V

    .line 6013
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 6015
    const/4 v1, 0x1

    .line 6019
    :goto_0
    return v1

    .line 6018
    :cond_0
    sget-object v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->TAG:Ljava/lang/String;

    const-string v3, "doStopHighSpeedBurst Failed."

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private doStopRecording()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 5065
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->RECORDING_STOP:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-static {v0, v2}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V

    .line 5067
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    if-eqz v0, :cond_0

    .line 5068
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->enableClick()V

    .line 5070
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->stopRecording(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)V

    .line 5071
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->onCaptureDone()V

    .line 5074
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getVideoStabilizer()Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->isIntelligentActive(Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5075
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->getRequestId(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;->setRequestId(I)V

    .line 5078
    :cond_1
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->RECORDING_STOP:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V

    .line 5079
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->outResult()V

    .line 5080
    return-void
.end method

.method private doStopZoom()V
    .locals 1

    .prologue
    .line 5661
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->stopSmoothZoom()V

    .line 5662
    return-void
.end method

.method private doStoreComplete(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V
    .locals 5
    .param p1, "result"    # Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    .prologue
    .line 5582
    iget-object v3, p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->getRequestId()I

    move-result v1

    .line 5585
    .local v1, "requestId":I
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->isSuccess()Z

    move-result v2

    .line 5586
    .local v2, "resultCode":Z
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->uri:Landroid/net/Uri;

    .line 5588
    .local v0, "originalUri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    new-instance v4, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$4;

    invoke-direct {v4, p0, v1, v2, v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$4;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;IZLandroid/net/Uri;)V

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 5610
    return-void
.end method

.method private doSuperResolutionZoomIn()V
    .locals 2

    .prologue
    .line 5651
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getMaxSuperResolutionZoom()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->startSmoothZoom(I)V

    .line 5652
    return-void
.end method

.method private doZoom(IF)V
    .locals 5
    .param p1, "startZoomValue"    # I
    .param p2, "scaleLength"    # F

    .prologue
    const/4 v4, 0x0

    .line 5666
    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getLatestCachedParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v0

    .line 5667
    .local v0, "currentZoom":I
    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getMaxSuperResolutionZoom()I

    move-result v1

    .line 5668
    .local v1, "srzMax":I
    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getMaxZoom()I

    move-result v2

    .line 5670
    .local v2, "zoomMax":I
    cmpl-float v3, p2, v4

    if-lez v3, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->isRecording()Z

    move-result v3

    if-nez v3, :cond_0

    .line 5671
    if-ne v0, v1, :cond_0

    if-ge p1, v1, :cond_0

    .line 5702
    :goto_0
    return-void

    .line 5677
    :cond_0
    int-to-float v3, v0

    invoke-static {v3, p2}, Lcom/sonyericsson/cameracommon/controller/ZoomController;->getZoomValue(FF)F

    move-result v3

    iput v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentZoomLength:F

    .line 5679
    iget v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentZoomLength:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    .line 5680
    iput v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentZoomLength:F

    .line 5701
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    iget v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentZoomLength:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->startSmoothZoom(I)V

    goto :goto_0

    .line 5682
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->isRecording()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5683
    iget v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentZoomLength:F

    int-to-float v4, v2

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 5685
    int-to-float v3, v2

    iput v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentZoomLength:F

    goto :goto_1

    .line 5688
    :cond_3
    if-ge p1, v1, :cond_4

    .line 5689
    iget v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentZoomLength:F

    int-to-float v4, v1

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 5691
    int-to-float v3, v1

    iput v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentZoomLength:F

    goto :goto_1

    .line 5694
    :cond_4
    iget v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentZoomLength:F

    int-to-float v4, v2

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 5696
    int-to-float v3, v2

    iput v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentZoomLength:F

    goto :goto_1
.end method

.method private doZoomIn()V
    .locals 2

    .prologue
    .line 5646
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getMaxZoom()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->startSmoothZoom(I)V

    .line 5647
    return-void
.end method

.method private doZoomOut()V
    .locals 2

    .prologue
    .line 5656
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->startSmoothZoom(I)V

    .line 5657
    return-void
.end method

.method private getCameraId(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)I
    .locals 1
    .param p1, "mode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .prologue
    .line 6183
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p1, v0, :cond_0

    .line 6184
    const/4 v0, 0x0

    .line 6186
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getMaxDurationMillisecondForCamcord(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;J)J
    .locals 18
    .param p1, "currentVideoSize"    # Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    .param p2, "maxFileSizeBytes"    # J

    .prologue
    .line 5374
    const-wide/16 v8, 0x0

    .line 5376
    .local v8, "ret":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v14}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getStorageController()Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->getAvailableStorageSize()J

    move-result-wide v14

    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getAverageFileSize()J

    move-result-wide v16

    invoke-static/range {v14 .. v17}, Lcom/sonyericsson/cameracommon/utility/RecordingUtil;->getDurationMillsFromAverage(JJ)J

    move-result-wide v2

    .line 5381
    .local v2, "calculatedMaxDulationMills":J
    move-wide v8, v2

    .line 5384
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->isConstraint()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 5385
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mConversationReader:Lcom/sonyericsson/android/camera/configuration/ConversationReader;

    invoke-virtual {v14}, Lcom/sonyericsson/android/camera/configuration/ConversationReader;->getMmsOptions()Lcom/sonyericsson/android/camera/configuration/MmsOptions;

    move-result-object v14

    iget v14, v14, Lcom/sonyericsson/android/camera/configuration/MmsOptions;->mMaxDuration:I

    int-to-long v14, v14

    const-wide/16 v16, 0x3e8

    mul-long v6, v14, v16

    .line 5388
    .local v6, "mmsMaxDurationMills":J
    cmp-long v14, v6, v2

    if-gez v14, :cond_0

    .line 5389
    move-wide v8, v6

    .line 5394
    .end local v6    # "mmsMaxDurationMills":J
    :cond_0
    const-wide/16 v14, 0x3e8

    div-long v10, v8, v14

    .line 5395
    .local v10, "second":J
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getAverageFileSize()J

    move-result-wide v14

    const-wide/16 v16, 0x400

    mul-long v14, v14, v16

    const-wide/16 v16, 0x3c

    div-long v12, v14, v16

    .line 5396
    .local v12, "sizePerSec":J
    mul-long v4, v10, v12

    .line 5397
    .local v4, "fileSizeFromDuration":J
    cmp-long v14, p2, v4

    if-gez v14, :cond_1

    .line 5399
    const-wide/16 v14, 0x3e8

    mul-long v14, v14, p2

    div-long v8, v14, v12

    .line 5403
    :cond_1
    const-wide/32 v14, 0x7fffffff

    cmp-long v14, v14, v8

    if-gez v14, :cond_2

    .line 5404
    const-wide/32 v8, 0x7fffffff

    .line 5407
    :cond_2
    return-wide v8
.end method

.method private getMaxFileSizeBytesForCamcord(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)J
    .locals 10
    .param p1, "currentVideoSize"    # Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .prologue
    .line 5340
    const-wide/16 v4, 0x0

    .line 5343
    .local v4, "ret":J
    iget-object v6, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getStorageController()Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    move-result-object v6

    invoke-static {v6}, Lcom/sonyericsson/cameracommon/utility/RecordingUtil;->getRecordableSizeKBytes(Lcom/sonyericsson/cameracommon/mediasaving/StorageController;)J

    move-result-wide v6

    const-wide/16 v8, 0x400

    mul-long v2, v6, v8

    .line 5351
    .local v2, "recordableSizeBytes":J
    move-wide v4, v2

    .line 5354
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->isConstraint()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 5355
    iget-object v6, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mConversationReader:Lcom/sonyericsson/android/camera/configuration/ConversationReader;

    if-nez v6, :cond_0

    .line 5357
    new-instance v6, Lcom/sonyericsson/android/camera/configuration/ConversationReader;

    invoke-direct {v6}, Lcom/sonyericsson/android/camera/configuration/ConversationReader;-><init>()V

    iput-object v6, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mConversationReader:Lcom/sonyericsson/android/camera/configuration/ConversationReader;

    .line 5358
    iget-object v6, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mConversationReader:Lcom/sonyericsson/android/camera/configuration/ConversationReader;

    iget-object v7, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v6, v7}, Lcom/sonyericsson/android/camera/configuration/ConversationReader;->readConversationProvider(Landroid/content/Context;)V

    .line 5361
    :cond_0
    iget-object v6, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mConversationReader:Lcom/sonyericsson/android/camera/configuration/ConversationReader;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/configuration/ConversationReader;->getMmsOptions()Lcom/sonyericsson/android/camera/configuration/MmsOptions;

    move-result-object v6

    iget-wide v0, v6, Lcom/sonyericsson/android/camera/configuration/MmsOptions;->mMaxFileSizeBytes:J

    .line 5363
    .local v0, "mmsMaxFileSizeBytes":J
    cmp-long v6, v0, v2

    if-gez v6, :cond_1

    .line 5364
    move-wide v4, v0

    .line 5368
    .end local v0    # "mmsMaxFileSizeBytes":J
    :cond_1
    return-wide v4
.end method

.method private getOrientation()I
    .locals 5

    .prologue
    .line 5157
    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getSensorOrientationDegree()I

    move-result v0

    .line 5158
    .local v0, "degree":I
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getNormalizedRotation(I)I

    move-result v3

    .line 5160
    .local v3, "sensorOrientation":I
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->getCurrentCameraId()I

    move-result v4

    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getCameraInfo(I)Landroid/hardware/Camera$CameraInfo;

    move-result-object v1

    .line 5173
    .local v1, "info":Landroid/hardware/Camera$CameraInfo;
    iget v4, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    packed-switch v4, :pswitch_data_0

    .line 5181
    iget v4, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v4, v3

    rem-int/lit16 v2, v4, 0x168

    .line 5185
    .local v2, "orientation":I
    :goto_0
    return v2

    .line 5175
    .end local v2    # "orientation":I
    :pswitch_0
    iget v4, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v4, v3

    rem-int/lit16 v2, v4, 0x168

    .line 5176
    .restart local v2    # "orientation":I
    goto :goto_0

    .line 5178
    .end local v2    # "orientation":I
    :pswitch_1
    iget v4, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/lit16 v4, v4, 0x168

    sub-int/2addr v4, v3

    rem-int/lit16 v2, v4, 0x168

    .line 5179
    .restart local v2    # "orientation":I
    goto :goto_0

    .line 5173
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isBurstShotEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 6226
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->isPhotoSelfTimerEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6229
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getBurstShotSetting()Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isLazyInitializationRunning()Z
    .locals 1

    .prologue
    .line 6237
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->isLazyInitializationRunning()Z

    move-result v0

    return v0
.end method

.method private isPhotoSelfTimerEnabled()Z
    .locals 2

    .prologue
    .line 6233
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->getPhotoSelfTimerSetting()Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSmoothZoomEnabled()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 6217
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->isCameraFront()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6222
    :cond_0
    :goto_0
    return v1

    .line 6221
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getLatestCachedParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 6222
    .local v0, "params":Landroid/hardware/Camera$Parameters;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isSmoothZoomSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isSuperResolutionZoom()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 6088
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->isInModeLessRecording()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 6114
    :cond_0
    :goto_0
    return v4

    .line 6093
    :cond_1
    iget-object v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getLatestCachedParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 6094
    .local v2, "params":Landroid/hardware/Camera$Parameters;
    if-eqz v2, :cond_0

    .line 6098
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v0

    .line 6099
    .local v0, "currentZoom":I
    iget-object v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getMaxSuperResolutionZoom()I

    move-result v3

    .line 6100
    .local v3, "srzMax":I
    invoke-static {v2}, Lcom/sonyericsson/android/camera/fastcapturing/PlatformDependencyResolver;->isSuperResolutionZoomSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v1

    .line 6105
    .local v1, "isSupported":Z
    if-eqz v1, :cond_0

    .line 6107
    if-lez v0, :cond_0

    if-gt v0, v3, :cond_0

    .line 6109
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private launchEditor(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V
    .locals 6
    .param p1, "result"    # Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 505
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    iget-object v2, p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->uri:Landroid/net/Uri;

    iget-object v3, p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    iget-object v3, v3, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v3, v3, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mimeType:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->isEditorAvailable(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    .line 510
    .local v0, "isEditorAvailable":Z
    if-eqz v0, :cond_0

    .line 512
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    sget-object v2, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_REQUEST_SHOW_AUTO_REVIEW:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 518
    :goto_0
    return-void

    .line 516
    :cond_0
    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateStandby;

    invoke-direct {v1, p0, v5}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateStandby;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Z)V

    new-array v2, v4, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static logPerformance(Ljava/lang/String;)V
    .locals 4
    .param p0, "event"    # Ljava/lang/String;

    .prologue
    .line 132
    const-string v0, "TraceLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PERFORMANCE] [TIME = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-void
.end method

.method private moveToCameraNotAvailable()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 5937
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->TAG:Ljava/lang/String;

    const-string v1, ".startFastCapture():[Camera not available]"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5938
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getMessagePopup()Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    move-result-object v0

    const v1, 0x7f09006f

    const v2, 0x7f090092

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showErrorUncancelable(IIZ)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 5942
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateWarning;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateWarning;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    new-array v1, v3, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    .line 5944
    invoke-static {}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->getInstance()Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->sendCameraNotAvailableEvent()V

    .line 5945
    return-void
.end method

.method private notifyStateBlocked()V
    .locals 2

    .prologue
    .line 6247
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getWearableBridge()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6248
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getWearableBridge()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->getPhotoStateNotifier()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$PhotoStateNotifier;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractPhotoState;->BLOCKED:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractPhotoState;

    invoke-interface {v0, v1}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$PhotoStateNotifier;->onStateChanged(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractPhotoState;)V

    .line 6250
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getWearableBridge()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->getVideoStateNotifier()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$VideoStateNotifier;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractVideoState;->BLOCKED:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractVideoState;

    invoke-interface {v0, v1}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$VideoStateNotifier;->onStateChanged(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractVideoState;)V

    .line 6253
    :cond_0
    return-void
.end method

.method private notifyStateIdle()V
    .locals 2

    .prologue
    .line 6258
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getWearableBridge()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6259
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getWearableBridge()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->getPhotoStateNotifier()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$PhotoStateNotifier;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractPhotoState;->IDLE:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractPhotoState;

    invoke-interface {v0, v1}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$PhotoStateNotifier;->onStateChanged(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractPhotoState;)V

    .line 6261
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getWearableBridge()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->getVideoStateNotifier()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$VideoStateNotifier;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractVideoState;->IDLE:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractVideoState;

    invoke-interface {v0, v1}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$VideoStateNotifier;->onStateChanged(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractVideoState;)V

    .line 6264
    :cond_0
    return-void
.end method

.method private notifyStoreDone(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)Z
    .locals 7
    .param p1, "result"    # Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 523
    if-eqz p1, :cond_0

    iget-object v3, p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    iget-object v3, v3, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mLastPhotoSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;

    if-nez v3, :cond_1

    :cond_0
    move v1, v2

    .line 551
    :goto_0
    return v1

    .line 528
    :cond_1
    const/4 v0, -0x1

    .line 530
    .local v0, "lastRequestId":I
    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mLastPhotoSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    if-nez v3, :cond_2

    .line 531
    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;->getRequestId()I

    move-result v0

    .line 543
    :goto_1
    iget-object v3, p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->getRequestId()I

    move-result v3

    if-ne v3, v0, :cond_5

    .line 544
    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    sget-object v4, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_REQUEST_SHOW_ICONS_ON_REVIEW_WINDOW:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->uri:Landroid/net/Uri;

    aput-object v6, v5, v2

    iget-object v2, p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mimeType:Ljava/lang/String;

    aput-object v2, v5, v1

    invoke-interface {v3, v4, v5}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    goto :goto_0

    .line 532
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;

    if-nez v3, :cond_3

    .line 533
    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mLastPhotoSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->getRequestId()I

    move-result v0

    goto :goto_1

    .line 534
    :cond_3
    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mLastPhotoSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->getRequestId()I

    move-result v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;->getRequestId()I

    move-result v4

    if-le v3, v4, :cond_4

    .line 536
    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mLastPhotoSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->getRequestId()I

    move-result v0

    goto :goto_1

    .line 538
    :cond_4
    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;->getRequestId()I

    move-result v0

    goto :goto_1

    :cond_5
    move v1, v2

    .line 551
    goto :goto_0
.end method

.method private requestPlayAutoFocusSuccessSound(Z)V
    .locals 2
    .param p1, "isSuccess"    # Z

    .prologue
    .line 5419
    if-eqz p1, :cond_0

    .line 5420
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->isShutterSoundOff()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5421
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->playSound(I)V

    .line 5424
    :cond_0
    return-void
.end method

.method private declared-synchronized requestStorePicture(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)V
    .locals 2
    .param p1, "request"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    .prologue
    .line 5533
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$RequestStoreTask;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$RequestStoreTask;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)V

    .line 5535
    .local v0, "task":Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$RequestStoreTask;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mExecService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5536
    monitor-exit p0

    return-void

    .line 5533
    .end local v0    # "task":Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$RequestStoreTask;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized requestStoreVideo(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;)V
    .locals 4
    .param p1, "request"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;

    .prologue
    .line 5539
    monitor-enter p0

    if-nez p1, :cond_0

    .line 5555
    :goto_0
    monitor-exit p0

    return-void

    .line 5542
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getVideoStabilizer()Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->isIntelligentActive(Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5543
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->getRequestId(Z)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;->setRequestId(I)V

    .line 5547
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;->setDateTaken(J)V

    .line 5550
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getSavingTaskManager()Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    move-result-object v0

    .line 5551
    .local v0, "savingTaskManager":Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;
    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->storeVideo(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;)V

    .line 5554
    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_ON_STORE_REQUESTED:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 5539
    .end local v0    # "savingTaskManager":Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private sendGoogleAnalyticsBurstEvent()V
    .locals 2

    .prologue
    .line 4866
    iget v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mBurstPictureCount:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 4872
    :goto_0
    return-void

    .line 4870
    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;->getInstance()Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;->sendEventSettings()V

    .line 4871
    invoke-static {}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->getInstance()Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->BURST:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->setUserOperation(Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$UserOperation;)V

    goto :goto_0
.end method

.method private sendGoogleAnalyticsCaptureEvents()V
    .locals 2

    .prologue
    .line 4893
    invoke-static {}, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;->getInstance()Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;->sendEventSettings()V

    .line 4894
    invoke-static {}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->getInstance()Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->SHOOTING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->setUserOperation(Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$UserOperation;)V

    .line 4895
    return-void
.end method

.method private startAutoFocus()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4796
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    if-eqz v1, :cond_2

    .line 4797
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->updateRemain()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4807
    :cond_0
    :goto_0
    return v0

    .line 4801
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getSavingTaskManager()Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->canPushStoreTask()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4806
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->autoFocus()V

    .line 4807
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private startFastCapture(Landroid/view/SurfaceHolder;Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;Z)V
    .locals 7
    .param p1, "surface"    # Landroid/view/SurfaceHolder;
    .param p2, "fastCapture"    # Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;
    .param p3, "launch"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4472
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->isImmediateReleaseRequested()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4473
    sget-object v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->TAG:Ljava/lang/String;

    const-string v3, "[CameraNotAvailable] request to release camera device."

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->errorLogForNonUserVariant(Ljava/lang/String;Ljava/lang/String;)I

    .line 4475
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->moveToCameraNotAvailable()V

    .line 4563
    :goto_0
    return-void

    .line 4479
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->waitForCameraInitialization()Z

    move-result v2

    if-nez v2, :cond_2

    .line 4486
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getCameraDeviceStatus()I

    move-result v2

    if-nez v2, :cond_1

    .line 4488
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->getTargetCameraId()I

    move-result v4

    invoke-virtual {v2, v3, p2, v4}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->prepareCameraDeviceHandler(Landroid/content/Context;Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;I)V

    .line 4491
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->waitForCameraInitialization()Z

    move-result v2

    if-nez v2, :cond_2

    .line 4492
    sget-object v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->TAG:Ljava/lang/String;

    const-string v3, "[CameraNotAvailable] Device open failed."

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->errorLogForNonUserVariant(Ljava/lang/String;Ljava/lang/String;)I

    .line 4497
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->moveToCameraNotAvailable()V

    goto :goto_0

    .line 4501
    :cond_1
    sget-object v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->TAG:Ljava/lang/String;

    const-string v3, "[CameraNotAvailable] Device open has started but failed."

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->errorLogForNonUserVariant(Ljava/lang/String;Ljava/lang/String;)I

    .line 4504
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->moveToCameraNotAvailable()V

    goto :goto_0

    .line 4510
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->startLiveViewFinder(Landroid/view/SurfaceHolder;)V

    .line 4513
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 4514
    .local v0, "previewRect":Landroid/graphics/Rect;
    if-nez v0, :cond_3

    .line 4517
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->showCameraNotAvailableError()V

    .line 4518
    new-instance v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateWarning;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateWarning;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    new-array v3, v5, [Ljava/lang/Object;

    invoke-direct {p0, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4521
    :cond_3
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getSurfaceRect(Landroid/content/Context;F)Landroid/graphics/Rect;

    move-result-object v1

    .line 4525
    .local v1, "surfaceRect":Landroid/graphics/Rect;
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    move-result-object v2

    invoke-virtual {v2, v5, v5, v1, v0}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->init(ZILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 4526
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    move-result-object v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->setSurfaceSize(II)V

    .line 4528
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->setPreviewSize(II)V

    .line 4532
    if-eqz p3, :cond_4

    .line 4533
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->onCameraReadyToUse()V

    .line 4537
    :cond_4
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->requestPostLazyInitializationTaskExecute()V

    .line 4540
    sget-object v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$5;->$SwitchMap$com$sonyericsson$cameracommon$commonsetting$values$FastCapture:[I

    invoke-virtual {p2}, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    .line 4544
    :pswitch_0
    new-instance v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateStandby;

    invoke-direct {v2, p0, v6}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateStandby;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Z)V

    new-array v3, v5, [Ljava/lang/Object;

    invoke-direct {p0, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4548
    :pswitch_1
    new-instance v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateStandby;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateStandby;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    new-array v3, v5, [Ljava/lang/Object;

    invoke-direct {p0, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    .line 4549
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->doFastestCapture()V

    goto/16 :goto_0

    .line 4553
    :pswitch_2
    new-instance v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateStandby;

    invoke-direct {v2, p0, v6}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StateStandby;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Z)V

    new-array v3, v5, [Ljava/lang/Object;

    invoke-direct {p0, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeTo(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;[Ljava/lang/Object;)V

    .line 4554
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->doFastestCamcord()V

    goto/16 :goto_0

    .line 4559
    :pswitch_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "StateMachine.Resume:[FastCapture OFF]"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4540
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private stopPlaySound()V
    .locals 1

    .prologue
    .line 5427
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->stopPlayingSound()V

    .line 5428
    return-void
.end method

.method private storePicture(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)V
    .locals 1
    .param p1, "request"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    .prologue
    .line 5479
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->disableAutoOffTimer()V

    .line 5482
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getSavingTaskManager()Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->storePicture(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)V

    .line 5483
    return-void
.end method

.method private switchCamera()V
    .locals 4

    .prologue
    .line 4566
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->releaseCameraInstance()V

    .line 4569
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$5;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 4580
    :goto_0
    invoke-static {}, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;->getInstance()Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$GALaunchedBy;->SAME_ACTIVITY:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$GALaunchedBy;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;->sendView(Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$GALaunchedBy;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)V

    .line 4582
    return-void

    .line 4571
    :pswitch_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeToFrontCameraMode()V

    goto :goto_0

    .line 4576
    :pswitch_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->changeToBackCameraMode()V

    goto :goto_0

    .line 4569
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private updateDateTaken(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;)V
    .locals 2
    .param p1, "request"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    .prologue
    .line 5336
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->setDateTaken(J)V

    .line 5337
    return-void
.end method

.method private updateRecordingProgress(I)V
    .locals 5
    .param p1, "recordingTimeMillis"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 5034
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->isSetupHeadupDisplayInvoked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5062
    :cond_0
    :goto_0
    return-void

    .line 5039
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    if-eqz v0, :cond_2

    .line 5040
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->disableAutoOffTimer()V

    .line 5044
    iget v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mUpdateProgressCount:I

    if-nez v0, :cond_2

    .line 5046
    invoke-direct {p0, v2, v4}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->calculateRemainStorage(ZZ)V

    .line 5050
    :cond_2
    iget v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mUpdateProgressCount:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_3

    .line 5052
    iput v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mUpdateProgressCount:I

    .line 5059
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_ON_RECORDING_PROGRESS:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    goto :goto_0

    .line 5055
    :cond_3
    iget v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mUpdateProgressCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mUpdateProgressCount:I

    goto :goto_1
.end method


# virtual methods
.method public addOnStateChangedListener(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$OnStateChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$OnStateChangedListener;

    .prologue
    .line 467
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mOnStateChangedListenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 468
    return-void
.end method

.method public declared-synchronized canApplicationBeFinished()Z
    .locals 1

    .prologue
    .line 329
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->getCaptureState()Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->canApplicationBeFinished()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized canCurrentStateHandleAsynchronizedTask()Z
    .locals 1

    .prologue
    .line 325
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->getCaptureState()Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->canHandleAsynchronizedTask()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized canHandleWearableCaptureRequest()Z
    .locals 1

    .prologue
    .line 337
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->getCaptureState()Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->canHandleWearableCaptureRequest()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized canSwitchPhotoVideoMode()Z
    .locals 1

    .prologue
    .line 333
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->getCaptureState()Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->canSwitchPhotoVideoMode()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCurrentCameraId()I
    .locals 1

    .prologue
    .line 6175
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->getCameraId(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)I

    move-result v0

    return v0
.end method

.method public getCurrentCameraParameters(Z)Landroid/hardware/Camera$Parameters;
    .locals 1
    .param p1, "isFetchRequested"    # Z

    .prologue
    .line 492
    if-eqz p1, :cond_0

    .line 493
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->requestCacheParameters()V

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getLatestCachedParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getCurrentCaptureState()Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;
    .locals 1

    .prologue
    .line 6267
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->getCaptureState()Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .locals 1

    .prologue
    .line 6167
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    return-object v0
.end method

.method public final getSensorOrientation()I
    .locals 3

    .prologue
    .line 5923
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getLastDetectedOrientation()Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    move-result-object v1

    .line 5924
    .local v1, "sesorOrientation":Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;
    const/4 v0, 0x1

    .line 5925
    .local v0, "orientation":I
    sget-object v2, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;->Portrait:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    if-ne v1, v2, :cond_0

    .line 5926
    const/4 v0, 0x1

    .line 5933
    :goto_0
    return v0

    .line 5928
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getTargetCameraId()I
    .locals 1

    .prologue
    .line 6179
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mTargetCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->getCameraId(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)I

    move-result v0

    return v0
.end method

.method public getTargetCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .locals 1

    .prologue
    .line 6171
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mTargetCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    return-object v0
.end method

.method public isInModeLessRecording()Z
    .locals 1

    .prologue
    .line 5014
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mIsInModeLessRecording:Z

    return v0
.end method

.method public declared-synchronized isInRecordingStartingState()Z
    .locals 2

    .prologue
    .line 342
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->getCaptureState()Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;->STATE_VIDEO_RECORDING_STARTING:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$CaptureState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isMenuAvailable()Z
    .locals 1

    .prologue
    .line 5018
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->isMenuAvailable()Z

    move-result v0

    return v0
.end method

.method public isRecording()Z
    .locals 1

    .prologue
    .line 6209
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    if-eqz v0, :cond_0

    .line 6210
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->isRecording()Z

    move-result v0

    .line 6212
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStorageFull()Z
    .locals 6

    .prologue
    .line 6144
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getStorageController()Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->getAvailableStorageSize()J

    move-result-wide v0

    .line 6145
    .local v0, "available":J
    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    const-wide/32 v4, 0xf000

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onAutoFocusDone(Z)V
    .locals 4
    .param p1, "success"    # Z

    .prologue
    .line 5415
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_ON_AUTO_FOCUS_DONE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 5416
    return-void
.end method

.method public onAvailableSizeUpdated(J)V
    .locals 0
    .param p1, "available"    # J

    .prologue
    .line 5914
    return-void
.end method

.method public onBurstShootingDone()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 6072
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->onCaptureDone()V

    .line 6075
    iget v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mBurstPictureCount:I

    if-le v0, v3, :cond_0

    .line 6076
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_REQUEST_CAPTURE_FEEDBACK_ANIMATION:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 6080
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mBurstCoverResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    if-eqz v0, :cond_1

    .line 6081
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_REQUEST_EARLY_THUMBNAIL_INSERT_ANIMATION:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mBurstCoverResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    iget-object v3, v3, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->getRequestId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 6085
    :cond_1
    return-void
.end method

.method public onBurstStoreComplete(Z)V
    .locals 3
    .param p1, "sendBroadcast"    # Z

    .prologue
    .line 6048
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    if-eqz v0, :cond_0

    .line 6049
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mBurstCoverResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->getRequestId()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mBurstCoverResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->addContent(ILandroid/net/Uri;)V

    .line 6063
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->isOneShotPhoto()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6065
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mBurstCoverResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->uri:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;->sendBroadcastCameraShot(Landroid/content/Context;Landroid/net/Uri;Z)V

    .line 6069
    :cond_0
    return-void
.end method

.method public declared-synchronized onDestinationToSaveChanged()V
    .locals 2

    .prologue
    .line 5904
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getStorageManager()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5905
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_STORAGE_MOUNTED:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5909
    :goto_0
    monitor-exit p0

    return-void

    .line 5907
    :cond_0
    :try_start_1
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_STORAGE_ERROR:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5904
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onDeviceError(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$ErrorCode;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "error"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$ErrorCode;
    .param p2, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 5721
    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$5;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$StateMachine$ErrorCode:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$ErrorCode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 5744
    :goto_0
    return-void

    .line 5725
    :pswitch_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 5728
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5730
    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->TAG:Ljava/lang/String;

    const-string v2, "onDeviceError(): [Screen backlight is ON."

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5731
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->showCameraNotAvailableError()V

    goto :goto_0

    .line 5740
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->finish()V

    goto :goto_0

    .line 5721
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onFaceDetected(Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;)V
    .locals 3
    .param p1, "result"    # Lcom/sonyericsson/cameraextension/CameraExtension$FaceDetectionResult;

    .prologue
    .line 5617
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;->EVENT_ON_FACE_DETECTED:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendStaticEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;[Ljava/lang/Object;)V

    .line 5618
    return-void
.end method

.method public onInitialAutoFocusDone(Z)V
    .locals 4
    .param p1, "success"    # Z

    .prologue
    .line 5411
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_ON_INITIAL_AUTO_FOCUS_DONE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 5412
    return-void
.end method

.method public onNotifyThermalStatus(Z)V
    .locals 3
    .param p1, "isWarning"    # Z

    .prologue
    const/4 v2, 0x0

    .line 6199
    if-eqz p1, :cond_0

    .line 6200
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_ON_NOTIFY_THERMAL_WARNING:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 6206
    :goto_0
    return-void

    .line 6203
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_ON_NOTIFY_THERMAL_NORMAL:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onObjectTracked(Lcom/sonyericsson/cameraextension/CameraExtension$ObjectTrackingResult;)V
    .locals 4
    .param p1, "result"    # Lcom/sonyericsson/cameraextension/CameraExtension$ObjectTrackingResult;

    .prologue
    .line 5621
    iget-boolean v0, p1, Lcom/sonyericsson/cameraextension/CameraExtension$ObjectTrackingResult;->mIsLost:Z

    if-eqz v0, :cond_0

    .line 5622
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mTrackedObjectLostTimeoutTask:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TrackedObjectLostTimeoutTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5623
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mTrackedObjectLostTimeoutTask:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TrackedObjectLostTimeoutTask;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5631
    :goto_0
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;->EVENT_ON_OBJECT_TRACKED:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendStaticEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;[Ljava/lang/Object;)V

    .line 5632
    return-void

    .line 5627
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mTrackedObjectLostTimeoutTask:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TrackedObjectLostTimeoutTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onPreShutterDone(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)V
    .locals 3
    .param p1, "savingRequest"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    .prologue
    .line 5432
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->checkCallback(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;)V

    .line 5434
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_ON_PRE_SHUTTER_DONE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 5435
    return-void
.end method

.method public onPreTakePictureDone([BLcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "lastSavingRequest"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    .prologue
    .line 5443
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->checkCallback(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;)V

    .line 5446
    invoke-virtual {p2, p1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->setImageData([B)V

    .line 5449
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_ON_PRE_TAKE_PICTURE_DONE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 5452
    return-void
.end method

.method public onSceneModeChanged(Lcom/sonyericsson/cameraextension/CameraExtension$SceneRecognitionResult;)V
    .locals 3
    .param p1, "result"    # Lcom/sonyericsson/cameraextension/CameraExtension$SceneRecognitionResult;

    .prologue
    .line 5613
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;->EVENT_ON_SCENE_MODE_CHANGED:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendStaticEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;[Ljava/lang/Object;)V

    .line 5614
    return-void
.end method

.method public onShutterDone(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)V
    .locals 3
    .param p1, "savingRequest"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    .prologue
    .line 5438
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_ON_SHUTTER_DONE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 5439
    return-void
.end method

.method public declared-synchronized onStorageStateChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "storage"    # Ljava/lang/String;

    .prologue
    .line 5889
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    if-eqz v0, :cond_0

    .line 5890
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getStorageManager()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5892
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_STORAGE_ERROR:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 5894
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->disableAutoOffTimer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5899
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 5896
    :cond_1
    :try_start_1
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_STORAGE_MOUNTED:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5889
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onStoreComplete(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V
    .locals 3
    .param p1, "result"    # Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    .prologue
    .line 5563
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->getSomcType()I

    move-result v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/mediasaving/MediaSavingUtil;->isCoverPicture(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5564
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->storeCoverResult(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)Z

    .line 5566
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$3;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$3;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5579
    :goto_0
    return-void

    .line 5573
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->isOneShotPhotoSecure()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5574
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->finishSecureOneShot(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V

    goto :goto_0

    .line 5576
    :cond_1
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_ON_STORE_COMPLETED:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onTakePictureDone([BLcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "lastSavingRequest"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    .prologue
    .line 5456
    invoke-virtual {p2, p1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->setImageData([B)V

    .line 5459
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_ON_TAKE_PICTURE_DONE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 5462
    return-void
.end method

.method public onVideoRecordingDone(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;)V
    .locals 3
    .param p1, "lastSavingRequest"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;

    .prologue
    const/4 v2, 0x0

    .line 5469
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mIsInModeLessRecording:Z

    .line 5472
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_ON_VIDEO_RECORDING_DONE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 5475
    return-void
.end method

.method public onZoomChange(IZLandroid/hardware/Camera;)V
    .locals 5
    .param p1, "zoomValue"    # I
    .param p2, "stopped"    # Z
    .param p3, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 5714
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_ON_ZOOM_CHANGED:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 5717
    return-void
.end method

.method public releaseContentsViewController()V
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    .line 204
    return-void
.end method

.method public removeChangeCameraModeTask()V
    .locals 2

    .prologue
    .line 5762
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mChangeCameraModeTask:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$ChangeCameraModeTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5763
    return-void
.end method

.method public removeOnStateChangedListener(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$OnStateChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$OnStateChangedListener;

    .prologue
    .line 471
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mOnStateChangedListenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 472
    return-void
.end method

.method public removeStartRecordingTask()V
    .locals 2

    .prologue
    .line 5022
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mStartRecordingTask:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StartRecordingTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5023
    return-void
.end method

.method public varargs declared-synchronized sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "transitter"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;
    .param p2, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 4085
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$5;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$StateMachine$TransitterEvent:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    .line 4338
    :goto_0
    monitor-exit p0

    return-void

    .line 4087
    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->handleInitialize([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4085
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 4091
    :pswitch_1
    :try_start_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->handleResume([Ljava/lang/Object;)V

    goto :goto_0

    .line 4095
    :pswitch_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->handleResumeTimeout([Ljava/lang/Object;)V

    goto :goto_0

    .line 4099
    :pswitch_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->handlePause([Ljava/lang/Object;)V

    goto :goto_0

    .line 4103
    :pswitch_4
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->handleFinalize([Ljava/lang/Object;)V

    goto :goto_0

    .line 4107
    :pswitch_5
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->handleOnEvfPrepared([Ljava/lang/Object;)V

    goto :goto_0

    .line 4111
    :pswitch_6
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->handleOnEvfPreparationFailed([Ljava/lang/Object;)V

    goto :goto_0

    .line 4115
    :pswitch_7
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->handleOnInitialAutoFocusDone([Ljava/lang/Object;)V

    goto :goto_0

    .line 4119
    :pswitch_8
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->handleOnAutoFocusDone([Ljava/lang/Object;)V

    goto :goto_0

    .line 4123
    :pswitch_9
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->handleOnPreShutterDone([Ljava/lang/Object;)V

    goto :goto_0

    .line 4127
    :pswitch_a
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->handleOnShutterDone([Ljava/lang/Object;)V

    goto :goto_0

    .line 4131
    :pswitch_b
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->handleOnPreTakePictureDone([Ljava/lang/Object;)V

    goto :goto_0

    .line 4135
    :pswitch_c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->handleOnTakePictureDone([Ljava/lang/Object;)V

    goto :goto_0

    .line 4139
    :pswitch_d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->handleOnVideoRecordingDone([Ljava/lang/Object;)V

    goto :goto_0

    .line 4143
    :pswitch_e
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->handleTouchContentProgress()V

    goto :goto_0

    .line 4147
    :pswitch_f
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->handleOnStoreRequested([Ljava/lang/Object;)V

    goto :goto_0

    .line 4151
    :pswitch_10
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->handleOnStoreCompleted([Ljava/lang/Object;)V

    goto :goto_0

    .line 4155
    :pswitch_11
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->handleKeyFocusDown([Ljava/lang/Object;)V

    goto :goto_0

    .line 4159
    :pswitch_12
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->handleKeyFocusUp([Ljava/lang/Object;)V

    goto :goto_0

    .line 4163
    :pswitch_13
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->handleKeyCaptureDown([Ljava/lang/Object;)V

    goto :goto_0

    .line 4167
    :pswitch_14
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->handleKeyCaptureUp([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4171
    :pswitch_15
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->handleKeyZoomInDown([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4175
    :pswitch_16
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->handleKeyZoomOutDown([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4179
    :pswitch_17
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->handleKeyZoomUp([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4183
    :pswitch_18
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->handleKeyMenu([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4187
    :pswitch_19
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->handleKeyBack([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4191
    :pswitch_1a
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->handlePrepareTouchZoom([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4195
    :pswitch_1b
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->handleOnPrepareTouchZoomTimedOut([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4199
    :pswitch_1c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->handleStartTouchZoom([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4203
    :pswitch_1d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->handleStopTouchZoom([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4207
    :pswitch_1e
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->handleCancelTouchZoom([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4211
    :pswitch_1f
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->handleCaptureButtonTouch([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4215
    :pswitch_20
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->handleCaptureButtonRelease([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4219
    :pswitch_21
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->handleCaptureButtonCancel([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4223
    :pswitch_22
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->handleCaptureButtonLongPress([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4227
    :pswitch_23
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->handleScreenClear([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4231
    :pswitch_24
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->handleStartAfSearchInTouch([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4235
    :pswitch_25
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->handleStartAfSearchInTouchStop([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4239
    :pswitch_26
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->handleDialogOpened([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4243
    :pswitch_27
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->handleDialogClosed([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4247
    :pswitch_28
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->handleStorageError([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4251
    :pswitch_29
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->handleStorageMounted([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4255
    :pswitch_2a
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->handleStorageShouldChange([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4259
    :pswitch_2b
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->handleSetFocusPosition([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4263
    :pswitch_2c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->handleRequestSetupHeadUpDisplay([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4267
    :pswitch_2d
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->handleOnRecordingStartWaitDone([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4271
    :pswitch_2e
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->handleOnRecordingError([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4275
    :pswitch_2f
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->handleCamcordButtonRelease([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4279
    :pswitch_30
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->handleSubCamcordButtonTouch([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4283
    :pswitch_31
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->handleSubCamcordButtonRelease([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4287
    :pswitch_32
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->handleSubCamcordButtonCancel([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4291
    :pswitch_33
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->handleChangeSelectedFace([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4295
    :pswitch_34
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->handleSetSelectedObjectPosition([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4299
    :pswitch_35
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->handleDeselectObjectPosition([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4303
    :pswitch_36
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->handleStartAfAfterObjectTracked([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4309
    :pswitch_37
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->handleOnBurstShutterDone([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4313
    :pswitch_38
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->handleOnBurstStoreCompleted([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4317
    :pswitch_39
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->handleOnBurstGroupStoreCompleted([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4323
    :pswitch_3a
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->handleOnOnePreviewFrameUpdated([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4327
    :pswitch_3b
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->handleOnContinuousPreviewFrameUpdated([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4331
    :pswitch_3c
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->handleSwitchCamera([Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 4085
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
    .end packed-switch
.end method

.method public varargs declared-synchronized sendStaticEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;[Ljava/lang/Object;)V
    .locals 12
    .param p1, "staticEvent"    # Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;
    .param p2, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 4345
    monitor-enter p0

    :try_start_0
    sget-object v5, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$5;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$StateMachine$StaticEvent:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$StaticEvent;->ordinal()I

    move-result v6

    aget v5, v5, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v5, :pswitch_data_0

    .line 4443
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 4350
    :pswitch_0
    const/4 v5, 0x0

    :try_start_1
    aget-object v5, p2, v5

    check-cast v5, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    iput-object v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    .line 4351
    iget-object v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->isRecording()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4353
    iget-object v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->disableClick()V

    .line 4356
    :cond_1
    iget-object v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mPhotoSavingRequestList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 4361
    iget-object v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mPhotoSavingRequestList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    .line 4363
    .local v4, "request":Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    iget-object v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->getRequestId(Z)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->setRequestId(I)V

    .line 4366
    iget-object v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getSavingTaskManager()Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->storePicture(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 4345
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "request":Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 4370
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_2
    iget-object v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mPhotoSavingRequestList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 4377
    .end local v1    # "i$":Ljava/util/Iterator;
    :pswitch_1
    sget-object v6, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$5;->$SwitchMap$com$sonyericsson$android$camera$fastcapturing$view$BaseFastViewFinder$HeadUpDisplaySetupState:[I

    const/4 v5, 0x0

    aget-object v5, p2, v5

    check-cast v5, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$HeadUpDisplaySetupState;->ordinal()I

    move-result v5

    aget v5, v6, v5

    packed-switch v5, :pswitch_data_1

    goto :goto_0

    .line 4379
    :pswitch_2
    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->calculateRemainStorage(ZZ)V

    goto :goto_0

    .line 4383
    :pswitch_3
    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->calculateRemainStorage(ZZ)V

    goto :goto_0

    .line 4388
    :pswitch_4
    iget-object v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;

    iget-object v5, v5, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v5, v5, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->width:I

    iget-object v6, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;

    iget-object v6, v6, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v6, v6, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->height:I

    invoke-static {v5, v6}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getValueFromFrameSize(II)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v0

    .line 4391
    .local v0, "cap":Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    const/4 v2, 0x0

    .line 4392
    .local v2, "isConstraint":Z
    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-ne v0, v5, :cond_3

    .line 4393
    const/4 v2, 0x1

    .line 4395
    :cond_3
    const/4 v3, 0x0

    .line 4396
    .local v3, "isVideoHdr":Z
    iget-object v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getVideoHdr()Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    move-result-object v5

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-ne v5, v6, :cond_4

    .line 4397
    const/4 v3, 0x1

    .line 4399
    :cond_4
    iget-object v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    sget-object v6, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_REQUEST_PREPARE_RECORDING_INDICATOR:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;

    iget-object v9, v9, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;->video:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;

    iget-wide v10, v9, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;->maxDurationMills:J

    long-to-int v9, v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-interface {v5, v6, v7}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 4407
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->updateRecordingProgress(I)V

    .line 4408
    iget-object v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->requestOnePreviewFrame()V

    goto/16 :goto_0

    .line 4415
    .end local v0    # "cap":Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    .end local v2    # "isConstraint":Z
    .end local v3    # "isVideoHdr":Z
    :pswitch_5
    iget-object v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    invoke-virtual {v5, p2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->handleOnSceneModeChanged([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4419
    :pswitch_6
    iget-object v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    invoke-virtual {v5, p2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->handleOnFaceDetected([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4423
    :pswitch_7
    iget-object v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    invoke-virtual {v5, p2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->handleOnFaceIdentified([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4427
    :pswitch_8
    iget-object v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    invoke-virtual {v5, p2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->handleOnObjectTracked([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4431
    :pswitch_9
    iget-object v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentState:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;

    invoke-virtual {v5, p2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$State;->handleOnOrientationChanged([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4435
    :pswitch_a
    iget-object v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    sget-object v6, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_ON_LAZY_INITIALIZATION_TASK_RUN:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 4345
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 4377
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public sendVideoChapterThumbnailToViewFinder()V
    .locals 5

    .prologue
    .line 3188
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mChapterThumbnail:Lcom/sonyericsson/android/camera/fastcapturing/ChapterThumbnail;

    if-eqz v0, :cond_1

    .line 3189
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->isHeadUpDesplayReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3190
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;

    if-eqz v0, :cond_0

    .line 3191
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mChapterThumbnail:Lcom/sonyericsson/android/camera/fastcapturing/ChapterThumbnail;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mLastVideoSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->orientation:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/ChapterThumbnail;->setOrientation(I)V

    .line 3193
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_ON_ADD_VIDEO_CHAPTER:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mChapterThumbnail:Lcom/sonyericsson/android/camera/fastcapturing/ChapterThumbnail;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 3196
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mChapterThumbnail:Lcom/sonyericsson/android/camera/fastcapturing/ChapterThumbnail;

    .line 3199
    :cond_1
    return-void
.end method

.method public setCameraDeviceHandler(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)V
    .locals 0
    .param p1, "cameraDeviceHandler"    # Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    .prologue
    .line 485
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    .line 486
    return-void
.end method

.method public setCurrentCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .locals 0
    .param p1, "capturingMode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .prologue
    .line 6191
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCurrentCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 6192
    return-void
.end method

.method public setTargetCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .locals 0
    .param p1, "capturingMode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .prologue
    .line 6195
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mTargetCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 6196
    return-void
.end method

.method public setViewFinder(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;)V
    .locals 0
    .param p1, "viewFinder"    # Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    .prologue
    .line 481
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    .line 482
    return-void
.end method

.method public showStorageErrorDialogForce()V
    .locals 2

    .prologue
    .line 5948
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    if-eqz v0, :cond_1

    .line 5949
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getStorageManager()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5957
    :goto_0
    return-void

    .line 5952
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->TAG:Ljava/lang/String;

    const-string v1, "mActivity.getStorageManager() is null."

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5955
    :cond_1
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->TAG:Ljava/lang/String;

    const-string v1, "mActivity is null."

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public storeCoverResult(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)Z
    .locals 8
    .param p1, "result"    # Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 6023
    iget-object v2, p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->getSomcType()I

    move-result v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/mediasaving/MediaSavingUtil;->isCoverPicture(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6025
    iput-object p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mBurstCoverResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    .line 6031
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    sget-object v3, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_REQUEST_SET_EARLY_THUMBNAIL:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    new-array v4, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    iget-object v6, p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->uri:Landroid/net/Uri;

    iget-object v7, p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    iget-object v7, v7, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v7, v7, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->orientation:I

    invoke-static {v5, v6, v7}, Lcom/sonyericsson/cameracommon/contentsview/ThumbnailUtil;->createThumbnailViewFromUri(Landroid/app/Activity;Landroid/net/Uri;I)Landroid/widget/RelativeLayout;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-interface {v2, v3, v4}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 6038
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected switchStorage()V
    .locals 3

    .prologue
    .line 6149
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    if-eqz v1, :cond_0

    .line 6150
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->SAVE_DESTINATION:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->get(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    move-result-object v0

    .line 6153
    .local v0, "current":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;->SDCARD:Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;

    if-ne v0, v1, :cond_1

    .line 6154
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;->EMMC:Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->set(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    .line 6155
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getStorageManager()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    move-result-object v1

    sget-object v2, Landroid/os/storage/StorageManager$StorageType;->INTERNAL:Landroid/os/storage/StorageManager$StorageType;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->setCurrentStorage(Landroid/os/storage/StorageManager$StorageType;)V

    .line 6161
    .end local v0    # "current":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    :cond_0
    :goto_0
    return-void

    .line 6157
    .restart local v0    # "current":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;->SDCARD:Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->set(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    .line 6158
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mActivity:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getStorageManager()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    move-result-object v1

    sget-object v2, Landroid/os/storage/StorageManager$StorageType;->EXTERNAL_CARD:Landroid/os/storage/StorageManager$StorageType;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->setCurrentStorage(Landroid/os/storage/StorageManager$StorageType;)V

    goto :goto_0
.end method

.method public tryToSetCameraParameters(Landroid/hardware/Camera$Parameters;)Z
    .locals 1
    .param p1, "newParams"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 501
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->trySetParametersToDevice(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    return v0
.end method
