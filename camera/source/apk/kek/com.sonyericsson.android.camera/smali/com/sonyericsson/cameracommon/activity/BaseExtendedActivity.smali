.class public abstract Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;
.super Lcom/sonyericsson/cameracommon/activity/BaseActivity;
.source "BaseExtendedActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$1;,
        Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$AutoUploadSettingCheckCallback;,
        Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$CameraActivityFinishBroadcastReceiver;,
        Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$ExtendedPhoneStateListener;,
        Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$PhoneStateChangedListener;,
        Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardianForceSoundOn;,
        Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardianUnlimited;,
        Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;,
        Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$UserPresentIntentReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseExtendedActivity"


# instance fields
.field private mIsAlertDialogOpened:Z

.field private mPhoneStateChangedListener:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$PhoneStateChangedListener;

.field private mPhoneStateListener:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$ExtendedPhoneStateListener;

.field protected mSoundPlayer:Lcom/sonyericsson/cameracommon/sound/SoundPlayer;

.field private mStartUpGuardian:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;

.field private final mUserPresentIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;-><init>()V

    .line 68
    new-instance v0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$UserPresentIntentReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$UserPresentIntentReceiver;-><init>(Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$1;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mUserPresentIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mIsAlertDialogOpened:Z

    .line 485
    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;)Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mStartUpGuardian:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;)Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$PhoneStateChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mPhoneStateChangedListener:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$PhoneStateChangedListener;

    return-object v0
.end method


# virtual methods
.method protected abort()V
    .locals 0

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->finish()V

    .line 293
    return-void
.end method

.method protected cancelCheckAutoUploadSetting()V
    .locals 1

    .prologue
    .line 482
    invoke-static {}, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;->getInstance()Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;->cancel(Landroid/content/Context;)V

    .line 483
    return-void
.end method

.method public final dismissDialog()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mNonCancelableErrorDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mNonCancelableErrorDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->dismiss()V

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mNonCancelableErrorDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 182
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 582
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->isInLockTaskMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 583
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->prepareFinish()V

    .line 585
    :cond_0
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->finish()V

    .line 586
    return-void
.end method

.method public finishOneShot(Landroid/content/Intent;)V
    .locals 1
    .param p1, "resultIntent"    # Landroid/content/Intent;

    .prologue
    .line 410
    if-nez p1, :cond_0

    .line 411
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->setResult(I)V

    .line 415
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->finish()V

    .line 416
    return-void

    .line 413
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public finishUrgently()V
    .locals 0

    .prologue
    .line 601
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->prepareFinish()V

    .line 602
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->finish()V

    .line 603
    return-void
.end method

.method public forTestGetCameraParameters()Landroid/hardware/Camera$Parameters;
    .locals 2

    .prologue
    .line 348
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unsupported method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract getPreviewSize()Landroid/graphics/Rect;
.end method

.method public getSoundPlayer()Lcom/sonyericsson/cameracommon/sound/SoundPlayer;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mSoundPlayer:Lcom/sonyericsson/cameracommon/sound/SoundPlayer;

    return-object v0
.end method

.method public isAlertDialogOpened()Z
    .locals 1

    .prologue
    .line 553
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mIsAlertDialogOpened:Z

    return v0
.end method

