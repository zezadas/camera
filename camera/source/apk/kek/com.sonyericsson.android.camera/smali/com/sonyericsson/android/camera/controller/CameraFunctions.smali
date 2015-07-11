.class public abstract Lcom/sonyericsson/android/camera/controller/CameraFunctions;
.super Ljava/lang/Object;
.source "CameraFunctions.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest$StoreDataCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/controller/CameraFunctions$2;,
        Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected final mAutoZoom:Lcom/sonyericsson/android/camera/controller/AutoZoom;

.field protected final mBurstShooting:Lcom/sonyericsson/android/camera/controller/BurstShooting;

.field protected final mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

.field protected final mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

.field protected final mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

.field protected final mControllerManager:Lcom/sonyericsson/android/camera/ControllerManager;

.field protected mCurrentSelfTimer:Lcom/sonyericsson/android/camera/controller/Selftimer;

.field protected final mEventDispatcher:Lcom/sonyericsson/android/camera/controller/EventDispatcher;

.field protected final mFaceDetect:Lcom/sonyericsson/android/camera/controller/FaceDetect;

.field protected mIsVideoSmileCapturing:Z

.field protected final mObjectTracking:Lcom/sonyericsson/android/camera/controller/ObjectTracking;

.field protected final mParameterManager:Lcom/sonyericsson/android/camera/parameter/ParameterManager;

.field protected final mSavingTaskManager:Lcom/sonyericsson/android/camera/mediasaving/BurstSavingTaskManager;

.field protected final mSceneRecognition:Lcom/sonyericsson/android/camera/controller/SceneRecognition;

.field protected final mSelfTimer:Lcom/sonyericsson/android/camera/controller/Selftimer;

.field protected final mSettingsController:Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;

.field protected final mShooting:Lcom/sonyericsson/android/camera/controller/Shooting;

.field protected final mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

.field protected final mTouchFocus:Lcom/sonyericsson/android/camera/controller/TouchFocus;

.field protected final mVideoDevice:Lcom/sonyericsson/android/camera/controller/VideoDevice;

