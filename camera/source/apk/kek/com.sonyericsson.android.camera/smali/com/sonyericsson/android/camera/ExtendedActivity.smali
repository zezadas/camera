.class public abstract Lcom/sonyericsson/android/camera/ExtendedActivity;
.super Lcom/sonyericsson/cameracommon/activity/BaseActivity;
.source "ExtendedActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/ExtendedActivity$ExtendedPhoneStateListener;,
        Lcom/sonyericsson/android/camera/ExtendedActivity$ForceSoundOff;,
        Lcom/sonyericsson/android/camera/ExtendedActivity$ForceSoundOn;,
        Lcom/sonyericsson/android/camera/ExtendedActivity$ForceSoundResumed;,
        Lcom/sonyericsson/android/camera/ExtendedActivity$ForceSound;,
        Lcom/sonyericsson/android/camera/ExtendedActivity$UserPresentIntentReceiver;,
        Lcom/sonyericsson/android/camera/ExtendedActivity$CameraPhoneStateListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ExtendedActivity"


# instance fields
.field protected mAutoTerminationTimer:Lcom/sonyericsson/cameracommon/utility/CameraTimer;

.field protected mConfigurations:Lcom/sonyericsson/android/camera/configuration/Configurations;

.field protected mControllerManager:Lcom/sonyericsson/android/camera/ControllerManager;

.field protected mDebugEventIntruder:Lcom/sonyericsson/android/camera/util/DebugEventIntruder;

.field protected mDelayedOnResume:Z

.field protected mEnabledAutoTerminationTimer:Z

.field protected mForceSound:Lcom/sonyericsson/android/camera/ExtendedActivity$ForceSound;

.field private mIsAlertDialogOpened:Z

.field private mIsTouchEventValid:Z

.field protected mLaunchConditions:Lcom/sonyericsson/android/camera/LaunchConditions;

.field protected mMeasurePerformance:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;

.field protected mNoncancelableErrorDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

.field protected mParameterManager:Lcom/sonyericsson/android/camera/parameter/ParameterManager;

.field private mPhoneStateListener:Lcom/sonyericsson/android/camera/ExtendedActivity$ExtendedPhoneStateListener;

.field protected mShutterToneGenerator:Lcom/sonyericsson/android/camera/ShutterToneGenerator;

