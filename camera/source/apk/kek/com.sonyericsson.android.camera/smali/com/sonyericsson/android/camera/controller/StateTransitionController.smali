.class public Lcom/sonyericsson/android/camera/controller/StateTransitionController;
.super Lcom/sonyericsson/android/camera/controller/CameraFunctions;
.source "StateTransitionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;,
        Lcom/sonyericsson/android/camera/controller/StateTransitionController$Pause;,
        Lcom/sonyericsson/android/camera/controller/StateTransitionController$StorageWarning;,
        Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstShooting;,
        Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstStorageStatus;,
        Lcom/sonyericsson/android/camera/controller/StateTransitionController$PauseInModelessRecording;,
        Lcom/sonyericsson/android/camera/controller/StateTransitionController$PauseInManualRecording;,
        Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingModeless;,
        Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingModelessFinishing;,
        Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingModelessPreparing;,
        Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingManual;,
        Lcom/sonyericsson/android/camera/controller/StateTransitionController$CapturingInModelessRecordingPausing;,
        Lcom/sonyericsson/android/camera/controller/StateTransitionController$CapturingInManualRecordingPausing;,
        Lcom/sonyericsson/android/camera/controller/StateTransitionController$CapturingInModelessRecording;,
        Lcom/sonyericsson/android/camera/controller/StateTransitionController$CapturingInManualRecording;,
        Lcom/sonyericsson/android/camera/controller/StateTransitionController$Capturing;,
        Lcom/sonyericsson/android/camera/controller/StateTransitionController$AfDoneModelessRecording;,
        Lcom/sonyericsson/android/camera/controller/StateTransitionController$AfDone;,
        Lcom/sonyericsson/android/camera/controller/StateTransitionController$ObjectSearching;,
        Lcom/sonyericsson/android/camera/controller/StateTransitionController$AfSearchingModelessRecording;,
        Lcom/sonyericsson/android/camera/controller/StateTransitionController$AfSearching;,
        Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractSearching;,
        Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderVideo;,
        Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderSuperiorAuto;,
        Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderPhoto;,
        Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractViewFinder;,
        Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractPreviewing;,
        Lcom/sonyericsson/android/camera/controller/StateTransitionController$IdleForResume;,
        Lcom/sonyericsson/android/camera/controller/StateTransitionController$Idle;,
        Lcom/sonyericsson/android/camera/controller/StateTransitionController$IdleForFinish;,
        Lcom/sonyericsson/android/camera/controller/StateTransitionController$AbstractIdle;,
        Lcom/sonyericsson/android/camera/controller/StateTransitionController$Error;,
        Lcom/sonyericsson/android/camera/controller/StateTransitionController$ActiveState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mLastSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-class v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/controller/EventDispatcher;)V
    .locals 1
    .param p1, "activity"    # Lcom/sonyericsson/android/camera/CameraActivity;
    .param p2, "dispatcher"    # Lcom/sonyericsson/android/camera/controller/EventDispatcher;

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/controller/EventDispatcher;)V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mLastSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    .line 77
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->registerStates()V

    .line 78
    return-void
.end method