.field protected final mVideoSelfTimer:Lcom/sonyericsson/android/camera/controller/Selftimer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    const-class v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/controller/EventDispatcher;)V
    .locals 2
    .param p1, "activity"    # Lcom/sonyericsson/android/camera/CameraActivity;
    .param p2, "dispatcher"    # Lcom/sonyericsson/android/camera/controller/EventDispatcher;

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-instance v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;-><init>(Lcom/sonyericsson/android/camera/controller/CameraFunctions;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mSettingsController:Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;

    .line 156
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 157
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    .line 158
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->getContentView()Lcom/sonyericsson/android/camera/view/CameraWindow;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    .line 160
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->getControllerManager()Lcom/sonyericsson/android/camera/ControllerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mControllerManager:Lcom/sonyericsson/android/camera/ControllerManager;

    .line 161
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->getParameterManager()Lcom/sonyericsson/android/camera/parameter/ParameterManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mParameterManager:Lcom/sonyericsson/android/camera/parameter/ParameterManager;

    .line 162
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->getSavingTaskManager()Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/mediasaving/BurstSavingTaskManager;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mSavingTaskManager:Lcom/sonyericsson/android/camera/mediasaving/BurstSavingTaskManager;

    .line 163
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->getStorageManager()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    .line 165
    iput-object p2, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mEventDispatcher:Lcom/sonyericsson/android/camera/controller/EventDispatcher;

    .line 168
    new-instance v0, Lcom/sonyericsson/android/camera/controller/AutoZoom;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/controller/AutoZoom;-><init>(Lcom/sonyericsson/android/camera/controller/CameraFunctions;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mAutoZoom:Lcom/sonyericsson/android/camera/controller/AutoZoom;

    .line 169
    new-instance v0, Lcom/sonyericsson/android/camera/controller/BurstShooting;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/controller/BurstShooting;-><init>(Lcom/sonyericsson/android/camera/controller/CameraFunctions;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mBurstShooting:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    .line 170
    new-instance v0, Lcom/sonyericsson/android/camera/controller/FaceDetect;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/controller/FaceDetect;-><init>(Lcom/sonyericsson/android/camera/controller/CameraFunctions;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mFaceDetect:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    .line 171
    new-instance v0, Lcom/sonyericsson/android/camera/controller/ObjectTracking;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/controller/ObjectTracking;-><init>(Lcom/sonyericsson/android/camera/controller/CameraFunctions;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mObjectTracking:Lcom/sonyericsson/android/camera/controller/ObjectTracking;

    .line 172
    new-instance v0, Lcom/sonyericsson/android/camera/controller/Selftimer;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/controller/Selftimer;-><init>(Lcom/sonyericsson/android/camera/controller/CameraFunctions;I)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mSelfTimer:Lcom/sonyericsson/android/camera/controller/Selftimer;

    .line 173
    new-instance v0, Lcom/sonyericsson/android/camera/controller/Selftimer;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/controller/Selftimer;-><init>(Lcom/sonyericsson/android/camera/controller/CameraFunctions;I)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mVideoSelfTimer:Lcom/sonyericsson/android/camera/controller/Selftimer;

    .line 174
    new-instance v0, Lcom/sonyericsson/android/camera/controller/SceneRecognition;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/controller/SceneRecognition;-><init>(Lcom/sonyericsson/android/camera/controller/CameraFunctions;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mSceneRecognition:Lcom/sonyericsson/android/camera/controller/SceneRecognition;

    .line 175
    new-instance v0, Lcom/sonyericsson/android/camera/controller/TouchFocus;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/controller/TouchFocus;-><init>(Lcom/sonyericsson/android/camera/controller/CameraFunctions;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mTouchFocus:Lcom/sonyericsson/android/camera/controller/TouchFocus;

    .line 176
    new-instance v0, Lcom/sonyericsson/android/camera/controller/Shooting;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/controller/Shooting;-><init>(Lcom/sonyericsson/android/camera/controller/CameraFunctions;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mShooting:Lcom/sonyericsson/android/camera/controller/Shooting;

    .line 177
    new-instance v0, Lcom/sonyericsson/android/camera/controller/VideoDevice;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/controller/VideoDevice;-><init>(Lcom/sonyericsson/android/camera/controller/CameraFunctions;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mVideoDevice:Lcom/sonyericsson/android/camera/controller/VideoDevice;

    .line 178
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/controller/CameraFunctions;Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/controller/CameraFunctions;
    .param p1, "x1"    # Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->updatePhotoSelftimer(Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/controller/CameraFunctions;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/controller/CameraFunctions;
    .param p1, "x1"    # Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->updateVideoSelftimer(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;)V

    return-void
.end method

.method private changeSmileCapturePhotoToVideo(Lcom/sonyericsson/android/camera/parameter/Parameters;)V
    .locals 5
    .param p1, "params"    # Lcom/sonyericsson/android/camera/parameter/Parameters;

    .prologue
    .line 1050
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getSmileCapture()Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    move-result-object v0

    .line 1051
    .local v0, "smile":Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getVideoSmileCapture()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    move-result-object v1

    .line 1055
    .local v1, "videoSmile":Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setPhotoSmileLevel(Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;)V

    .line 1056
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setVideoSmileLevel(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;)V

    .line 1058
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShot()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->getSmileCapture(Z)Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 1060
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShot()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->getSmileCapture(Z)Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setSmileCapture(Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;)V

    .line 1061
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mFaceDetect:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getFocusMode()Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShot()Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->getSmileCapture(Z)Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->update(Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;)V

    .line 1064
    :cond_0
    return-void
.end method

.method private changeSmileCaptureVideoToPhoto(Lcom/sonyericsson/android/camera/parameter/Parameters;)V
    .locals 4
    .param p1, "params"    # Lcom/sonyericsson/android/camera/parameter/Parameters;

    .prologue
    .line 1067
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getSmileCapture()Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    move-result-object v0

    .line 1068
    .local v0, "smile":Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getVideoSmileCapture()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    move-result-object v1

    .line 1072
    .local v1, "videoSmile":Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setVideoSmileLevel(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;)V

    .line 1073
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setPhotoSmileLevel(Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;)V

    .line 1075
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShot()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->getSmileCapture(Z)Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 1078
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setSmileCapture(Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;)V

    .line 1079
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mFaceDetect:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getFocusMode()Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->update(Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;)V

    .line 1081
    :cond_0
    return-void
.end method

.method private createPhotoSavingRequest(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;Ljava/lang/String;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    .locals 8
    .param p1, "savedFileType"    # Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    .line 1225
    const/4 v7, 0x0

    .line 1226
    .local v7, "savingRequest":Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    sget-object v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$2;->$SwitchMap$com$sonyericsson$cameracommon$mediasaving$SavingTaskManager$SavedFileType:[I

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1243
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

    .line 1230
    :pswitch_0
    new-instance v7, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    .end local v7    # "savingRequest":Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    const-string v4, "image/jpeg"

    const-string v5, ".JPG"

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->createTakenStatusCommon(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;

    invoke-direct {v1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;-><init>()V

    invoke-direct {v7, v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;)V

    .line 1240
    .restart local v7    # "savingRequest":Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    invoke-virtual {v7, p0}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->addCallback(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest$StoreDataCallback;)V

    .line 1245
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getExtraOutput()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->setExtraOutput(Landroid/net/Uri;)V

    .line 1246
    return-object v7

    .line 1226
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private createTakenStatusCommon(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;
    .locals 15
    .param p1, "savedFileType"    # Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "mimeType"    # Ljava/lang/String;
    .param p5, "fileExtension"    # Ljava/lang/String;
    .param p6, "filePath"    # Ljava/lang/String;

    .prologue
    .line 1181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1184
    .local v2, "takenTimeMillis":J
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->getOrientation()I

    move-result v4

    .line 1187
    .local v4, "orientation":I
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->getGeoTagManager()Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v5

    .line 1190
    .local v5, "location":Landroid/location/Location;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->shouldAddToMediaStore()Z

    move-result v13

    .line 1191
    .local v13, "addToMediaStore":Z
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->isSuperResolutionZoom()Z

    move-result v14

    .line 1194
    .local v14, "isSuperResolutionZoom":Z
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->getConfigurations()Lcom/sonyericsson/android/camera/configuration/Configurations;

    move-result-object v0

    .line 1195
    .local v0, "config":Lcom/sonyericsson/android/camera/configuration/Configurations;
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/Configurations;->getCropValue()Ljava/lang/String;

    move-result-object v12

    .line 1197
    .local v12, "cropValue":Ljava/lang/String;
    sget-object v1, Lcom/sonyericsson/android/camera/controller/CameraFunctions$2;->$SwitchMap$com$sonyericsson$cameracommon$mediasaving$SavingTaskManager$SavedFileType:[I

    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;->ordinal()I

    move-result v6

    aget v1, v1, v6

    packed-switch v1, :pswitch_data_0

    .line 1206
    :goto_0
    new-instance v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p1

    move-object/from16 v11, p6

    invoke-direct/range {v1 .. v14}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;-><init>(JILandroid/location/Location;IILjava/lang/String;Ljava/lang/String;Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-object v1

    .line 1199
    :pswitch_0
    const/4 v14, 0x0

    .line 1200
    goto :goto_0

    .line 1197
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method private createVideoSavingRequest(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile;Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;Ljava/lang/String;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;
    .locals 16
    .param p1, "profile"    # Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile;
    .param p2, "savedFileType"    # Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;
    .param p3, "filePath"    # Ljava/lang/String;

    .prologue
    .line 1254
    const/4 v9, 0x0

    .line 1256
    .local v9, "savingRequest":Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 1257
    .local v4, "videoWidth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 1258
    .local v5, "videoHeight":I
    const-string v6, "image/jpeg"

    .line 1259
    .local v6, "mime":Ljava/lang/String;
    const-string v7, ".JPG"

    .line 1260
    .local v7, "extension":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile;->getCamcorderProfile()Landroid/media/CamcorderProfile;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1261
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile;->getCamcorderProfile()Landroid/media/CamcorderProfile;

    move-result-object v2

    iget v4, v2, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 1262
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile;->getCamcorderProfile()Landroid/media/CamcorderProfile;

    move-result-object v2

    iget v5, v2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 1263
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile;->mMimeType:Ljava/lang/String;

    .line 1264
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile;->mExt:Ljava/lang/String;

    .line 1267
    :cond_0
    sget-object v2, Lcom/sonyericsson/android/camera/controller/CameraFunctions$2;->$SwitchMap$com$sonyericsson$cameracommon$mediasaving$SavingTaskManager$SavedFileType:[I

    invoke-virtual/range {p2 .. p2}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1285
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected type : "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1269
    :pswitch_0
    new-instance v9, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;

    .end local v9    # "savingRequest":Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;
    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v8, p3

    invoke-direct/range {v2 .. v8}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->createTakenStatusCommon(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    move-result-object v2

    new-instance v3, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;

    const-wide/32 v10, 0x7fffffff

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/CameraActivity;->getStorageController()Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->getAvailableStorageSize()J

    move-result-wide v12

    const-wide/16 v14, 0x400

    mul-long/2addr v12, v14

    invoke-direct {v3, v10, v11, v12, v13}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;-><init>(JJ)V

    invoke-direct {v9, v2, v3}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusVideo;)V

    .line 1282
    .restart local v9    # "savingRequest":Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;->addCallback(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest$StoreDataCallback;)V

    .line 1287
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/CameraActivity;->getExtraOutput()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;->setExtraOutput(Landroid/net/Uri;)V

    .line 1288
    return-object v9

    .line 1267
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method private isSuperResolutionZoom()Z
    .locals 6

    .prologue
    .line 1730
    iget-object v5, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/CameraActivity;->getParameterManager()Lcom/sonyericsson/android/camera/parameter/ParameterManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->getParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getSuperResolution()Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;

    move-result-object v4

    .line 1733
    .local v4, "sr":Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;
    iget-object v5, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDevice;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getZoom()I

    move-result v1

    .line 1734
    .local v1, "currentZoom":I
    iget-object v5, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/CameraActivity;->getControllerManager()Lcom/sonyericsson/android/camera/ControllerManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/ControllerManager;->getCameraId()I

    move-result v0

    .line 1735
    .local v0, "cameraId":I
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getCapability(I)Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

    move-result-object v5

    iget-object v5, v5, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->MAX_SR_ZOOM:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1742
    .local v3, "maxSrZoom":I
    const/4 v2, 0x0

    .line 1744
    .local v2, "isSuperResolutionZoom":Z
    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;

    if-ne v4, v5, :cond_0

    if-lez v1, :cond_0

    if-gt v1, v3, :cond_0

    .line 1747
    const/4 v2, 0x1

    .line 1749
    :cond_0
    return v2
.end method

.method private updatePhotoSelftimer(Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;)V
    .locals 3
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mParameterManager:Lcom/sonyericsson/android/camera/parameter/ParameterManager;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->getParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v1

    iget-object v1, v1, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setSelfTimer(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;)V

    .line 1036
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mSelfTimer:Lcom/sonyericsson/android/camera/controller/Selftimer;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->getDurationInMillisecond()I

    move-result v1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->getSoundType()Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/Selftimer;->update(ILcom/sonyericsson/android/camera/ShutterToneGenerator$Type;)V

    .line 1037
    return-void
.end method

.method private updateVideoSelftimer(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;)V
    .locals 3
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;

    .prologue
    .line 1045
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mParameterManager:Lcom/sonyericsson/android/camera/parameter/ParameterManager;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->getParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v1

    iget-object v1, v1, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setSelfTimer(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;)V

    .line 1046
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mVideoSelfTimer:Lcom/sonyericsson/android/camera/controller/Selftimer;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;->getTime()I

    move-result v1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;->getSoundType()Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/Selftimer;->update(ILcom/sonyericsson/android/camera/ShutterToneGenerator$Type;)V

    .line 1047
    return-void
.end method


# virtual methods
.method public addCaptureRequest(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;)V
    .locals 2
    .param p1, "savedFileType"    # Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;

    .prologue
    .line 494
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShot()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 512
    :cond_0
    :goto_0
    return-void

    .line 499
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mShooting:Lcom/sonyericsson/android/camera/controller/Shooting;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/Shooting;->canAcceptNextCaptureRequest()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 504
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->createPhotoSavingRequest(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;Ljava/lang/String;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    move-result-object v0

    .line 506
    .local v0, "nextRequest":Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mSavingTaskManager:Lcom/sonyericsson/android/camera/mediasaving/BurstSavingTaskManager;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/mediasaving/BurstSavingTaskManager;->canPushStoreTask()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 511
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mShooting:Lcom/sonyericsson/android/camera/controller/Shooting;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/controller/Shooting;->addCaptureRequest(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)V

    goto :goto_0
.end method

.method public applyAllParameters(Lcom/sonyericsson/android/camera/parameter/Parameters;)V
    .locals 1
    .param p1, "params"    # Lcom/sonyericsson/android/camera/parameter/Parameters;

    .prologue
    .line 218
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mSettingsController:Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->applyAllParameters(Lcom/sonyericsson/android/camera/parameter/Parameters;)V

    .line 219
    return-void
.end method

.method public applyPhotoSmileCapture(Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;)V
    .locals 3
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    .prologue
    .line 983
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setSmileCapture(Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;)V

    .line 984
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setPhotoSmileLevel(Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;)V

    .line 986
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->getParams()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v0

    .line 987
    .local v0, "params":Lcom/sonyericsson/android/camera/parameter/Parameters;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mFaceDetect:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getFocusMode()Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->update(Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;)V

    .line 989
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getFocusMode()Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setFocusMode(Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;)V

    .line 990
    return-void
.end method

.method public applyVideoSmileCapture(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;)V
    .locals 4
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    .prologue
    .line 993
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShot()Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->getSmileCapture(Z)Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setSmileCapture(Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;)V

    .line 994
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setVideoSmileLevel(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;)V

    .line 996
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->getParams()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v0

    .line 997
    .local v0, "params":Lcom/sonyericsson/android/camera/parameter/Parameters;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mFaceDetect:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getFocusMode()Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShot()Z

    move-result v3

    invoke-virtual {p1, v3}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->getSmileCapture(Z)Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->update(Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;)V

    .line 999
    return-void
.end method

.method public cancelSelfTimer(Z)V
    .locals 1
    .param p1, "continueToCapture"    # Z

    .prologue
    .line 864
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCurrentSelfTimer:Lcom/sonyericsson/android/camera/controller/Selftimer;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/Selftimer;->stop(Z)V

    .line 865
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->updateStatus()V

    .line 866
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->restoreLightSetting()V

    .line 867
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->restoreFocusMode(Z)Z

    .line 868
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->showDefaultView()V

    .line 869
    return-void
.end method

.method protected abstract captureAutoTransition()V
.end method

.method public changeCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .locals 14
    .param p1, "next"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .prologue
    const/4 v11, 0x0

    .line 253
    iget-object v12, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mEventDispatcher:Lcom/sonyericsson/android/camera/controller/EventDispatcher;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->isCaptureValid()Z

    move-result v12

    if-nez v12, :cond_1

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    iget-object v12, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mControllerManager:Lcom/sonyericsson/android/camera/ControllerManager;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/ControllerManager;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v3

    .line 261
    .local v3, "current":Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    invoke-virtual {p0, v3, p1}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->shouldKeepZoomStep(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Z

    move-result v6

    .line 262
    .local v6, "keepZoomStep":Z
    if-nez v6, :cond_5

    const/4 v4, 0x1

    .line 263
    .local v4, "hideSurfaceView":Z
    :goto_1
    const/4 v0, 0x0

    .line 265
    .local v0, "applyAllParams":Z
    iget-object v12, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mAutoZoom:Lcom/sonyericsson/android/camera/controller/AutoZoom;

    invoke-virtual {v12, v6}, Lcom/sonyericsson/android/camera/controller/AutoZoom;->keepZoomStep(Z)V

    .line 269
    sget-object v12, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_ABORT:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    invoke-static {v12}, Lcom/sonyericsson/android/camera/controller/Executor;->sendEmergencyEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;)V

    .line 272
    iget-object v12, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/CameraActivity;->getControllerManager()Lcom/sonyericsson/android/camera/ControllerManager;

    move-result-object v12

    invoke-virtual {v12, p1}, Lcom/sonyericsson/android/camera/ControllerManager;->storeCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 275
    iget-object v12, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mParameterManager:Lcom/sonyericsson/android/camera/parameter/ParameterManager;

    invoke-virtual {v12, p1}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->changeCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 278
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()I

    move-result v12

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()I

    move-result v13

    if-eq v12, v13, :cond_2

    .line 279
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->getParams()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v12

    iget-object v12, v12, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()I

    move-result v12

    invoke-virtual {p0, v12}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->reopenCamera(I)Z

    .line 280
    const/4 v0, 0x1

    .line 284
    :cond_2
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result v12

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result v13

    if-eq v12, v13, :cond_3

    .line 285
    const/4 v0, 0x1

    .line 289
    :cond_3
    invoke-virtual {v3, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 290
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v1

    .local v1, "arr$":[Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_2
    if-ge v5, v7, :cond_6

    aget-object v8, v1, v5

    .line 291
    .local v8, "mode":Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    iget-object v12, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mParameterManager:Lcom/sonyericsson/android/camera/parameter/ParameterManager;

    invoke-virtual {v12, v8}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->getParameters(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v9

    .line 292
    .local v9, "params":Lcom/sonyericsson/android/camera/parameter/Parameters;
    if-eqz v9, :cond_4

    .line 293
    sget-object v12, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    invoke-virtual {v9, v12}, Lcom/sonyericsson/android/camera/parameter/Parameters;->set(Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;)V

    .line 294
    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getFlash()Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    move-result-object v12

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->LED_ON:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    invoke-virtual {v12, v13}, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 295
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->getDefaultValue()Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/sonyericsson/android/camera/parameter/Parameters;->set(Lcom/sonyericsson/android/camera/configuration/parameters/Flash;)V

    .line 296
    iget-object v12, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setEmptyShortcut()V

    .line 290
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .end local v0    # "applyAllParams":Z
    .end local v1    # "arr$":[Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .end local v4    # "hideSurfaceView":Z
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "mode":Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .end local v9    # "params":Lcom/sonyericsson/android/camera/parameter/Parameters;
    :cond_5
    move v4, v11

    .line 262
    goto :goto_1

    .line 302
    .restart local v0    # "applyAllParams":Z
    .restart local v4    # "hideSurfaceView":Z
    :cond_6
    if-eqz v4, :cond_7

    .line 303
    iget-object v12, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/view/CameraWindow;->hideSurfaceView()V

    .line 307
    :cond_7
    invoke-virtual {p0, v11}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->setInitState(Z)V

    .line 310
    iget-object v12, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mParameterManager:Lcom/sonyericsson/android/camera/parameter/ParameterManager;

    invoke-virtual {v12, v0, v3}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->applyCapturingMode(ZLcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 313
    iget-object v12, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mAutoZoom:Lcom/sonyericsson/android/camera/controller/AutoZoom;

    invoke-virtual {v12, v11}, Lcom/sonyericsson/android/camera/controller/AutoZoom;->keepZoomStep(Z)V

    .line 315
    iget-object v12, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/view/CameraWindow;->showSurfaceView()Z

    move-result v12

    if-nez v12, :cond_0

    .line 317
    iget-object v12, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v10

    .line 318
    .local v10, "surface":Landroid/view/SurfaceHolder;
    if-eqz v10, :cond_8

    .line 319
    new-instance v2, Lcom/sonyericsson/android/camera/device/CameraSurfaceHolder;

    iget-object v12, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getSurfaceRect()Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v12

    iget-object v13, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v13}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getSurfaceRect()Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    invoke-direct {v2, v10, v12, v13}, Lcom/sonyericsson/android/camera/device/CameraSurfaceHolder;-><init>(Landroid/view/SurfaceHolder;II)V

    .line 323
    .local v2, "cameraSurfaceHolder":Lcom/sonyericsson/android/camera/device/CameraSurfaceHolder;
    sget-object v12, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_SURFACE_CHANGED:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    invoke-static {v12, v11, v2}, Lcom/sonyericsson/android/camera/controller/Executor;->sendEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 325
    .end local v2    # "cameraSurfaceHolder":Lcom/sonyericsson/android/camera/device/CameraSurfaceHolder;
    :cond_8
    sget-object v11, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->TAG:Ljava/lang/String;

    const-string v12, "changeCapturingMode: surface is null"

    invoke-static {v11, v12}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public changeSurfaceSize(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 659
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->stopPreview()V

    .line 660
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->hideSurfaceView()V

    .line 661
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->getParams()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getResolution()Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setResolution(Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;)V

    .line 666
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->showSurfaceView()Z

    .line 667
    return-void

    .line 664
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->getParams()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setVideoSize(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V

    goto :goto_0
.end method

.method public consumeSelfTimer(Lcom/sonyericsson/android/camera/controller/ControllerEventSource;Z)V
    .locals 2
    .param p1, "source"    # Lcom/sonyericsson/android/camera/controller/ControllerEventSource;
    .param p2, "consumePhotoSelfTimer"    # Z

    .prologue
    .line 853
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mEventDispatcher:Lcom/sonyericsson/android/camera/controller/EventDispatcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->updateSelfTimerStatus(Z)V

    .line 854
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->restoreLightSetting()V

    .line 855
    return-void
.end method

.method public createImageSavingRequest(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    .locals 3
    .param p1, "savedFileType"    # Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;

    .prologue
    .line 1298
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->createPhotoSavingRequest(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;Ljava/lang/String;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    move-result-object v0

    .line 1299
    .local v0, "request":Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    iget-object v1, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->orientation:I

    iget-object v2, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    invoke-virtual {p0, v1, v2}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->setExifInfo(ILandroid/location/Location;)V

    .line 1300
    return-object v0
.end method

.method public createMovieSavingRequest(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile;Ljava/lang/String;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;
    .locals 3
    .param p1, "profile"    # Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile;
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    .line 1167
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;->VIDEO:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;

    invoke-direct {p0, p1, v1, p2}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->createVideoSavingRequest(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile;Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;Ljava/lang/String;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;

    move-result-object v0

    .line 1169
    .local v0, "request":Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;
    iget-object v1, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->orientation:I

    iget-object v2, v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->location:Landroid/location/Location;

    invoke-virtual {p0, v1, v2}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->setExifInfo(ILandroid/location/Location;)V

    .line 1170
    return-object v0
.end method

.method public doExtraOperation(Lcom/sonyericsson/android/camera/LaunchConditions$ExtraOperation;)V
    .locals 2
    .param p1, "extra"    # Lcom/sonyericsson/android/camera/LaunchConditions$ExtraOperation;

    .prologue
    .line 377
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->consumeExtraOperation()V

    .line 379
    sget-object v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions$2;->$SwitchMap$com$sonyericsson$android$camera$LaunchConditions$ExtraOperation:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/LaunchConditions$ExtraOperation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 393
    :goto_0
    return-void

    .line 381
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->showBalloonTips()V

    .line 382
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->doFirstRunAction()V

    goto :goto_0

    .line 386
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->openSettingsMenu()Z

    .line 387
    invoke-static {}, Lcom/sonyericsson/android/camera/ControllerManager;->suspend()V

    goto :goto_0

    .line 379
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public exitFromShooting()V
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mShooting:Lcom/sonyericsson/android/camera/controller/Shooting;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/Shooting;->stopAutoFocus()V

    .line 518
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->enableClickOnThumbnail()V

    .line 519
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 203
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->prepareForFinish()V

    .line 205
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->finishPreviewing()V

    .line 208
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mAutoZoom:Lcom/sonyericsson/android/camera/controller/AutoZoom;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/AutoZoom;->clear()V

    .line 209
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mBurstShooting:Lcom/sonyericsson/android/camera/controller/BurstShooting;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/BurstShooting;->clear()V

    .line 210
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mSelfTimer:Lcom/sonyericsson/android/camera/controller/Selftimer;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/Selftimer;->stop(Z)V

    .line 211
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mVideoSelfTimer:Lcom/sonyericsson/android/camera/controller/Selftimer;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/Selftimer;->stop(Z)V

    .line 212
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mTouchFocus:Lcom/sonyericsson/android/camera/controller/TouchFocus;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/TouchFocus;->clear()V

    .line 213
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mFaceDetect:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->clear()V

    .line 214
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mObjectTracking:Lcom/sonyericsson/android/camera/controller/ObjectTracking;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/ObjectTracking;->stop(Z)V

    .line 215
    return-void
.end method

.method public finishBurstShot()V
    .locals 3

    .prologue
    .line 926
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->getParams()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDevice;->finishBurstShot(Lcom/sonyericsson/android/camera/parameter/Parameters;)V

    .line 929
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->getParams()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getResolution()Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object v0

    .line 930
    .local v0, "resolution":Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setResolution(Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;)V

    .line 931
    return-void
.end method

.method public finishDelayed()V
    .locals 4

    .prologue
    .line 812
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sonyericsson/android/camera/controller/CameraFunctions$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/controller/CameraFunctions$1;-><init>(Lcom/sonyericsson/android/camera/controller/CameraFunctions;)V

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 818
    return-void
.end method

.method public finishDragging()V
    .locals 2

    .prologue
    .line 904
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->restoreFocusMode(Z)Z

    .line 908
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mFaceDetect:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->getParams()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getFaceIdentify()Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;->getBooleanValue()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->enableFaceIdentification(Z)V

    .line 910
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mSceneRecognition:Lcom/sonyericsson/android/camera/controller/SceneRecognition;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/SceneRecognition;->start()V

    .line 911
    return-void
.end method

.method public finishManualRecording()V
    .locals 1

    .prologue
    .line 570
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->applyVideoSmileCapture(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;)V

    .line 571
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->commitParameters()V

    .line 572
    return-void
.end method

.method public finishModelessRecording()V
    .locals 5

    .prologue
    .line 618
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mEventDispatcher:Lcom/sonyericsson/android/camera/controller/EventDispatcher;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->getParams()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getBurstShot()Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;->isBurstShotOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->setSendLongPressEvent(Z)V

    .line 622
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->getParams()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v0

    .line 625
    .local v0, "params":Lcom/sonyericsson/android/camera/parameter/Parameters;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->restoreFocusMode(Z)Z

    .line 628
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->changeSmileCaptureVideoToPhoto(Lcom/sonyericsson/android/camera/parameter/Parameters;)V

    .line 631
    iget-object v1, v0, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 632
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mParameterManager:Lcom/sonyericsson/android/camera/parameter/ParameterManager;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->getParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v1

    iget-object v1, v1, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShotVideo()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;->isSupported(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 635
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mParameterManager:Lcom/sonyericsson/android/camera/parameter/ParameterManager;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->getParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/parameter/Parameters;->set(Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;)V

    .line 637
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getZoom()I

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getMaxZoom()I

    move-result v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getMaxSrZoom()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/sonyericsson/android/camera/view/CameraWindow;->updateZoombar(III)V

    .line 642
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mFaceDetect:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getFaceIdentify()Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;->getBooleanValue()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->enableFaceIdentification(Z)V

    .line 645
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getStabilizer()Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setStabilizer(Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;)V

    .line 647
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getResolution()Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDevice;->finishRec(Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;)V

    .line 648
    return-void
.end method

.method public finishRecording(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/sonyericsson/android/camera/controller/ControllerMessage;

    .prologue
    .line 537
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->getParams()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getShutterSound()Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;->getBooleanValue()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setPhotoShutterSound(Z)V

    .line 539
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->enableClickOnThumbnail()V

    .line 541
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/ControllerMessage;->isAbortEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->commitParameters()V

    .line 554
    :goto_0
    return-void

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->getParams()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getResolution()Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setPictureSize(Landroid/graphics/Rect;)V

    .line 548
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mControllerManager:Lcom/sonyericsson/android/camera/ControllerManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/ControllerManager;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 549
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->finishManualRecording()V

    goto :goto_0

    .line 551
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->finishModelessRecording()V

    goto :goto_0
.end method

.method public finishSelfTimer()V
    .locals 1

    .prologue
    .line 858
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCurrentSelfTimer:Lcom/sonyericsson/android/camera/controller/Selftimer;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/Selftimer;->finish()V

    .line 859
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->restoreLightSetting()V

    .line 860
    return-void
.end method

.method public getOrientation()I
    .locals 6

    .prologue
    .line 226
    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/CameraActivity;->getSensorOrientationDegree()I

    move-result v0

    .line 227
    .local v0, "degree":I
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getNormalizedRotation(I)I

    move-result v3

    .line 229
    .local v3, "sensorOrientation":I
    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mControllerManager:Lcom/sonyericsson/android/camera/ControllerManager;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/ControllerManager;->getCameraId()I

    move-result v4

    invoke-static {v4}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getCameraInfo(I)Landroid/hardware/Camera$CameraInfo;

    move-result-object v1

    .line 242
    .local v1, "info":Landroid/hardware/Camera$CameraInfo;
    iget v4, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 244
    iget v4, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/lit16 v4, v4, 0x168

    sub-int/2addr v4, v3

    rem-int/lit16 v2, v4, 0x168

    .line 249
    .local v2, "orientation":I
    :goto_0
    return v2

    .line 246
    .end local v2    # "orientation":I
    :cond_0
    iget v4, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v4, v3

    rem-int/lit16 v2, v4, 0x168

    .restart local v2    # "orientation":I
    goto :goto_0
.end method

.method public getParameterListener()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mSettingsController:Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;

    return-object v0
.end method

.method public getParams()Lcom/sonyericsson/android/camera/parameter/Parameters;
    .locals 2

    .prologue
    .line 1084
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mParameterManager:Lcom/sonyericsson/android/camera/parameter/ParameterManager;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->getParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v0

    .line 1085
    .local v0, "params":Lcom/sonyericsson/android/camera/parameter/Parameters;
    return-object v0
.end method

.method public getSelftimer(I)Lcom/sonyericsson/android/camera/controller/Selftimer;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 821
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 822
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mVideoSelfTimer:Lcom/sonyericsson/android/camera/controller/Selftimer;

    .line 824
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mSelfTimer:Lcom/sonyericsson/android/camera/controller/Selftimer;

    goto :goto_0
.end method

.method public getTimeMillisForLastPictureTaken()J
    .locals 2

    .prologue
    .line 1757
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mShooting:Lcom/sonyericsson/android/camera/controller/Shooting;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/Shooting;->getTimeMillisForLastPictureTaken()J

    move-result-wide v0

    return-wide v0
.end method

.method public isEnoughStorageSizeAvailable()Z
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 790
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShot()Z

    move-result v3

    if-nez v3, :cond_1

    .line 807
    :cond_0
    :goto_0
    return v1

    .line 793
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/CameraActivity;->getConfigurations()Lcom/sonyericsson/android/camera/configuration/Configurations;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->getParams()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/CameraActivity;->getStorageController()Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->create(Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/cameracommon/mediasaving/StorageController;)Lcom/sonyericsson/android/camera/util/MaxVideoSize;

    move-result-object v0

    .line 797
    .local v0, "max":Lcom/sonyericsson/android/camera/util/MaxVideoSize;
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->getMaxDuration()I

    move-result v3

    if-lez v3, :cond_2

    .line 798
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->getMaxDuration()I

    move-result v3

    const/16 v4, 0x3e8

    if-ge v3, v4, :cond_0

    move v1, v2

    .line 799
    goto :goto_0

    .line 801
    :cond_2
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->getMaxFileSize()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 802
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->getMaxFileSize()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->getParams()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getMinFileSize()J

    move-result-wide v6

    const-wide/16 v8, 0x400

    mul-long/2addr v6, v8

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    move v1, v2

    .line 804
    goto :goto_0
.end method

.method public onStoreComplete(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V
    .locals 2
    .param p1, "result"    # Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    .prologue
    .line 1100
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/Configurations;->isLogForOperatorsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1101
    const-string v0, "The image is saved completely"

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->dForOperators(Ljava/lang/String;)I

    .line 1104
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShot()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1105
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/CameraActivity;->finishOneShot(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V

    .line 1112
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->enableAutoOffTimer()V

    .line 1114
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_STORE_DONE:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/camera/controller/Executor;->sendEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;ILjava/lang/Object;)V

    .line 1116
    return-void

    .line 1106
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    if-eqz v0, :cond_1

    .line 1108
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->onStoreComplete(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V

    goto :goto_0
.end method

.method public onVideoError(Z)V
    .locals 1
    .param p1, "storageError"    # Z

    .prologue
    .line 780
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->releaseVideoDevice()V

    .line 782
    if-eqz p1, :cond_0

    .line 787
    :goto_0
    return-void

    .line 785
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_DEVICE_ERROR:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->postEmptyEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;)V

    goto :goto_0
.end method

.method public pauseSceneRecognition()V
    .locals 1

    .prologue
    .line 1753
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mSceneRecognition:Lcom/sonyericsson/android/camera/controller/SceneRecognition;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/SceneRecognition;->pause()V

    .line 1754
    return-void
.end method

.method public prepareBurstShot()V
    .locals 3

    .prologue
    .line 914
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mSceneRecognition:Lcom/sonyericsson/android/camera/controller/SceneRecognition;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/SceneRecognition;->stop()V

    .line 915
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mFaceDetect:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->stop()V

    .line 917
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->getParams()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDevice;->prepareBurstShot(Lcom/sonyericsson/android/camera/parameter/Parameters;)V

    .line 918
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mSavingTaskManager:Lcom/sonyericsson/android/camera/mediasaving/BurstSavingTaskManager;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/mediasaving/BurstSavingTaskManager;->prepareBulkInsert()V

    .line 921
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->getParams()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;->getBurstResolution(Lcom/sonyericsson/android/camera/parameter/Parameters;)Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object v0

    .line 922
    .local v0, "resolution":Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setResolution(Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;)V

    .line 923
    return-void
.end method

.method public prepareDragging()V
    .locals 3

    .prologue
    .line 889
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mSceneRecognition:Lcom/sonyericsson/android/camera/controller/SceneRecognition;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/SceneRecognition;->pause()V

    .line 892
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mFaceDetect:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->enableFaceIdentification(Z)V

    .line 896
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getFocusMode()Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    move-result-object v0

    .line 897
    .local v0, "currentFocusMode":Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->TOUCH_FOCUS:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    if-eq v1, v0, :cond_0

    .line 898
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->TOUCH_FOCUS:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->setFocusMode(Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;)V

    .line 900
    :cond_0
    return-void
.end method

.method public prepareForFinish()V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mEventDispatcher:Lcom/sonyericsson/android/camera/controller/EventDispatcher;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->stopTranslation()V

    .line 189
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/Executor;->clear()V

    .line 193
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->clearResumeDeviceTask()V

    .line 196
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->releaseVideoDevice()V

    .line 199
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->turnOffLight()V

    .line 200
    return-void
.end method

.method public prepareManualRecording()V
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->disableClickOnThumbnail()V

    .line 560
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->getParams()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getVideoSmileCapture()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->applyVideoSmileCapture(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;)V

    .line 562
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->commitParameters()V

    .line 565
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mFaceDetect:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->start()V

    .line 566
    return-void
.end method

.method public prepareModelessRecording()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 575
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/CameraWindow;->disableClickOnThumbnail()V

    .line 578
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mSceneRecognition:Lcom/sonyericsson/android/camera/controller/SceneRecognition;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/controller/SceneRecognition;->isSceneRecognition()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 579
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mControllerManager:Lcom/sonyericsson/android/camera/ControllerManager;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/ControllerManager;->getCameraId()I

    move-result v3

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getCapability(I)Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

    move-result-object v3

    iget-object v3, v3, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->SCENE_RECOGNITION_TYPES:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 581
    .local v2, "sceneTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "recording"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 582
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mSceneRecognition:Lcom/sonyericsson/android/camera/controller/SceneRecognition;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/controller/SceneRecognition;->stop()V

    .line 587
    .end local v2    # "sceneTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->getParams()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v1

    .line 590
    .local v1, "params":Lcom/sonyericsson/android/camera/parameter/Parameters;
    iget-object v3, v1, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 591
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getFocusMode()Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    move-result-object v0

    .line 592
    .local v0, "currentFocus":Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;
    if-eqz v0, :cond_1

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->FACE_DETECTION:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 593
    :cond_1
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->FACE_DETECTION:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->setFocusMode(Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;)V

    .line 598
    .end local v0    # "currentFocus":Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mEventDispatcher:Lcom/sonyericsson/android/camera/controller/EventDispatcher;

    invoke-virtual {v3, v7}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->setSendLongPressEvent(Z)V

    .line 601
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->changeSmileCapturePhotoToVideo(Lcom/sonyericsson/android/camera/parameter/Parameters;)V

    .line 605
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/parameter/Parameters;->set(Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;)V

    .line 606
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getZoom()I

    move-result v4

    iget-object v5, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getMaxZoom()I

    move-result v5

    iget-object v6, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getMaxSrZoom()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/sonyericsson/android/camera/view/CameraWindow;->updateZoombar(III)V

    .line 610
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getVideoStabilizer()Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setSteadyShot(Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;)V

    .line 612
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mTouchFocus:Lcom/sonyericsson/android/camera/controller/TouchFocus;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/controller/TouchFocus;->clear()V

    .line 613
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mFaceDetect:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    invoke-virtual {v3, v7}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->enableFaceIdentification(Z)V

    .line 614
    return-void
.end method

.method public prepareRecording()V
    .locals 2

    .prologue
    .line 523
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->getParams()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setVideoPictureSize(Landroid/graphics/Rect;)V

    .line 526
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setPhotoShutterSound(Z)V

    .line 528
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mControllerManager:Lcom/sonyericsson/android/camera/ControllerManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/ControllerManager;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 529
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->prepareManualRecording()V

    .line 533
    :goto_0
    return-void

    .line 531
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->prepareModelessRecording()V

    goto :goto_0
.end method

.method public prepareView()V
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->getParams()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->prepare(Lcom/sonyericsson/android/camera/parameter/Parameters;)V

    .line 410
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mEventDispatcher:Lcom/sonyericsson/android/camera/controller/EventDispatcher;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->startTouchEventTranslation()V

    .line 412
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->showDefaultView()V

    .line 413
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->showIcons()V

    .line 414
    return-void
.end method

.method public releaseVideoDevice()V
    .locals 1

    .prologue
    .line 775
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mVideoDevice:Lcom/sonyericsson/android/camera/controller/VideoDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/VideoDevice;->release()Z

    .line 776
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->enableAutoOffTimer()V

    .line 777
    return-void
.end method

.method public reopenCamera(I)Z
    .locals 5
    .param p1, "facing"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 476
    sget-object v3, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->SWITCH_CAMERA_DEVICE:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-static {v3, v1}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V

    .line 477
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/CameraDevice;->close()V

    .line 479
    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v3, p1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->open(I)V
    :try_end_0
    .catch Lcom/sonyericsson/android/camera/device/CameraDeviceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    sget-object v3, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->SWITCH_CAMERA_DEVICE:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-static {v3, v2}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V

    .line 489
    :goto_0
    return v1

    .line 480
    :catch_0
    move-exception v0

    .line 481
    .local v0, "e":Lcom/sonyericsson/android/camera/device/CameraDeviceException;
    sget-object v1, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_DEVICE_ERROR:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    const/16 v3, 0x64

    iget-object v4, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getCamera()Landroid/hardware/Camera;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/sonyericsson/android/camera/controller/Executor;->postEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;ILjava/lang/Object;)V

    .line 485
    sget-object v1, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->TAG:Ljava/lang/String;

    const-string v3, "Open camera failed."

    invoke-static {v1, v3, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 486
    goto :goto_0
.end method

.method public restoreFocusMode(Z)Z
    .locals 4
    .param p1, "forcedly"    # Z

    .prologue
    const/4 v2, 0x1

    .line 948
    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getFocusMode()Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    move-result-object v0

    .line 949
    .local v0, "currentFocusMode":Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->getParams()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getFocusMode()Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    move-result-object v1

    .line 951
    .local v1, "focusModeSetting":Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;
    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_2

    .line 952
    :cond_0
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->TOUCH_FOCUS:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    if-eq v0, v3, :cond_1

    .line 953
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->setFocusMode(Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;)V

    .line 961
    :goto_0
    return v2

    .line 956
    :cond_1
    if-eqz p1, :cond_2

    .line 957
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->setFocusMode(Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;)V

    goto :goto_0

    .line 961
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public restoreLightSetting()V
    .locals 4

    .prologue
    .line 965
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mControllerManager:Lcom/sonyericsson/android/camera/ControllerManager;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/ControllerManager;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShotVideo()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 967
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->getParams()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getPhotoLight()Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    move-result-object v1

    .line 969
    .local v1, "light":Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->getBooleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 970
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraDevice;->turnOnLight()V

    .line 980
    .end local v1    # "light":Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;
    :goto_0
    return-void

    .line 972
    .restart local v1    # "light":Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraDevice;->turnOffLight()V

    goto :goto_0

    .line 975
    .end local v1    # "light":Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->getParams()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getFlash()Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    move-result-object v0

    .line 977
    .local v0, "flash":Lcom/sonyericsson/android/camera/configuration/parameters/Flash;
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setFlashMode(Lcom/sonyericsson/android/camera/configuration/parameters/Flash;)V

    .line 978
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraDevice;->commitParameters()V

    goto :goto_0
.end method

.method public selfTimerCapture(Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V
    .locals 2
    .param p1, "source"    # Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    .prologue
    .line 841
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCurrentSelfTimer:Lcom/sonyericsson/android/camera/controller/Selftimer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/Selftimer;->stop(Z)V

    .line 842
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_SELFTIMER_CAPTURE:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/controller/Executor;->sendEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V

    .line 843
    return-void
.end method

.method public setCurrentSelftimer(Lcom/sonyericsson/android/camera/parameter/Parameters;)V
    .locals 1
    .param p1, "params"    # Lcom/sonyericsson/android/camera/parameter/Parameters;

    .prologue
    .line 1016
    iget-object v0, p1, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->getSelftimer(I)Lcom/sonyericsson/android/camera/controller/Selftimer;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCurrentSelfTimer:Lcom/sonyericsson/android/camera/controller/Selftimer;

    .line 1017
    return-void
.end method

.method public setExifInfo(ILandroid/location/Location;)V
    .locals 14
    .param p1, "orientation"    # I
    .param p2, "location"    # Landroid/location/Location;

    .prologue
    .line 1305
    const/4 v2, 0x0

    .line 1306
    .local v2, "latitude":Ljava/lang/Double;
    const/4 v3, 0x0

    .line 1307
    .local v3, "longitude":Ljava/lang/Double;
    const/4 v4, 0x0

    .line 1308
    .local v4, "altitude":Ljava/lang/Double;
    const/4 v5, 0x0

    .line 1310
    .local v5, "timestamp":Ljava/lang/Long;
    if-eqz p2, :cond_2

    .line 1311
    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    .line 1312
    .local v8, "lat":D
    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    .line 1313
    .local v10, "lon":D
    const-wide/16 v0, 0x0

    cmpl-double v0, v8, v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmpl-double v0, v10, v0

    if-eqz v0, :cond_3

    :cond_0
    const/4 v6, 0x1

    .line 1315
    .local v6, "hasLatLon":Z
    :goto_0
    if-eqz v6, :cond_2

    .line 1319
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 1320
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 1322
    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->hasAltitude()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1323
    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 1333
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    const-wide/16 v12, 0x0

    cmp-long v0, v0, v12

    if-eqz v0, :cond_2

    .line 1336
    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    const-wide/16 v12, 0x3e8

    div-long/2addr v0, v12

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 1341
    .end local v6    # "hasLatLon":Z
    .end local v8    # "lat":D
    .end local v10    # "lon":D
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setExifInfo(Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Long;)V

    .line 1342
    return-void

    .line 1313
    .restart local v8    # "lat":D
    .restart local v10    # "lon":D
    :cond_3
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public setFocusMode(Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;)V
    .locals 1
    .param p1, "mode"    # Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    .prologue
    .line 934
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mSettingsController:Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->set(Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;)V

    .line 935
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mSettingsController:Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/CameraFunctions$SettingsController;->commit()V

    .line 936
    return-void
.end method

.method protected abstract setInitState(Z)V
.end method

.method public setPreviewDisplay(Lcom/sonyericsson/android/camera/device/CameraSurfaceHolder;)V
    .locals 4
    .param p1, "surface"    # Lcom/sonyericsson/android/camera/device/CameraSurfaceHolder;

    .prologue
    .line 465
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/device/CameraSurfaceHolder;->getSurface()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    :goto_0
    return-void

    .line 466
    :catch_0
    move-exception v0

    .line 467
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_DEVICE_ERROR:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    const/16 v2, -0x100

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getCamera()Landroid/hardware/Camera;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sonyericsson/android/camera/controller/Executor;->postEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;ILjava/lang/Object;)V

    .line 471
    sget-object v1, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->TAG:Ljava/lang/String;

    const-string v2, "setPreviewDisplay failed."

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public shouldAfStartAfterSelfTimer(I)Z
    .locals 4
    .param p1, "type"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 878
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mControllerManager:Lcom/sonyericsson/android/camera/ControllerManager;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/ControllerManager;->getType()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 885
    :cond_0
    :goto_0
    return v0

    .line 880
    :cond_1
    if-eq p1, v3, :cond_0

    .line 882
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mControllerManager:Lcom/sonyericsson/android/camera/ControllerManager;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/ControllerManager;->getCameraId()I

    move-result v2

    if-eq v2, v1, :cond_0

    move v0, v1

    .line 885
    goto :goto_0
.end method

.method public shouldKeepZoomStep(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Z
    .locals 4
    .param p1, "current"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .param p2, "next"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .prologue
    const/4 v1, 0x1

    .line 331
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()I

    move-result v2

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result v2

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 334
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 335
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mParameterManager:Lcom/sonyericsson/android/camera/parameter/ParameterManager;

    invoke-virtual {v2, p2}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->getParameters(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getResolution()Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 339
    .local v0, "rect":Landroid/graphics/Rect;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->shouldRestartPreview(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 343
    .end local v0    # "rect":Landroid/graphics/Rect;
    :goto_1
    return v1

    .line 337
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mParameterManager:Lcom/sonyericsson/android/camera/parameter/ParameterManager;

    invoke-virtual {v2, p2}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->getParameters(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v0

    .restart local v0    # "rect":Landroid/graphics/Rect;
    goto :goto_0

    .line 343
    .end local v0    # "rect":Landroid/graphics/Rect;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public shouldRestartPreview(Landroid/graphics/Rect;)Z
    .locals 2
    .param p1, "newPreview"    # Landroid/graphics/Rect;

    .prologue
    .line 651
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 652
    .local v0, "currentPreview":Landroid/graphics/Rect;
    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/CameraSize;->isAspectRatioDifferent(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 653
    const/4 v1, 0x1

    .line 655
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public showErrorMessage(I)V
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 417
    sparse-switch p1, :sswitch_data_0

    .line 427
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getMessagePopup()Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showUnknownErrorMessage()V

    .line 430
    :goto_0
    return-void

    .line 419
    :sswitch_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getMessagePopup()Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showDeviceErrorMessage()V

    goto :goto_0

    .line 423
    :sswitch_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getMessagePopup()Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showRecordingSizeLimitError()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    goto :goto_0

    .line 417
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_1
        0x64 -> :sswitch_0
    .end sparse-switch
.end method

.method public startModelessRecording()V
    .locals 2

    .prologue
    .line 671
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mFaceDetect:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->start()V

    .line 672
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->getParams()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->prepareRec(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V

    .line 674
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->startRecording()V

    .line 675
    return-void
.end method

.method public startPreview()V
    .locals 4

    .prologue
    .line 442
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->startPreview()V
    :try_end_0
    .catch Lcom/sonyericsson/android/camera/device/CameraDeviceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    :goto_0
    return-void

    .line 443
    :catch_0
    move-exception v0

    .line 444
    .local v0, "e":Lcom/sonyericsson/android/camera/device/CameraDeviceException;
    sget-object v1, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_DEVICE_ERROR:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    const/16 v2, -0xff

    iget-object v3, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getCamera()Landroid/hardware/Camera;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sonyericsson/android/camera/controller/Executor;->postEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;ILjava/lang/Object;)V

    .line 448
    sget-object v1, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->TAG:Ljava/lang/String;

    const-string v2, "startPreview failed."

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startPreview(Lcom/sonyericsson/android/camera/device/CameraSurfaceHolder;)V
    .locals 1
    .param p1, "surface"    # Lcom/sonyericsson/android/camera/device/CameraSurfaceHolder;

    .prologue
    .line 434
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->setPreviewDisplay(Lcom/sonyericsson/android/camera/device/CameraSurfaceHolder;)V

    .line 435
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->isPreviewing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 436
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->startPreview()V

    .line 438
    :cond_0
    return-void
.end method

.method public startRecording()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 679
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->disableAutoOffTimer()V

    .line 682
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->getParams()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v1

    .line 683
    .local v1, "videoSize":Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->getParams()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getVideoStabilizer()Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    move-result-object v2

    .line 686
    .local v2, "videoStabilizer":Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoProfile()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile;->mExt:Ljava/lang/String;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v0, v6}, Lcom/sonyericsson/cameracommon/utility/RecordingUtil;->getOutputFile(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 690
    .local v5, "outputFile":Ljava/lang/String;
    invoke-static {v5, v11}, Lcom/sonyericsson/cameracommon/utility/RecordingUtil;->deleteFile(Ljava/lang/String;Z)Z

    .line 692
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->getParams()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getMicrophone()Lcom/sonyericsson/android/camera/configuration/parameters/Microphone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/Microphone;->getBooleanValue()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 693
    .local v3, "mic":Z
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoProfile()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->createMovieSavingRequest(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize$VideoProfile;Ljava/lang/String;)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;

    move-result-object v4

    .line 695
    .local v4, "request":Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/CameraActivity;->getOrientation()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setRecordingOrientation(I)V

    .line 696
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->unlockCamera()V

    .line 698
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mVideoDevice:Lcom/sonyericsson/android/camera/controller/VideoDevice;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->getOrientation()I

    move-result v6

    iget-object v7, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mParameterManager:Lcom/sonyericsson/android/camera/parameter/ParameterManager;

    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->getParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getShutterSound()Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lcom/sonyericsson/android/camera/controller/VideoDevice;->setup(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;ZLcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;Ljava/lang/String;ILcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 706
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->lockCamera()V

    .line 707
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->onVideoError(Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 772
    :cond_0
    :goto_0
    return-void

    .line 710
    :catch_0
    move-exception v8

    .line 711
    .local v8, "e":Ljava/io/FileNotFoundException;
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->lockCamera()V

    .line 712
    invoke-virtual {p0, v11}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->onVideoError(Z)V

    goto :goto_0

    .line 716
    .end local v8    # "e":Ljava/io/FileNotFoundException;
    :cond_1
    iget-object v6, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mVideoDevice:Lcom/sonyericsson/android/camera/controller/VideoDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/VideoDevice;->getDuration()I

    move-result v7

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->isConstraint()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getConfigurations()Lcom/sonyericsson/android/camera/configuration/Configurations;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/Configurations;->hasLimitForSizeOrDuration()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v0, v11

    :goto_1
    iget-object v10, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/device/CameraDevice;->isVideoHdrOn()Z

    move-result v10

    invoke-virtual {v6, v7, v0, v10}, Lcom/sonyericsson/android/camera/view/CameraWindow;->prepareRecording(IZZ)V

    .line 722
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->startVideoMetadata()V

    .line 723
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mVideoDevice:Lcom/sonyericsson/android/camera/controller/VideoDevice;

    invoke-virtual {v0, v6}, Lcom/sonyericsson/android/camera/device/CameraDevice;->setVideoDevice(Lcom/sonyericsson/android/camera/controller/VideoDevice;)V

    .line 725
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mVideoDevice:Lcom/sonyericsson/android/camera/controller/VideoDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/VideoDevice;->start()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 726
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->showRecordingView()V

    .line 727
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/ClassDefinitionChecker;->isMediaRecorderPauseAndResumeSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 728
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->getOrientation()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/sonyericsson/android/camera/view/CameraWindow;->requestToAddVideoChapter(I)V

    goto :goto_0

    :cond_3
    move v0, v10

    .line 716
    goto :goto_1

    .line 731
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->hideRecordingView()V

    .line 732
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->updateSelftimers()V

    .line 733
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->releaseVideoDevice()V

    .line 735
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShot()Z

    move-result v0

    if-nez v0, :cond_6

    .line 736
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mControllerManager:Lcom/sonyericsson/android/camera/ControllerManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/ControllerManager;->getType()I

    move-result v0

    if-ne v0, v11, :cond_5

    .line 738
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->getParams()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getResolution()Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getPhotoPreviewSize(Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->shouldRestartPreview(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 740
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->getParams()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getResolution()Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setResolution(Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;)V

    .line 741
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->getParams()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getResolution()Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/sonyericsson/android/camera/device/CameraDevice;->finishRec(Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;)V

    .line 742
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->showSurfaceView()Z

    .line 745
    :cond_5
    invoke-virtual {p0, v12}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->finishRecording(Lcom/sonyericsson/android/camera/controller/ControllerMessage;)V

    .line 749
    :cond_6
    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;->getFilePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 751
    :try_start_1
    new-instance v9, Ljava/io/File;

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 752
    .local v9, "videoFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 753
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_7

    .line 754
    sget-object v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->TAG:Ljava/lang/String;

    const-string v6, "videoFile.delete(): [Unable to delete empty video file.]"

    invoke-static {v0, v6}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 764
    .end local v9    # "videoFile":Ljava/io/File;
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/media/utility/AudioResourceChecker;->isAudioResourceAvailable(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 765
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_DEVICE_ERROR:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    const/16 v6, 0x64

    invoke-static {v0, v6, v12}, Lcom/sonyericsson/android/camera/controller/Executor;->postEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 758
    :catch_1
    move-exception v8

    .line 759
    .local v8, "e":Ljava/lang/Exception;
    sget-object v0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->TAG:Ljava/lang/String;

    const-string v6, "DoFastestCamcordTask: [Unable to delete empty media file.]"

    invoke-static {v0, v6}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 768
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_8
    sget-object v0, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_AUDIO_RESOURCE_ERROR:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/Executor;->postEmptyEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;)V

    goto/16 :goto_0
.end method

.method public startSelfTimer(ILcom/sonyericsson/android/camera/controller/ControllerEventSource;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "source"    # Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    .prologue
    .line 832
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mSavingTaskManager:Lcom/sonyericsson/android/camera/mediasaving/BurstSavingTaskManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/mediasaving/BurstSavingTaskManager;->canPushStoreTask()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->updateRemain()Z

    move-result v0

    if-nez v0, :cond_1

    .line 838
    :cond_0
    :goto_0
    return-void

    .line 836
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->getSelftimer(I)Lcom/sonyericsson/android/camera/controller/Selftimer;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCurrentSelfTimer:Lcom/sonyericsson/android/camera/controller/Selftimer;

    .line 837
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCurrentSelfTimer:Lcom/sonyericsson/android/camera/controller/Selftimer;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/controller/Selftimer;->start(Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V

    goto :goto_0
.end method

.method public startViewFinder()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 348
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->restoreLightSetting()V

    .line 350
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->restoreFocusMode(Z)Z

    .line 352
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->updateStatus()V

    .line 354
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mIsVideoSmileCapturing:Z

    .line 356
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mSceneRecognition:Lcom/sonyericsson/android/camera/controller/SceneRecognition;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/SceneRecognition;->isSceneRecognition()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 357
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mSceneRecognition:Lcom/sonyericsson/android/camera/controller/SceneRecognition;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/SceneRecognition;->start()V

    .line 362
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mControllerManager:Lcom/sonyericsson/android/camera/ControllerManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/ControllerManager;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mControllerManager:Lcom/sonyericsson/android/camera/ControllerManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/ControllerManager;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mControllerManager:Lcom/sonyericsson/android/camera/ControllerManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/ControllerManager;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getFocusMode()Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->FACE_DETECTION:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->getParams()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getSmileCapture()Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    if-eq v0, v1, :cond_1

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mFaceDetect:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->start()V

    .line 370
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mFaceDetect:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->getParams()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getFaceIdentify()Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;->getBooleanValue()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->enableFaceIdentification(Z)V

    .line 373
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->showDefaultView()V

    .line 374
    return-void

    .line 359
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mSceneRecognition:Lcom/sonyericsson/android/camera/controller/SceneRecognition;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/SceneRecognition;->stop()V

    goto :goto_0
.end method

.method public stopObjectTracking(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "resolution"    # Landroid/graphics/Rect;

    .prologue
    .line 458
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->getPreviewRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/CameraSize;->isAspectRatioDifferent(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mObjectTracking:Lcom/sonyericsson/android/camera/controller/ObjectTracking;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/controller/ObjectTracking;->stop(Z)V

    .line 461
    :cond_0
    return-void
.end method

.method public suspendViewFinder()V
    .locals 3

    .prologue
    .line 397
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mFaceDetect:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->isFaceDetect()Z

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mSceneRecognition:Lcom/sonyericsson/android/camera/controller/SceneRecognition;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/controller/SceneRecognition;->isSceneRecognition()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDevice;->suspend(ZZ)V

    .line 400
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->turnOffLight()V

    .line 402
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mControllerManager:Lcom/sonyericsson/android/camera/ControllerManager;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/ControllerManager;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->hideDefaultView(I)V

    .line 403
    return-void
.end method

.method public updateFaceDetect(Lcom/sonyericsson/android/camera/parameter/Parameters;)V
    .locals 4
    .param p1, "params"    # Lcom/sonyericsson/android/camera/parameter/Parameters;

    .prologue
    .line 1002
    iget-object v2, p1, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result v1

    .line 1004
    .local v1, "type":I
    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShotVideo()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1006
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    .line 1011
    .local v0, "smile":Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mFaceDetect:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getFocusMode()Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->update(Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;)V

    .line 1012
    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mFaceDetect:Lcom/sonyericsson/android/camera/controller/FaceDetect;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getFaceIdentify()Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;->getBooleanValue()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/controller/FaceDetect;->enableFaceIdentification(Z)V

    .line 1013
    return-void

    .line 1008
    .end local v0    # "smile":Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;
    :cond_1
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getSmileCapture()Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    move-result-object v0

    .restart local v0    # "smile":Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;
    goto :goto_0
.end method

.method public updateSavingRequest(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;Z)Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    .locals 4
    .param p1, "request"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    .param p2, "isHighBurst"    # Z

    .prologue
    .line 1129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->setDateTaken(J)V

    .line 1131
    move-object v0, p1

    .line 1133
    .local v0, "newRequest":Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    sget-object v1, Lcom/sonyericsson/android/camera/controller/CameraFunctions$2;->$SwitchMap$com$sonyericsson$cameracommon$mediasaving$SavingTaskManager$SavedFileType:[I

    iget-object v2, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->savedFileType:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1154
    :cond_0
    :goto_0
    return-object v0

    .line 1135
    :pswitch_0
    if-nez p2, :cond_0

    .line 1145
    :pswitch_1
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    .end local v0    # "newRequest":Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    iget-object v1, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->orientation:I

    invoke-direct {v0, p1, v1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;I)V

    .line 1147
    .restart local v0    # "newRequest":Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    goto :goto_0

    .line 1133
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public updateSelftimers()V
    .locals 1

    .prologue
    .line 1023
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->getParams()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getSelfTimer()Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->updatePhotoSelftimer(Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;)V

    .line 1024
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->getParams()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getVideoSelfTimer()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->updateVideoSelftimer(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;)V

    .line 1026
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->getParams()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->setCurrentSelftimer(Lcom/sonyericsson/android/camera/parameter/Parameters;)V

    .line 1027
    return-void
.end method

.method public updateStatus()V
    .locals 3

    .prologue
    .line 1089
    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mEventDispatcher:Lcom/sonyericsson/android/camera/controller/EventDispatcher;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mParameterManager:Lcom/sonyericsson/android/camera/parameter/ParameterManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->isSelfTimerOn()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mParameterManager:Lcom/sonyericsson/android/camera/parameter/ParameterManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->isVideoSelfTimerOn()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->setShouldSelfTimerStart(Z)V

    .line 1092
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mEventDispatcher:Lcom/sonyericsson/android/camera/controller/EventDispatcher;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mParameterManager:Lcom/sonyericsson/android/camera/parameter/ParameterManager;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->getParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v1

    iget-object v1, v1, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/CameraFunctions;->mParameterManager:Lcom/sonyericsson/android/camera/parameter/ParameterManager;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->getParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getBurstShot()Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;->isBurstShotOn()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/EventDispatcher;->updateLongPressStatus(IZ)V

    .line 1095
    return-void

    .line 1089
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