.field private final mUserPresentIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;-><init>()V

    .line 80
    new-instance v0, Lcom/sonyericsson/android/camera/ExtendedActivity$ExtendedPhoneStateListener;

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/android/camera/ExtendedActivity$ExtendedPhoneStateListener;-><init>(Lcom/sonyericsson/android/camera/ExtendedActivity;Lcom/sonyericsson/android/camera/ExtendedActivity$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/ExtendedActivity;->mPhoneStateListener:Lcom/sonyericsson/android/camera/ExtendedActivity$ExtendedPhoneStateListener;

    .line 84
    iput-object v2, p0, Lcom/sonyericsson/android/camera/ExtendedActivity;->mAutoTerminationTimer:Lcom/sonyericsson/cameracommon/utility/CameraTimer;

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/ExtendedActivity;->mEnabledAutoTerminationTimer:Z

    .line 123
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/ExtendedActivity;->mDelayedOnResume:Z

    .line 130
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/ExtendedActivity;->mIsTouchEventValid:Z

    .line 132
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/ExtendedActivity;->mIsAlertDialogOpened:Z

    .line 137
    new-instance v0, Lcom/sonyericsson/android/camera/ExtendedActivity$UserPresentIntentReceiver;

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/android/camera/ExtendedActivity$UserPresentIntentReceiver;-><init>(Lcom/sonyericsson/android/camera/ExtendedActivity;Lcom/sonyericsson/android/camera/ExtendedActivity$1;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/ExtendedActivity;->mUserPresentIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 393
    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/ExtendedActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/ExtendedActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/ExtendedActivity;->onActivated(Z)V

    return-void
.end method

.method static synthetic access$302(Lcom/sonyericsson/android/camera/ExtendedActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/android/camera/ExtendedActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/ExtendedActivity;->mIsTouchEventValid:Z

    return p1
.end method

.method private onActivated(Z)V
    .locals 0
    .param p1, "resumedFromIncomingCall"    # Z

    .prologue
    .line 338
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/ExtendedActivity;->resumeAll(Z)V

    .line 339
    return-void
.end method

.method private postLazyEnableTouchEvent()V
    .locals 4

    .prologue
    .line 513
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sonyericsson/android/camera/ExtendedActivity$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/ExtendedActivity$1;-><init>(Lcom/sonyericsson/android/camera/ExtendedActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 519
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 556
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/ExtendedActivity;->isInLockTaskMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 557
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/ExtendedActivity;->prepareFinish()V

    .line 559
    :cond_0
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->finish()V

    .line 560
    return-void
.end method

.method public finishUrgently()V
    .locals 0

    .prologue
    .line 575
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/ExtendedActivity;->prepareFinish()V

    .line 576
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->finish()V

    .line 577
    return-void
.end method

.method public getCallingDialog()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .locals 4

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/ExtendedActivity;->getMessagePopup()Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    move-result-object v0

    const v1, 0x7f090073

    const v2, 0x7f090098

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showErrorUncancelable(IIZ)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v0

    return-object v0
.end method

.method public getConfigurations()Lcom/sonyericsson/android/camera/configuration/Configurations;
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/sonyericsson/android/camera/ExtendedActivity;->mConfigurations:Lcom/sonyericsson/android/camera/configuration/Configurations;

    return-object v0
.end method

.method public getControllerManager()Lcom/sonyericsson/android/camera/ControllerManager;
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/sonyericsson/android/camera/ExtendedActivity;->mControllerManager:Lcom/sonyericsson/android/camera/ControllerManager;

    return-object v0
.end method

.method public getDebugEventIntruder()Lcom/sonyericsson/android/camera/util/DebugEventIntruder;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/sonyericsson/android/camera/ExtendedActivity;->mDebugEventIntruder:Lcom/sonyericsson/android/camera/util/DebugEventIntruder;

    return-object v0
.end method

.method public getLaunchConditions()Lcom/sonyericsson/android/camera/LaunchConditions;
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lcom/sonyericsson/android/camera/ExtendedActivity;->mLaunchConditions:Lcom/sonyericsson/android/camera/LaunchConditions;

    return-object v0
.end method

.method public getMeasurePerformance2()Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/sonyericsson/android/camera/ExtendedActivity;->mMeasurePerformance:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;

    return-object v0
.end method

.method public getParameterManager()Lcom/sonyericsson/android/camera/parameter/ParameterManager;
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/sonyericsson/android/camera/ExtendedActivity;->mParameterManager:Lcom/sonyericsson/android/camera/parameter/ParameterManager;

    return-object v0
.end method

.method public getShutterToneGenerator()Lcom/sonyericsson/android/camera/ShutterToneGenerator;
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/sonyericsson/android/camera/ExtendedActivity;->mShutterToneGenerator:Lcom/sonyericsson/android/camera/ShutterToneGenerator;

    return-object v0
.end method

.method public isAlertDialogOpened()Z
    .locals 1

    .prologue
    .line 527
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/ExtendedActivity;->mIsAlertDialogOpened:Z

    return v0
.end method

.method public isControllerReleased()Z
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/sonyericsson/android/camera/ExtendedActivity;->mControllerManager:Lcom/sonyericsson/android/camera/ControllerManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/ExtendedActivity;->mControllerManager:Lcom/sonyericsson/android/camera/ControllerManager;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/ControllerManager;->isControllerReleased()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 488
    :cond_0
    const/4 v0, 0x1

    .line 490
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOneShot()Z
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/sonyericsson/android/camera/ExtendedActivity;->mLaunchConditions:Lcom/sonyericsson/android/camera/LaunchConditions;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchConditions;->isOneShot()Z

    move-result v0

    return v0
.end method

.method public isOneShotPhoto()Z
    .locals 2

    .prologue
    .line 500
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/ExtendedActivity;->isOneShot()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/ExtendedActivity;->mLaunchConditions:Lcom/sonyericsson/android/camera/LaunchConditions;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchConditions;->getOneShotType()Lcom/sonyericsson/android/camera/OneShotType;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/OneShotType;->PHOTO:Lcom/sonyericsson/android/camera/OneShotType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOneShotVideo()Z
    .locals 2

    .prologue
    .line 505
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/ExtendedActivity;->isOneShot()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/ExtendedActivity;->mLaunchConditions:Lcom/sonyericsson/android/camera/LaunchConditions;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchConditions;->getOneShotType()Lcom/sonyericsson/android/camera/OneShotType;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/OneShotType;->VIDEO:Lcom/sonyericsson/android/camera/OneShotType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTouchEventValid()Z
    .locals 1

    .prologue
    .line 522
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/ExtendedActivity;->mIsTouchEventValid:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 271
    invoke-super {p0, p1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 273
    new-instance v0, Lcom/sonyericsson/android/camera/LaunchConditions;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/LaunchConditions;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/ExtendedActivity;->mLaunchConditions:Lcom/sonyericsson/android/camera/LaunchConditions;

    .line 274
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 375
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->onDestroy()V

    .line 376
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 346
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->onPause()V

    .line 347
    iget-object v0, p0, Lcom/sonyericsson/android/camera/ExtendedActivity;->mUserPresentIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/ExtendedActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 349
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/ExtendedActivity;->mIsTouchEventValid:Z

    .line 350
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/ExtendedActivity;->mDelayedOnResume:Z

    .line 351
    iget-object v0, p0, Lcom/sonyericsson/android/camera/ExtendedActivity;->mForceSound:Lcom/sonyericsson/android/camera/ExtendedActivity$ForceSound;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/ExtendedActivity$ForceSound;->dismiss()V

    .line 352
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/ExtendedActivity;->mForceSound:Lcom/sonyericsson/android/camera/ExtendedActivity$ForceSound;

    .line 353
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.android.camera.intent.action.FINISH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/ExtendedActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 355
    iget-object v0, p0, Lcom/sonyericsson/android/camera/ExtendedActivity;->mControllerManager:Lcom/sonyericsson/android/camera/ControllerManager;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/sonyericsson/android/camera/ExtendedActivity;->mLaunchConditions:Lcom/sonyericsson/android/camera/LaunchConditions;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/ExtendedActivity;->mControllerManager:Lcom/sonyericsson/android/camera/ControllerManager;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/ControllerManager;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/LaunchConditions;->clear(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/ExtendedActivity;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->saveExternalStorageStateInPrefs()V

    .line 359
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 292
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/ExtendedActivity;->mIsTouchEventValid:Z

    .line 293
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/ExtendedActivity;->postLazyEnableTouchEvent()V

    .line 296
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/StaticConfigurationUtil;->isForceSound()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 297
    new-instance v1, Lcom/sonyericsson/android/camera/ExtendedActivity$ForceSoundOn;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/ExtendedActivity$ForceSoundOn;-><init>(Lcom/sonyericsson/android/camera/ExtendedActivity;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/ExtendedActivity;->mForceSound:Lcom/sonyericsson/android/camera/ExtendedActivity$ForceSound;

    .line 303
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/ExtendedActivity;->mLaunchConditions:Lcom/sonyericsson/android/camera/LaunchConditions;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/LaunchConditions;->getLaunchedBy()Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;->UNKNOWN:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    if-ne v1, v2, :cond_0

    .line 304
    iget-object v1, p0, Lcom/sonyericsson/android/camera/ExtendedActivity;->mLaunchConditions:Lcom/sonyericsson/android/camera/LaunchConditions;

    sget-object v2, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;->HISTORY:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/LaunchConditions;->setLaunchedBy(Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;)V

    .line 307
    :cond_0
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->onResume()V

    .line 309
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sonyericsson.android.camera.intent.action.LAUNCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/ExtendedActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 311
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 312
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/ExtendedActivity;->mUserPresentIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/android/camera/ExtendedActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 314
    iget-object v1, p0, Lcom/sonyericsson/android/camera/ExtendedActivity;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->resume()V

    .line 315
    return-void

    .line 299
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_1
    new-instance v1, Lcom/sonyericsson/android/camera/ExtendedActivity$ForceSoundOff;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/ExtendedActivity$ForceSoundOff;-><init>(Lcom/sonyericsson/android/camera/ExtendedActivity;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/ExtendedActivity;->mForceSound:Lcom/sonyericsson/android/camera/ExtendedActivity$ForceSound;

    goto :goto_0
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 278
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->onStart()V

    .line 280
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/ExtendedActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 282
    .local v0, "telephony":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/ExtendedActivity;->mPhoneStateListener:Lcom/sonyericsson/android/camera/ExtendedActivity$ExtendedPhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 284
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 366
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->onStop()V

    .line 368
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/ExtendedActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 370
    .local v0, "telephony":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/sonyericsson/android/camera/ExtendedActivity;->mPhoneStateListener:Lcom/sonyericsson/android/camera/ExtendedActivity$ExtendedPhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 371
    return-void
.end method

.method protected pauseCameraView()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method protected abstract prepareFinish()V
.end method

.method public abstract resumeAll(Z)V
.end method

.method public setAlertDialogIsOpened(Z)V
    .locals 0
    .param p1, "dialogIsOpened"    # Z

    .prologue
    .line 532
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/ExtendedActivity;->mIsAlertDialogOpened:Z

    .line 533
    return-void
.end method

.method public setDeviceError(Z)V
    .locals 1
    .param p1, "failed"    # Z

    .prologue
    .line 509
    iget-object v0, p0, Lcom/sonyericsson/android/camera/ExtendedActivity;->mLaunchConditions:Lcom/sonyericsson/android/camera/LaunchConditions;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/LaunchConditions;->setDeviceError(Z)V

    .line 510
    return-void
.end method

.method public terminateApplication()V
    .locals 0

    .prologue
    .line 477
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/ExtendedActivity;->finish()V

    .line 478
    return-void
.end method