.method static synthetic access$2700(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/controller/StateTransitionController;
    .param p1, "x1"    # Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->launchEditor(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V

    return-void
.end method

.method static synthetic access$2800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/sonyericsson/android/camera/controller/StateTransitionController;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/controller/StateTransitionController;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mLastSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/controller/StateTransitionController;
    .param p1, "x1"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mLastSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/controller/StateTransitionController;
    .param p1, "x1"    # Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->notifyStoreDone(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/sonyericsson/android/camera/controller/StateTransitionController;[B)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/controller/StateTransitionController;
    .param p1, "x1"    # [B

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->storeImage([B)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/controller/StateTransitionController;
    .param p1, "x1"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->openVideoReviewWindow(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/controller/StateTransitionController;
    .param p1, "x1"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->openPhotoReviewWindow(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    return-void
.end method

.method private launchEditor(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V
    .locals 4
    .param p1, "result"    # Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    .prologue
    .line 454
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v2, p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->uri:Landroid/net/Uri;

    iget-object v3, p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    iget-object v3, v3, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v3, v3, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mimeType:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/sonyericsson/cameracommon/review/AutoReviewWindow;->isEditorAvailable(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    .line 459
    .local v0, "isEditorAvailable":Z
    if-nez v0, :cond_0

    .line 461
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->getViewFinderState()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/controller/Executor;->setState(Ljava/lang/Class;)V

    .line 465
    :goto_0
    return-void

    .line 463
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    iget-object v2, p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->uri:Landroid/net/Uri;

    iget-object v3, p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/camera/view/CameraWindow;->openReviewWindow(Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;)V

    goto :goto_0
.end method

.method private notifyStoreDone(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)Z
    .locals 3
    .param p1, "result"    # Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    .prologue
    const/4 v0, 0x0

    .line 470
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mLastSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    if-nez v1, :cond_1

    .line 480
    :cond_0
    :goto_0
    return v0

    .line 475
    :cond_1
    iget-object v1, p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->getRequestId()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mLastSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->getRequestId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 476
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->requestShowIconsOnReviewWindow(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V

    .line 477
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private openPhotoReviewWindow(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 4
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 2730
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShotPhoto()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2746
    :goto_0
    :pswitch_0
    return-void

    .line 2734
    :cond_0
    iget-object v0, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mArg2:Ljava/lang/Object;

    check-cast v0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    .line 2736
    .local v0, "result":Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;
    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$AutoReview:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->getParams()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getAutoReview()Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/AutoReview;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2743
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    iget-object v2, v0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->uri:Landroid/net/Uri;

    iget-object v3, v0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/camera/view/CameraWindow;->openReviewWindow(Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;)V

    goto :goto_0

    .line 2740
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->launchEditor(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V

    goto :goto_0

    .line 2736
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private openVideoReviewWindow(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 4
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 2749
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShotVideo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2765
    :goto_0
    :pswitch_0
    return-void

    .line 2753
    :cond_0
    iget-object v0, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mArg2:Ljava/lang/Object;

    check-cast v0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    .line 2755
    .local v0, "result":Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;
    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoAutoReview:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->getParams()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getVideoAutoReview()Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoAutoReview;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2762
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    iget-object v2, v0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->uri:Landroid/net/Uri;

    iget-object v3, v0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/camera/view/CameraWindow;->openReviewWindow(Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;)V

    goto :goto_0

    .line 2759
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->launchEditor(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V

    goto :goto_0

    .line 2755
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private shouldRestartPreview(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)Z
    .locals 2
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 365
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->isAbortEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    const/4 v0, 0x0

    .line 369
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->getParams()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getResolution()Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getPhotoPreviewSize(Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->shouldRestartPreview(Landroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0
.end method

.method private storeImage([B)Z
    .locals 3
    .param p1, "image"    # [B

    .prologue
    .line 2704
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mShooting:Lcom/sonyericsson/android/camera/controller/Shooting;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/camera/controller/Shooting;->storePicture([B)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    move-result-object v0

    .line 2706
    .local v0, "request":Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;
    if-eqz v0, :cond_0

    .line 2708
    iget-object v1, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->savedFileType:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;

    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;->PHOTO_DURING_REC:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;

    if-ne v1, v2, :cond_1

    .line 2716
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShot()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2718
    const/4 v1, 0x0

    .line 2726
    :goto_1
    return v1

    .line 2712
    :cond_1
    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mLastSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    goto :goto_0

    .line 2722
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->getWearableBridge()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2723
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->getWearableBridge()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->getPhotoStateNotifier()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$PhotoStateNotifier;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$PhotoStateNotifier;->onCaptureSucceeded()V

    .line 2726
    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method protected cancelAf(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/sonyericsson/android/camera/controller/State;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 214
    .local p1, "state":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/sonyericsson/android/camera/controller/State;>;"
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mShooting:Lcom/sonyericsson/android/camera/controller/Shooting;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/Shooting;->stopAutoFocus()V

    .line 215
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->hideOnScreenButton()V

    .line 216
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/Executor;->setState(Ljava/lang/Class;)V

    .line 217
    return-void
.end method

.method public captureAutoTransition()V
    .locals 5

    .prologue
    .line 145
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_CAPTURE:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->AUTO_STATE_TRANSITION:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-class v4, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AfDone;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sonyericsson/android/camera/controller/Executor;->postEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;ILjava/lang/Object;Ljava/lang/Class;)V

    .line 151
    return-void
.end method

.method protected captureInPhotoPreview(Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V
    .locals 2
    .param p1, "source"    # Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    .prologue
    .line 174
    if-nez p1, :cond_0

    .line 186
    :goto_0
    return-void

    .line 177
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;->$SwitchMap$com$sonyericsson$android$camera$controller$ControllerEventSource:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 183
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->startAf(Lcom/sonyericsson/android/camera/controller/ControllerEventSource;Z)V

    goto :goto_0

    .line 179
    :pswitch_0
    const-class v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingModeless;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->startRec(Ljava/lang/Class;)V

    goto :goto_0

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected finalizeRec(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 7
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    const/4 v6, 0x1

    .line 325
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/CameraWindow;->hideRecordingView()V

    .line 326
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->updateSelftimers()V

    .line 328
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mVideoDevice:Lcom/sonyericsson/android/camera/controller/VideoDevice;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/controller/VideoDevice;->getSavingRequest()Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;

    move-result-object v2

    .line 330
    .local v2, "request":Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mVideoDevice:Lcom/sonyericsson/android/camera/controller/VideoDevice;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/controller/VideoDevice;->getRecordingTime()I

    move-result v3

    int-to-long v0, v3

    .line 331
    .local v0, "duration":J
    invoke-virtual {v2, v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;->setDuration(J)V

    .line 332
    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;->getDateTaken()J

    move-result-wide v4

    add-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;->setDateTaken(J)V

    .line 334
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->releaseVideoDevice()V

    .line 335
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/CameraActivity;->disableAutoOffTimer()V

    .line 337
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/CameraActivity;->getStorageManager()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->isReadable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 339
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->getParams()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getVideoStabilizer()Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->isIntelligentActive(Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 340
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v3, v6}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getRequestId(Z)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;->setRequestId(I)V

    .line 342
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mSavingTaskManager:Lcom/sonyericsson/android/camera/mediasaving/BurstSavingTaskManager;

    invoke-virtual {v3, v2}, Lcom/sonyericsson/android/camera/mediasaving/BurstSavingTaskManager;->storeVideo(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;)V

    .line 345
    :cond_1
    sget-object v3, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->RECORDING_STOP:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V

    .line 346
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->outResult()V

    .line 349
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShot()Z

    move-result v3

    if-nez v3, :cond_2

    .line 351
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mControllerManager:Lcom/sonyericsson/android/camera/ControllerManager;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/ControllerManager;->getType()I

    move-result v3

    if-ne v3, v6, :cond_3

    .line 353
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->shouldRestartPreview(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 354
    const-class v3, Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingModelessFinishing;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/controller/Executor;->setState(Ljava/lang/Class;)V

    .line 355
    invoke-virtual {p0, v6}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->changeSurfaceSize(I)V

    .line 362
    :cond_2
    :goto_0
    return-void

    .line 360
    :cond_3
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->finishRecording(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    goto :goto_0
.end method

.method protected getEventAction(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)Lcom/sonyericsson/android/camera/controller/EventAction;
    .locals 1
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 434
    iget-object v0, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mArg2:Ljava/lang/Object;

    check-cast v0, Lcom/sonyericsson/android/camera/controller/EventAction;

    .line 435
    .local v0, "action":Lcom/sonyericsson/android/camera/controller/EventAction;
    return-object v0
.end method

.method protected getViewFinderState()Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/sonyericsson/android/camera/controller/State;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShotVideo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    const-class v1, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderVideo;

    .line 121
    :goto_0
    return-object v1

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mControllerManager:Lcom/sonyericsson/android/camera/ControllerManager;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/ControllerManager;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    .line 115
    .local v0, "capturingMode":Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne v0, v1, :cond_2

    .line 117
    :cond_1
    const-class v1, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderSuperiorAuto;

    goto :goto_0

    .line 118
    :cond_2
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 119
    const-class v1, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderVideo;

    goto :goto_0

    .line 121
    :cond_3
    const-class v1, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderPhoto;

    goto :goto_0
.end method

.method protected getViewRect(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)Landroid/graphics/Rect;
    .locals 1
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 429
    iget-object v0, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mArg2:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Rect;

    .line 430
    .local v0, "viewRect":Landroid/graphics/Rect;
    return-object v0
.end method

.method protected launch()V
    .locals 1

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->getViewFinderState()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->setState(Ljava/lang/Class;)V

    .line 140
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_LAUNCH:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->sendEmptyEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;)V

    .line 141
    return-void
.end method

.method protected onVideoInfo(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 3
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 392
    const/4 v0, 0x0

    .line 393
    .local v0, "reachMax":Z
    iget v1, p1, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->mArg1:I

    .line 394
    .local v1, "what":I
    const/16 v2, 0x320

    if-eq v1, v2, :cond_0

    const/16 v2, 0x321

    if-ne v1, v2, :cond_1

    .line 396
    :cond_0
    const/4 v0, 0x1

    .line 401
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->stopRec(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    .line 402
    return-void
.end method

.method protected pauseRec(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 374
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mVideoDevice:Lcom/sonyericsson/android/camera/controller/VideoDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/VideoDevice;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mVideoDevice:Lcom/sonyericsson/android/camera/controller/VideoDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/VideoDevice;->pause()V

    .line 377
    :cond_0
    return-void
.end method

.method protected registerStates()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$Error;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$Error;-><init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;)V

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->registerState(Lcom/sonyericsson/android/camera/controller/State;)V

    .line 82
    new-instance v0, Lcom/sonyericsson/android/camera/controller/Inactive;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/controller/Inactive;-><init>()V

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->registerState(Lcom/sonyericsson/android/camera/controller/State;)V

    .line 83
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$Idle;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$Idle;-><init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;)V

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->registerState(Lcom/sonyericsson/android/camera/controller/State;)V

    .line 84
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$IdleForResume;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$IdleForResume;-><init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;)V

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->registerState(Lcom/sonyericsson/android/camera/controller/State;)V

    .line 85
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$IdleForFinish;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$IdleForFinish;-><init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;)V

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->registerState(Lcom/sonyericsson/android/camera/controller/State;)V

    .line 86
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AfSearching;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AfSearching;-><init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;)V

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->registerState(Lcom/sonyericsson/android/camera/controller/State;)V

    .line 87
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AfDone;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AfDone;-><init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;)V

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->registerState(Lcom/sonyericsson/android/camera/controller/State;)V

    .line 88
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AfSearchingModelessRecording;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AfSearchingModelessRecording;-><init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;)V

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->registerState(Lcom/sonyericsson/android/camera/controller/State;)V

    .line 89
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AfDoneModelessRecording;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AfDoneModelessRecording;-><init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;)V

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->registerState(Lcom/sonyericsson/android/camera/controller/State;)V

    .line 90
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ObjectSearching;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ObjectSearching;-><init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;)V

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->registerState(Lcom/sonyericsson/android/camera/controller/State;)V

    .line 91
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$Capturing;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$Capturing;-><init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;)V

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->registerState(Lcom/sonyericsson/android/camera/controller/State;)V

    .line 92
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$CapturingInManualRecording;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$CapturingInManualRecording;-><init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;)V

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->registerState(Lcom/sonyericsson/android/camera/controller/State;)V

    .line 93
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$CapturingInModelessRecording;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$CapturingInModelessRecording;-><init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;)V

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->registerState(Lcom/sonyericsson/android/camera/controller/State;)V

    .line 94
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingManual;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingManual;-><init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;)V

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->registerState(Lcom/sonyericsson/android/camera/controller/State;)V

    .line 95
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingModeless;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingModeless;-><init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;)V

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->registerState(Lcom/sonyericsson/android/camera/controller/State;)V

    .line 96
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingModelessFinishing;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingModelessFinishing;-><init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;)V

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->registerState(Lcom/sonyericsson/android/camera/controller/State;)V

    .line 97
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingModelessPreparing;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingModelessPreparing;-><init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;)V

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->registerState(Lcom/sonyericsson/android/camera/controller/State;)V

    .line 98
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstShooting;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstShooting;-><init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;)V

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->registerState(Lcom/sonyericsson/android/camera/controller/State;)V

    .line 99
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$StorageWarning;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$StorageWarning;-><init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;)V

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->registerState(Lcom/sonyericsson/android/camera/controller/State;)V

    .line 100
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$Pause;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$Pause;-><init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;)V

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->registerState(Lcom/sonyericsson/android/camera/controller/State;)V

    .line 101
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderSuperiorAuto;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderSuperiorAuto;-><init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;)V

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->registerState(Lcom/sonyericsson/android/camera/controller/State;)V

    .line 102
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderPhoto;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderPhoto;-><init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;)V

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->registerState(Lcom/sonyericsson/android/camera/controller/State;)V

    .line 103
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderVideo;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$ViewFinderVideo;-><init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;)V

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->registerState(Lcom/sonyericsson/android/camera/controller/State;)V

    .line 104
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$PauseInManualRecording;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$PauseInManualRecording;-><init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;)V

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->registerState(Lcom/sonyericsson/android/camera/controller/State;)V

    .line 105
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$PauseInModelessRecording;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$PauseInModelessRecording;-><init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;)V

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->registerState(Lcom/sonyericsson/android/camera/controller/State;)V

    .line 106
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$CapturingInManualRecordingPausing;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$CapturingInManualRecordingPausing;-><init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;)V

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->registerState(Lcom/sonyericsson/android/camera/controller/State;)V

    .line 107
    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$CapturingInModelessRecordingPausing;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController$CapturingInModelessRecordingPausing;-><init>(Lcom/sonyericsson/android/camera/controller/StateTransitionController;Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;)V

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->registerState(Lcom/sonyericsson/android/camera/controller/State;)V

    .line 108
    return-void
