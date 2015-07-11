.class public Lcom/sonyericsson/android/camera/controller/BurstShooting;
.super Ljava/lang/Object;
.source "BurstShooting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/controller/BurstShooting$1;,
        Lcom/sonyericsson/android/camera/controller/BurstShooting$StoreDataCallbackHigh;,
        Lcom/sonyericsson/android/camera/controller/BurstShooting$StoreDataCallbackBestEffort;,
        Lcom/sonyericsson/android/camera/controller/BurstShooting$Off;,
        Lcom/sonyericsson/android/camera/controller/BurstShooting$High;,
        Lcom/sonyericsson/android/camera/controller/BurstShooting$BestEffort;,
        Lcom/sonyericsson/android/camera/controller/BurstShooting$BurstShotMethod;,
        Lcom/sonyericsson/android/camera/controller/BurstShooting$MessageHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBurstId:I

.field private mBurstShooting:Lcom/sonyericsson/android/camera/controller/BurstShooting$BurstShotMethod;

.field private mCallbackBestEffort:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest$StoreDataCallback;

.field private mCallbackHigh:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest$StoreDataCallback;

.field private final mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

.field private mCoverResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

.field private mCurrentSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

.field private final mHandler:Lcom/sonyericsson/android/camera/controller/BurstShooting$MessageHandler;

.field private mIsCapturing:Z

.field private mIsStopRequested:Z

.field private mMinimumPictureCount:I

.field private mPathBuilder:Lcom/sonyericsson/cameracommon/mediasaving/EachDirPathBuilder;

.field private mPictureCount:I

.field private mSavedPictureCount:I

