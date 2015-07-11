.class public Lcom/sonyericsson/android/camera/CameraActivity;
.super Lcom/sonyericsson/android/camera/ExtendedActivity;
.source "CameraActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/CameraActivity$1;,
        Lcom/sonyericsson/android/camera/CameraActivity$WearableBridgeVideoEventObserver;,
        Lcom/sonyericsson/android/camera/CameraActivity$WearableBridgePhotoEventObserver;,
        Lcom/sonyericsson/android/camera/CameraActivity$WearableBridgeLifeCycleObserver;,
        Lcom/sonyericsson/android/camera/CameraActivity$StartupGeotagSettingListener;,
        Lcom/sonyericsson/android/camera/CameraActivity$AutoUploadSettingNotifyCallback;,
        Lcom/sonyericsson/android/camera/CameraActivity$CameraActivityFinishBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final PERFLOCK_DURATION_MILLIS:I = 0x5dc

.field private static final TAG:Ljava/lang/String; = "CameraActivity"


# instance fields
.field private mCameraActivityFinishReceiver:Lcom/sonyericsson/android/camera/CameraActivity$CameraActivityFinishBroadcastReceiver;

.field protected mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

.field private mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

.field private mKeyEventTranslator:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

.field private mPreviousManualMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

.field private mPreviousModeNotFront:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

.field private mWearableBridgeClient:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

.field private mWearableBridgeLifeCycleObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$LifeCycleObserver;

.field private mWearableBridgePhotoEventObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$PhotoEventObserver;

.field private mWearableBridgeVideoEventObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$VideoEventObserver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 150
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/ExtendedActivity;-><init>()V

    .line 129
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$CameraActivityFinishBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/CameraActivity$CameraActivityFinishBroadcastReceiver;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraActivityFinishReceiver:Lcom/sonyericsson/android/camera/CameraActivity$CameraActivityFinishBroadcastReceiver;

    .line 133
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mPreviousModeNotFront:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 134
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mPreviousManualMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 141
    iput-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mWearableBridgeClient:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    .line 144
    iput-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mWearableBridgeLifeCycleObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$LifeCycleObserver;

    .line 146
    iput-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mWearableBridgePhotoEventObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$PhotoEventObserver;

    .line 148
    iput-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mWearableBridgeVideoEventObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$VideoEventObserver;

    .line 151
    const-string v0, "SemcCameraUI"

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->setAppName(Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/view/CameraWindow;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/CameraActivity;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    return-object v0
.end method

.method private acquirePerformanceLock()V
    .locals 5

    .prologue
    .line 360
    :try_start_0
    const-string v3, "org.codeaurora.Performance"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    new-instance v1, Lorg/codeaurora/Performance;

    invoke-direct {v1}, Lorg/codeaurora/Performance;-><init>()V

    .line 369
    .local v1, "pfm":Lorg/codeaurora/Performance;
    const/16 v3, 0x5dc

    const/4 v4, 0x5

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    invoke-virtual {v1, v3, v4}, Lorg/codeaurora/Performance;->perfLockAcquire(I[I)I

    move-result v2

    .line 378
    .local v2, "ret":I
    packed-switch v2, :pswitch_data_0

    .line 394
    .end local v1    # "pfm":Lorg/codeaurora/Performance;
    .end local v2    # "ret":I
    :goto_0
    :pswitch_0
    return-void

    .line 361
    :catch_0
    move-exception v0

    .line 364
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    goto :goto_0

    .line 369
    :array_0
    .array-data 4
        0x7ff
        0x2fe
        0x3fe
        0x4fe
        0x5fe
    .end array-data

    .line 378
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private checkIntent(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 697
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchConditions:Lcom/sonyericsson/android/camera/LaunchConditions;

    sget-object v2, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;->INTENT:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/LaunchConditions;->setLaunchedBy(Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;)V

    .line 700
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 701
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 702
    const-string v0, "android.intent.action.MAIN"

    .line 703
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 708
    :cond_0
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 709
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraActivity;->setPhotoMode(Landroid/content/Intent;)V

    .line 760
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraActivity;->readExtra(Landroid/content/Intent;)V

    .line 761
    return-void

    .line 710
    :cond_2
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 713
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object v2, Lcom/sonyericsson/android/camera/OneShotType;->PHOTO:Lcom/sonyericsson/android/camera/OneShotType;

    invoke-virtual {p0, v1, v3, v2}, Lcom/sonyericsson/android/camera/CameraActivity;->setLaunchCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;ZLcom/sonyericsson/android/camera/OneShotType;)V

    goto :goto_0

    .line 714
    :cond_3
    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 717
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object v2, Lcom/sonyericsson/android/camera/OneShotType;->VIDEO:Lcom/sonyericsson/android/camera/OneShotType;

    invoke-virtual {p0, v1, v3, v2}, Lcom/sonyericsson/android/camera/CameraActivity;->setLaunchCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;ZLcom/sonyericsson/android/camera/OneShotType;)V

    goto :goto_0

    .line 718
    :cond_4
    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 719
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraActivity;->setPhotoMode(Landroid/content/Intent;)V

    goto :goto_0

    .line 720
    :cond_5
    const-string v1, "android.media.action.VIDEO_CAMERA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 723
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->setLaunchCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    goto :goto_0

    .line 724
    :cond_6
    const-string v1, "com.sonyericsson.android.camera.action.FRONT_STILL_IMAGE_CAMERA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 727
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->isFrontCameraSupported()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getInstance()Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->isSceneRecognitionSupported(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 730
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->setLaunchCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 735
    :goto_1
    const-string v1, "com.sonyericsson.android.camera.extra.launchedByFastCapturing"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 736
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->updatePreviousCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    goto :goto_0

    .line 732
    :cond_7
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->setLaunchCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    goto :goto_1

    .line 738
    :cond_8
    const-string v1, "com.sonyericsson.android.camera.action.FRONT_VIDEO_CAMERA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 741
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->setLaunchCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 743
    const-string v1, "com.sonyericsson.android.camera.extra.launchedByFastCapturing"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 744
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->updatePreviousCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    goto/16 :goto_0

    .line 746
    :cond_9
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 748
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->setLaunchCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    goto/16 :goto_0

    .line 749
    :cond_a
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 751
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->setLaunchCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    goto/16 :goto_0

    .line 752
    :cond_b
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 754
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->setLaunchCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    goto/16 :goto_0

    .line 757
    :cond_c
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->setLaunchCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    goto/16 :goto_0
.end method

.method private createSingletons()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 915
    new-instance v2, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-direct {v2, v3, v4}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$StorageAutoSwitchListener;Lcom/sonyericsson/cameracommon/viewfinder/ViewFinderInterface;)V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    .line 917
    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->setStorageDialogStateListener(Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageDialogStateListener;)V

    .line 918
    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->setMessegePopup(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;)V

    .line 919
    new-instance v2, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    invoke-direct {v2, p0, v3}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;-><init>(Landroid/app/Activity;Lcom/sonyericsson/cameracommon/mediasaving/StorageController;)V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    .line 920
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getMountedPaths(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->setMountPoint(Landroid/content/Context;[Ljava/lang/String;)V

    .line 923
    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    sget-object v3, Landroid/os/storage/StorageManager$StorageType;->EXTERNAL_CARD:Landroid/os/storage/StorageManager$StorageType;

    invoke-static {v3, p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getPathFromType(Landroid/os/storage/StorageManager$StorageType;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->setStorage(Ljava/lang/String;I)V

    .line 926
    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    sget-object v3, Landroid/os/storage/StorageManager$StorageType;->INTERNAL:Landroid/os/storage/StorageManager$StorageType;

    invoke-static {v3, p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getPathFromType(Landroid/os/storage/StorageManager$StorageType;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->setStorage(Ljava/lang/String;I)V

    .line 931
    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchConditions:Lcom/sonyericsson/android/camera/LaunchConditions;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/LaunchConditions;->isDeviceError()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 999
    :goto_0
    return v0

    .line 937
    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->isCameraSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 938
    new-instance v2, Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/camera/device/CameraDevice;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;)V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    .line 944
    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mConfigurations:Lcom/sonyericsson/android/camera/configuration/Configurations;

    invoke-virtual {v2, p0}, Lcom/sonyericsson/android/camera/configuration/Configurations;->init(Lcom/sonyericsson/android/camera/CameraActivity;)V

    .line 958
    new-instance v2, Lcom/sonyericsson/android/camera/parameter/ParameterManager;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchConditions:Lcom/sonyericsson/android/camera/LaunchConditions;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/LaunchConditions;->getLaunchCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    invoke-direct {v2, p0, v3, v4}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/cameracommon/mediasaving/StorageController;)V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mParameterManager:Lcom/sonyericsson/android/camera/parameter/ParameterManager;

    .line 970
    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->startOpenCameraDeviceTask(I)V

    .line 976
    new-instance v0, Lcom/sonyericsson/android/camera/ControllerManager;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/ControllerManager;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera/ControllerManager;

    .line 985
    new-instance v0, Lcom/sonyericsson/android/camera/mediasaving/BurstSavingTaskManager;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/mediasaving/BurstSavingTaskManager;-><init>(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSavingTaskManager:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    .line 988
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    .line 991
    new-instance v0, Lcom/sonyericsson/android/camera/ShutterToneGenerator;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/ShutterToneGenerator;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mShutterToneGenerator:Lcom/sonyericsson/android/camera/ShutterToneGenerator;

    .line 997
    new-instance v0, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;-><init>(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mKeyEventTranslator:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    move v0, v1

    .line 999
    goto :goto_0

    .line 940
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchConditions:Lcom/sonyericsson/android/camera/LaunchConditions;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/android/camera/LaunchConditions;->setDeviceError(Z)V

    goto :goto_0
.end method

.method public static getExtraCapturingMode(Landroid/content/Intent;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "defaultMode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .prologue
    .line 875
    move-object v0, p1

    .line 877
    .local v0, "mode":Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    const-string v1, "com.sonymobile.camera.addon.intent.extra.CAPTURING_MODE"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 878
    const-string v1, "com.sonymobile.camera.addon.intent.extra.CAPTURING_MODE"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->convertFrom(Ljava/lang/String;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    .line 885
    :cond_0
    :goto_0
    return-object v0

    .line 881
    :cond_1
    const-string v1, "com.sonyericsson.camera.intent.extra.CAPTURING_MODE"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 882
    const-string v1, "com.sonyericsson.camera.intent.extra.CAPTURING_MODE"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->convertFrom(Ljava/lang/String;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    goto :goto_0
.end method

.method private getLastCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .locals 5
    .param p1, "defaultMode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .prologue
    .line 809
    new-instance v1, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;-><init>(Landroid/content/Context;)V

    .line 810
    .local v1, "sharedPrefs":Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;
    const-string v3, "KEY_LAST_MODE"

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 813
    .local v2, "stringCapturingMode":Ljava/lang/String;
    invoke-static {v2, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->convertFrom(Ljava/lang/String;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    .line 814
    .local v0, "mode":Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    return-object v0
.end method

.method private getLastPreviousCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .locals 5
    .param p1, "defaultMode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .prologue
    .line 823
    new-instance v1, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;-><init>(Landroid/content/Context;)V

    .line 824
    .local v1, "sharedPrefs":Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;
    const-string v3, "KEY_LAST_PREVIOUS_MODE"

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 827
    .local v2, "stringCapturingMode":Ljava/lang/String;
    invoke-static {v2, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->convertFrom(Ljava/lang/String;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    .line 828
    .local v0, "mode":Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    return-object v0
.end method

.method private getLastPreviousManualMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .locals 5
    .param p1, "defaultMode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .prologue
    .line 837
    new-instance v1, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;-><init>(Landroid/content/Context;)V

    .line 838
    .local v1, "sharedPrefs":Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;
    const-string v3, "KEY_LAST_PREVIOUS_MANUAL_MODE"

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 841
    .local v2, "stringCapturingMode":Ljava/lang/String;
    invoke-static {v2, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->convertFrom(Ljava/lang/String;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    .line 842
    .local v0, "mode":Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    return-object v0
.end method

.method private getRequestedCapturingMode(Landroid/content/Intent;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "defaultMode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .prologue
    const/4 v4, 0x1

    .line 854
    invoke-static {p1, p2}, Lcom/sonyericsson/android/camera/CameraActivity;->getExtraCapturingMode(Landroid/content/Intent;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v1

    .line 856
    .local v1, "mode":Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->UNKNOWN:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne v1, v2, :cond_0

    .line 857
    const-string v2, "facing"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 860
    .local v0, "facing":I
    if-ne v0, v4, :cond_0

    .line 861
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getInstance()Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->isSceneRecognitionSupported(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 863
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 871
    .end local v0    # "facing":I
    :cond_0
    :goto_0
    return-object v1

    .line 865
    .restart local v0    # "facing":I
    :cond_1
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    goto :goto_0
.end method

.method private initCameraWindow()V
    .locals 1

    .prologue
    .line 1028
    new-instance v0, Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/view/CameraWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    .line 1029
    return-void
.end method

.method private initConfigrations()V
    .locals 1

    .prologue
    .line 1036
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/Configurations;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/configuration/Configurations;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mConfigurations:Lcom/sonyericsson/android/camera/configuration/Configurations;

    .line 1037
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mConfigurations:Lcom/sonyericsson/android/camera/configuration/Configurations;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/configuration/Configurations;->startInitTask(Landroid/content/Context;)V

    .line 1038
    return-void
.end method

.method public static isMenuCustomizationIn()Z
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x1

    return v0
.end method

.method public static isSurfaceSizeValid(III)Z
    .locals 3
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "orientation"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1515
    if-ne p0, p1, :cond_1

    .line 1533
    :cond_0
    :goto_0
    return v0

    .line 1520
    :cond_1
    const/4 v2, 0x2

    if-ne p2, v2, :cond_3

    .line 1521
    if-lt p0, p1, :cond_0

    :cond_2
    move v0, v1

    .line 1533
    goto :goto_0

    .line 1526
    :cond_3
    if-ne p2, v1, :cond_2

    .line 1527
    if-le p0, p1, :cond_2

    goto :goto_0
.end method

.method private notifyOnPauseToWearable()V
    .locals 1

    .prologue
    .line 1957
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getWearableBridge()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1958
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getWearableBridge()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->getLifeCycleNotifier()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$LifeCycleNotifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$LifeCycleNotifier;->onPause()V

    .line 1960
    :cond_0
    return-void
.end method

.method private notifyOnResumeToWearable()V
    .locals 1

    .prologue
    .line 1949
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getWearableBridge()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1950
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getWearableBridge()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->getLifeCycleNotifier()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$LifeCycleNotifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$LifeCycleNotifier;->onResume()V

    .line 1952
    :cond_0
    return-void
.end method

.method private notifyUnlockToWearable()V
    .locals 2

    .prologue
    .line 2008
    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchConditions:Lcom/sonyericsson/android/camera/LaunchConditions;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/LaunchConditions;->getLaunchCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2027
    :goto_0
    return-void

    .line 2020
    :pswitch_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->notifyOnResumeToWearable()V

    goto :goto_0

    .line 2008
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private pauseConfigrations()V
    .locals 1

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mConfigurations:Lcom/sonyericsson/android/camera/configuration/Configurations;

    if-eqz v0, :cond_0

    .line 1045
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mConfigurations:Lcom/sonyericsson/android/camera/configuration/Configurations;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/Configurations;->shutdownInitTask()V

    .line 1047
    :cond_0
    return-void
.end method

.method private pauseSingletons()V
    .locals 1

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->release()V

    .line 1156
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    if-eqz v0, :cond_0

    .line 1157
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->close()V

    .line 1163
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchConditions:Lcom/sonyericsson/android/camera/LaunchConditions;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchConditions;->isDeviceError()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1168
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->finishUrgently()V

    .line 1185
    :cond_1
    :goto_0
    return-void

    .line 1172
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mShutterToneGenerator:Lcom/sonyericsson/android/camera/ShutterToneGenerator;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/ShutterToneGenerator;->releaseResources()V

    .line 1173
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->hidePauseView()V

    .line 1174
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->showBlankScreen()V

    .line 1175
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSavingTaskManager:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    check-cast v0, Lcom/sonyericsson/android/camera/mediasaving/BurstSavingTaskManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/mediasaving/BurstSavingTaskManager;->releaseResource()V

    .line 1176
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->pause()V

    .line 1177
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mParameterManager:Lcom/sonyericsson/android/camera/parameter/ParameterManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->suspend()V

    .line 1180
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->cancelCheckAutoUploadSetting()V

    .line 1182
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera/ControllerManager;

    if-eqz v0, :cond_1

    .line 1183
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera/ControllerManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/ControllerManager;->releaseController()V

    goto :goto_0
.end method

.method private readExtra(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 897
    const-string v3, "com.sonyericsson.android.camera3d.extra.launchedByAnotherCamera"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 899
    .local v0, "isLaunchedByAnotherCamera":Z
    const-string v3, "com.sonyericsson.android.camera.extra.launchedByFastCapturing"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 901
    .local v1, "isLaunchedByFastCamera":Z
    const-string v3, "com.sonyericsson.android.camera3d.extra.requstadvancedsettingsdialogopen"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 904
    .local v2, "isRequestedToOpenAdcancedSettingDialog":Z
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    .line 905
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchConditions:Lcom/sonyericsson/android/camera/LaunchConditions;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/camera/LaunchConditions;->setIsLaunchedByOtherCamera(Z)V

    .line 907
    :cond_1
    if-eqz v2, :cond_2

    .line 908
    iget-object v3, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchConditions:Lcom/sonyericsson/android/camera/LaunchConditions;

    sget-object v4, Lcom/sonyericsson/android/camera/LaunchConditions$ExtraOperation;->OPEN_SETTINGS_MENU:Lcom/sonyericsson/android/camera/LaunchConditions$ExtraOperation;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/camera/LaunchConditions;->setExtraOperation(Lcom/sonyericsson/android/camera/LaunchConditions$ExtraOperation;)V

    .line 910
    :cond_2
    return-void
.end method

.method private releaseSingletons()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1188
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->releaseContext()V

    .line 1190
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchConditions:Lcom/sonyericsson/android/camera/LaunchConditions;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchConditions;->isDeviceError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1191
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchConditions:Lcom/sonyericsson/android/camera/LaunchConditions;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/LaunchConditions;->setDeviceError(Z)V

    .line 1192
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchConditions:Lcom/sonyericsson/android/camera/LaunchConditions;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/LaunchConditions;->setCameraDisabled(Z)V

    .line 1221
    :goto_0
    return-void

    .line 1198
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->release()V

    .line 1201
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 1204
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mShutterToneGenerator:Lcom/sonyericsson/android/camera/ShutterToneGenerator;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/ShutterToneGenerator;->release()V

    .line 1207
    iput-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    .line 1209
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mSavingTaskManager:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->release()V

    .line 1211
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->release()V

    .line 1215
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mParameterManager:Lcom/sonyericsson/android/camera/parameter/ParameterManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->release()V

    .line 1216
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera/ControllerManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/ControllerManager;->release()V

    .line 1218
    iput-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mKeyEventTranslator:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    .line 1220
    iput-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mConfigurations:Lcom/sonyericsson/android/camera/configuration/Configurations;

    goto :goto_0
.end method

.method private releaseWearableFramework()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 637
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mWearableBridgeClient:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mWearableBridgeClient:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->release()V

    .line 639
    iput-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mWearableBridgeClient:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    .line 641
    :cond_0
    iput-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mWearableBridgeLifeCycleObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$LifeCycleObserver;

    .line 642
    iput-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mWearableBridgePhotoEventObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$PhotoEventObserver;

    .line 643
    iput-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mWearableBridgeVideoEventObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$VideoEventObserver;

    .line 644
    return-void
.end method

.method private requestToRestoreNavigationBar()V
    .locals 1

    .prologue
    .line 2041
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    if-eqz v0, :cond_0

    .line 2042
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->requestToRestoreNavigationBar()V

    .line 2044
    :cond_0
    return-void
.end method

.method private resumeSettingsRelatedSingletons()V
    .locals 5

    .prologue
    .line 1117
    iget-object v3, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchConditions:Lcom/sonyericsson/android/camera/LaunchConditions;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/LaunchConditions;->isDeviceError()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1147
    :goto_0
    return-void

    .line 1121
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchConditions:Lcom/sonyericsson/android/camera/LaunchConditions;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/LaunchConditions;->getLaunchedBy()Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;->HISTORY:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    if-ne v3, v4, :cond_2

    .line 1122
    iget-object v3, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchConditions:Lcom/sonyericsson/android/camera/LaunchConditions;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/LaunchConditions;->getLaunchCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isMainPhoto()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1123
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1124
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1125
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1127
    :cond_1
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->setPhotoMode(Landroid/content/Intent;)V

    .line 1132
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mConfigurations:Lcom/sonyericsson/android/camera/configuration/Configurations;

    invoke-virtual {v3, p0}, Lcom/sonyericsson/android/camera/configuration/Configurations;->onResume(Lcom/sonyericsson/android/camera/CameraActivity;)V

    .line 1134
    iget-object v3, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchConditions:Lcom/sonyericsson/android/camera/LaunchConditions;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/LaunchConditions;->getLaunchCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v2

    .line 1140
    .local v2, "mode":Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    iget-object v3, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mParameterManager:Lcom/sonyericsson/android/camera/parameter/ParameterManager;

    invoke-virtual {v3, v2}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->update(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 1143
    new-instance v3, Lcom/sonyericsson/android/camera/CameraActivity$AutoUploadSettingNotifyCallback;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/sonyericsson/android/camera/CameraActivity$AutoUploadSettingNotifyCallback;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$1;)V

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera/CameraActivity;->requestCheckAutoUploadSetting(Lcom/sonyericsson/android/camera/CameraActivity$AutoUploadSettingNotifyCallback;)V

    .line 1146
    iget-object v3, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera/ControllerManager;

    invoke-virtual {v3, v2}, Lcom/sonyericsson/android/camera/ControllerManager;->storeCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    goto :goto_0
.end method

.method private resumeSingletons(Z)Z
    .locals 3
    .param p1, "resumedFromIncomingCall"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1076
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchConditions:Lcom/sonyericsson/android/camera/LaunchConditions;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/LaunchConditions;->isDeviceError()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1113
    :goto_0
    return v0

    .line 1081
    :cond_0
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mDelayedOnResume:Z

    if-nez v1, :cond_1

    .line 1084
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->resumeSettingsRelatedSingletons()V

    .line 1088
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera/ControllerManager;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/ControllerManager;->createController()V

    .line 1090
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->prepared()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1096
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->showSurfaceView()Z

    .line 1100
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mParameterManager:Lcom/sonyericsson/android/camera/parameter/ParameterManager;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->getParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDevice;->resume(Lcom/sonyericsson/android/camera/parameter/Parameters;)V

    .line 1102
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchConditions:Lcom/sonyericsson/android/camera/LaunchConditions;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/LaunchConditions;->isDeviceError()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1103
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera/ControllerManager;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/ControllerManager;->abort()V

    .line 1104
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera/ControllerManager;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/ControllerManager;->releaseController()V

    goto :goto_0

    .line 1108
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mParameterManager:Lcom/sonyericsson/android/camera/parameter/ParameterManager;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->getParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->resume(Lcom/sonyericsson/android/camera/parameter/Parameters;Z)V

    .line 1110
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->requestInflate()V

    .line 1111
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mShutterToneGenerator:Lcom/sonyericsson/android/camera/ShutterToneGenerator;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/ShutterToneGenerator;->prepare(Lcom/sonyericsson/android/camera/device/CameraDevice;)V

    .line 1113
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setContentView()V
    .locals 2

    .prologue
    .line 1050
    const-string v0, "Start inflate camera window"

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureResource(Ljava/lang/String;)V

    .line 1051
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->SET_CONTENT_VIEWS:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V

    .line 1053
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->setContentView(I)V

    .line 1054
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->SET_CONTENT_VIEWS:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V

    .line 1059
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->onFinishInflate()V

    .line 1067
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->init()V

    .line 1069
    return-void
.end method

.method private setPhotoMode(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 764
    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->UNKNOWN:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 767
    .local v4, "unknown":Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    invoke-direct {p0, v4}, Lcom/sonyericsson/android/camera/CameraActivity;->getLastCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    .line 768
    .local v0, "lastCapturingMode":Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-direct {p0, v5}, Lcom/sonyericsson/android/camera/CameraActivity;->getLastPreviousCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v1

    .line 770
    .local v1, "lastPreviousCapturingMode":Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-direct {p0, v5}, Lcom/sonyericsson/android/camera/CameraActivity;->getLastPreviousManualMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v2

    .line 774
    .local v2, "lastPreviousManualMode":Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    move-object v3, v4

    .line 775
    .local v3, "requestedMode":Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    iget-object v5, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchConditions:Lcom/sonyericsson/android/camera/LaunchConditions;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/LaunchConditions;->getLaunchedBy()Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    move-result-object v5

    sget-object v6, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;->INTENT:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    if-ne v5, v6, :cond_0

    .line 776
    invoke-direct {p0, p1, v4}, Lcom/sonyericsson/android/camera/CameraActivity;->getRequestedCapturingMode(Landroid/content/Intent;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v3

    .line 785
    :cond_0
    if-ne v0, v4, :cond_2

    .line 786
    if-ne v3, v4, :cond_1

    .line 787
    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {p0, v5}, Lcom/sonyericsson/android/camera/CameraActivity;->setLaunchCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 788
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->updatePreviousCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 806
    :goto_0
    return-void

    .line 790
    :cond_1
    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera/CameraActivity;->setLaunchCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    goto :goto_0

    .line 794
    :cond_2
    if-ne v3, v4, :cond_3

    .line 795
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->setLaunchCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 796
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->updatePreviousCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    goto :goto_0

    .line 797
    :cond_3
    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne v3, v5, :cond_4

    .line 799
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/CameraActivity;->setLaunchCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 800
    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/camera/CameraActivity;->updatePreviousCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    goto :goto_0

    .line 803
    :cond_4
    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera/CameraActivity;->setLaunchCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    goto :goto_0
.end method

.method private setupSingletons()V
    .locals 2

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchConditions:Lcom/sonyericsson/android/camera/LaunchConditions;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchConditions;->isDeviceError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1020
    :goto_0
    return-void

    .line 1007
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera/ControllerManager;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/ControllerManager;->getStorageListener()Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->addStorageListener(Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;)V

    .line 1011
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    if-eqz v0, :cond_1

    .line 1013
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->getLocationListener()Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->setLocationAcquiredListener(Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;)V

    .line 1015
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->notifyStatus()V

    .line 1019
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/CameraWindow;->setupSurfaceView(Landroid/view/SurfaceHolder$Callback;)V

    goto :goto_0
.end method

.method private setupWearableFramework()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 340
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$WearableBridgeLifeCycleObserver;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/CameraActivity$WearableBridgeLifeCycleObserver;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mWearableBridgeLifeCycleObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$LifeCycleObserver;

    .line 341
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$WearableBridgePhotoEventObserver;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/CameraActivity$WearableBridgePhotoEventObserver;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mWearableBridgePhotoEventObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$PhotoEventObserver;

    .line 342
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$WearableBridgeVideoEventObserver;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity$WearableBridgeVideoEventObserver;-><init>(Lcom/sonyericsson/android/camera/CameraActivity$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mWearableBridgeVideoEventObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$VideoEventObserver;

    .line 343
    new-instance v0, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iget-object v3, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mWearableBridgeLifeCycleObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$LifeCycleObserver;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mWearableBridgePhotoEventObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$PhotoEventObserver;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mWearableBridgeVideoEventObserver:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$VideoEventObserver;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;-><init>(Landroid/app/Activity;Landroid/os/Handler;Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$LifeCycleObserver;Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$PhotoEventObserver;Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/ObserveWearableInterface$VideoEventObserver;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mWearableBridgeClient:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    .line 349
    return-void
.end method

.method private setupWindow()V
    .locals 3

    .prologue
    const/16 v2, 0x400

    .line 676
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 677
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->requestWindowFeature(I)Z

    .line 678
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 681
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 682
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 683
    return-void
.end method

.method private showErrorExitDialog()V
    .locals 2

    .prologue
    .line 1486
    const-string v0, "CameraActivity"

    const-string v1, "showErrorExitDialog: exit."

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    if-eqz v0, :cond_0

    .line 1489
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->showBlankScreen()V

    .line 1492
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    if-eqz v0, :cond_1

    .line 1493
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchConditions:Lcom/sonyericsson/android/camera/LaunchConditions;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchConditions;->isCameraDisabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1494
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showCameraDisabledMessage()V

    .line 1499
    :cond_1
    :goto_0
    return-void

    .line 1496
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showDeviceErrorMessage()V

    goto :goto_0
.end method


# virtual methods
.method public abort()V
    .locals 1

    .prologue
    .line 1329
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1330
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->setResult(I)V

    .line 1332
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->terminateApplication()V

    .line 1333
    return-void
.end method

.method protected cancelCheckAutoUploadSetting()V
    .locals 1

    .prologue
    .line 1782
    invoke-static {}, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;->getInstance()Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;->cancel(Landroid/content/Context;)V

    .line 1784
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mParameterManager:Lcom/sonyericsson/android/camera/parameter/ParameterManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->updateAutoUpload()V

    .line 1785
    return-void
.end method

.method public changeCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .locals 3
    .param p1, "mode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .prologue
    .line 1561
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera/ControllerManager;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/ControllerManager;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    .line 1562
    .local v0, "previousMode":Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    if-eq v0, p1, :cond_0

    .line 1563
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->updatePreviousCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 1567
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isControllerReleased()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1594
    :goto_0
    return-void

    .line 1572
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera/ControllerManager;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/camera/ControllerManager;->changeCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 1575
    sget-object v1, Lcom/sonyericsson/android/camera/CameraActivity$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1591
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->notifyOnPauseToWearable()V

    goto :goto_0

    .line 1587
    :pswitch_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->notifyOnResumeToWearable()V

    goto :goto_0

    .line 1575
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public consumeExtraOperation()V
    .locals 2

    .prologue
    .line 1731
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchConditions:Lcom/sonyericsson/android/camera/LaunchConditions;

    sget-object v1, Lcom/sonyericsson/android/camera/LaunchConditions$ExtraOperation;->NONE:Lcom/sonyericsson/android/camera/LaunchConditions$ExtraOperation;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/LaunchConditions;->setExtraOperation(Lcom/sonyericsson/android/camera/LaunchConditions$ExtraOperation;)V

    .line 1732
    return-void
.end method

.method public doFirstRunAction()V
    .locals 2

    .prologue
    .line 1746
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isNormalStart()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mConfigurations:Lcom/sonyericsson/android/camera/configuration/Configurations;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/Configurations;->isFirstRun()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1748
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mConfigurations:Lcom/sonyericsson/android/camera/configuration/Configurations;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/configuration/Configurations;->setFirstRun(Z)V

    .line 1750
    :cond_0
    return-void
.end method

.method public finish(I)V
    .locals 0
    .param p1, "resultCode"    # I

    .prologue
    .line 1341
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/CameraActivity;->setResult(I)V

    .line 1342
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->terminateApplication()V

    .line 1343
    return-void
.end method

.method public finishOneShot(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V
    .locals 5
    .param p1, "result"    # Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    .prologue
    const/4 v4, 0x0

    .line 1375
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShotVideo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1376
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->getResultCode()I

    move-result v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v3, p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->uri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/sonyericsson/android/camera/CameraActivity;->setResult(ILandroid/content/Intent;)V

    .line 1377
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->terminateApplication()V

    .line 1405
    :cond_0
    :goto_0
    return-void

    .line 1378
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShotPhoto()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1379
    iget-object v1, p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->cropValue:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1380
    iget-object v1, p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->uri:Landroid/net/Uri;

    iget-object v2, p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->getExtraOutput()Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    iget-object v3, v3, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v3, v3, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->cropValue:Ljava/lang/String;

    invoke-static {p0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/launcher/ApplicationLauncher;->launchOneShotCrop(Landroid/app/Activity;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    .line 1384
    .local v0, "success":Z
    if-nez v0, :cond_0

    .line 1385
    const-string v1, "CameraActivity"

    const-string v2, "finishOneShot: Launching cropper failed."

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    invoke-virtual {p0, v4}, Lcom/sonyericsson/android/camera/CameraActivity;->setResult(I)V

    .line 1387
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->terminateApplication()V

    goto :goto_0

    .line 1389
    .end local v0    # "success":Z
    :cond_2
    iget-object v1, p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->getExtraOutput()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_4

    .line 1390
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1391
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->getResultCode()I

    move-result v1

    iget-object v2, p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->uri:Landroid/net/Uri;

    iget-object v3, p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    iget-object v3, v3, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v3, v3, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->mimeType:Ljava/lang/String;

    iget-object v4, p1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;

    iget-object v4, v4, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget v4, v4, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->orientation:I

    invoke-static {p0, v2, v3, v4}, Lcom/sonyericsson/cameracommon/utility/OneShotUtility;->createResultIntent(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/sonyericsson/android/camera/CameraActivity;->setResult(ILandroid/content/Intent;)V

    .line 1399
    :goto_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->finish()V

    goto :goto_0

    .line 1397
    :cond_3
    invoke-virtual {p0, v4}, Lcom/sonyericsson/android/camera/CameraActivity;->setResult(I)V

    goto :goto_1

    .line 1401
    :cond_4
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->getResultCode()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->setResult(I)V

    .line 1402
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->finish()V

    goto :goto_0
.end method

.method public getAudioManager()Landroid/media/AudioManager;
    .locals 1

    .prologue
    .line 1672
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    return-object v0
.end method

.method public getCameraDevice()Lcom/sonyericsson/android/camera/device/CameraDevice;
    .locals 1

    .prologue
    .line 1865
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    return-object v0
.end method

.method public getContentView()Lcom/sonyericsson/android/camera/view/CameraWindow;
    .locals 1

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    return-object v0
.end method

.method public getDisplaySize()I
    .locals 2

    .prologue
    .line 1466
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1467
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1470
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    return v1
.end method

.method public getExtraOperation()Lcom/sonyericsson/android/camera/LaunchConditions$ExtraOperation;
    .locals 1

    .prologue
    .line 1727
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchConditions:Lcom/sonyericsson/android/camera/LaunchConditions;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchConditions;->getExtraOperation()Lcom/sonyericsson/android/camera/LaunchConditions$ExtraOperation;

    move-result-object v0

    return-object v0
.end method

.method protected getParamSharedPrefWrapper()Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;
    .locals 3

    .prologue
    .line 1842
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;

    const-string v1, "com.sonyericsson.android.camera.shared_preferences"

    const-string v2, "0.0.0"

    invoke-direct {v0, p0, v1, v2}, Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getPreviousCapturingModeNotFront()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .locals 1

    .prologue
    .line 1676
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mPreviousModeNotFront:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    return-object v0
.end method

.method public getPreviousManualMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .locals 1

    .prologue
    .line 1685
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mPreviousManualMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    return-object v0
.end method

.method public getWearableBridge()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;
    .locals 1

    .prologue
    .line 1940
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1941
    const/4 v0, 0x0

    .line 1943
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mWearableBridgeClient:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    goto :goto_0
.end method

.method public isDualStorageAvailable()Z
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x1

    return v0
.end method

.method public isHighTemperature()Z
    .locals 1

    .prologue
    .line 1833
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mThermalAlertReceiver:Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->isAlreadyHighTemperature()Z

    move-result v0

    return v0
.end method

.method public isMenuAvailable()Z
    .locals 1

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isControllerReleased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    const/4 v0, 0x0

    .line 204
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/camera/ControllerManager;->isMenuAvailable()Z

    move-result v0

    goto :goto_0
.end method

.method public isNewMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Z
    .locals 4
    .param p1, "mode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1991
    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera/ControllerManager;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/ControllerManager;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 2002
    :cond_0
    :goto_0
    return v0

    .line 1993
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera/ControllerManager;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/ControllerManager;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne v2, v3, :cond_2

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p1, v2, :cond_2

    move v0, v1

    .line 1995
    goto :goto_0

    .line 1996
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera/ControllerManager;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/ControllerManager;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne v2, v3, :cond_3

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p1, v2, :cond_3

    move v0, v1

    .line 1998
    goto :goto_0

    .line 1999
    :cond_3
    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera/ControllerManager;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/ControllerManager;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isManual()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isManual()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    .line 2002
    goto :goto_0
.end method

.method public isNormalStart()Z
    .locals 3

    .prologue
    .line 220
    const/4 v0, 0x0

    .line 222
    .local v0, "isNormalStart":Z
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchConditions:Lcom/sonyericsson/android/camera/LaunchConditions;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/LaunchConditions;->isOneShot()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchConditions:Lcom/sonyericsson/android/camera/LaunchConditions;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/LaunchConditions;->isLaunchedByOtherCamera()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchConditions:Lcom/sonyericsson/android/camera/LaunchConditions;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/LaunchConditions;->getExtraOperation()Lcom/sonyericsson/android/camera/LaunchConditions$ExtraOperation;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/android/camera/LaunchConditions$ExtraOperation;->NONE:Lcom/sonyericsson/android/camera/LaunchConditions$ExtraOperation;

    if-ne v1, v2, :cond_0

    .line 225
    const/4 v0, 0x1

    .line 232
    :cond_0
    return v0
.end method

.method public isPhotoIn()Z
    .locals 1

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShotVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    const/4 v0, 0x0

    .line 169
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isRecording()Z
    .locals 1

    .prologue
    .line 1837
    invoke-static {}, Lcom/sonyericsson/android/camera/controller/Executor;->isRecording()Z

    move-result v0

    return v0
.end method

.method public isVideoIn()Z
    .locals 1

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShotPhoto()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    const/4 v0, 0x0

    .line 182
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public notifyStateBlockedToWearable()V
    .locals 2

    .prologue
    .line 1965
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getWearableBridge()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1966
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getWearableBridge()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->getPhotoStateNotifier()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$PhotoStateNotifier;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractPhotoState;->BLOCKED:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractPhotoState;

    invoke-interface {v0, v1}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$PhotoStateNotifier;->onStateChanged(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractPhotoState;)V

    .line 1968
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getWearableBridge()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->getVideoStateNotifier()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$VideoStateNotifier;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractVideoState;->BLOCKED:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractVideoState;

    invoke-interface {v0, v1}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$VideoStateNotifier;->onStateChanged(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractVideoState;)V

    .line 1971
    :cond_0
    return-void
.end method

.method public notifyStateIdleToWearable()V
    .locals 2

    .prologue
    .line 1976
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getWearableBridge()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1977
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getWearableBridge()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->getPhotoStateNotifier()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$PhotoStateNotifier;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractPhotoState;->IDLE:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractPhotoState;

    invoke-interface {v0, v1}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$PhotoStateNotifier;->onStateChanged(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractPhotoState;)V

    .line 1979
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getWearableBridge()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;->getVideoStateNotifier()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$VideoStateNotifier;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractVideoState;->IDLE:Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractVideoState;

    invoke-interface {v0, v1}, Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/NotifyWearableInterface$VideoStateNotifier;->onStateChanged(Lcom/sonymobile/cameracommon/vanilla/wearablebridge/common/AbstractCapturableState$AbstractVideoState;)V

    .line 1982
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1419
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/ExtendedActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1424
    packed-switch p1, :pswitch_data_0

    .line 1450
    :cond_0
    :goto_0
    return-void

    .line 1427
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1428
    .local v1, "intent":Landroid/content/Intent;
    const/4 v3, 0x0

    .line 1429
    .local v3, "tempUri":Landroid/net/Uri;
    if-eqz p3, :cond_1

    .line 1430
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1431
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 1432
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1433
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 1436
    .end local v0    # "extras":Landroid/os/Bundle;
    :cond_1
    invoke-virtual {p0, p2, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->setResult(ILandroid/content/Intent;)V

    .line 1437
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->terminateApplication()V

    .line 1439
    if-eqz v3, :cond_0

    .line 1440
    new-instance v2, Ljava/io/File;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1441
    .local v2, "path":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1442
    const-string v4, "CameraActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can not delete file : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1424
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 1601
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->terminateApplication()V

    .line 1602
    return-void
.end method

.method public onCameraReadyToUse()V
    .locals 4

    .prologue
    .line 1762
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchConditions:Lcom/sonyericsson/android/camera/LaunchConditions;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchConditions;->getExtraOperation()Lcom/sonyericsson/android/camera/LaunchConditions$ExtraOperation;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/LaunchConditions$ExtraOperation;->OPEN_SETTINGS_MENU:Lcom/sonyericsson/android/camera/LaunchConditions$ExtraOperation;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/LaunchConditions$ExtraOperation;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1764
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    if-eqz v0, :cond_0

    .line 1765
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCommonSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    new-instance v2, Lcom/sonyericsson/android/camera/CameraActivity$StartupGeotagSettingListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sonyericsson/android/camera/CameraActivity$StartupGeotagSettingListener;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$1;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->confirmLocationService(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;)V

    .line 1771
    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1479
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1480
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->setResult(I)V

    .line 1482
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->finish()V

    .line 1483
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 156
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/ExtendedActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 157
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 247
    sget-object v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->STARTUP_TIME:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-static {v2, v4}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V

    .line 248
    sget-object v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ON_CREATE:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-static {v2, v4}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V

    .line 250
    const-string v2, "Start onCreate()"

    invoke-static {v2}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureResource(Ljava/lang/String;)V

    .line 255
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/Configurations;->isLogForOperatorsEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 256
    const-string v2, "start to launch camera application"

    invoke-static {v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->dForOperators(Ljava/lang/String;)I

    .line 260
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->acquirePerformanceLock()V

    .line 262
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->initConfigrations()V

    .line 263
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->initCameraWindow()V

    .line 265
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/ExtendedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 268
    :try_start_0
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getInstance()Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->load(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/sonyericsson/android/camera/device/CameraDeviceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->setupWindow()V

    .line 299
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/CameraActivity;->checkIntent(Landroid/content/Intent;)V

    .line 304
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->enableOrientation()V

    .line 307
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->createSingletons()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 311
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->setContentView()V

    .line 319
    :goto_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->setupSingletons()V

    .line 321
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.sonyericsson.android.camera.intent.action.FINISH_CAMERAACTIVITY"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 323
    .local v1, "filter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraActivityFinishReceiver:Lcom/sonyericsson/android/camera/CameraActivity$CameraActivityFinishBroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 326
    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mThermalAlertReceiver:Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->onCreate()V

    .line 329
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->setupWearableFramework()V

    .line 332
    sget-object v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ON_CREATE:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V

    .line 336
    return-void

    .line 269
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :catch_0
    move-exception v0

    .line 270
    .local v0, "e":Lcom/sonyericsson/android/camera/device/CameraDeviceException;
    const-string v2, "CameraActivity"

    const-string v3, "Load HW capability failed."

    invoke-static {v2, v3, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 271
    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchConditions:Lcom/sonyericsson/android/camera/LaunchConditions;

    invoke-virtual {v2, v4}, Lcom/sonyericsson/android/camera/LaunchConditions;->setDeviceError(Z)V

    .line 272
    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchConditions:Lcom/sonyericsson/android/camera/LaunchConditions;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceUtil;->isCameraDisabled(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/LaunchConditions;->setCameraDisabled(Z)V

    goto :goto_0

    .line 316
    .end local v0    # "e":Lcom/sonyericsson/android/camera/device/CameraDeviceException;
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->showErrorExitDialog()V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 612
    const-string v0, "CameraActivity"

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->ON_DESTROY:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->logLifeCycleIn(Ljava/lang/String;Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;)V

    .line 614
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->releaseSingletons()V

    .line 616
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->disableAutoOffTimer()V

    .line 618
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraActivityFinishReceiver:Lcom/sonyericsson/android/camera/CameraActivity$CameraActivityFinishBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 621
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mThermalAlertReceiver:Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->onDestroy()V

    .line 624
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->releaseWearableFramework()V

    .line 630
    invoke-super {p0}, Lcom/sonyericsson/android/camera/ExtendedActivity;->onDestroy()V

    .line 632
    const-string v0, "CameraActivity"

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->ON_DESTROY:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->logLifeCycleOut(Ljava/lang/String;Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;)V

    .line 633
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 1240
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->restartAutoOffTimer()V

    .line 1243
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isControllerReleased()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1251
    :cond_0
    :goto_0
    return v0

    .line 1247
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera/ControllerManager;

    invoke-virtual {v1, p1, p2}, Lcom/sonyericsson/android/camera/ControllerManager;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1251
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/android/camera/ExtendedActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1316
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 1267
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->restartAutoOffTimer()V

    .line 1270
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isControllerReleased()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1299
    :cond_0
    :goto_0
    return v1

    .line 1274
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mKeyEventTranslator:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->translateKeyCode(I)Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    move-result-object v0

    .line 1277
    .local v0, "translatedKeyCode":Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;
    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/CameraWindow;->isCapturingModeSelectorOpened()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1278
    sget-object v2, Lcom/sonyericsson/android/camera/CameraActivity$1;->$SwitchMap$com$sonyericsson$cameracommon$keytranslator$KeyEventTranslator$TranslatedKeyCode:[I

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1295
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera/ControllerManager;

    invoke-virtual {v2, p1, p2}, Lcom/sonyericsson/android/camera/ControllerManager;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1299
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/android/camera/ExtendedActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 1280
    :pswitch_0
    sget-object v2, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_KEY_BACK:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    sget-object v3, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->KEY:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera/controller/Executor;->sendEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V

    goto :goto_0

    .line 1289
    :pswitch_1
    sget-object v2, Lcom/sonyericsson/android/camera/controller/ControllerEvent;->EV_KEY_BACK:Lcom/sonyericsson/android/camera/controller/ControllerEvent;

    sget-object v3, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->KEY:Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera/controller/Executor;->sendEvent(Lcom/sonyericsson/android/camera/controller/ControllerEvent;Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)V

    goto :goto_1

    .line 1278
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 648
    const-string v0, "CameraActivity"

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->ON_NEW_INTENT:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->logLifeCycleIn(Ljava/lang/String;Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;)V

    .line 649
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/Configurations;->isLogForOperatorsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 650
    const-string v0, "start to launch camera application"

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->dForOperators(Ljava/lang/String;)I

    .line 657
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mDelayedOnResume:Z

    .line 661
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/CameraActivity;->setIntent(Landroid/content/Intent;)V

    .line 663
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraActivity;->checkIntent(Landroid/content/Intent;)V

    .line 664
    const-string v0, "CameraActivity"

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->ON_NEW_INTENT:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->logLifeCycleOut(Ljava/lang/String;Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;)V

    .line 665
    return-void
.end method

.method public onNotifyThermalNormal()V
    .locals 1

    .prologue
    .line 1629
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    if-eqz v0, :cond_0

    .line 1630
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->onNotifyThermalNormal()V

    .line 1632
    :cond_0
    return-void
.end method

.method public onNotifyThermalWarning()V
    .locals 1

    .prologue
    .line 1636
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    if-eqz v0, :cond_0

    .line 1637
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->onNotifyThermalWarning()V

    .line 1639
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 571
    const-string v1, "CameraActivity"

    sget-object v2, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->ON_PAUSE:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    invoke-virtual {p0, v1, v2}, Lcom/sonyericsson/android/camera/CameraActivity;->logLifeCycleIn(Ljava/lang/String;Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;)V

    .line 573
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->UNKNOWN:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 574
    .local v0, "mode":Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera/ControllerManager;

    if-eqz v1, :cond_0

    .line 575
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera/ControllerManager;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/ControllerManager;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    .line 577
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->updatePreviousCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 579
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->clearKeepScreenOn()V

    .line 581
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera/ControllerManager;

    if-eqz v1, :cond_1

    .line 582
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera/ControllerManager;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/ControllerManager;->abort()V

    .line 585
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->pauseConfigrations()V

    .line 586
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->pauseSingletons()V

    .line 588
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getGeoTagManager()Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 589
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getGeoTagManager()Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->releaseResource()V

    .line 592
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->setAlertDialogIsOpened(Z)V

    .line 595
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mThermalAlertReceiver:Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->onPause()V

    .line 598
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->notifyOnPauseToWearable()V

    .line 600
    invoke-static {}, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;->getInstance()Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/LocalGoogleAnalyticsUtil;->sendEventSettings()V

    .line 602
    invoke-super {p0}, Lcom/sonyericsson/android/camera/ExtendedActivity;->onPause()V

    .line 604
    const-string v1, "CameraActivity"

    sget-object v2, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->ON_PAUSE:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    invoke-virtual {p0, v1, v2}, Lcom/sonyericsson/android/camera/CameraActivity;->logLifeCycleOut(Ljava/lang/String;Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;)V

    .line 605
    return-void
.end method

.method public onReachHighTemperature(Z)V
    .locals 2
    .param p1, "isOnStartup"    # Z

    .prologue
    .line 1610
    invoke-static {}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->getInstance()Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isRecording()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->sendThermalEvent(ZZ)V

    .line 1612
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    if-eqz v0, :cond_0

    .line 1613
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->showBlankScreen()V

    .line 1616
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera/ControllerManager;

    if-eqz v0, :cond_1

    .line 1617
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera/ControllerManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/ControllerManager;->onReachHighTemperature()V

    .line 1619
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera/ControllerManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/ControllerManager;->isControllerReleased()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1620
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    if-eqz v0, :cond_1

    .line 1621
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDevice;->close()V

    .line 1625
    :cond_1
    return-void
.end method

.method public onRestart()V
    .locals 2

    .prologue
    .line 412
    const-string v0, "CameraActivity"

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->ON_RESTART:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->logLifeCycleIn(Ljava/lang/String;Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;)V

    .line 413
    invoke-super {p0}, Lcom/sonyericsson/android/camera/ExtendedActivity;->onRestart()V

    .line 414
    const-string v0, "CameraActivity"

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->ON_RESTART:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->logLifeCycleOut(Ljava/lang/String;Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;)V

    .line 415
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 422
    sget-object v1, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->STARTUP_TIME:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V

    .line 423
    const-string v1, "CameraActivity"

    sget-object v4, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->ON_RESUME:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    invoke-virtual {p0, v1, v4}, Lcom/sonyericsson/android/camera/CameraActivity;->logLifeCycleIn(Ljava/lang/String;Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;)V

    .line 425
    const-string v1, "keyguard"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 427
    .local v0, "km":Landroid/app/KeyguardManager;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchConditions:Lcom/sonyericsson/android/camera/LaunchConditions;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/LaunchConditions;->isDeviceError()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CameraDevice;->isStartedOpenCameraDeviceTask()Z

    move-result v1

    if-nez v1, :cond_0

    .line 432
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->enableOrientation()V

    .line 438
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 439
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDevice;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchConditions:Lcom/sonyericsson/android/camera/LaunchConditions;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/LaunchConditions;->getLaunchCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sonyericsson/android/camera/device/CameraDevice;->startOpenCameraDeviceTask(I)V

    .line 444
    :cond_0
    invoke-super {p0}, Lcom/sonyericsson/android/camera/ExtendedActivity;->onResume()V

    .line 446
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mThermalAlertReceiver:Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->onResume()V

    .line 456
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera/ControllerManager;

    if-eqz v1, :cond_1

    .line 457
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera/ControllerManager;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchConditions:Lcom/sonyericsson/android/camera/LaunchConditions;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/LaunchConditions;->getLaunchCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sonyericsson/android/camera/ControllerManager;->storeCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 461
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchConditions:Lcom/sonyericsson/android/camera/LaunchConditions;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/LaunchConditions;->isOneShot()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getExtraOutput()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->setOneShotMode(Z)V

    .line 469
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "device_provisioned"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_3

    .line 473
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mDelayedOnResume:Z

    .line 479
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->resumeSettingsRelatedSingletons()V

    .line 486
    :goto_1
    const-string v1, "CameraActivity"

    sget-object v3, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->ON_RESUME:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    invoke-virtual {p0, v1, v3}, Lcom/sonyericsson/android/camera/CameraActivity;->logLifeCycleOut(Ljava/lang/String;Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;)V

    .line 487
    sget-object v1, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ON_RESUME_TO_SURFACE_CHANGED:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V

    .line 489
    sget-object v1, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->RESUME_TO_LAUNCH:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V

    .line 490
    return-void

    :cond_2
    move v1, v3

    .line 461
    goto :goto_0

    .line 483
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mForceSound:Lcom/sonyericsson/android/camera/ExtendedActivity$ForceSound;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/ExtendedActivity$ForceSound;->resume()V

    goto :goto_1
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 401
    const-string v0, "CameraActivity"

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->ON_START:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->logLifeCycleIn(Ljava/lang/String;Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;)V

    .line 402
    invoke-super {p0}, Lcom/sonyericsson/android/camera/ExtendedActivity;->onStart()V

    .line 403
    const-string v0, "CameraActivity"

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->ON_START:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->logLifeCycleOut(Ljava/lang/String;Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;)V

    .line 404
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 561
    const-string v0, "CameraActivity"

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->ON_STOP:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->logLifeCycleIn(Ljava/lang/String;Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;)V

    .line 562
    invoke-super {p0}, Lcom/sonyericsson/android/camera/ExtendedActivity;->onStop()V

    .line 563
    const-string v0, "CameraActivity"

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->ON_STOP:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->logLifeCycleOut(Ljava/lang/String;Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;)V

    .line 564
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 2031
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/ExtendedActivity;->onWindowFocusChanged(Z)V

    .line 2035
    if-eqz p1, :cond_0

    .line 2036
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->requestToRestoreNavigationBar()V

    .line 2038
    :cond_0
    return-void
.end method

.method protected prepareFinish()V
    .locals 0

    .prologue
    .line 2049
    return-void
.end method

.method protected requestCheckAutoUploadSetting(Lcom/sonyericsson/android/camera/CameraActivity$AutoUploadSettingNotifyCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/sonyericsson/android/camera/CameraActivity$AutoUploadSettingNotifyCallback;

    .prologue
    .line 1776
    invoke-static {}, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;->getInstance()Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;->request(Landroid/content/Context;Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettingNotifyListener;)V

    .line 1777
    return-void
.end method

.method public resumeAll()V
    .locals 0

    .prologue
    .line 554
    return-void
.end method

.method public resumeAll(Z)V
    .locals 2
    .param p1, "resumedFromIncomingCall"    # Z

    .prologue
    .line 503
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchConditions:Lcom/sonyericsson/android/camera/LaunchConditions;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceUtil;->isCameraDisabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/LaunchConditions;->setCameraDisabled(Z)V

    .line 517
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraActivity;->resumeSingletons(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 518
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera/ControllerManager;

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mControllerManager:Lcom/sonyericsson/android/camera/ControllerManager;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mParameterManager:Lcom/sonyericsson/android/camera/parameter/ParameterManager;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->getParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/ControllerManager;->launch(Lcom/sonyericsson/android/camera/parameter/Parameters;)V

    .line 520
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->resume()V

    .line 526
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->notifyUnlockToWearable()V

    .line 530
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->enableOrientation()V

    .line 533
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->keepScreenOn()V

    .line 536
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->restartAutoOffTimer()V

    .line 539
    invoke-static {p0}, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationUtil;->notifyCameraLaunch(Landroid/content/Context;)V

    .line 542
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mDelayedOnResume:Z

    .line 544
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShotPhoto()Z

    move-result v0

    if-nez v0, :cond_1

    .line 545
    invoke-static {p0}, Lcom/sonymobile/cameracommon/media/utility/AudioResourceChecker;->checkAudioResourceAndShowErrorDialogIfNecessary(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)V

    .line 549
    :cond_1
    return-void

    .line 523
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->showErrorExitDialog()V

    goto :goto_0
.end method

.method public setGeotag(Z)V
    .locals 2
    .param p1, "mode"    # Z

    .prologue
    .line 1825
    if-eqz p1, :cond_0

    .line 1826
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;->ON:Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->updateLocation(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    .line 1830
    :goto_0
    return-void

    .line 1828
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;->OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->updateLocation(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    goto :goto_0
.end method

.method public setLaunchCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .locals 2
    .param p1, "mode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .prologue
    .line 1717
    const/4 v0, 0x0

    sget-object v1, Lcom/sonyericsson/android/camera/OneShotType;->NONE:Lcom/sonyericsson/android/camera/OneShotType;

    invoke-virtual {p0, p1, v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->setLaunchCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;ZLcom/sonyericsson/android/camera/OneShotType;)V

    .line 1718
    return-void
.end method

.method public setLaunchCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;ZLcom/sonyericsson/android/camera/OneShotType;)V
    .locals 1
    .param p1, "mode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .param p2, "isOneShot"    # Z
    .param p3, "type"    # Lcom/sonyericsson/android/camera/OneShotType;

    .prologue
    .line 1721
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchConditions:Lcom/sonyericsson/android/camera/LaunchConditions;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/LaunchConditions;->setLaunchCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 1722
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchConditions:Lcom/sonyericsson/android/camera/LaunchConditions;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/LaunchConditions;->setIsOneShot(Z)V

    .line 1723
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mLaunchConditions:Lcom/sonyericsson/android/camera/LaunchConditions;

    invoke-virtual {v0, p3}, Lcom/sonyericsson/android/camera/LaunchConditions;->setOneShotType(Lcom/sonyericsson/android/camera/OneShotType;)V

    .line 1724
    return-void
.end method

.method public showZoomToast(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)V
    .locals 1
    .param p1, "mode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .param p2, "isZoomable"    # Z

    .prologue
    .line 1735
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isMainPhoto()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isNormalStart()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mConfigurations:Lcom/sonyericsson/android/camera/configuration/Configurations;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/Configurations;->isFirstRun()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1738
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mConfigurations:Lcom/sonyericsson/android/camera/configuration/Configurations;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/Configurations;->isNeedToShowZoomHelp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1739
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showZoomHelpMessage(Z)V

    .line 1740
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mConfigurations:Lcom/sonyericsson/android/camera/configuration/Configurations;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/Configurations;->countUpZoomHelpShownTimes()V

    .line 1743
    :cond_0
    return-void
.end method

.method public terminateApplication()V
    .locals 3

    .prologue
    .line 1656
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1657
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.sonymobile.camera.addon.intent.extra.CAPTURING_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "com.sonyericsson.camera.intent.extra.CAPTURING_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "com.sonyericsson.android.camera.extra.launchedByFastCapturing"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1662
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->moveTaskToBack(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1664
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->finish()V

    .line 1669
    :cond_1
    :goto_0
    return-void

    .line 1667
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->finish()V

    goto :goto_0
.end method

.method public updatePreviousCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .locals 1
    .param p1, "mode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .prologue
    .line 1694
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1695
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mPreviousModeNotFront:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 1697
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isManual()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1698
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mPreviousManualMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 1700
    :cond_1
    return-void
.end method

.method public updateSettingDialog()V
    .locals 1

    .prologue
    .line 1707
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity;->mCameraWindow:Lcom/sonyericsson/android/camera/view/CameraWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/CameraWindow;->updateSettingDialog()V

    .line 1708
    return-void
.end method
