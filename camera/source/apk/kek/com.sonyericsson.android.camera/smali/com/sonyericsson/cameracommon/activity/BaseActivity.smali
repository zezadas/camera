.class public abstract Lcom/sonyericsson/cameracommon/activity/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/activity/TerminateListener;
.implements Lcom/sonyericsson/cameracommon/messagepopup/MessagePopupStateListener;
.implements Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$ThermalAlertReceiverListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/activity/BaseActivity$1;,
        Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;,
        Lcom/sonyericsson/cameracommon/activity/BaseActivity$ExtendedOrientationEventListener;,
        Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientationChangedListener;,
        Lcom/sonyericsson/cameracommon/activity/BaseActivity$AutoOffTimerTask;,
        Lcom/sonyericsson/cameracommon/activity/BaseActivity$StorageEventListener;,
        Lcom/sonyericsson/cameracommon/activity/BaseActivity$StorageBroadcastReceiver;,
        Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;,
        Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;
    }
.end annotation


# static fields
.field private static final AUTO_OFF_TIMER_TIMEOUT_COUNT:I = 0x2bf20

.field public static final INTENT_SUBJECT_START_SECURE:Ljava/lang/String; = "start-secure"

.field private static final TAG:Ljava/lang/String; = "BaseActivity"


# instance fields
.field mAddToMediaStore:Z

.field mAutoOffTimer:Ljava/util/Timer;

.field protected mAutoReviewSettings:Lcom/sonyericsson/cameracommon/settings/AutoReviewSettings;

.field protected mCommonSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

.field private final mExtendedBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mExtraOutput:Landroid/net/Uri;

.field protected mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

.field mHandler:Landroid/os/Handler;

.field private mIsAutoOffTimerEnabled:Z

.field protected mIsKeyguardAvailable:Z

.field private mIsReceiverResistered:Z

.field private mLastDetectedOrientation:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

.field private mLastDeterminedOrientationDegree:I

.field private mLastOrientationDegree:I

.field private mLaunchAsOneShot:Z

.field private mLaunchAsOneShotPhoto:Z

.field private mLaunchAsOneShotPhotoSecure:Z

.field private mLaunchAsOneShotVideo:Z

.field protected mLaunchedBy:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

.field private mLayoutOrientationChangedListenerSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientationChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationSettingsReader:Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;

.field protected mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

.field protected mNonCancelableErrorDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

.field private mOrientationEventListener:Landroid/view/OrientationEventListener;

.field protected mSavingTaskManager:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

.field private mSensorOrientationDegree:I

.field protected mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

.field private mStorageListenerSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sonyericsson/cameracommon/activity/BaseActivity$StorageEventListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

.field protected mTerminateListener:Lcom/sonyericsson/cameracommon/activity/TerminateListener;