.method public isPhoneCallWorking()Z
    .locals 2

    .prologue
    .line 543
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 544
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-eqz v1, :cond_0

    .line 545
    const/4 v1, 0x1

    .line 547
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPreinstalledOrUpdatedPreinstalledApp()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 506
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 507
    .local v3, "pm":Landroid/content/pm/PackageManager;
    if-eqz v3, :cond_3

    .line 508
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 509
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_2

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_2

    .line 510
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 511
    .local v1, "flags":I
    and-int/lit16 v5, v1, 0x80

    if-nez v5, :cond_0

    and-int/lit8 v5, v1, 0x1

    if-eqz v5, :cond_1

    .line 515
    :cond_0
    const/4 v4, 0x1

    .line 530
    .end local v1    # "flags":I
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    :goto_0
    return v4

    .line 521
    .restart local v2    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    const-string v5, "BaseExtendedActivity"

    const-string v6, "Can\'t get packeage info. assume user app."

    invoke-static {v5, v6}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 528
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 529
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "BaseExtendedActivity"

    const-string v6, "Can\'t get packeage info. assume user app."

    invoke-static {v5, v6}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 525
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_3
    :try_start_1
    const-string v5, "BaseExtendedActivity"

    const-string v6, "Can\'t get packeage manager. assume user app."

    invoke-static {v5, v6}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 423
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->terminateApplication()V

    .line 424
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 198
    sget-object v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;->INTENT:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mLaunchedBy:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    .line 199
    invoke-super {p0, p1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 200
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mPhoneStateListener:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$ExtendedPhoneStateListener;

    .line 287
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->onDestroy()V

    .line 288
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 463
    invoke-super {p0, p1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 467
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->setIntent(Landroid/content/Intent;)V

    .line 469
    sget-object v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;->INTENT:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mLaunchedBy:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    .line 470
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mStartUpGuardian:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mStartUpGuardian:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;->pause()V

    .line 252
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mStartUpGuardian:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;

    .line 262
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mUserPresentIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 265
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->cancelCheckAutoUploadSetting()V

    .line 267
    sget-object v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;->UNKNOWN:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mLaunchedBy:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    .line 269
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->onPause()V

    .line 270
    return-void

    .line 257
    :cond_0
    const-string v0, "BaseExtendedActivity"

    const-string v1, "onPause():[Application is already paused.]"

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 218
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/StaticConfigurationUtil;->isForceSound()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 219
    new-instance v1, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardianForceSoundOn;

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardianForceSoundOn;-><init>(Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$1;)V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mStartUpGuardian:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;

    .line 225
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 226
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mUserPresentIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 229
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->requestCheckAutoUploadSetting()V

    .line 232
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mLaunchedBy:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    sget-object v2, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;->UNKNOWN:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    if-ne v1, v2, :cond_0

    .line 233
    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;->HISTORY:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mLaunchedBy:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    .line 236
    :cond_0
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->onResume()V

    .line 238
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->resume()V

    .line 241
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mStartUpGuardian:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;->resume()V

    .line 242
    return-void

    .line 221
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_1
    new-instance v1, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardianUnlimited;

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardianUnlimited;-><init>(Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$1;)V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mStartUpGuardian:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;

    goto :goto_0
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 204
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->onStart()V

    .line 207
    new-instance v1, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$ExtendedPhoneStateListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$ExtendedPhoneStateListener;-><init>(Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$1;)V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mPhoneStateListener:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$ExtendedPhoneStateListener;

    .line 208
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 209
    .local v0, "telephony":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mPhoneStateListener:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$ExtendedPhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 210
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 275
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 276
    .local v0, "telephony":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mPhoneStateListener:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$ExtendedPhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 277
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mPhoneStateListener:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$ExtendedPhoneStateListener;

    .line 279
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->onStop()V

    .line 280
    return-void
.end method

.method public onStoreComplete(ZLandroid/net/Uri;Ljava/lang/String;I)V
    .locals 2
    .param p1, "storeSuccessfull"    # Z
    .param p2, "originUri"    # Landroid/net/Uri;
    .param p3, "mime"    # Ljava/lang/String;
    .param p4, "orientation"    # I

    .prologue
    .line 385
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->isOneShot()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 386
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->getExtraOutput()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_2

    .line 387
    const/4 v0, 0x0

    .line 388
    .local v0, "resultIntent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 389
    invoke-static {p0, p2, p3, p4}, Lcom/sonyericsson/cameracommon/utility/OneShotUtility;->createResultIntent(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 395
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->finishOneShot(Landroid/content/Intent;)V

    .line 406
    .end local v0    # "resultIntent":Landroid/content/Intent;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->enableAutoOffTimer()V

    .line 407
    return-void

    .line 397
    :cond_2
    if-eqz p1, :cond_3

    .line 398
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->setResult(I)V

    .line 402
    :goto_1
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->finish()V

    goto :goto_0

    .line 400
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->setResult(I)V

    goto :goto_1
.end method

.method protected abstract prepareFinish()V
.end method

.method protected requestCheckAutoUploadSetting()V
    .locals 3

    .prologue
    .line 475
    invoke-static {}, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;->getInstance()Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$AutoUploadSettingCheckCallback;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$AutoUploadSettingCheckCallback;-><init>(Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$1;)V

    invoke-virtual {v0, p0, v1}, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;->request(Landroid/content/Context;Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettingNotifyListener;)V

    .line 477
    return-void
.end method

.method public resumeFromIncomingCall()V
    .locals 1

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->dismissDialog()V

    .line 191
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mStartUpGuardian:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$StartUpGuardian;->tryToResumeAll()V

    .line 192
    return-void
.end method

.method public setAlertDialogIsOpened(Z)V
    .locals 0
    .param p1, "dialogIsOpened"    # Z

    .prologue
    .line 558
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mIsAlertDialogOpened:Z

    .line 559
    return-void
.end method

.method public setDestinationToSave()V
    .locals 5

    .prologue
    .line 363
    const/4 v2, 0x0

    .line 365
    .local v2, "type":Landroid/os/storage/StorageManager$StorageType;
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->hasExtraOutputPath()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 367
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->getExtraOutput()Landroid/net/Uri;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, "fixedStorage":Ljava/lang/String;
    invoke-static {v0, p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getStorageTypeFromPath(Ljava/lang/String;Landroid/content/Context;)Landroid/os/storage/StorageManager$StorageType;

    move-result-object v2

    .line 375
    .end local v0    # "fixedStorage":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    invoke-virtual {v3, v2}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->setCurrentStorage(Landroid/os/storage/StorageManager$StorageType;)V

    .line 376
    return-void

    .line 371
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mCommonSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    sget-object v4, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->SAVE_DESTINATION:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->get(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;

    .line 373
    .local v1, "storage":Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getStorageTypeFromSaveDestination(Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;)Landroid/os/storage/StorageManager$StorageType;

    move-result-object v2

    goto :goto_0
.end method

.method public setPhoneStateChangedListener(Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$PhoneStateChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$PhoneStateChangedListener;

    .prologue
    .line 309
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->mPhoneStateChangedListener:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity$PhoneStateChangedListener;

    .line 310
    return-void
.end method

.method protected showAndConfirmDisclaimer()V
    .locals 0

    .prologue
    .line 540
    return-void
.end method

.method public terminateApplication()V
    .locals 0

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->finish()V

    .line 441
    return-void
.end method
