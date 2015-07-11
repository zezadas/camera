.class public Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;
.super Lcom/sonyericsson/android/camera/ExtendedActivity;
.source "FastCapturingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$2;,
        Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$CameraErrorCallbackImpl;,
        Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$WearableBridgeVideoEventObserver;,
        Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$WearableBridgePhotoEventObserver;,
        Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$WearableBridgeLifeCycleObserver;,
        Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$AutoUploadSettingCheckCallback;,
        Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$RequestLaunchAdvancedCameraTask;,
        Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$PostDeviceInitializationTask;,
        Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$LazyInitializationTask;,
        Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$ClearDismissKeyguardFlagTask;,
        Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$ScreenOffReceiver;,
        Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$ModeName;
    }
.end annotation


# static fields
.field public static final AUTO_OFF_TIME_OUT_DURATION:I = 0x7530

.field public static final CLEAR_DISMISS_KEYGUARD_DELAY_TIME:I = 0x1f4

.field public static final EXTRA_IS_INTERRUPT_PROCESSING_OCCURRED:Ljava/lang/String; = "com.sonymobile.android.camera.extra.IS_INTERRUPT_PROCESSING_OCCURRED"

.field public static final INTENT_ACTION_MAIN_FAST_CAPTURING_PHOTO_CAMERA:Ljava/lang/String; = "com.sonyericsson.android.camera.action.MAIN_FAST_CAPTURING_PHOTO_CAMERA"

.field public static final INTENT_ACTION_MAIN_FAST_CAPTURING_VIDEO_CAMERA:Ljava/lang/String; = "com.sonyericsson.android.camera.action.FRONT_FAST_CAPTURING_VIDEO_CAMERA"

.field public static final INTENT_SUBJECT_CANCEL:Ljava/lang/String; = "cancel"

.field public static final INTENT_SUBJECT_PAUSED:Ljava/lang/String; = "activity-paused"

.field public static final INTENT_SUBJECT_PREPARE:Ljava/lang/String; = "prepare"

.field public static final INTENT_SUBJECT_RESUMED:Ljava/lang/String; = "activity-resumed"

.field public static final INTENT_SUBJECT_START:Ljava/lang/String; = "start"

.field public static final INTENT_SUBJECT_START_SECURE:Ljava/lang/String; = "start-secure"

.field public static final INTENT_SUBJECT_START_WITH_SECURITY_SETTING_DIALOG:Ljava/lang/String; = "security-setting"

.field public static final KEY_FAST_CAPTURING_CONFIRMATION_COUNT:Ljava/lang/String; = "KEY_FAST_CAPTURING_CONFIRMATION_COUNT"

.field public static final KEY_SECURITY_CONFIRMATION_IS_DONE:Ljava/lang/String; = "KEY_SECURITY_CONFIRMATION_IS_DONE"

.field public static final REQUEST_FINISH_OWN_SELF_DELAY_TIME:I = 0x12c

.field public static final SETUP_DEVICE_SETUP_WAIT_TIME:I = 0x64

.field public static final SETUP_LAZY_EXECUTION_WAIT_TIME:I = 0xc8

.field public static final SOUND_AF_SUCCESS:I = 0x0

.field public static final SOUND_SELF_TIMER_INSTANT:I = 0x4

.field public static final SOUND_SELF_TIMER_LONG:I = 0x2

.field public static final SOUND_SELF_TIMER_SHORT:I = 0x3

.field public static final SOUND_SHUTTER:I = 0x1

.field private static TAG:Ljava/lang/String;

.field private static final sCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

.field private static sCurrentCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

.field private static sFastCaptureSetting:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

.field private static sTargetCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;


# instance fields
.field private mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

.field mIsInterruptProcessingOccurred:Z

.field private mIsLazyInitializationRunning:Z

.field private mIsSecurePhotoLaunchedByIntent:Z

.field private mIsSetContentView:Z

.field protected mKeyEventTranslator:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mPostDeviceInitializationTask:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$PostDeviceInitializationTask;

.field private mPostEventHandler:Landroid/os/Handler;

.field private mScreenOffReceiver:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$ScreenOffReceiver;

.field protected mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

.field private mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

.field private mWearableBridgeClient:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

.field private mWearableBridgeLifeCycleObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$LifeCycleObserver;

.field private mWearableBridgePhotoEventObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$PhotoEventObserver;

.field private mWearableBridgeVideoEventObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$VideoEventObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 91
    const-class v0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->TAG:Ljava/lang/String;

    .line 185
    sput-object v1, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->sFastCaptureSetting:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    .line 187
    sput-object v1, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->sCurrentCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 189
    sput-object v1, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->sTargetCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 210
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->sCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 302
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/ExtendedActivity;-><init>()V

    .line 153
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mIsSetContentView:Z

    .line 193
    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mPostDeviceInitializationTask:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$PostDeviceInitializationTask;

    .line 195
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mIsSecurePhotoLaunchedByIntent:Z

    .line 198
    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mWearableBridgeClient:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    .line 201
    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mWearableBridgeLifeCycleObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$LifeCycleObserver;

    .line 204
    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mWearableBridgePhotoEventObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$PhotoEventObserver;

    .line 207
    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mWearableBridgeVideoEventObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$VideoEventObserver;

    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mIsLazyInitializationRunning:Z

    .line 227
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mIsInterruptProcessingOccurred:Z

    .line 303
    const-string v0, "SemcCameraUI"

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->setAppName(Ljava/lang/String;)V

    .line 304
    return-void
.end method

.method static synthetic access$1000(Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mPostEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;)Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;)Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;)Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    return-object v0
.end method

.method static synthetic access$1500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;)Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;)Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->playStartUpNotificationSoundIfRequired()V

    return-void
.end method

.method static synthetic access$800()Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->sFastCaptureSetting:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    return-object v0
.end method

.method static synthetic access$802(Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;)Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    .prologue
    .line 89
    sput-object p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->sFastCaptureSetting:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    return-object p0
.end method