.end method

.method protected resumeRec(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)Z
    .locals 2
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 381
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mVideoDevice:Lcom/sonyericsson/android/camera/controller/VideoDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/VideoDevice;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mVideoDevice:Lcom/sonyericsson/android/camera/controller/VideoDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/VideoDevice;->resume()V

    .line 383
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->showRecordingView()V

    .line 384
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mVideoDevice:Lcom/sonyericsson/android/camera/controller/VideoDevice;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/VideoDevice;->getSavingRequest()Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;

    move-result-object v1

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->orientation:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->requestToAddVideoChapter(I)V

    .line 386
    const/4 v0, 0x1

    .line 388
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setInitState(Z)V
    .locals 1
    .param p1, "launch"    # Z

    .prologue
    .line 131
    if-eqz p1, :cond_0

    .line 132
    const-class v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$IdleForResume;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->setState(Ljava/lang/Class;)V

    .line 136
    :goto_0
    return-void

    .line 134
    :cond_0
    const-class v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$Idle;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->setState(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method protected startAf(Lcom/sonyericsson/android/camera/controller/ControllerEventSource;Z)V
    .locals 2
    .param p1, "source"    # Lcom/sonyericsson/android/camera/controller/ControllerEventSource;
    .param p2, "autoCapture"    # Z

    .prologue
    .line 189
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->updateRemain()Z

    move-result v0

    if-nez v0, :cond_1

    .line 211
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mSavingTaskManager:Lcom/sonyericsson/android/camera/mediasaving/BurstSavingTaskManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/mediasaving/BurstSavingTaskManager;->canPushStoreTask()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$1;->$SwitchMap$com$sonyericsson$android$camera$controller$ControllerEventSource:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 203
    const-class v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AfSearching;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->setState(Ljava/lang/Class;)V

    .line 204
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->showAutoFocusView()V

    .line 205
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mShooting:Lcom/sonyericsson/android/camera/controller/Shooting;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/Shooting;->startAutoFocus(Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V

    .line 206
    if-eqz p2, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->captureAutoTransition()V

    goto :goto_0

    .line 197
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected startRec(Ljava/lang/Class;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/sonyericsson/android/camera/controller/State;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "recordingState":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/sonyericsson/android/camera/controller/State;>;"
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 221
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/media/utility/AudioResourceChecker;->isAudioResourceAvailable(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getMessagePopup()Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    move-result-object v0

    const v1, 0x7f090185

    const v2, 0x7f090092

    const v4, 0x7f0900ad

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showOk(IIZILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 230
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->getViewFinderState()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->setState(Ljava/lang/Class;)V

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mVideoDevice:Lcom/sonyericsson/android/camera/controller/VideoDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/VideoDevice;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->isAlertDialogOpened()Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->RECORDING_START:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V

    .line 245
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->pauseAudioPlayback()V

    .line 248
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mControllerManager:Lcom/sonyericsson/android/camera/ControllerManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/ControllerManager;->getType()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 250
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->getParams()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getVideoPreviewSize(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->shouldRestartPreview(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 252
    const-class v0, Lcom/sonyericsson/android/camera/controller/StateTransitionController$RecordingModelessPreparing;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->setState(Ljava/lang/Class;)V

    .line 253
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->prepareRecording()V

    .line 254
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->changeSurfaceSize(I)V

    .line 265
    :goto_1
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->RECORDING_START:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-static {v0, v3}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V

    .line 266
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->outResult()V

    goto :goto_0

    .line 256
    :cond_2
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/Executor;->setState(Ljava/lang/Class;)V

    .line 257
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->prepareRecording()V

    .line 258
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->startModelessRecording()V

    goto :goto_1

    .line 261
    :cond_3
    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/Executor;->setState(Ljava/lang/Class;)V

    .line 262
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->prepareRecording()V

    .line 263
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->startRecording()V

    goto :goto_1
.end method

.method protected stopBurst(Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)Z
    .locals 1
    .param p1, "source"    # Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    .prologue
    .line 415
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mBurstShooting:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->getStartedBy()Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 421
    const/4 v0, 0x0

    .line 425
    :goto_0
    return v0

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mBurstShooting:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->stop()V

    .line 425
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected stopBurstAndGoToViewFinder(Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V
    .locals 1
    .param p1, "source"    # Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    .prologue
    .line 405
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->stopBurst(Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mBurstShooting:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->isStopRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mBurstShooting:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->isCapturing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mBurstShooting:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->isBurstGroupStoreCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->getViewFinderState()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->setState(Ljava/lang/Class;)V

    .line 412
    :cond_0
    return-void
.end method

.method protected stopBurstAutoTransition(Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V
    .locals 5
    .param p1, "source"    # Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 154
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->KEY:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    if-ne p1, v0, :cond_0

    .line 155
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/Executor;->clearAutoDispatchEvent()V

    .line 156
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->stopBurst(Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)Z

    .line 157
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_CAPTURE:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->AUTO_STATE_TRANSITION:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    const-class v2, Lcom/sonyericsson/android/camera/controller/StateTransitionController$AfDone;

    invoke-static {v0, v1, v3, v4, v2}, Lcom/sonyericsson/android/camera/controller/Executor;->postEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;ILjava/lang/Object;Ljava/lang/Class;)V

    .line 171
    :goto_0
    return-void

    .line 164
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_BURST_STOP:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    const-class v1, Lcom/sonyericsson/android/camera/controller/StateTransitionController$BurstShooting;

    invoke-static {v0, p1, v3, v4, v1}, Lcom/sonyericsson/android/camera/controller/Executor;->postEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;ILjava/lang/Object;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method protected stopRec(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 3
    .param p1, "cause"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    const/4 v2, 0x1

    .line 306
    sget-object v1, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->RECORDING_STOP:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V

    .line 307
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mVideoDevice:Lcom/sonyericsson/android/camera/controller/VideoDevice;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/VideoDevice;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 308
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mVideoDevice:Lcom/sonyericsson/android/camera/controller/VideoDevice;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/VideoDevice;->stop()V

    .line 310
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mVideoDevice:Lcom/sonyericsson/android/camera/controller/VideoDevice;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/VideoDevice;->getSavingRequest()Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;

    move-result-object v0

    .line 312
    .local v0, "request":Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->getStorageManager()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->isReadable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 314
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->getParams()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getVideoStabilizer()Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->isIntelligentActive(Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getRequestId(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;->setRequestId(I)V

    .line 319
    :cond_0
    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mLastSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    .line 322
    .end local v0    # "request":Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;
    :cond_1
    return-void
.end method

.method public stopRecordingUrgently(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 2
    .param p1, "cause"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 278
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mVideoDevice:Lcom/sonyericsson/android/camera/controller/VideoDevice;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/VideoDevice;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 279
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->stopRec(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    .line 282
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mVideoDevice:Lcom/sonyericsson/android/camera/controller/VideoDevice;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/VideoDevice;->isRecording()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mVideoDevice:Lcom/sonyericsson/android/camera/controller/VideoDevice;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/VideoDevice;->isRecordStopping()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 287
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->isAbortEvent()Z

    move-result v1

    if-nez v1, :cond_2

    .line 288
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mVideoDevice:Lcom/sonyericsson/android/camera/controller/VideoDevice;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/VideoDevice;->awaitFinishingRecording()V

    .line 291
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->finalizeRec(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    .line 292
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mVideoDevice:Lcom/sonyericsson/android/camera/controller/VideoDevice;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/VideoDevice;->getOutputFile()Ljava/lang/String;

    move-result-object v0

    .line 293
    .local v0, "filePath":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/RecordingUtil;->deleteFile(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 294
    invoke-static {}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->getInstance()Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->returnUnusedFile()V

    .line 297
    .end local v0    # "filePath":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method protected switchStorage()V
    .locals 3

    .prologue
    .line 439
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->getParameterManager()Lcom/sonyericsson/android/camera/parameter/ParameterManager;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->get(Lcom/sonyericsson/android/camera/configuration/ParameterKey;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    .line 442
    .local v0, "current":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->SDCARD:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    if-ne v0, v1, :cond_0

    .line 443
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->getParameterManager()Lcom/sonyericsson/android/camera/parameter/ParameterManager;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->EMMC:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->set(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    .line 448
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->updateSettingDialog()V

    .line 450
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;->UNAVAILABLE:Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->setSelectability(Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;)V

    .line 451
    return-void

    .line 445
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateTransitionController;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->getParameterManager()Lcom/sonyericsson/android/camera/parameter/ParameterManager;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->SDCARD:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->set(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    goto :goto_0
.end method