.field private mStartedBy:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/sonyericsson/android/camera/controller/BurstShooting;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/controller/BurstShooting;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/android/camera/controller/CameraFunctions;)V
    .locals 2
    .param p1, "controller"    # Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/sonyericsson/android/camera/controller/BurstShooting$MessageHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/controller/BurstShooting$MessageHandler;-><init>(Lcom/sonyericsson/android/camera/controller/BurstShooting;Lcom/sonyericsson/android/camera/controller/BurstShooting$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting;->mHandler:Lcom/sonyericsson/android/camera/controller/BurstShooting$MessageHandler;

    .line 58
    new-instance v0, Lcom/sonyericsson/android/camera/controller/BurstShooting$StoreDataCallbackBestEffort;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/controller/BurstShooting$StoreDataCallbackBestEffort;-><init>(Lcom/sonyericsson/android/camera/controller/BurstShooting;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting;->mCallbackBestEffort:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest$StoreDataCallback;

    .line 60
    new-instance v0, Lcom/sonyericsson/android/camera/controller/BurstShooting$StoreDataCallbackHigh;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/controller/BurstShooting$StoreDataCallbackHigh;-><init>(Lcom/sonyericsson/android/camera/controller/BurstShooting;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting;->mCallbackHigh:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest$StoreDataCallback;

    .line 79
    const/4 v0, 0x1

    iput v0, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting;->mMinimumPictureCount:I

    .line 47
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    .line 48
    return-void
.end method

.method static synthetic access$1000(Lcom/sonyericsson/android/camera/controller/BurstShooting;Ljava/lang/String;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest$StoreDataCallback;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/controller/BurstShooting;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest$StoreDataCallback;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->createSavingRequest(Ljava/lang/String;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest$StoreDataCallback;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sonyericsson/android/camera/controller/BurstShooting;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/controller/BurstShooting;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->setIsCapturing(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sonyericsson/android/camera/controller/BurstShooting;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/controller/BurstShooting;

    .prologue
    .line 44
    iget v0, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting;->mPictureCount:I

    return v0
.end method

.method static synthetic access$1202(Lcom/sonyericsson/android/camera/controller/BurstShooting;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/controller/BurstShooting;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting;->mPictureCount:I

    return p1
.end method

.method static synthetic access$1208(Lcom/sonyericsson/android/camera/controller/BurstShooting;)I
    .locals 2
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/controller/BurstShooting;

    .prologue
    .line 44
    iget v0, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting;->mPictureCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting;->mPictureCount:I

    return v0
.end method

.method static synthetic access$1300(Lcom/sonyericsson/android/camera/controller/BurstShooting;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/controller/BurstShooting;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->getCopiedSavingRequest()Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sonyericsson/android/camera/controller/BurstShooting;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/controller/BurstShooting;

    .prologue
    .line 44
    iget v0, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting;->mBurstId:I

    return v0
.end method

.method static synthetic access$1402(Lcom/sonyericsson/android/camera/controller/BurstShooting;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/controller/BurstShooting;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting;->mBurstId:I

    return p1
.end method

.method static synthetic access$1500(Lcom/sonyericsson/android/camera/controller/BurstShooting;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest$StoreDataCallback;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/controller/BurstShooting;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting;->mCallbackHigh:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest$StoreDataCallback;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sonyericsson/android/camera/controller/BurstShooting;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/controller/BurstShooting;

    .prologue
    .line 44
    iget v0, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting;->mMinimumPictureCount:I

    return v0
.end method

.method static synthetic access$1702(Lcom/sonyericsson/android/camera/controller/BurstShooting;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/controller/BurstShooting;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting;->mSavedPictureCount:I

    return p1
.end method

.method static synthetic access$1708(Lcom/sonyericsson/android/camera/controller/BurstShooting;)I
    .locals 2
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/controller/BurstShooting;

    .prologue
    .line 44
    iget v0, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting;->mSavedPictureCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting;->mSavedPictureCount:I

    return v0
.end method

.method static synthetic access$1800(Lcom/sonyericsson/android/camera/controller/BurstShooting;Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/controller/BurstShooting;
    .param p1, "x1"    # Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->storeCoverResult(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/controller/BurstShooting;)Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/controller/BurstShooting;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting;->mCoverResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera/controller/BurstShooting;)Lcom/sonyericsson/android/camera/controller/CameraFunctions;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/controller/BurstShooting;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonyericsson/android/camera/controller/BurstShooting;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/controller/BurstShooting;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->prepareNextShot(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/sonyericsson/android/camera/controller/BurstShooting;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/controller/BurstShooting;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonyericsson/android/camera/controller/BurstShooting;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/controller/BurstShooting;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting;->mCurrentSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sonyericsson/android/camera/controller/BurstShooting;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest$StoreDataCallback;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/controller/BurstShooting;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting;->mCallbackBestEffort:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest$StoreDataCallback;

    return-object v0
.end method

.method private createSavingRequest(Ljava/lang/String;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest$StoreDataCallback;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    .locals 20
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest$StoreDataCallback;

    .prologue
    .line 133
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/android/camera/controller/BurstShooting;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v3, v3, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/CameraActivity;->getSensorOrientationDegree()I

    move-result v17

    .line 134
    .local v17, "orientationDegree":I
    invoke-static/range {v17 .. v17}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getNormalizedRotation(I)I

    move-result v18

    .line 136
    .local v18, "orientationForCp":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/android/camera/controller/BurstShooting;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v3, v3, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mControllerManager:Lcom/sonyericsson/android/camera/ControllerManager;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/ControllerManager;->getCameraId()I

    move-result v3

    invoke-static {v3}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getCameraInfo(I)Landroid/hardware/Camera$CameraInfo;

    move-result-object v2

    .line 140
    .local v2, "info":Landroid/hardware/Camera$CameraInfo;
    iget v3, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 142
    iget v3, v2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/lit16 v3, v3, 0x168

    sub-int v3, v3, v18

    rem-int/lit16 v6, v3, 0x168

    .line 147
    .local v6, "orientation":I
    :goto_0
    new-instance v19, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    new-instance v3, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonyericsson/android/camera/controller/BurstShooting;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v7, v7, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/CameraActivity;->getGeoTagManager()Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sonyericsson/android/camera/controller/BurstShooting;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v8, v8, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sonyericsson/android/camera/controller/BurstShooting;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v9, v9, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    const-string v10, "image/jpeg"

    const-string v11, ".JPG"

    sget-object v12, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;->BURST:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;

    const-string v14, ""

    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object/from16 v13, p1

    invoke-direct/range {v3 .. v16}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;-><init>(JILandroid/location/Location;IILjava/lang/String;Ljava/lang/String;Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;Ljava/lang/String;Ljava/lang/String;ZZ)V

    new-instance v4, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    invoke-direct {v4}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;-><init>()V

    move-object/from16 v0, v19

    invoke-direct {v0, v3, v4}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;)V

    .line 163
    .local v19, "request":Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->addCallback(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest$StoreDataCallback;)V

    .line 164
    const/4 v3, 0x2

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->setSomcType(I)V

    .line 166
    return-object v19

    .line 144
    .end local v6    # "orientation":I
    .end local v19    # "request":Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    :cond_0
    iget v3, v2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int v3, v3, v18

    rem-int/lit16 v6, v3, 0x168

    .restart local v6    # "orientation":I
    goto :goto_0
.end method

.method private getCopiedSavingRequest()Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    .locals 2

    .prologue
    .line 220
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting;->mCurrentSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)V

    .line 222
    .local v0, "request":Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    return-object v0
.end method

.method private getPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 251
    const-string v0, "/dev/null"

    .line 252
    .local v0, "path":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting;->mPathBuilder:Lcom/sonyericsson/cameracommon/mediasaving/EachDirPathBuilder;

    if-eqz v1, :cond_0

    .line 253
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting;->mPathBuilder:Lcom/sonyericsson/cameracommon/mediasaving/EachDirPathBuilder;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/mediasaving/EachDirPathBuilder;->assignImageFilePath()Ljava/lang/String;

    move-result-object v0

    .line 256
    :cond_0
    return-object v0
.end method

.method private getPathBuilder()Lcom/sonyericsson/cameracommon/mediasaving/EachDirPathBuilder;
    .locals 3

    .prologue
    .line 241
    const/4 v0, 0x0

    .line 243
    .local v0, "pathBuilder":Lcom/sonyericsson/cameracommon/mediasaving/EachDirPathBuilder;
    :try_start_0
    new-instance v1, Lcom/sonyericsson/cameracommon/mediasaving/EachDirPathBuilder;

    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingConstants;->BURST_DIR_NAME:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/EachDirPathBuilder;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "pathBuilder":Lcom/sonyericsson/cameracommon/mediasaving/EachDirPathBuilder;
    .local v1, "pathBuilder":Lcom/sonyericsson/cameracommon/mediasaving/EachDirPathBuilder;
    move-object v0, v1

    .line 247
    .end local v1    # "pathBuilder":Lcom/sonyericsson/cameracommon/mediasaving/EachDirPathBuilder;
    .restart local v0    # "pathBuilder":Lcom/sonyericsson/cameracommon/mediasaving/EachDirPathBuilder;
    :goto_0
    return-object v0

    .line 244
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private onShootingDone()V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->fadeoutCounter()V

    .line 264
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting;->mCoverResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting;->mCoverResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->getRequestId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->startEarlyThumbnailInsertAnimation(I)V

    .line 268
    :cond_0
    return-void
.end method

.method private prepareNextShot(Z)V
    .locals 2
    .param p1, "isHighBurst"    # Z

    .prologue
    .line 227
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting;->mCurrentSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->getSomcType()I

    move-result v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/mediasaving/MediaSavingUtil;->isCoverPicture(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting;->mCurrentSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->setSomcType(I)V

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting;->mCurrentSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->updateSavingRequest(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;Z)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    .line 233
    return-void
.end method

.method private sendGoogleAnalyticsBurstEvent()V
    .locals 2

    .prologue
    .line 364
    iget v0, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting;->mPictureCount:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 370
    :goto_0
    return-void

    .line 368
    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;->getInstance()Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;->sendEventSettings()V

    .line 369
    invoke-static {}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->getInstance()Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;->BURST:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CaptureOperation;

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->setUserOperation(Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$UserOperation;)V

    goto :goto_0
.end method

.method private setIsCapturing(Z)V
    .locals 0
    .param p1, "isCapturing"    # Z

    .prologue
    .line 278
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting;->mIsCapturing:Z

    .line 279
    return-void
.end method

.method private setIsStopRequested(Z)V
    .locals 0
    .param p1, "isStopRequested"    # Z

    .prologue
    .line 289
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting;->mIsStopRequested:Z

    .line 290
    return-void
.end method

.method private storeCoverResult(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V
    .locals 6
    .param p1, "result"    # Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    .prologue
    .line 175
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting;->mCoverResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    if-nez v1, :cond_0

    .line 176
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting;->mCoverResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    .line 178
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v2, p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->uri:Landroid/net/Uri;

    iget-object v3, p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    iget-object v3, v3, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v3, v3, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->orientation:I

    invoke-static {v1, v2, v3}, Lcom/sonyericsson/cameracommon/contentsview/ThumbnailUtil;->createThumbnailViewFromUri(Landroid/app/Activity;Landroid/net/Uri;I)Landroid/widget/RelativeLayout;

    move-result-object v0

    .line 181
    .local v0, "thumbnail":Landroid/view/View;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setEarlyThumbnailView(Landroid/view/View;)V

    .line 183
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->isStopRequested()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting;->mHandler:Lcom/sonyericsson/android/camera/controller/BurstShooting$MessageHandler;

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Lcom/sonyericsson/android/camera/controller/BurstShooting$MessageHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 190
    .end local v0    # "thumbnail":Landroid/view/View;
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 115
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->setIsCapturing(Z)V

    .line 116
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->setIsStopRequested(Z)V

    .line 117
    iput v1, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting;->mBurstId:I

    .line 118
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting;->mHandler:Lcom/sonyericsson/android/camera/controller/BurstShooting$MessageHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/BurstShooting$MessageHandler;->clear()V

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting;->mCoverResult:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    .line 120
    iput v1, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting;->mPictureCount:I

    .line 121
    const/4 v0, 0x1

    iput v0, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting;->mMinimumPictureCount:I

    .line 122
    iput v1, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting;->mSavedPictureCount:I

    .line 123
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->OTHER:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting;->mStartedBy:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    .line 124
    return-void
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 384
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->stop()V

    .line 385
    return-void
.end method

.method public getPictureCount()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting;->mPictureCount:I

    return v0
.end method

.method public getStartedBy()Lcom/sonyericsson/android/camera/controller/ControllerEventSource;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting;->mStartedBy:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    return-object v0
.end method

.method public isBurstGroupStoreCompleted()Z
    .locals 2

    .prologue
    .line 293
    iget v0, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting;->mPictureCount:I

    iget v1, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting;->mSavedPictureCount:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCapturing()Z
    .locals 1

    .prologue
    .line 271
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting;->mIsCapturing:Z

    return v0
.end method

.method public isStopRequested()Z
    .locals 1

    .prologue
    .line 282
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting;->mIsStopRequested:Z

    return v0
.end method

.method public logBurstShotResult(Ljava/lang/String;Lcom/sonyericsson/cameraextension/CameraExtension$BurstShotResult;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/sonyericsson/cameraextension/CameraExtension$BurstShotResult;

    .prologue
    .line 690
    return-void
.end method

.method public requestContinue()V
    .locals 1

    .prologue
    .line 373
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->isStopRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    :goto_0
    return-void

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting;->mBurstShooting:Lcom/sonyericsson/android/camera/controller/BurstShooting$BurstShotMethod;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/controller/BurstShooting$BurstShotMethod;->requestContinue()V

    goto :goto_0
.end method

.method public start(Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)Z
    .locals 3
    .param p1, "source"    # Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    .prologue
    const/4 v0, 0x0

    .line 309
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->clear()V

    .line 311
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting;->mBurstShooting:Lcom/sonyericsson/android/camera/controller/BurstShooting$BurstShotMethod;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/controller/BurstShooting$BurstShotMethod;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 312
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting;->mStartedBy:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    .line 315
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->getPathBuilder()Lcom/sonyericsson/cameracommon/mediasaving/EachDirPathBuilder;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting;->mPathBuilder:Lcom/sonyericsson/cameracommon/mediasaving/EachDirPathBuilder;

    .line 317
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting;->mBurstShooting:Lcom/sonyericsson/android/camera/controller/BurstShooting$BurstShotMethod;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/controller/BurstShooting$BurstShotMethod;->getSavingRequest()Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting;->mCurrentSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    .line 320
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting;->mCurrentSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getRequestId(Z)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->setRequestId(I)V

    .line 322
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting;->mBurstShooting:Lcom/sonyericsson/android/camera/controller/BurstShooting$BurstShotMethod;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/controller/BurstShooting$BurstShotMethod;->start()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 324
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->startCaptureFeedbackAnimation()V

    .line 326
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting;->mCurrentSavingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->getRequestId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->addCountUpView(I)V

    .line 328
    const/4 v0, 0x1

    .line 332
    :cond_0
    return v0
.end method

.method public stop()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 341
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->isStopRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    :goto_0
    return-void

    .line 346
    :cond_0
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->setIsStopRequested(Z)V

    .line 348
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->onShootingDone()V

    .line 352
    iget v0, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting;->mPictureCount:I

    iget v1, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting;->mMinimumPictureCount:I

    if-lt v0, v1, :cond_1

    .line 353
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting;->mBurstShooting:Lcom/sonyericsson/android/camera/controller/BurstShooting$BurstShotMethod;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/controller/BurstShooting$BurstShotMethod;->finish()V

    .line 355
    :cond_1
    iget v0, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting;->mPictureCount:I

    if-le v0, v2, :cond_2

    .line 357
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting;->mController:Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->startCaptureFeedbackAnimation()V

    .line 360
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->sendGoogleAnalyticsBurstEvent()V

    goto :goto_0
.end method

.method public stop(I)V
    .locals 0
    .param p1, "num"    # I

    .prologue
    .line 336
    iput p1, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting;->mMinimumPictureCount:I

    .line 337
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->stop()V

    .line 338
    return-void
.end method

.method public update(Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;)V
    .locals 3
    .param p1, "burstShot"    # Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;

    .prologue
    const/4 v2, 0x0

    .line 93
    sget-object v0, Lcom/sonyericsson/android/camera/controller/BurstShooting$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$BurstShot:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 107
    new-instance v0, Lcom/sonyericsson/android/camera/controller/BurstShooting$Off;

    invoke-direct {v0, v2}, Lcom/sonyericsson/android/camera/controller/BurstShooting$Off;-><init>(Lcom/sonyericsson/android/camera/controller/BurstShooting$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting;->mBurstShooting:Lcom/sonyericsson/android/camera/controller/BurstShooting$BurstShotMethod;

    .line 111
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->clear()V

    .line 112
    return-void

    .line 95
    :pswitch_0
    new-instance v0, Lcom/sonyericsson/android/camera/controller/BurstShooting$BestEffort;

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/android/camera/controller/BurstShooting$BestEffort;-><init>(Lcom/sonyericsson/android/camera/controller/BurstShooting;Lcom/sonyericsson/android/camera/controller/BurstShooting$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting;->mBurstShooting:Lcom/sonyericsson/android/camera/controller/BurstShooting$BurstShotMethod;

    goto :goto_0

    .line 99
    :pswitch_1
    new-instance v0, Lcom/sonyericsson/android/camera/controller/BurstShooting$High;

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/android/camera/controller/BurstShooting$High;-><init>(Lcom/sonyericsson/android/camera/controller/BurstShooting;Lcom/sonyericsson/android/camera/controller/BurstShooting$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting;->mBurstShooting:Lcom/sonyericsson/android/camera/controller/BurstShooting$BurstShotMethod;

    goto :goto_0

    .line 103
    :pswitch_2
    new-instance v0, Lcom/sonyericsson/android/camera/controller/BurstShooting$Off;

    invoke-direct {v0, v2}, Lcom/sonyericsson/android/camera/controller/BurstShooting$Off;-><init>(Lcom/sonyericsson/android/camera/controller/BurstShooting$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/BurstShooting;->mBurstShooting:Lcom/sonyericsson/android/camera/controller/BurstShooting$BurstShotMethod;

    goto :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
