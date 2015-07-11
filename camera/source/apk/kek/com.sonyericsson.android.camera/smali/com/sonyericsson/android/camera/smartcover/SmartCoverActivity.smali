.class public Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;
.super Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;
.source "SmartCoverActivity.java"

# interfaces
.implements Lcom/sonymobile/coversupport/OnCoverModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity$1;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static final sCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCoverModeHandler:Lcom/sonymobile/coversupport/CoverModeHandler;

.field private mCoverModeSizeInPixel:Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;

.field public mShouldStartFastCapture:Z

.field private mSmartCoverViewFinder:Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;->TAG:Ljava/lang/String;

    .line 57
    new-instance v0, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;->sCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;->mCoverModeSizeInPixel:Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;

    .line 47
    iput-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;->mCoverModeHandler:Lcom/sonymobile/coversupport/CoverModeHandler;

    .line 50
    iput-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;->mSmartCoverViewFinder:Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;->mShouldStartFastCapture:Z

    return-void
.end method

.method public static staticCameraDevice()Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;
    .locals 2

    .prologue
    .line 265
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method is unsupported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected confirmLocationService()V
    .locals 0

    .prologue
    .line 241
    return-void
.end method

.method protected createViewFinder(Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;)Lcom/sonyericsson/android/camera/fastcapturing/view/BaseFastViewFinder;
    .locals 1
    .param p1, "activity"    # Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    .prologue
    .line 61
    new-instance v0, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;

    invoke-direct {v0, p1}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;->mSmartCoverViewFinder:Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;

    .line 62
    iget-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;->mSmartCoverViewFinder:Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;

    return-object v0
.end method

.method public getCameraDevice()Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;
    .locals 1

    .prologue
    .line 277
    sget-object v0, Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;->sCameraDeviceHandler:Lcom/sonyericsson/android/camera/fastcapturing/CameraDeviceHandler;

    return-object v0
.end method

.method public getWearableBridge()Lcom/sonymobile/cameracommon/vanilla/wearablebridge/handheld/client/WearableBridgeClient;
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x0

    return-object v0
.end method

.method protected isVideoSupported()Z
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method protected loadFastCapturingLaunchSetting()V
    .locals 2

    .prologue
    .line 67
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;->LAUNCH_ONLY:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;->setFastCaptureSetting(Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;)V

    .line 69
    invoke-static {}, Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->setCurrentCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 73
    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;->getTargetCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->setTargetCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 76
    :cond_1
    return-void
.end method