.method static synthetic access$902(Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mIsLazyInitializationRunning:Z

    return p1
.end method

.method private checkAudioAvailable()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 1750
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->sFastCaptureSetting:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->sFastCaptureSetting:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;->LAUNCH_AND_RECORDING:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    if-ne v0, v1, :cond_0

    .line 1752
    invoke-static {p0}, Lcom/sonymobile/cameracommon/media/utility/AudioResourceChecker;->isAudioResourceAvailable(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1753
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getMessagePopup()Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    move-result-object v0

    const v1, 0x7f090185

    const v2, 0x7f090092

    const/4 v3, 0x0

    const v4, 0x7f0900ad

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showOk(IIZILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 1760
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;->LAUNCH_ONLY:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    sput-object v0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->sFastCaptureSetting:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    .line 1764
    :cond_0
    return-void
.end method

.method private checkSecureIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 378
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mIsSecurePhotoLaunchedByIntent:Z

    .line 380
    if-eqz p1, :cond_0

    .line 381
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 383
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 384
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mIsSecurePhotoLaunchedByIntent:Z

    .line 385
    invoke-static {}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->requestReloadFastCaptureSetting()V

    .line 386
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->enableStartUpNotificationFlag()V

    .line 389
    .end local v0    # "action":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .locals 1

    .prologue
    .line 1721
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->sCurrentCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    return-object v0
.end method

.method private getDownAll()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1181
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_FINALIZE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1183
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->removeStorageListener(Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;)V

    .line 1186
    iput-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    .line 1187
    iput-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    .line 1190
    iput-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mPostEventHandler:Landroid/os/Handler;

    .line 1193
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->releaseMediaPlayer()V

    .line 1195
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->release()V

    .line 1198
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->release()V

    .line 1201
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mScreenOffReceiver:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$ScreenOffReceiver;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1202
    iput-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mScreenOffReceiver:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$ScreenOffReceiver;

    .line 1205
    iput-boolean v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mIsSetContentView:Z

    .line 1207
    iput-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mKeyEventTranslator:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    .line 1208
    return-void
.end method

.method protected static getFastCaptureSetting()Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;
    .locals 1

    .prologue
    .line 1713
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->sFastCaptureSetting:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    return-object v0
.end method

.method protected static getTargetCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .locals 1

    .prologue
    .line 1729
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->sTargetCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    return-object v0
.end method

.method private loadDestinationToSave()V
    .locals 4

    .prologue
    .line 585
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->SAVE_DESTINATION:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->get(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;

    .line 589
    .local v0, "dst":Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;
    const/4 v1, 0x0

    .line 590
    .local v1, "dstTo":Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;
    sget-object v2, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$2;->$SwitchMap$com$sonyericsson$cameracommon$commonsetting$values$SaveDestination:[I

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 599
    :goto_0
    if-eqz v1, :cond_0

    .line 600
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->getType()Landroid/os/storage/StorageManager$StorageType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->setCurrentStorage(Landroid/os/storage/StorageManager$StorageType;)V

    .line 602
    :cond_0
    return-void

    .line 592
    :pswitch_0
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->EMMC:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    .line 593
    goto :goto_0

    .line 596
    :pswitch_1
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->SDCARD:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    goto :goto_0

    .line 590
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static logPerformance(Ljava/lang/String;)V
    .locals 4
    .param p0, "event"    # Ljava/lang/String;

    .prologue
    .line 95
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

    sget-object v2, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->TAG:Ljava/lang/String;

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

    .line 100
    return-void
.end method

.method private notifyActivityState(Ljava/lang/String;)V
    .locals 5
    .param p1, "intentSubject"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1675
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CAMERA_BUTTON"

    invoke-direct {v0, v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1676
    .local v0, "it":Landroid/content/Intent;
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    const/16 v3, 0x1b

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    .line 1677
    .local v1, "keyEvent":Landroid/view/KeyEvent;
    const-string v2, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1678
    const-string v2, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1679
    const-string v2, "com.sonymobile.android.camera.extra.IS_INTERRUPT_PROCESSING_OCCURRED"

    iget-boolean v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mIsInterruptProcessingOccurred:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1680
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1683
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1689
    invoke-virtual {p0, v0, v4}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1690
    return-void
.end method

.method private playStartUpNotificationSoundIfRequired()V
    .locals 3

    .prologue
    .line 885
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->FAST_CAPTURE:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->get(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    .line 888
    .local v0, "storedFastCapture":Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;
    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$2;->$SwitchMap$com$sonyericsson$cameracommon$commonsetting$values$FastCapture:[I

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 896
    :pswitch_0
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->releaseStartUpNotificationFlag()V

    .line 899
    :goto_0
    return-void

    .line 892
    :pswitch_1
    invoke-static {p0}, Lcom/sonyericsson/android/camera/CameraButtonIntentReceiver;->notifyStartUpIfRequired(Landroid/content/Context;)V

    goto :goto_0

    .line 888
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private postViewRelatedLazyInitializationTaskExecute()V
    .locals 4

    .prologue
    .line 732
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->sFastCaptureSetting:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    if-nez v0, :cond_0

    .line 733
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->loadFastCapturingLaunchSetting()V

    .line 735
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->sFastCaptureSetting:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    if-nez v0, :cond_1

    .line 736
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;->LAUNCH_ONLY:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    sput-object v0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->sFastCaptureSetting:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    .line 741
    :cond_1
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$PostDeviceInitializationTask;

    invoke-direct {v0, p0, p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$PostDeviceInitializationTask;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mPostDeviceInitializationTask:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$PostDeviceInitializationTask;

    .line 742
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$2;->$SwitchMap$com$sonyericsson$cameracommon$commonsetting$values$FastCapture:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->sFastCaptureSetting:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 747
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mPostDeviceInitializationTask:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$PostDeviceInitializationTask;

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->postDelayedEvent(Ljava/lang/Runnable;J)V

    .line 752
    :goto_0
    return-void

    .line 744
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mPostDeviceInitializationTask:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$PostDeviceInitializationTask;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->postEvent(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 742
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private releaseMediaPlayer()V
    .locals 1

    .prologue
    .line 1479
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 1480
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 1481
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 1482
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 1484
    :cond_0
    return-void
.end method

.method private releaseWearableFramework()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1792
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mWearableBridgeClient:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    if-eqz v0, :cond_0

    .line 1793
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mWearableBridgeClient:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->release()V

    .line 1794
    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mWearableBridgeClient:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    .line 1796
    :cond_0
    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mWearableBridgeLifeCycleObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$LifeCycleObserver;

    .line 1797
    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mWearableBridgePhotoEventObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$PhotoEventObserver;

    .line 1798
    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mWearableBridgeVideoEventObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$VideoEventObserver;

    .line 1799
    return-void
.end method

.method public static requestReloadFastCaptureSetting()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 218
    sput-object v0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->sFastCaptureSetting:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    .line 219
    sput-object v0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->sCurrentCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 220
    sput-object v0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->sTargetCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 221
    return-void
.end method

.method private requestToRestoreNavigationBar()V
    .locals 3

    .prologue
    .line 1943
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    if-eqz v0, :cond_0

    .line 1944
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;->EVENT_ON_NOTIFY_RESTORE_NAVIGATION_BAR_PREVIOUS_VISIBILITY:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 1947
    :cond_0
    return-void
.end method

.method protected static setCurrentCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .locals 0
    .param p0, "capturingMode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .prologue
    .line 1725
    sput-object p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->sCurrentCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 1726
    return-void
.end method

.method protected static setFastCaptureSetting(Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;)V
    .locals 0
    .param p0, "setting"    # Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    .prologue
    .line 1717
    sput-object p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->sFastCaptureSetting:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    .line 1718
    return-void
.end method

.method protected static setTargetCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .locals 0
    .param p0, "capturingMode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .prologue
    .line 1733
    sput-object p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->sTargetCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 1734
    return-void
.end method

.method private setUpAll()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 409
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->setupCoreInstance()V

    .line 412
    new-instance v3, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    check-cast v1, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$StorageAutoSwitchListener;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    check-cast v2, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinderInterface;

    invoke-direct {v3, v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$StorageAutoSwitchListener;Lcom/sonyericsson/cameracommon/viewfinder/ViewFinderInterface;)V

    iput-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    .line 414
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    check-cast v1, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->setStorageDialogStateListener(Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageDialogStateListener;)V

    .line 415
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->setMessegePopup(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;)V

    .line 416
    new-instance v1, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;-><init>(Landroid/app/Activity;Lcom/sonyericsson/cameracommon/mediasaving/StorageController;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    .line 417
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getMountedPaths(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->setMountPoint(Landroid/content/Context;[Ljava/lang/String;)V

    .line 420
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    sget-object v2, Landroid/os/storage/StorageManager$StorageType;->EXTERNAL_CARD:Landroid/os/storage/StorageManager$StorageType;

    invoke-static {v2, p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getPathFromType(Landroid/os/storage/StorageManager$StorageType;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->setStorage(Ljava/lang/String;I)V

    .line 423
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    sget-object v2, Landroid/os/storage/StorageManager$StorageType;->INTERNAL:Landroid/os/storage/StorageManager$StorageType;

    invoke-static {v2, p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getPathFromType(Landroid/os/storage/StorageManager$StorageType;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->setStorage(Ljava/lang/String;I)V

    .line 428
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 429
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mIsSetContentView:Z

    if-nez v1, :cond_0

    .line 430
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->setContentView()V

    .line 431
    iput-boolean v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mIsSetContentView:Z

    .line 435
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    sget-object v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_INITIALIZE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 438
    new-instance v1, Lcom/sonyericsson/android/camera/mediasaving/BurstSavingTaskManager;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/mediasaving/BurstSavingTaskManager;-><init>(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mSavingTaskManager:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    .line 441
    new-instance v1, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    invoke-direct {v1, p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    .line 444
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mPostEventHandler:Landroid/os/Handler;

    .line 447
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 449
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->addStorageListener(Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;)V

    .line 452
    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$ScreenOffReceiver;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$ScreenOffReceiver;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mScreenOffReceiver:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$ScreenOffReceiver;

    .line 453
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 454
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mScreenOffReceiver:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$ScreenOffReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 456
    new-instance v1, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;-><init>(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mKeyEventTranslator:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    .line 457
    return-void
.end method

.method private setupCoreInstance()V
    .locals 2

    .prologue
    .line 467
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    .line 470
    invoke-virtual {p0, p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->createViewFinder(Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;)Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    .line 473
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->setCameraDeviceHandler(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)V

    .line 474
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->setViewFinder(Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;)V

    .line 475
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->setStateMachine(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    .line 476
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->setCameraDevice(Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;)V

    .line 477
    return-void
.end method

.method private setupWearableFramework()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 364
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$WearableBridgeLifeCycleObserver;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$WearableBridgeLifeCycleObserver;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mWearableBridgeLifeCycleObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$LifeCycleObserver;

    .line 365
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$WearableBridgePhotoEventObserver;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$WearableBridgePhotoEventObserver;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mWearableBridgePhotoEventObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$PhotoEventObserver;

    .line 366
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$WearableBridgeVideoEventObserver;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$WearableBridgeVideoEventObserver;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mWearableBridgeVideoEventObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$VideoEventObserver;

    .line 367
    new-instance v0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mWearableBridgeLifeCycleObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$LifeCycleObserver;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mWearableBridgePhotoEventObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$PhotoEventObserver;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mWearableBridgeVideoEventObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$VideoEventObserver;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;-><init>(Landroid/app/Activity;Landroid/os/Handler;Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$LifeCycleObserver;Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$PhotoEventObserver;Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$VideoEventObserver;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mWearableBridgeClient:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    .line 373
    return-void
.end method

.method public static staticCameraDevice()Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;
    .locals 1

    .prologue
    .line 1896
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->sCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    return-object v0
.end method


# virtual methods
.method public abort()V
    .locals 1

    .prologue
    .line 1490
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->abort(Z)V

    .line 1491
    return-void
.end method

.method public abort(Z)V
    .locals 3
    .param p1, "isFinshied"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1494
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    if-eqz v0, :cond_0

    .line 1495
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->canApplicationBeFinished()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1496
    if-eqz p1, :cond_3

    .line 1503
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->isDeviceInSecurityLock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1504
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->finish()V

    .line 1521
    :cond_0
    :goto_0
    return-void

    .line 1505
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->isOneShotPhotoSecure()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1506
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->setResult(I)V

    .line 1507
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->finishUrgently()V

    goto :goto_0

    .line 1509
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->requestSuspend()V

    goto :goto_0

    .line 1513
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_PAUSE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1518
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_KEY_BACK:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected cancelCheckAutoUploadSetting()V
    .locals 1

    .prologue
    .line 1651
    invoke-static {}, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;->getInstance()Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;->cancel(Landroid/content/Context;)V

    .line 1652
    return-void
.end method

.method public cancelDelayedEvent(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 767
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mPostEventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 768
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mPostEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 770
    :cond_0
    return-void
.end method

.method protected confirmLocationService()V
    .locals 3

    .prologue
    .line 1779
    invoke-static {}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getFastCaptureSetting()Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;->LAUNCH_ONLY:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    if-ne v0, v1, :cond_0

    .line 1780
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mCommonSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    new-instance v2, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$1;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->confirmLocationService(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;)V

    .line 1788
    :cond_0
    return-void
.end method

.method protected createViewFinder(Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;)Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;
    .locals 1
    .param p1, "activity"    # Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    .prologue
    .line 460
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;

    invoke-direct {v0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/view/FastViewFinder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public finishSecureOneShot(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V
    .locals 4
    .param p1, "result"    # Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    .prologue
    .line 396
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    const/4 v0, -0x1

    iget-object v1, p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->uri:Landroid/net/Uri;

    iget-object v2, p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mimeType:Ljava/lang/String;

    iget-object v3, p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    iget-object v3, v3, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v3, v3, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->orientation:I

    invoke-static {p0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/utility/OneShotUtility;->createResultIntent(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->setResult(ILandroid/content/Intent;)V

    .line 405
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->finish()V

    .line 406
    return-void

    .line 403
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->setResult(I)V

    goto :goto_0
.end method

.method public getCameraDevice()Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;
    .locals 1

    .prologue
    .line 1909
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->sCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    return-object v0
.end method

.method public getCurrentLaunchMode()Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;
    .locals 1

    .prologue
    .line 1040
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->sFastCaptureSetting:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    return-object v0
.end method

.method protected getParamSharedPrefWrapper()Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;
    .locals 3

    .prologue
    .line 1768
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;

    const-string v1, "com.sonyericsson.android.camera.shared_preferences"

    const-string v2, "0.0.0"

    invoke-direct {v0, p0, v1, v2}, Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getWearableBridge()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;
    .locals 1

    .prologue
    .line 1857
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->isOneShotPhotoSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1858
    const/4 v0, 0x0

    .line 1860
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mWearableBridgeClient:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    goto :goto_0
.end method

.method public isDeviceInSecurityLock()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1615
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1617
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1619
    const-string v5, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1621
    .local v3, "subject":Ljava/lang/String;
    const-string v5, "keyguard"

    invoke-virtual {p0, v5}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 1623
    .local v1, "keyguadManager":Landroid/app/KeyguardManager;
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    .line 1626
    .local v2, "restrictedMode":Z
    const-string v5, "start-secure"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    .line 1629
    .end local v1    # "keyguadManager":Landroid/app/KeyguardManager;
    .end local v2    # "restrictedMode":Z
    .end local v3    # "subject":Ljava/lang/String;
    :cond_0
    return v4
.end method

.method public isDirectCaptureWithStartUpEnabled()Z
    .locals 2

    .prologue
    .line 621
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$2;->$SwitchMap$com$sonyericsson$cameracommon$commonsetting$values$FastCapture:[I

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->sFastCaptureSetting:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 630
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 623
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 621
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public isDualStorageAvailable()Z
    .locals 1

    .prologue
    .line 1704
    const/4 v0, 0x1

    return v0
.end method

.method public isLazyInitializationRunning()Z
    .locals 1

    .prologue
    .line 1950
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mIsLazyInitializationRunning:Z

    return v0
.end method

.method public isMenuAvailable()Z
    .locals 1

    .prologue
    .line 1699
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->isMenuAvailable()Z

    move-result v0

    return v0
.end method

.method public isRecording()Z
    .locals 1

    .prologue
    .line 1737
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    if-eqz v0, :cond_0

    .line 1738
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->isRecording()Z

    move-result v0

    .line 1740
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSecurePhotoLaunchedByIntent()Z
    .locals 1

    .prologue
    .line 392
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mIsSecurePhotoLaunchedByIntent:Z

    return v0
.end method

.method protected isVideoSupported()Z
    .locals 1

    .prologue
    .line 1774
    const/4 v0, 0x1

    return v0
.end method

.method protected loadFastCapturingLaunchSetting()V
    .locals 2

    .prologue
    .line 562
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->isOneShotPhotoSecure()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 564
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;->LAUNCH_ONLY:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->setFastCaptureSetting(Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;)V

    .line 571
    :cond_0
    :goto_0
    invoke-static {}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 572
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-static {}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->setCurrentCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 575
    :cond_1
    invoke-static {}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getTargetCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 576
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-static {}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getTargetCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->setTargetCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 578
    :cond_2
    return-void

    .line 565
    :cond_3
    invoke-static {}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getFastCaptureSetting()Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    move-result-object v0

    if-nez v0, :cond_0

    .line 567
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->FAST_CAPTURE:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->get(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->setFastCaptureSetting(Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;)V

    goto :goto_0
.end method

.method public notifyStateBlockedToWearable()V
    .locals 2

    .prologue
    .line 1866
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getWearableBridge()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1867
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getWearableBridge()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->getPhotoStateNotifier()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$PhotoStateNotifier;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractPhotoState;->BLOCKED:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractPhotoState;

    invoke-interface {v0, v1}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$PhotoStateNotifier;->onStateChanged(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractPhotoState;)V

    .line 1869
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getWearableBridge()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->getVideoStateNotifier()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$VideoStateNotifier;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractVideoState;->BLOCKED:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractVideoState;

    invoke-interface {v0, v1}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$VideoStateNotifier;->onStateChanged(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractVideoState;)V

    .line 1872
    :cond_0
    return-void
.end method

.method public notifyStateIdleToWearable()V
    .locals 2

    .prologue
    .line 1877
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getWearableBridge()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1878
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getWearableBridge()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->getPhotoStateNotifier()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$PhotoStateNotifier;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractPhotoState;->IDLE:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractPhotoState;

    invoke-interface {v0, v1}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$PhotoStateNotifier;->onStateChanged(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractPhotoState;)V

    .line 1880
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getWearableBridge()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->getVideoStateNotifier()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$VideoStateNotifier;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractVideoState;->IDLE:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractVideoState;

    invoke-interface {v0, v1}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$VideoStateNotifier;->onStateChanged(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractVideoState;)V

    .line 1883
    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 4

    .prologue
    .line 541
    invoke-super {p0}, Lcom/sonyericsson/android/camera/ExtendedActivity;->onAttachedToWindow()V

    .line 542
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$ClearDismissKeyguardFlagTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$ClearDismissKeyguardFlagTask;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$1;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 545
    return-void
.end method

.method public onCameraReadyToUse()V
    .locals 3

    .prologue
    .line 720
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    if-eqz v0, :cond_0

    .line 721
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->confirmLocationService()V

    .line 722
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mCommonSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->GEO_TAG:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->get(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->updateLocation(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    .line 724
    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1530
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->finish()V

    .line 1531
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 330
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/ExtendedActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 332
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 333
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mIsSetContentView:Z

    if-nez v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->setContentView()V

    .line 335
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mIsSetContentView:Z

    .line 338
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 342
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->STARTUP_TIME:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V

    .line 343
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->TAG:Ljava/lang/String;

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->ON_CREATE:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->logLifeCycleIn(Ljava/lang/String;Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;)V

    .line 345
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/sonyericsson/android/camera/ExtendedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 346
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->checkSecureIntent(Landroid/content/Intent;)V

    .line 349
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mThermalAlertReceiver:Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->onCreate()V

    .line 352
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->setupWearableFramework()V

    .line 355
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->setUpAll()V

    .line 357
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mLaunchConditions:Lcom/sonyericsson/android/camera/LaunchConditions;

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;->INTENT:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/LaunchConditions;->setLaunchedBy(Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;)V

    .line 359
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->TAG:Ljava/lang/String;

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->ON_CREATE:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->logLifeCycleOut(Ljava/lang/String;Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;)V

    .line 360
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1163
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->TAG:Ljava/lang/String;

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->ON_DESTROY:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->logLifeCycleIn(Ljava/lang/String;Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;)V

    .line 1164
    invoke-super {p0}, Lcom/sonyericsson/android/camera/ExtendedActivity;->onDestroy()V

    .line 1168
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getDownAll()V

    .line 1171
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mThermalAlertReceiver:Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->onDestroy()V

    .line 1174
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->releaseWearableFramework()V

    .line 1176
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->TAG:Ljava/lang/String;

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->ON_DESTROY:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->logLifeCycleOut(Ljava/lang/String;Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;)V

    .line 1177
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1214
    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mKeyEventTranslator:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    invoke-virtual {v4, p1}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->translateKeyCodeOnDown(I)Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    move-result-object v0

    .line 1217
    .local v0, "translatedKeyCode":Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-lez v4, :cond_1

    .line 1218
    sget-object v4, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->VOLUME:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    if-eq v0, v4, :cond_1

    .line 1286
    :cond_0
    :goto_0
    :pswitch_0
    return v2

    .line 1224
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1228
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->restartAutoOffTimer()V

    .line 1230
    sget-object v4, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$2;->$SwitchMap$com$sonyericsson$cameracommon$keytranslator$KeyEventTranslator$TranslatedKeyCode:[I

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 1286
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/android/camera/ExtendedActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    .line 1234
    :pswitch_1
    const/16 v4, 0x18

    if-ne p1, v4, :cond_2

    .line 1235
    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_KEY_ZOOM_IN_DOWN:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    .line 1240
    .local v1, "zoomKeyEvent":Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;
    :goto_1
    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v1, v3}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1237
    .end local v1    # "zoomKeyEvent":Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;
    :cond_2
    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_KEY_ZOOM_OUT_DOWN:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    .restart local v1    # "zoomKeyEvent":Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;
    goto :goto_1

    .line 1244
    .end local v1    # "zoomKeyEvent":Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;
    :pswitch_2
    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->isInModeLessRecording()Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    .line 1247
    goto :goto_0

    .line 1251
    :pswitch_3
    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    sget-object v5, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_KEY_FOCUS_DOWN:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v3}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1256
    :pswitch_4
    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    sget-object v5, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_KEY_CAPTURE_DOWN:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v3}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1263
    :pswitch_5
    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    sget-object v5, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_KEY_FOCUS_DOWN:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1265
    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    sget-object v5, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_KEY_CAPTURE_DOWN:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v3}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1278
    :pswitch_6
    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    sget-object v5, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_KEY_FOCUS_DOWN:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1280
    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    sget-object v5, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_KEY_CAPTURE_DOWN:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v3}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1230
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1293
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1379
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 1297
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->restartAutoOffTimer()V

    .line 1299
    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mKeyEventTranslator:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    invoke-virtual {v3, p1}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->translateKeyCodeOnUp(I)Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    move-result-object v0

    .line 1303
    .local v0, "translatedKeyCode":Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;
    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    invoke-interface {v3}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->isCapturingModeSelectorOpened()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1304
    sget-object v3, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$2;->$SwitchMap$com$sonyericsson$cameracommon$keytranslator$KeyEventTranslator$TranslatedKeyCode:[I

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1321
    :cond_2
    :pswitch_1
    sget-object v3, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$2;->$SwitchMap$com$sonyericsson$cameracommon$keytranslator$KeyEventTranslator$TranslatedKeyCode:[I

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    .line 1379
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/android/camera/ExtendedActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 1314
    :pswitch_2
    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->closeCapturingModeSelector()V

    goto :goto_0

    .line 1324
    :pswitch_3
    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    sget-object v4, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_KEY_ZOOM_UP:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1329
    :pswitch_4
    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->isInModeLessRecording()Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 1332
    goto :goto_0

    .line 1336
    :pswitch_5
    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    sget-object v4, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_KEY_CAPTURE_UP:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1338
    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    sget-object v4, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_KEY_FOCUS_UP:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1343
    :pswitch_6
    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    sget-object v4, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_KEY_CAPTURE_UP:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1350
    :pswitch_7
    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    sget-object v4, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_KEY_CAPTURE_UP:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1352
    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    sget-object v4, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_KEY_FOCUS_UP:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1358
    :pswitch_8
    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    sget-object v4, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_KEY_MENU:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1364
    :pswitch_9
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->abort()V

    goto/16 :goto_0

    .line 1371
    :pswitch_a
    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    sget-object v4, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_KEY_CAPTURE_UP:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1373
    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    sget-object v4, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_KEY_FOCUS_UP:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1304
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1321
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1669
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mLaunchConditions:Lcom/sonyericsson/android/camera/LaunchConditions;

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;->INTENT:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/LaunchConditions;->setLaunchedBy(Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;)V

    .line 1670
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->checkSecureIntent(Landroid/content/Intent;)V

    .line 1671
    return-void
.end method

.method public onNotifyThermalNormal()V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->onNotifyThermalStatus(Z)V

    .line 260
    :cond_0
    return-void
.end method

.method public onNotifyThermalWarning()V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->onNotifyThermalStatus(Z)V

    .line 267
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1065
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->TAG:Ljava/lang/String;

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->ON_PAUSE:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->logLifeCycleIn(Ljava/lang/String;Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;)V

    .line 1067
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->setCurrentCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 1069
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->getTargetCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->setTargetCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 1072
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_PAUSE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1074
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->removeChangeCameraModeTask()V

    .line 1080
    const-string v0, "activity-paused"

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->notifyActivityState(Ljava/lang/String;)V

    .line 1083
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    if-eqz v0, :cond_2

    .line 1085
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->stopFaceIdService()V

    .line 1086
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->releaseCameraInstance()V

    .line 1087
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->setStateMachine(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    .line 1088
    iput-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    .line 1096
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->pause()V

    .line 1099
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mThermalAlertReceiver:Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->onPause()V

    .line 1101
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->releaseResource()V

    .line 1103
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->cancelCheckAutoUploadSetting()V

    .line 1105
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mLaunchConditions:Lcom/sonyericsson/android/camera/LaunchConditions;

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;->UNKNOWN:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/LaunchConditions;->setLaunchedBy(Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;)V

    .line 1108
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mPostDeviceInitializationTask:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$PostDeviceInitializationTask;

    if-eqz v0, :cond_0

    .line 1109
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mPostDeviceInitializationTask:Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$PostDeviceInitializationTask;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->cancelDelayedEvent(Ljava/lang/Runnable;)V

    .line 1111
    :cond_0
    iput-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mPostEventHandler:Landroid/os/Handler;

    .line 1113
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->releaseContentsViewController()V

    .line 1116
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getWearableBridge()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1117
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getWearableBridge()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->getLifeCycleNotifier()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$LifeCycleNotifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$LifeCycleNotifier;->onPause()V

    .line 1121
    :cond_1
    invoke-super {p0}, Lcom/sonyericsson/android/camera/ExtendedActivity;->onPause()V

    .line 1123
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->TAG:Ljava/lang/String;

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->ON_PAUSE:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->logLifeCycleOut(Ljava/lang/String;Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;)V

    .line 1124
    return-void

    .line 1093
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->releaseCameraInstance()V

    goto :goto_0
.end method

.method public onReachHighTemperature(Z)V
    .locals 4
    .param p1, "isOnStartup"    # Z

    .prologue
    const/4 v3, 0x0

    .line 237
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    if-eqz v0, :cond_0

    .line 238
    invoke-static {}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->getInstance()Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->isRecording()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->sendThermalEvent(ZZ)V

    .line 240
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_PAUSE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 241
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->removeChangeCameraModeTask()V

    .line 242
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->removeStartRecordingTask()V

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->releaseCameraInstance()V

    .line 248
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->setStateMachine(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    .line 249
    iput-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    .line 253
    :goto_0
    return-void

    .line 251
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->releaseCameraInstance()V

    goto :goto_0
.end method

.method public onRestart()V
    .locals 2

    .prologue
    .line 490
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->TAG:Ljava/lang/String;

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->ON_RESTART:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->logLifeCycleIn(Ljava/lang/String;Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;)V

    .line 491
    invoke-super {p0}, Lcom/sonyericsson/android/camera/ExtendedActivity;->onRestart()V

    .line 493
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->TAG:Ljava/lang/String;

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->ON_RESTART:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->logLifeCycleOut(Ljava/lang/String;Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;)V

    .line 494
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 498
    sget-object v1, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->STARTUP_TIME:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-static {v1, v0}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V

    .line 499
    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->TAG:Ljava/lang/String;

    sget-object v2, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->ON_RESUME:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    invoke-virtual {p0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->logLifeCycleIn(Ljava/lang/String;Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;)V

    .line 501
    invoke-super {p0}, Lcom/sonyericsson/android/camera/ExtendedActivity;->onResume()V

    .line 503
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mPostEventHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mPostEventHandler:Landroid/os/Handler;

    .line 506
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getWearableBridge()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 507
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getWearableBridge()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->getLifeCycleNotifier()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$LifeCycleNotifier;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$LifeCycleNotifier;->onResume()V

    .line 511
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mThermalAlertReceiver:Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->onResume()V

    .line 514
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->loadFastCapturingLaunchSetting()V

    .line 517
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->checkAudioAvailable()V

    .line 520
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->loadDestinationToSave()V

    .line 523
    const-string v1, "activity-resumed"

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->notifyActivityState(Ljava/lang/String;)V

    .line 526
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mForceSound:Lcom/sonyericsson/android/camera/ExtendedActivity$ForceSound;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/ExtendedActivity$ForceSound;->resume()V

    .line 531
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->requestInflate(Landroid/view/LayoutInflater;)V

    .line 533
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mLaunchConditions:Lcom/sonyericsson/android/camera/LaunchConditions;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/LaunchConditions;->isOneShot()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getExtraOutput()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_2

    :goto_0
    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->setOneShotMode(Z)V

    .line 536
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->TAG:Ljava/lang/String;

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->ON_RESUME:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->logLifeCycleOut(Ljava/lang/String;Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;)V

    .line 537
    return-void

    .line 533
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 482
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->TAG:Ljava/lang/String;

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->ON_START:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->logLifeCycleIn(Ljava/lang/String;Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;)V

    .line 483
    invoke-super {p0}, Lcom/sonyericsson/android/camera/ExtendedActivity;->onStart()V

    .line 485
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->TAG:Ljava/lang/String;

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->ON_START:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->logLifeCycleOut(Ljava/lang/String;Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;)V

    .line 486
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 1128
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->TAG:Ljava/lang/String;

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->ON_STOP:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->logLifeCycleIn(Ljava/lang/String;Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;)V

    .line 1129
    invoke-super {p0}, Lcom/sonyericsson/android/camera/ExtendedActivity;->onStop()V

    .line 1157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mIsInterruptProcessingOccurred:Z

    .line 1158
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->TAG:Ljava/lang/String;

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->ON_STOP:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->logLifeCycleOut(Ljava/lang/String;Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;)V

    .line 1159
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 1

    .prologue
    .line 1060
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mIsInterruptProcessingOccurred:Z

    .line 1061
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 1932
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/ExtendedActivity;->onWindowFocusChanged(Z)V

    .line 1936
    if-eqz p1, :cond_0

    .line 1937
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->requestToRestoreNavigationBar()V

    .line 1938
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mViewFinder:Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;->updateGeotagIcon()V

    .line 1940
    :cond_0
    return-void
.end method

.method public pauseCameraView()V
    .locals 3

    .prologue
    .line 1709
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_PAUSE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1710
    return-void
.end method

.method public playSound(I)V
    .locals 7
    .param p1, "soundType"    # I

    .prologue
    .line 1405
    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v3, :cond_0

    .line 1464
    :goto_0
    return-void

    .line 1410
    :cond_0
    const/4 v2, 0x7

    .line 1412
    .local v2, "sound_stream":I
    iget-object v4, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    monitor-enter v4

    .line 1413
    const/4 v1, 0x0

    .line 1414
    .local v1, "soundFile":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1442
    :goto_1
    :pswitch_0
    if-nez v1, :cond_1

    .line 1444
    :try_start_0
    monitor-exit v4

    goto :goto_0

    .line 1461
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1417
    :pswitch_1
    :try_start_1
    sget-object v3, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;->SOUND_AF_SUCCESS:Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;->SOUND1:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    invoke-static {v3, v5}, Lcom/sonyericsson/android/camera/ShutterToneGenerator;->getSoundFilePath(Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;)Ljava/lang/String;

    move-result-object v1

    .line 1420
    goto :goto_1

    .line 1423
    :pswitch_2
    sget-object v3, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;->SOUND_SELFTIMER_10SEC:Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;->SOUND1:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    invoke-static {v3, v5}, Lcom/sonyericsson/android/camera/ShutterToneGenerator;->getSoundFilePath(Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;)Ljava/lang/String;

    move-result-object v1

    .line 1426
    goto :goto_1

    .line 1429
    :pswitch_3
    sget-object v3, Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;->SOUND_SELFTIMER_2SEC:Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;->SOUND1:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    invoke-static {v3, v5}, Lcom/sonyericsson/android/camera/ShutterToneGenerator;->getSoundFilePath(Lcom/sonyericsson/android/camera/ShutterToneGenerator$Type;Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 1432
    goto :goto_1

    .line 1435
    :pswitch_4
    const/4 v1, 0x0

    .line 1436
    goto :goto_1

    .line 1448
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->reset()V

    .line 1449
    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 1450
    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 1451
    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/high16 v5, 0x40e00000    # 7.0f

    const/high16 v6, 0x40e00000    # 7.0f

    invoke-virtual {v3, v5, v6}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 1453
    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1460
    :goto_2
    :try_start_3
    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V

    .line 1461
    monitor-exit v4

    goto :goto_0

    .line 1454
    :catch_0
    move-exception v0

    .line 1457
    .local v0, "ex":Ljava/io/IOException;
    iget-object v3, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->reset()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 1414
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public playSound(Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;)V
    .locals 2
    .param p1, "selfTimer"    # Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    .prologue
    .line 1384
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$2;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SelfTimer:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1400
    :goto_0
    return-void

    .line 1386
    :pswitch_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->playSound(I)V

    goto :goto_0

    .line 1390
    :pswitch_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->playSound(I)V

    goto :goto_0

    .line 1394
    :pswitch_2
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->playSound(I)V

    goto :goto_0

    .line 1384
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public postDelayedEvent(Ljava/lang/Runnable;J)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "delayTime"    # J

    .prologue
    .line 761
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mPostEventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mPostEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 764
    :cond_0
    return-void
.end method

.method public postEvent(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 755
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mPostEventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 756
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mPostEventHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 758
    :cond_0
    return-void
.end method

.method public prepareCameraDeviceHandler(Landroid/content/Context;Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "requestedMode"    # Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;
    .param p3, "cameraId"    # I

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getCameraDeviceStatus()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 326
    :goto_0
    return-void

    .line 315
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->isOneShotPhotoSecure()Z

    move-result v1

    invoke-virtual {v0, p1, p3, p2, v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->startCameraOpen(Landroid/content/Context;ILcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;Z)V

    goto :goto_0

    .line 312
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected prepareFinish()V
    .locals 3

    .prologue
    .line 1956
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_PAUSE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1957
    return-void
.end method

.method protected requestCheckAutoUploadSetting()V
    .locals 3

    .prologue
    .line 1644
    invoke-static {}, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;->getInstance()Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$AutoUploadSettingCheckCallback;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$AutoUploadSettingCheckCallback;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$1;)V

    invoke-virtual {v0, p0, v1}, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;->request(Landroid/content/Context;Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettingNotifyListener;)V

    .line 1646
    return-void
.end method

.method public requestFinishCameraActivity()V
    .locals 2

    .prologue
    .line 878
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.android.camera.intent.action.FINISH_CAMERAACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 880
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 881
    return-void
.end method

.method public requestLaunchAdvancedCameraApplication()V
    .locals 4

    .prologue
    .line 1535
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->canApplicationBeFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1536
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    .line 1537
    .local v0, "currentMode":Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1538
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->getLatestCachedParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/fastcapturing/PlatformDependencyResolver;->isSceneRecognitionSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1549
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 1553
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    sget-object v2, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_PAUSE:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 1557
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mPostEventHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$RequestLaunchAdvancedCameraTask;

    invoke-direct {v2, p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$RequestLaunchAdvancedCameraTask;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1559
    .end local v0    # "currentMode":Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    :cond_1
    return-void
.end method

.method public requestPostLazyInitializationTaskExecute()V
    .locals 0

    .prologue
    .line 728
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->postViewRelatedLazyInitializationTaskExecute()V

    .line 729
    return-void
.end method

.method public requestSuspend()V
    .locals 1

    .prologue
    .line 1046
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->moveTaskToBack(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1048
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->finish()V

    .line 1050
    :cond_0
    return-void
.end method

.method public resumeAll()V
    .locals 5

    .prologue
    .line 644
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->sFastCaptureSetting:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;->OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    if-ne v0, v1, :cond_0

    .line 645
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->isSecurePhotoLaunchedByIntent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 647
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;->LAUNCH_ONLY:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->updateLaunchMode(Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;)V

    .line 657
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_RESUME:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->sFastCaptureSetting:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 663
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->sFastCaptureSetting:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->getTargetCameraId()I

    move-result v1

    invoke-virtual {p0, p0, v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->prepareCameraDeviceHandler(Landroid/content/Context;Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;I)V

    .line 667
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getCameraDevice()Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    .line 668
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->initialize()V

    .line 669
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->setStateMachine(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;)V

    .line 670
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    new-instance v1, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$CameraErrorCallbackImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$CameraErrorCallbackImpl;-><init>(Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 672
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->isCameraDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 673
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->showCameraNotAvailableError()V

    .line 677
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->enableOrientation()V

    .line 681
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->confirmLocationService()V

    .line 682
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mCommonSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->GEO_TAG:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->get(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->updateLocation(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    .line 684
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->requestCheckAutoUploadSetting()V

    .line 687
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mSavingTaskManager:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->onResume()V

    .line 688
    :goto_0
    return-void

    .line 649
    :cond_2
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->TAG:Ljava/lang/String;

    const-string v1, "[CameraNotAvailable] sFastCaptureSetting : FastCapture.OFF "

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->errorLogForNonUserVariant(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->showCameraNotAvailableError()V

    goto :goto_0
.end method

.method public resumeAll(Z)V
    .locals 0
    .param p1, "resumedFromIncomingCall"    # Z

    .prologue
    .line 635
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->resumeAll()V

    .line 636
    return-void
.end method

.method public setDestinationToSave(Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;)V
    .locals 3
    .param p1, "dstTo"    # Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    .prologue
    .line 605
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->getType()Landroid/os/storage/StorageManager$StorageType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->setCurrentStorage(Landroid/os/storage/StorageManager$StorageType;)V

    .line 606
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->requestCheckAll()V

    .line 607
    sget-object v0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity$2;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$DestinationToSave:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 615
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->SAVE_DESTINATION:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getStorageManager()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->isToggledStorageReady()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->setSelectability(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;Z)V

    .line 618
    return-void

    .line 609
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;->EMMC:Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->set(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    goto :goto_0

    .line 612
    :pswitch_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;->SDCARD:Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->set(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    goto :goto_0

    .line 607
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public shouldAddOnlyNewContent()Z
    .locals 1

    .prologue
    .line 1746
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mIsSecurePhotoLaunchedByIntent:Z

    return v0
.end method

.method public showCameraNotAvailableError()V
    .locals 1

    .prologue
    .line 694
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->showCameraNotAvailableError(Z)V

    .line 695
    return-void
.end method

.method protected showCameraNotAvailableError(Z)V
    .locals 2
    .param p1, "shouldCancelable"    # Z

    .prologue
    .line 703
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;->isCameraDisabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 705
    .local v0, "isCameraDisabled":Z
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->getMessagePopup()Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showCameraNotAvailableError(ZZ)V

    .line 707
    return-void

    .line 703
    .end local v0    # "isCameraDisabled":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startAutoOffTimer()Z
    .locals 1

    .prologue
    .line 1638
    const/16 v0, 0x7530

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->startAutoOffTimer(I)Z

    move-result v0

    return v0
.end method

.method public stopPlayingSound()V
    .locals 2

    .prologue
    .line 1467
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 1476
    :goto_0
    return-void

    .line 1470
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    monitor-enter v1

    .line 1471
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1472
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 1473
    iget-object v0, p0, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 1475
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public terminateApplication()V
    .locals 0

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->finish()V

    .line 273
    return-void
.end method

.method public updateLaunchMode(Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;)V
    .locals 0
    .param p1, "fastCapture"    # Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    .prologue
    .line 1036
    sput-object p1, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->sFastCaptureSetting:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    .line 1037
    return-void
.end method