.field protected mThermalAlertReceiver:Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mIsAutoOffTimerEnabled:Z

    .line 80
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLaunchAsOneShot:Z

    .line 82
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLaunchAsOneShotPhoto:Z

    .line 84
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLaunchAsOneShotPhotoSecure:Z

    .line 86
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLaunchAsOneShotVideo:Z

    .line 136
    sget-object v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;->Landscape:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLastDetectedOrientation:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    .line 138
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLayoutOrientationChangedListenerSet:Ljava/util/Set;

    .line 142
    iput v2, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mSensorOrientationDegree:I

    .line 144
    iput v2, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLastOrientationDegree:I

    .line 146
    iput v2, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLastDeterminedOrientationDegree:I

    .line 155
    sget-object v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;->UNKNOWN:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLaunchedBy:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    .line 179
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mIsKeyguardAvailable:Z

    .line 182
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mIsReceiverResistered:Z

    .line 184
    new-instance v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$StorageBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity$StorageBroadcastReceiver;-><init>(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/activity/BaseActivity$1;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mExtendedBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 219
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mStorageListenerSet:Ljava/util/Set;

    .line 246
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mHandler:Landroid/os/Handler;

    .line 1072
    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/net/Uri;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->notifyStorageStatusChanged(Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->stopAutoOffTimer()V

    return-void
.end method

.method static synthetic access$402(Lcom/sonyericsson/cameracommon/activity/BaseActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    .param p1, "x1"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mSensorOrientationDegree:I

    return p1
.end method

.method static synthetic access$500(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .prologue
    .line 58
    iget v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLastOrientationDegree:I

    return v0
.end method

.method static synthetic access$502(Lcom/sonyericsson/cameracommon/activity/BaseActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    .param p1, "x1"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLastOrientationDegree:I

    return p1
.end method

.method static synthetic access$602(Lcom/sonyericsson/cameracommon/activity/BaseActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    .param p1, "x1"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLastDeterminedOrientationDegree:I

    return p1
.end method

.method static synthetic access$700(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    .param p1, "x1"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->notifyLayoutOrientationChanged(Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;)V

    return-void
.end method

.method private checkOneShot()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 856
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 857
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 861
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 862
    const-string v4, "BaseActivity"

    const-string v5, "setRequestedMode: getAction() == null "

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 864
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 869
    :cond_0
    const-string v4, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 870
    iput-boolean v6, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLaunchAsOneShotPhoto:Z

    .line 876
    :cond_1
    :goto_0
    iget-boolean v4, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLaunchAsOneShotPhoto:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLaunchAsOneShotPhotoSecure:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLaunchAsOneShotVideo:Z

    if-eqz v4, :cond_3

    .line 877
    :cond_2
    iput-boolean v6, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLaunchAsOneShot:Z

    .line 881
    :cond_3
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 882
    .local v1, "extra":Landroid/os/Bundle;
    if-nez v1, :cond_7

    .line 883
    iput-object v7, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mExtraOutput:Landroid/net/Uri;

    .line 884
    iput-boolean v6, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mAddToMediaStore:Z

    .line 907
    :goto_1
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mExtraOutput:Landroid/net/Uri;

    if-eqz v4, :cond_4

    .line 917
    :cond_4
    return-void

    .line 871
    .end local v1    # "extra":Landroid/os/Bundle;
    :cond_5
    const-string v4, "android.media.action.IMAGE_CAPTURE_SECURE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 872
    iput-boolean v6, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLaunchAsOneShotPhotoSecure:Z

    goto :goto_0

    .line 873
    :cond_6
    const-string v4, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 874
    iput-boolean v6, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLaunchAsOneShotVideo:Z

    goto :goto_0

    .line 885
    .restart local v1    # "extra":Landroid/os/Bundle;
    :cond_7
    iget-boolean v4, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLaunchAsOneShot:Z

    if-eqz v4, :cond_9

    .line 886
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_2

    .line 890
    :cond_8
    const-string v4, "output"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    iput-object v4, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mExtraOutput:Landroid/net/Uri;

    .line 891
    const-string v4, "addToMediaStore"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mAddToMediaStore:Z

    goto :goto_1

    .line 893
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_9
    iput-object v7, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mExtraOutput:Landroid/net/Uri;

    .line 894
    iput-boolean v6, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mAddToMediaStore:Z

    goto :goto_1
.end method

.method private getOrientationDegree(Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;)I
    .locals 4
    .param p1, "fixed"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    .prologue
    .line 745
    sget-object v2, Lcom/sonyericsson/cameracommon/activity/BaseActivity$1;->$SwitchMap$com$sonyericsson$cameracommon$activity$BaseActivity$LayoutOrientation:[I

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 761
    const/4 v0, -0x1

    .local v0, "degree":I
    move v1, v0

    .line 767
    .end local v0    # "degree":I
    .local v1, "degree":I
    :goto_0
    return v1

    .line 749
    .end local v1    # "degree":I
    :pswitch_0
    const/4 v0, 0x0

    .line 764
    .restart local v0    # "degree":I
    :goto_1
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/utility/ProductConfig;->getMountAngle(Landroid/content/Context;)I

    move-result v2

    add-int/2addr v0, v2

    .line 765
    rem-int/lit16 v0, v0, 0x168

    move v1, v0

    .line 767
    .end local v0    # "degree":I
    .restart local v1    # "degree":I
    goto :goto_0

    .line 752
    .end local v1    # "degree":I
    :pswitch_1
    const/16 v0, 0x5a

    .line 753
    .restart local v0    # "degree":I
    goto :goto_1

    .line 755
    .end local v0    # "degree":I
    :pswitch_2
    const/16 v0, 0xb4

    .line 756
    .restart local v0    # "degree":I
    goto :goto_1

    .line 758
    .end local v0    # "degree":I
    :pswitch_3
    const/16 v0, 0x10e

    .line 759
    .restart local v0    # "degree":I
    goto :goto_1

    .line 745
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static in(III)Z
    .locals 1
    .param p0, "testee"    # I
    .param p1, "lower"    # I
    .param p2, "upper"    # I

    .prologue
    .line 714
    if-lt p0, p1, :cond_0

    if-ge p0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private muteSound(I)V
    .locals 4
    .param p1, "streamType"    # I

    .prologue
    const/4 v3, 0x1

    .line 413
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 414
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 415
    .local v0, "m":Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 416
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 424
    .end local v0    # "m":Landroid/media/AudioManager;
    :cond_0
    return-void
.end method

.method private notifyLayoutOrientationChanged(Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;)V
    .locals 3
    .param p1, "orientation"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    .prologue
    .line 648
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLastDetectedOrientation:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    if-ne p1, v2, :cond_1

    .line 660
    :cond_0
    return-void

    .line 650
    :cond_1
    sget-object v2, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;->Unknown:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    if-eq p1, v2, :cond_0

    .line 656
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLastDetectedOrientation:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    .line 657
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLayoutOrientationChangedListenerSet:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientationChangedListener;

    .line 658
    .local v1, "listener":Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientationChangedListener;
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLastDetectedOrientation:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    invoke-interface {v1, v2}, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientationChangedListener;->onLayoutOrientationChanged(Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;)V

    goto :goto_0
.end method

.method private notifyStorageStatusChanged(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 205
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mStorageListenerSet:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$StorageEventListener;

    .line 206
    .local v1, "listener":Lcom/sonyericsson/cameracommon/activity/BaseActivity$StorageEventListener;
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 207
    .local v2, "storage":Ljava/lang/String;
    const-string v3, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 208
    invoke-interface {v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity$StorageEventListener;->onMediaScanFinished()V

    goto :goto_0

    .line 210
    :cond_1
    if-eqz v2, :cond_0

    .line 211
    invoke-interface {v1, p1, v2}, Lcom/sonyericsson/cameracommon/activity/BaseActivity$StorageEventListener;->onStorageCheckRequested(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 215
    .end local v1    # "listener":Lcom/sonyericsson/cameracommon/activity/BaseActivity$StorageEventListener;
    .end local v2    # "storage":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private registerIntentFilter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "intent"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/lang/String;

    .prologue
    .line 339
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 340
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    if-eqz p2, :cond_0

    .line 341
    invoke-virtual {v0, p2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 343
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mExtendedBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 344
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mIsReceiverResistered:Z

    .line 345
    return-void
.end method

.method private final declared-synchronized stopAutoOffTimer()V
    .locals 1

    .prologue
    .line 481
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mAutoOffTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mAutoOffTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 483
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mAutoOffTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 484
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mAutoOffTimer:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 486
    :cond_0
    monitor-exit p0

    return-void

    .line 481
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private unmuteSound(I)V
    .locals 3
    .param p1, "streamType"    # I

    .prologue
    .line 432
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 433
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 434
    .local v0, "m":Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 435
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 442
    .end local v0    # "m":Landroid/media/AudioManager;
    :cond_0
    return-void
.end method

.method private updateBalloonTipsCounter()V
    .locals 3

    .prologue
    .line 988
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mCommonSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->BALLOON_TIPS_COUNTER:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->get(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;

    .line 990
    .local v0, "count":Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;
    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$1;->$SwitchMap$com$sonyericsson$cameracommon$commonsetting$values$BalloonTipsCounter:[I

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1011
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mCommonSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;->COUNT_STOP:Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->set(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    .line 1014
    :goto_0
    :pswitch_0
    return-void

    .line 992
    :pswitch_1
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mCommonSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;->FIRST:Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->set(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    goto :goto_0

    .line 995
    :pswitch_2
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mCommonSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;->SECOND:Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->set(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    goto :goto_0

    .line 998
    :pswitch_3
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mCommonSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;->DISPLAY_OK_FIRST:Lcom/sonyericsson/cameracommon/commonsetting/values/BalloonTipsCounter;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->set(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    goto :goto_0

    .line 990
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected abstract abort()V
.end method

.method public addOrienationListener(Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientationChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientationChangedListener;

    .prologue
    .line 608
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLayoutOrientationChangedListenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 609
    return-void
.end method

.method public addStorageListener(Lcom/sonyericsson/cameracommon/activity/BaseActivity$StorageEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity$StorageEventListener;

    .prologue
    .line 228
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mStorageListenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    if-eqz p1, :cond_0

    .line 230
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mStorageListenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 234
    :cond_0
    return-void
.end method

.method protected callOnCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 1026
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 1027
    return-void
.end method

.method protected callOnDestroy()V
    .locals 0

    .prologue
    .line 1050
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1051
    return-void
.end method

.method protected callOnPause()V
    .locals 0

    .prologue
    .line 1038
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1039
    return-void
.end method

.method protected callOnRestart()V
    .locals 0

    .prologue
    .line 1034
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 1035
    return-void
.end method

.method protected callOnResume()V
    .locals 0

    .prologue
    .line 1042
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1043
    return-void
.end method

.method protected callOnStart()V
    .locals 0

    .prologue
    .line 1030
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 1031
    return-void
.end method

.method protected callOnStop()V
    .locals 0

    .prologue
    .line 1046
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1047
    return-void
.end method

.method protected clearKeepScreenOn()V
    .locals 2

    .prologue
    .line 564
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 565
    return-void
.end method

.method protected createCommonSettings()V
    .locals 2

    .prologue
    .line 304
    new-instance v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;-><init>(Landroid/content/ContentResolver;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mCommonSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    .line 305
    return-void
.end method

.method public final disableAutoOffTimer()V
    .locals 1

    .prologue
    .line 502
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->stopAutoOffTimer()V

    .line 503
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mIsAutoOffTimerEnabled:Z

    .line 504
    return-void
.end method

.method public disableOrientation()V
    .locals 1

    .prologue
    .line 589
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 591
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    .line 593
    :cond_0
    return-void
.end method

.method public final enableAutoOffTimer()V
    .locals 1

    .prologue
    .line 493
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mIsAutoOffTimerEnabled:Z

    .line 494
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->startAutoOffTimer()Z

    .line 495
    return-void
.end method

.method public enableOrientation()V
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_0

    .line 582
    new-instance v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$ExtendedOrientationEventListener;

    invoke-direct {v0, p0, p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity$ExtendedOrientationEventListener;-><init>(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    .line 583
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 585
    :cond_0
    return-void
.end method

.method public getAutoReviewSettings()Lcom/sonyericsson/cameracommon/settings/AutoReviewSettings;
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mAutoReviewSettings:Lcom/sonyericsson/cameracommon/settings/AutoReviewSettings;

    return-object v0
.end method

.method public abstract getCallingDialog()Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
.end method

.method public getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mCommonSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    return-object v0
.end method

.method public getConfigurationOrientation()I
    .locals 1

    .prologue
    .line 721
    iget v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLastDeterminedOrientationDegree:I

    packed-switch v0, :pswitch_data_0

    .line 732
    const/4 v0, 0x2

    :goto_0
    return v0

    .line 723
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 721
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getExtraOutput()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 941
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mExtraOutput:Landroid/net/Uri;

    return-object v0
.end method

.method public getGeoTagManager()Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mGeotagManager:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    return-object v0
.end method

.method public getLastDetectedOrientation()Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;
    .locals 1

    .prologue
    .line 833
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLastDetectedOrientation:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    return-object v0
.end method

.method public getLaunchedBy()Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;
    .locals 1

    .prologue
    .line 1163
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLaunchedBy:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    return-object v0
.end method

.method public getLayoutOrientation()Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 668
    iget v2, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLastOrientationDegree:I

    .line 669
    .local v2, "orientation":I
    if-ne v2, v3, :cond_0

    .line 670
    iget v2, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLastDeterminedOrientationDegree:I

    .line 672
    :cond_0
    if-ne v2, v3, :cond_1

    .line 673
    sget-object v3, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;->Unknown:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    .line 709
    :goto_0
    return-object v3

    .line 678
    :cond_1
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/utility/ProductConfig;->getMountAngle(Landroid/content/Context;)I

    move-result v3

    rsub-int v3, v3, 0x168

    add-int/2addr v2, v3

    .line 679
    rem-int/lit16 v2, v2, 0x168

    .line 684
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLastDetectedOrientation:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    sget-object v4, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;->Portrait:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLastDetectedOrientation:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    sget-object v4, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;->ReversePortrait:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    if-ne v3, v4, :cond_3

    :cond_2
    const/4 v1, 0x1

    .line 687
    .local v1, "nowPortrait":Z
    :goto_1
    if-eqz v1, :cond_4

    const/16 v0, 0x3c

    .line 699
    .local v0, "margin":I
    :goto_2
    rsub-int/lit8 v3, v0, 0x5a

    add-int/lit8 v4, v0, 0x5a

    invoke-static {v2, v3, v4}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->in(III)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 700
    sget-object v3, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;->Portrait:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    goto :goto_0

    .line 684
    .end local v0    # "margin":I
    .end local v1    # "nowPortrait":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 687
    .restart local v1    # "nowPortrait":Z
    :cond_4
    const/16 v0, 0x1e

    goto :goto_2

    .line 702
    .restart local v0    # "margin":I
    :cond_5
    add-int/lit8 v3, v0, 0x5a

    rsub-int v4, v0, 0x10e

    invoke-static {v2, v3, v4}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->in(III)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 703
    sget-object v3, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;->ReverseLandscape:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    goto :goto_0

    .line 705
    :cond_6
    rsub-int v3, v0, 0x10e

    add-int/lit16 v4, v0, 0x10e

    invoke-static {v2, v3, v4}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->in(III)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 706
    sget-object v3, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;->ReversePortrait:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    goto :goto_0

    .line 709
    :cond_7
    sget-object v3, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;->Landscape:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    goto :goto_0
.end method

.method public getMessagePopup()Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    return-object v0
.end method

.method public getOrientation()I
    .locals 3

    .prologue
    .line 776
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLastDetectedOrientation:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    .line 777
    .local v0, "orientation":Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;
    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;->Unknown:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    if-ne v0, v1, :cond_0

    .line 778
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getLayoutOrientation()Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    move-result-object v0

    .line 781
    :cond_0
    sget-object v1, Lcom/sonyericsson/cameracommon/activity/BaseActivity$1;->$SwitchMap$com$sonyericsson$cameracommon$activity$BaseActivity$LayoutOrientation:[I

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 791
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 783
    :pswitch_0
    const/4 v1, 0x1

    goto :goto_0

    .line 789
    :pswitch_1
    const/4 v1, 0x2

    goto :goto_0

    .line 781
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getOrientationDegree()I
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 801
    iget v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLastOrientationDegree:I

    if-eq v0, v1, :cond_0

    .line 802
    iget v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLastOrientationDegree:I

    .line 815
    :goto_0
    return v0

    .line 803
    :cond_0
    iget v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLastDeterminedOrientationDegree:I

    if-eq v0, v1, :cond_1

    .line 805
    iget v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLastDeterminedOrientationDegree:I

    goto :goto_0

    .line 815
    :cond_1
    const/16 v0, 0x10e

    goto :goto_0
.end method

.method protected abstract getParamSharedPrefWrapper()Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;
.end method

.method public getSavingTaskManager()Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mSavingTaskManager:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    return-object v0
.end method

.method public getSensorOrientationDegree()I
    .locals 1

    .prologue
    .line 825
    iget v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mSensorOrientationDegree:I

    return v0
.end method

.method public getStorageController()Lcom/sonyericsson/cameracommon/mediasaving/StorageController;
    .locals 1

    .prologue
    .line 849
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    return-object v0
.end method

.method public getStorageManager()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;
    .locals 1

    .prologue
    .line 841
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    return-object v0
.end method

.method public hasExtraOutputPath()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 946
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mExtraOutput:Landroid/net/Uri;

    if-nez v2, :cond_1

    .line 951
    :cond_0
    :goto_0
    return v1

    .line 949
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mExtraOutput:Landroid/net/Uri;

    invoke-static {p0, v2}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 951
    .local v0, "fixedStoragePath":Ljava/lang/String;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public abstract isAlertDialogOpened()Z
.end method

.method public isAlreadyHighTemperature()Z
    .locals 1

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mThermalAlertReceiver:Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->isAlreadyHighTemperature()Z

    move-result v0

    return v0
.end method

.method public isDeviceInSecurityLock()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 970
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 972
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 974
    const-string v5, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 976
    .local v3, "subject":Ljava/lang/String;
    const-string v5, "keyguard"

    invoke-virtual {p0, v5}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 978
    .local v1, "keyguadManager":Landroid/app/KeyguardManager;
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    .line 981
    .local v2, "restrictedMode":Z
    const-string v5, "start-secure"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    .line 984
    .end local v1    # "keyguadManager":Landroid/app/KeyguardManager;
    .end local v2    # "restrictedMode":Z
    .end local v3    # "subject":Ljava/lang/String;
    :cond_0
    return v4
.end method

.method public abstract isDualStorageAvailable()Z
.end method

.method public isGpsLocationAllowed()Z
    .locals 1

    .prologue
    .line 961
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLocationSettingsReader:Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;->getIsGpsLocationAllowed()Z

    move-result v0

    return v0
.end method

.method public isInLockTaskMode()Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1155
    const/16 v1, 0x15

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v1, v2, :cond_0

    .line 1156
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1157
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v1

    .line 1159
    .end local v0    # "am":Landroid/app/ActivityManager;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public abstract isMenuAvailable()Z
.end method

.method public isNetworkLocationAllowed()Z
    .locals 1

    .prologue
    .line 965
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLocationSettingsReader:Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;->getIsNetworkLocationAllowed()Z

    move-result v0

    return v0
.end method

.method public isOneShot()Z
    .locals 1

    .prologue
    .line 921
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLaunchAsOneShot:Z

    return v0
.end method

.method public isOneShotPhoto()Z
    .locals 1

    .prologue
    .line 926
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLaunchAsOneShotPhoto:Z

    return v0
.end method

.method public isOneShotPhotoSecure()Z
    .locals 1

    .prologue
    .line 931
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLaunchAsOneShotPhotoSecure:Z

    return v0
.end method

.method public isOneShotVideo()Z
    .locals 1

    .prologue
    .line 936
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLaunchAsOneShotVideo:Z

    return v0
.end method

.method public isThermalWarningState()Z
    .locals 1

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mThermalAlertReceiver:Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;->isWarningState()Z

    move-result v0

    return v0
.end method

.method protected keepScreenOn()V
    .locals 2

    .prologue
    .line 559
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 560
    return-void
.end method

.method public logLifeCycleIn(Ljava/lang/String;Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "lifeCycle"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    .prologue
    .line 1122
    # getter for: Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->mPerformanceIds:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;
    invoke-static {p2}, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->access$800(Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;)Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V

    .line 1123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureResource(Ljava/lang/String;)V

    .line 1125
    sget-object v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->ON_CREATE:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->ON_DESTROY:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    if-ne p2, v0, :cond_0

    .line 1130
    :cond_0
    return-void
.end method

.method public logLifeCycleOut(Ljava/lang/String;Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "lifeCycle"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    .prologue
    .line 1141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "End "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureResource(Ljava/lang/String;)V

    .line 1142
    # getter for: Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->mPerformanceIds:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;
    invoke-static {p2}, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->access$800(Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;)Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V

    .line 1144
    sget-object v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;->ON_PAUSE:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LifeCycleIds;

    if-ne p2, v0, :cond_0

    .line 1145
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->outResult()V

    .line 1147
    :cond_0
    return-void
.end method

.method public msgPopupCanceled()V
    .locals 0

    .prologue
    .line 575
    return-void
.end method

.method public msgPopupOpened()V
    .locals 0

    .prologue
    .line 570
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 273
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 275
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_0

    .line 276
    sget v0, Lcom/sonyericsson/cameracommon/R$style;->SomcCameraHoloTheme:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->setTheme(I)V

    .line 279
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->checkOneShot()V

    .line 281
    sget-object v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;->INTENT:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLaunchedBy:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    .line 284
    new-instance v0, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    invoke-direct {v0, p0, p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;-><init>(Landroid/app/Activity;Lcom/sonyericsson/cameracommon/activity/TerminateListener;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    .line 285
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->setMessagePopupStateListener(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopupStateListener;)V

    .line 286
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->addOrienationListener(Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientationChangedListener;)V

    .line 287
    new-instance v0, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getParamSharedPrefWrapper()Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;

    move-result-object v2

    invoke-direct {v0, p0, v1, p0, v2}, Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;-><init>(Landroid/app/Activity;Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver$ThermalAlertReceiverListener;Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mThermalAlertReceiver:Lcom/sonyericsson/cameracommon/thermal/ThermalAlertReceiver;

    .line 290
    new-instance v0, Lcom/sonyericsson/cameracommon/settings/AutoReviewSettings;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/settings/AutoReviewSettings;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mAutoReviewSettings:Lcom/sonyericsson/cameracommon/settings/AutoReviewSettings;

    .line 291
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->createCommonSettings()V

    .line 297
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLocationSettingsReader:Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;

    .line 300
    invoke-static {}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->getInstance()Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->onCreate(Landroid/content/Context;)V

    .line 301
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 387
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 390
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mStorageListenerSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 393
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->removeOrienationListener(Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientationChangedListener;)V

    .line 394
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->releaseContext()V

    .line 395
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    .line 398
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLayoutOrientationChangedListenerSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 399
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 350
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 353
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mIsReceiverResistered:Z

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mExtendedBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 355
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mIsReceiverResistered:Z

    .line 359
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->disableAutoOffTimer()V

    .line 362
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->unmuteSound(I)V

    .line 364
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mCommonSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->suspend()V

    .line 365
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->release()V

    .line 368
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->disableOrientation()V

    .line 370
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->removeStorageListener(Lcom/sonyericsson/cameracommon/activity/BaseActivity$StorageEventListener;)V

    .line 372
    invoke-static {}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->getInstance()Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->onPause(Z)V

    .line 375
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 312
    const-string v0, "android.intent.action.MEDIA_MOUNTED"

    const-string v1, "file"

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->registerIntentFilter(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    const-string v1, "file"

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->registerIntentFilter(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const-string v0, "android.intent.action.MEDIA_EJECT"

    const-string v1, "file"

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->registerIntentFilter(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const-string v0, "android.intent.action.MEDIA_SCANNER_FINISHED"

    const-string v1, "file"

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->registerIntentFilter(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 318
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 319
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 321
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mCommonSettings:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->load()V

    .line 322
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->updateBalloonTipsCounter()V

    .line 324
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLocationSettingsReader:Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;->readLocationSettings(Landroid/content/Context;)V

    .line 327
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->enableAutoOffTimer()V

    .line 330
    sget-object v0, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;->Unknown:Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getOrientationDegree(Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mSensorOrientationDegree:I

    .line 331
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->addStorageListener(Lcom/sonyericsson/cameracommon/activity/BaseActivity$StorageEventListener;)V

    .line 333
    invoke-static {}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->getInstance()Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->onResume()V

    .line 336
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 404
    const/4 v0, 0x0

    return v0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 382
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 383
    return-void
.end method

.method public pauseAudioPlayback()V
    .locals 3

    .prologue
    .line 448
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 449
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 452
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 453
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->muteSound(I)V

    .line 454
    return-void
.end method

.method public readLocationSettings()V
    .locals 1

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLocationSettingsReader:Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;->readLocationSettings(Landroid/content/Context;)V

    .line 1151
    return-void
.end method

.method public removeOrienationListener(Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientationChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientationChangedListener;

    .prologue
    .line 612
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mLayoutOrientationChangedListenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 613
    return-void
.end method

.method public removeStorageListener(Lcom/sonyericsson/cameracommon/activity/BaseActivity$StorageEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity$StorageEventListener;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mStorageListenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mStorageListenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 240
    :cond_0
    return-void
.end method

.method public final declared-synchronized restartAutoOffTimer()V
    .locals 1

    .prologue
    .line 512
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->stopAutoOffTimer()V

    .line 513
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->startAutoOffTimer()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 514
    monitor-exit p0

    return-void

    .line 512
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract resumeAll()V
.end method

.method public abstract setAlertDialogIsOpened(Z)V
.end method

.method public shouldAddOnlyNewContent()Z
    .locals 1

    .prologue
    .line 1069
    const/4 v0, 0x0

    return v0
.end method

.method public shouldAddToMediaStore()Z
    .locals 1

    .prologue
    .line 956
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mAddToMediaStore:Z

    return v0
.end method

.method protected startAutoOffTimer()Z
    .locals 1

    .prologue
    .line 461
    const v0, 0x2bf20

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->startAutoOffTimer(I)Z

    move-result v0

    return v0
.end method

.method protected final declared-synchronized startAutoOffTimer(I)Z
    .locals 6
    .param p1, "autoOffTimeoutDuration"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 465
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mIsAutoOffTimerEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 477
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 469
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mAutoOffTimer:Ljava/util/Timer;

    if-nez v2, :cond_0

    .line 471
    new-instance v0, Ljava/util/Timer;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mAutoOffTimer:Ljava/util/Timer;

    .line 474
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mAutoOffTimer:Ljava/util/Timer;

    new-instance v2, Lcom/sonyericsson/cameracommon/activity/BaseActivity$AutoOffTimerTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sonyericsson/cameracommon/activity/BaseActivity$AutoOffTimerTask;-><init>(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/activity/BaseActivity$1;)V

    int-to-long v4, p1

    invoke-virtual {v0, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 475
    goto :goto_0

    .line 465
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateRemain()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1060
    sget-object v1, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->UPDATE_REMAIN:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    const/4 v4, 0x1

    invoke-static {v1, v4}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTimeOverwrite(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V

    .line 1061
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mSavingTaskManager:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->getExpectedTotalSavedPicturesSize()J

    move-result-wide v2

    .line 1062
    .local v2, "reservedSize":J
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    invoke-virtual {v1, v2, v3, v5}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->updateRemain(JZ)J

    .line 1063
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->isReady()Z

    move-result v0

    .line 1064
    .local v0, "isReady":Z
    sget-object v1, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->UPDATE_REMAIN:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-static {v1, v5}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V

    .line 1065
    return v0
.end method