.method public onCoverModeChanged(Z)V
    .locals 5
    .param p1, "isCoverModeActive"    # Z

    .prologue
    .line 118
    if-eqz p1, :cond_1

    .line 119
    iget-object v3, p0, Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;->mCoverModeHandler:Lcom/sonymobile/coversupport/CoverModeHandler;

    invoke-virtual {v3}, Lcom/sonymobile/coversupport/CoverModeHandler;->getWindowInfo()Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;->mCoverModeSizeInPixel:Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;

    .line 120
    iget-object v3, p0, Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;->mCoverModeSizeInPixel:Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;

    if-eqz v3, :cond_0

    .line 130
    iget-object v3, p0, Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;->mSmartCoverViewFinder:Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;->mCoverModeSizeInPixel:Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;->setCoverModeSizeInPixel(Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;)V

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    iget-boolean v3, p0, Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;->mShouldStartFastCapture:Z

    if-eqz v3, :cond_3

    .line 135
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 136
    .local v0, "i":Landroid/content/Intent;
    const-class v3, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;

    invoke-virtual {v0, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 137
    const-string v3, "keyguard"

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 139
    .local v1, "keyguadManager":Landroid/app/KeyguardManager;
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    .line 140
    .local v2, "restrictedMode":Z
    if-eqz v2, :cond_2

    .line 141
    const-string v3, "android.intent.extra.SUBJECT"

    const-string v4, "start-secure"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    :cond_2
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 145
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;->startActivity(Landroid/content/Intent;)V

    .line 147
    .end local v0    # "i":Landroid/content/Intent;
    .end local v1    # "keyguadManager":Landroid/app/KeyguardManager;
    .end local v2    # "restrictedMode":Z
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;->abort()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 110
    sget-object v0, Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;->TAG:Ljava/lang/String;

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->ON_DESTROY:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;->logLifeCycleIn(Ljava/lang/String;Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;)V

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;->mSmartCoverViewFinder:Lcom/sonyericsson/android/camera/smartcover/view/SmartCoverViewFinder;

    .line 112
    invoke-super {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->onDestroy()V

    .line 113
    sget-object v0, Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;->TAG:Ljava/lang/String;

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->ON_DESTROY:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;->logLifeCycleOut(Ljava/lang/String;Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;)V

    .line 114
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v2, 0x1

    .line 164
    iget-object v3, p0, Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;->mKeyEventTranslator:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;

    invoke-virtual {v3, p1}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator;->translateKeyCodeOnDown(I)Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    move-result-object v1

    .line 167
    .local v1, "translatedKeyCode":Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 168
    sget-object v3, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->VOLUME:Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;

    if-eq v1, v3, :cond_1

    .line 218
    :cond_0
    :goto_0
    return v2

    .line 174
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;->restartAutoOffTimer()V

    .line 179
    const/4 v0, 0x1

    .line 180
    .local v0, "audioStreamType":I
    iget-object v3, p0, Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 181
    const/4 v0, 0x3

    .line 184
    :cond_2
    sget-object v3, Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity$1;->$SwitchMap$com$sonyericsson$cameracommon$keytranslator$KeyEventTranslator$TranslatedKeyCode:[I

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/keytranslator/KeyEventTranslator$TranslatedKeyCode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 218
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    .line 186
    :pswitch_0
    const/16 v3, 0x18

    if-ne p1, v3, :cond_3

    .line 187
    iget-object v3, p0, Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v0, v2, v5}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_0

    .line 190
    :cond_3
    const/16 v3, 0x19

    if-ne p1, v3, :cond_0

    .line 191
    iget-object v3, p0, Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v4, -0x1

    invoke-virtual {v3, v0, v4, v5}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_0

    .line 198
    :pswitch_1
    iget-object v3, p0, Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    sget-object v4, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_KEY_FOCUS_DOWN:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_0

    .line 203
    :pswitch_2
    iget-object v3, p0, Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    sget-object v4, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_KEY_CAPTURE_DOWN:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_0

    .line 210
    :pswitch_3
    iget-object v3, p0, Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    sget-object v4, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_KEY_FOCUS_DOWN:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 212
    iget-object v3, p0, Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;->mStateMachine:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;

    sget-object v4, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;->EVENT_KEY_CAPTURE_DOWN:Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/sonyericsson/android/camera/fastcapturing/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/fastcapturing/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_0

    .line 184
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 91
    sget-object v0, Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;->TAG:Ljava/lang/String;

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->ON_PAUSE:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;->logLifeCycleIn(Ljava/lang/String;Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;)V

    .line 93
    invoke-super {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->onPause()V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;->mCoverModeSizeInPixel:Lcom/sonymobile/coversupport/CoverModeHandler$WindowInfo;

    .line 96
    sget-object v0, Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;->TAG:Ljava/lang/String;

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->ON_PAUSE:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;->logLifeCycleOut(Ljava/lang/String;Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;)V

    .line 97
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 80
    sget-object v0, Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;->TAG:Ljava/lang/String;

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->ON_START:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;->logLifeCycleIn(Ljava/lang/String;Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;)V

    .line 81
    invoke-super {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->onStart()V

    .line 82
    new-instance v0, Lcom/sonymobile/coversupport/CoverModeHandler;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p0, v1}, Lcom/sonymobile/coversupport/CoverModeHandler;-><init>(Landroid/app/Activity;Lcom/sonymobile/coversupport/OnCoverModeChangedListener;Z)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;->mCoverModeHandler:Lcom/sonymobile/coversupport/CoverModeHandler;

    .line 83
    iget-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;->mCoverModeHandler:Lcom/sonymobile/coversupport/CoverModeHandler;

    invoke-virtual {v0}, Lcom/sonymobile/coversupport/CoverModeHandler;->start()V

    .line 84
    iget-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;->mCoverModeHandler:Lcom/sonymobile/coversupport/CoverModeHandler;

    invoke-virtual {v0}, Lcom/sonymobile/coversupport/CoverModeHandler;->isCoverModeActive()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;->onCoverModeChanged(Z)V

    .line 85
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 86
    sget-object v0, Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;->TAG:Ljava/lang/String;

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->ON_START:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;->logLifeCycleOut(Ljava/lang/String;Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;)V

    .line 87
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 101
    sget-object v0, Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;->TAG:Ljava/lang/String;

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->ON_STOP:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;->logLifeCycleIn(Ljava/lang/String;Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;)V

    .line 102
    iget-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;->mCoverModeHandler:Lcom/sonymobile/coversupport/CoverModeHandler;

    invoke-virtual {v0}, Lcom/sonymobile/coversupport/CoverModeHandler;->stop()V

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;->mCoverModeHandler:Lcom/sonymobile/coversupport/CoverModeHandler;

    .line 104
    invoke-super {p0}, Lcom/sonyericsson/android/camera/fastcapturing/FastCapturingActivity;->onStop()V

    .line 105
    sget-object v0, Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;->TAG:Ljava/lang/String;

    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->ON_STOP:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;->logLifeCycleOut(Ljava/lang/String;Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;)V

    .line 106
    return-void
.end method

.method public setShouldStartFastCapture(Z)V
    .locals 0
    .param p1, "shouldStartFastCapture"    # Z

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;->mShouldStartFastCapture:Z

    .line 158
    return-void
.end method

.method public shouldAddOnlyNewContent()Z
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x1

    return v0
.end method

.method public showCameraNotAvailableError()V
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/smartcover/SmartCoverActivity;->showCameraNotAvailableError(Z)V

    .line 236
    return-void
.end method
