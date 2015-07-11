.class public abstract Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;
.super Ljava/lang/Object;
.source "ViewFinder.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientationChangedListener;
.implements Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageDialogStateListener;
.implements Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;
.implements Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;
.implements Lcom/sonyericsson/cameracommon/viewfinder/ViewFinderInterface;
.implements Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/OnClickCapturingModeButtonListener;
.implements Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector$OnModeFinishListener;
.implements Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector$OnModeSelectListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$2;,
        Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$CheckBoxListener;,
        Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$StartupAlertDialogListener;,
        Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$SetupCapturingModeSelectorTask;
    }
.end annotation


# static fields
.field public static final SHARED_PREFS_KEY_THERMAL_DISABLED:Ljava/lang/String; = "THERMAL_DISABLED"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

.field private mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

.field private mCapturingModeSelector:Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;

.field private mInflateFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/sonyericsson/cameracommon/viewfinder/InflateItem;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mInflateItemMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sonyericsson/cameracommon/viewfinder/InflateItem;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private mIsRequestedLaterSetup:Z

.field private mLayoutPattern:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

.field private mLayoutPatternApplier:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPatternApplier;

.field private mPreInflatedHeadUpDispay:Landroid/view/View;

.field protected mPref:Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;

.field private mTargetPreviewRect:Landroid/graphics/Rect;

.field private mThermalDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const-class v0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/viewfinder/LayoutPatternApplier;Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;)V
    .locals 2
    .param p1, "activity"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    .param p2, "visibilityContoller"    # Lcom/sonyericsson/cameracommon/viewfinder/LayoutPatternApplier;
    .param p3, "pref"    # Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;

    .prologue
    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mIsRequestedLaterSetup:Z

    .line 320
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .line 321
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;-><init>(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    .line 322
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mLayoutPatternApplier:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPatternApplier;

    .line 323
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mPref:Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;

    .line 326
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->addOrienationListener(Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientationChangedListener;)V

    .line 327
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;)Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->isSetupNeeded()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->setupCapturingModeSelectorLater()V

    return-void
.end method

.method private getThermalString()I
    .locals 1

    .prologue
    .line 753
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/BrandConfig;->isVerizonBrand()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 754
    sget v0, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_dialog_high_temp_vzw_txt:I

    .line 756
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_dialog_high_temp_txt:I

    goto :goto_0
.end method

.method private isAcquired()Z
    .locals 3

    .prologue
    .line 230
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getGeoTagManager()Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->isGpsAcquired()Z

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getGeoTagManager()Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->isNetworkAcquired()Z

    move-result v2

    or-int v0, v1, v2

    .line 233
    .local v0, "isAcquired":Z
    return v0
.end method

.method private isGeoTagEnabled()Z
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->GEO_TAG:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->get(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/PresetConfigurationResolver;->isGeoTagEnabled(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private isSetupNeeded()Z
    .locals 1

    .prologue
    .line 601
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mIsRequestedLaterSetup:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mCapturingModeSelector:Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;

    if-nez v0, :cond_0

    .line 603
    const/4 v0, 0x1

    .line 606
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setupCapturingModeSelectorLater()V
    .locals 1

    .prologue
    .line 611
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->setupCapturingModeSelector()V

    .line 612
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getCurrentOrientation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->setOrientation(I)V

    .line 613
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mIsRequestedLaterSetup:Z

    .line 614
    return-void
.end method

.method private setupHeadUpDisplay()V
    .locals 3

    .prologue
    .line 364
    const/4 v0, 0x0

    .line 365
    .local v0, "isReload":Z
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mPreInflatedHeadUpDispay:Landroid/view/View;

    if-nez v1, :cond_0

    .line 366
    const/4 v0, 0x1

    .line 370
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mPreInflatedHeadUpDispay:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 371
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mPreInflatedHeadUpDispay:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->setPreInflatedHeadUpDisplay(Landroid/view/View;)V

    .line 372
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mPreInflatedHeadUpDispay:Landroid/view/View;

    .line 375
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getOrientation()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->setOrientation(I)V

    .line 378
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->getThumbnailClickListener()Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailClickListener;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->setup(Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/OnClickCapturingModeButtonListener;Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailClickListener;)V

    .line 388
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->updateIndicatorState()V

    .line 390
    if-nez v0, :cond_2

    .line 391
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->getThumbnailClickListener()Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->reloadContentsViewController(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailClickListener;)V

    .line 396
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getGeoTagManager()Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 397
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getGeoTagManager()Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->setLocationAcquiredListener(Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;)V

    .line 400
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getStorageManager()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 401
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getStorageManager()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->addStorageListener(Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;)V

    .line 403
    :cond_4
    return-void
.end method

.method private updateIndicatorState()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 407
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->GEO_TAG:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->get(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/utility/PresetConfigurationResolver;->isGeoTagEnabled(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 411
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getGeoTagManager()Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 412
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getGeoTagManager()Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->isAcquiring()Z

    move-result v0

    .line 413
    .local v0, "acquiring":Z
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getGeoTagIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;->set(Z)V

    .line 414
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getGeoTagIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    move-result-object v3

    if-nez v0, :cond_1

    :goto_0
    invoke-virtual {v3, v1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;->isAcquired(Z)V

    .line 419
    .end local v0    # "acquiring":Z
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->updateLowMemoryIndicator()V

    .line 420
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->updateThermalIndicator()V

    .line 421
    return-void

    .restart local v0    # "acquiring":Z
    :cond_1
    move v1, v2

    .line 414
    goto :goto_0

    .line 417
    .end local v0    # "acquiring":Z
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getGeoTagIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;->set(Z)V

    goto :goto_1
.end method

.method private updateLowMemoryIndicator()V
    .locals 2

    .prologue
    .line 427
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getLowMemoryIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    move-result-object v1

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getStorageManager()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->hasEnoughFreeSpace()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->set(Z)V

    .line 429
    return-void

    .line 427
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateThermalIndicator()V
    .locals 2

    .prologue
    .line 435
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getThermalIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->isThermalWarningState()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->set(Z)V

    .line 436
    return-void
.end method


# virtual methods
.method public changeLayoutTo(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V
    .locals 2
    .param p1, "pattern"    # Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->isHeadUpDesplayReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mLayoutPatternApplier:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPatternApplier;

    invoke-interface {v0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPatternApplier;->apply(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V

    .line 212
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mLayoutPattern:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    .line 214
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->PREVIEW:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getGeoTagIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    move-result-object v0

    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->isGeoTagEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;->set(Z)V

    .line 217
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getGeoTagManager()Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getGeoTagIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    move-result-object v0

    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->isAcquired()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;->isAcquired(Z)V

    goto :goto_0
.end method

.method protected clearPreInflatedViews()V
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mInflateItemMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 688
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mInflateItemMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 689
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mInflateItemMap:Ljava/util/Map;

    .line 691
    :cond_0
    return-void
.end method

.method public closeCapturingModeSelector()V
    .locals 2

    .prologue
    .line 481
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->isCapturingModeSelectorOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mCapturingModeSelector:Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;

    invoke-virtual {v0}, Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;->close()V

    .line 483
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 486
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->onCloseCapturingModeSelector()V

    .line 488
    :cond_0
    return-void
.end method

.method protected computePreviewRect(Landroid/app/Activity;II)Landroid/graphics/Rect;
    .locals 4
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "previewWidth"    # I
    .param p3, "previewHeight"    # I

    .prologue
    const/4 v3, 0x0

    .line 160
    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 172
    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->TAG:Ljava/lang/String;

    const-string v2, "Preview size is not set."

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 177
    :goto_0
    return-object v0

    :cond_0
    int-to-float v1, p2

    int-to-float v2, p3

    div-float/2addr v1, v2

    invoke-static {p1, v1}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getSurfaceRect(Landroid/content/Context;F)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0
.end method

.method protected disableAccessibilityTalkBack()V
    .locals 2

    .prologue
    .line 650
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getRootView()Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/cameracommon/utility/AccessibilityEventFilter;

    invoke-direct {v1}, Lcom/sonyericsson/cameracommon/utility/AccessibilityEventFilter;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 651
    return-void
.end method

.method protected getActivity()Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    return-object v0
.end method

.method protected getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    return-object v0
.end method

.method public getCurrentLayoutPattern()Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;
    .locals 1

    .prologue
    .line 844
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mLayoutPattern:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    return-object v0
.end method

.method protected getLayoutPatternApplier()Lcom/sonyericsson/cameracommon/viewfinder/LayoutPatternApplier;
    .locals 1

    .prologue
    .line 840
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mLayoutPatternApplier:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPatternApplier;

    return-object v0
.end method

.method public getPreInflatedView(Lcom/sonyericsson/cameracommon/viewfinder/InflateItem;)Ljava/util/List;
    .locals 1
    .param p1, "id"    # Lcom/sonyericsson/cameracommon/viewfinder/InflateItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/cameracommon/viewfinder/InflateItem;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 708
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mInflateItemMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 709
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mInflateItemMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 711
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getThermalDialogOnCancelListener()Landroid/content/DialogInterface$OnCancelListener;
    .locals 1

    .prologue
    .line 836
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getThermalDialogOnClickListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .prologue
    .line 832
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getThumbnailClickListener()Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailClickListener;
    .locals 1

    .prologue
    .line 335
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$1;-><init>(Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;)V

    return-object v0
.end method

.method protected invalidatePreviewSize()V
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mTargetPreviewRect:Landroid/graphics/Rect;

    .line 147
    return-void
.end method

.method public isCapturingModeSelectorOpened()Z
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mCapturingModeSelector:Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;

    if-nez v0, :cond_0

    .line 626
    const/4 v0, 0x0

    .line 628
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mCapturingModeSelector:Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;

    invoke-virtual {v0}, Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;->isOpened()Z

    move-result v0

    goto :goto_0
.end method

.method public isHeadUpDesplayReady()Z
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->isHeadUpDesplayReady()Z

    move-result v0

    return v0
.end method

.method public isInflated()Z
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mInflateItemMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isInvalidatedPreviewSize()Z
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mTargetPreviewRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isRequestingPreviewSizeChange()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 150
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->isInvalidatedPreviewSize()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 153
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mTargetPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getPreview()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mTargetPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getPreview()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    if-eq v1, v2, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected joinInflateTask()V
    .locals 3

    .prologue
    .line 668
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mInflateFuture:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_0

    .line 670
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mInflateFuture:Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mInflateItemMap:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 676
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mInflateFuture:Ljava/util/concurrent/Future;

    .line 680
    :cond_0
    return-void

    .line 671
    :catch_0
    move-exception v0

    .line 672
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->TAG:Ljava/lang/String;

    const-string v2, "join"

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 673
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 674
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->TAG:Ljava/lang/String;

    const-string v2, "join"

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onAcquired(ZZ)V
    .locals 2
    .param p1, "gps"    # Z
    .param p2, "net"    # Z

    .prologue
    .line 447
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->isHeadUpDesplayReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 453
    :goto_0
    return-void

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getGeoTagIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    move-result-object v1

    if-nez p1, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;->isAcquired(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onAvailableSizeUpdated(J)V
    .locals 2
    .param p1, "available"    # J

    .prologue
    .line 518
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getLowMemoryIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    move-result-object v1

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getStorageManager()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->hasEnoughFreeSpace()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->set(Z)V

    .line 520
    return-void

    .line 518
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCaptureDone()V
    .locals 1

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->isHeadUpDesplayReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 299
    :goto_0
    return-void

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->clearTouched()V

    goto :goto_0
.end method

.method public onClickCapturingModeButton(Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;)V
    .locals 2
    .param p1, "view"    # Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;

    .prologue
    .line 638
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->isSetupNeeded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->setupCapturingModeSelectorLater()V

    .line 640
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;->getCurrentCapturingMode()Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButtonAttributes;

    move-result-object v0

    .line 641
    .local v0, "mode":Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButtonAttributes;
    if-eqz v0, :cond_1

    .line 642
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButtonAttributes;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->openCapturingModeSelector(Ljava/lang/String;)V

    .line 644
    :cond_1
    return-void
.end method

.method protected abstract onCloseCapturingModeSelector()V
.end method

.method public onDestinationToSaveChanged()V
    .locals 2

    .prologue
    .line 502
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->isHeadUpDesplayReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 511
    :goto_0
    return-void

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->getThumbnailClickListener()Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->reloadContentsViewController(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailClickListener;)V

    goto :goto_0
.end method

.method public onDisabled()V
    .locals 2

    .prologue
    .line 475
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;->OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->set(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    .line 476
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getGeoTagIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;->set(Z)V

    .line 477
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->readLocationSettings()V

    .line 478
    return-void
.end method

.method public onLayoutOrientationChanged(Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;)V
    .locals 3
    .param p1, "changed"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;

    .prologue
    .line 540
    const/4 v0, 0x2

    .line 541
    .local v0, "orientation":I
    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$2;->$SwitchMap$com$sonyericsson$cameracommon$activity$BaseActivity$LayoutOrientation:[I

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 547
    const/4 v0, 0x2

    .line 550
    :goto_0
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->setOrientation(I)V

    .line 551
    return-void

    .line 543
    :pswitch_0
    const/4 v0, 0x1

    .line 544
    goto :goto_0

    .line 541
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onLost()V
    .locals 2

    .prologue
    .line 461
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->isHeadUpDesplayReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 467
    :goto_0
    return-void

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getGeoTagIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;->isAcquired(Z)V

    goto :goto_0
.end method

.method protected onNotifyThermalStatus(Z)V
    .locals 1
    .param p1, "isWarning"    # Z

    .prologue
    .line 716
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getThermalIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 717
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getThermalIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->set(Z)V

    .line 719
    :cond_0
    return-void
.end method

.method protected abstract onOpenCapturingModeSelector()V
.end method

.method public onShutterDone(Z)V
    .locals 1
    .param p1, "isThumbnailFeedbackShown"    # Z

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->isHeadUpDesplayReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->clearTouched()V

    .line 312
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->getActivity()Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->isOneShot()Z

    move-result v0

    if-nez v0, :cond_0

    .line 314
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->show()V

    goto :goto_0
.end method

.method public onStorageStateChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "storage"    # Ljava/lang/String;

    .prologue
    .line 492
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->isHeadUpDesplayReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 498
    :cond_0
    return-void
.end method

.method public onZoomChanged(II)V
    .locals 1
    .param p1, "current"    # I
    .param p2, "max"    # I

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->isHeadUpDesplayReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 277
    :goto_0
    return-void

    .line 276
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getZoomBar()Lcom/sonyericsson/cameracommon/zoombar/Zoombar;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->zoom(II)I

    goto :goto_0
.end method

.method public onZoomChanged(III)V
    .locals 1
    .param p1, "current"    # I
    .param p2, "max"    # I
    .param p3, "maxSr"    # I

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->isHeadUpDesplayReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    :goto_0
    return-void

    .line 288
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getZoomBar()Lcom/sonyericsson/cameracommon/zoombar/Zoombar;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p2}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->onZoomChanged(III)I

    goto :goto_0
.end method

.method public openCapturingModeSelector(Ljava/lang/String;)V
    .locals 1
    .param p1, "modeName"    # Ljava/lang/String;

    .prologue
    .line 523
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->isCapturingModeSelectorOpened()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mCapturingModeSelector:Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mCapturingModeSelector:Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;

    invoke-virtual {v0, p1}, Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;->open(Ljava/lang/String;)V

    .line 528
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->onOpenCapturingModeSelector()V

    .line 531
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getBalloonTips()Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;->hide()V

    .line 533
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getBalloonTips()Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;->stopBalloonTipsCounter()V

    .line 535
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->pause()V

    .line 107
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->closeCapturingModeSelector()V

    .line 108
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->releaseCapturingModeSelector()V

    .line 109
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->release()V

    .line 114
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->releaseCapturingModeSelector()V

    .line 116
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->removeOrienationListener(Lcom/sonyericsson/cameracommon/activity/BaseActivity$LayoutOrientationChangedListener;)V

    .line 119
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getGeoTagManager()Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getGeoTagManager()Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->setLocationAcquiredListener(Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;)V

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getStorageManager()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getStorageManager()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->removeStorageListener(Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;)V

    .line 126
    :cond_1
    return-void
.end method

.method public releaseCapturingModeSelector()V
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mCapturingModeSelector:Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mCapturingModeSelector:Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;

    invoke-virtual {v0}, Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;->release()V

    .line 619
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mCapturingModeSelector:Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;

    .line 621
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mIsRequestedLaterSetup:Z

    .line 622
    return-void
.end method

.method public requestSetupHeadUpDisplay()V
    .locals 1

    .prologue
    .line 242
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->setupHeadUpDisplay()V

    .line 243
    const/16 v0, 0x3e8

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->outResultDelay(I)V

    .line 244
    return-void
.end method

.method protected requestToDimSystemUi()V
    .locals 1

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->requestToDimSystemUi()V

    .line 192
    return-void
.end method

.method protected requestToRecoverSystemUi()V
    .locals 1

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->requestToRecoverSystemUi()V

    .line 188
    return-void
.end method

.method protected requestToRemoveSystemUi()V
    .locals 1

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->requestToRemoveSystemUi()V

    .line 184
    return-void
.end method

.method protected requestToRestoreSystemUi()V
    .locals 1

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->requestToRestoreSystemUi()V

    .line 196
    return-void
.end method

.method public requestUpdateSurfaceSize(II)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 248
    int-to-float v4, p1

    int-to-float v5, p2

    div-float v0, v4, v5

    .line 249
    .local v0, "aspectRatio":F
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-static {v4, v0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getSurfaceRect(Landroid/content/Context;F)Landroid/graphics/Rect;

    move-result-object v1

    .line 250
    .local v1, "newTarget":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mTargetPreviewRect:Landroid/graphics/Rect;

    if-eqz v4, :cond_0

    .line 251
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mTargetPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mTargetPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 267
    :goto_0
    return-void

    .line 258
    :cond_0
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-static {v4, v0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getSurfaceRect(Landroid/content/Context;F)Landroid/graphics/Rect;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mTargetPreviewRect:Landroid/graphics/Rect;

    .line 260
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getPreview()Landroid/view/View;

    move-result-object v3

    .line 261
    .local v3, "preview":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 262
    .local v2, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mTargetPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 263
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mTargetPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 264
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mTargetPreviewRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setLeft(I)V

    .line 265
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mTargetPreviewRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setTop(I)V

    .line 266
    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    goto :goto_0
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->isHeadUpDesplayReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->hideContentsViewController()V

    .line 99
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->setupBlankScreen()V

    .line 100
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getZoomBar()Lcom/sonyericsson/cameracommon/zoombar/Zoombar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->initZoom()V

    .line 102
    :cond_0
    return-void
.end method

.method protected setOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 554
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->setOrientation(I)V

    .line 555
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->isHeadUpDesplayReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mCapturingModeSelector:Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mCapturingModeSelector:Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getCurrentOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;->setUiOrientation(I)V

    .line 560
    :cond_0
    return-void
.end method

.method protected setOrientation(II)V
    .locals 2
    .param p1, "sensorOrientation"    # I
    .param p2, "recordingOrientation"    # I

    .prologue
    .line 563
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->setOrientation(II)V

    .line 564
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->isHeadUpDesplayReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mCapturingModeSelector:Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mCapturingModeSelector:Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getCurrentOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;->setUiOrientation(I)V

    .line 569
    :cond_0
    return-void
.end method

.method public setPreInflatedHeadUpDisplay(Landroid/view/View;)V
    .locals 0
    .param p1, "headUpDisplay"    # Landroid/view/View;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mPreInflatedHeadUpDispay:Landroid/view/View;

    .line 238
    return-void
.end method

.method protected setup(Landroid/view/View;)V
    .locals 3
    .param p1, "surface"    # Landroid/view/View;

    .prologue
    .line 353
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mLayoutPatternApplier:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPatternApplier;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->isOneShot()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPatternApplier;->setup(Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;Z)V

    .line 354
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->attachToWindow(Landroid/view/View;)V

    .line 356
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->setupRotatableToast(Landroid/app/Activity;)V

    .line 357
    return-void
.end method

.method public setupCapturingModeSelector()V
    .locals 3

    .prologue
    .line 572
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mCapturingModeSelector:Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;

    if-nez v0, :cond_0

    .line 573
    new-instance v0, Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->getBaseLayout()Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getLazyInflatedUiComponentContainerFront()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mCapturingModeSelector:Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;

    .line 576
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mCapturingModeSelector:Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;

    invoke-virtual {v0, p0}, Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;->setOnModeSelectListener(Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector$OnModeSelectListener;)V

    .line 577
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mCapturingModeSelector:Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;

    invoke-virtual {v0, p0}, Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;->setOnModeFinishListener(Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector$OnModeFinishListener;)V

    .line 578
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mCapturingModeSelector:Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mBaseLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getCurrentOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;->setUiOrientation(I)V

    .line 580
    :cond_0
    return-void
.end method

.method protected showThermalDialog()V
    .locals 1

    .prologue
    .line 749
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->getThermalString()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->showThermalDialog(I)V

    .line 750
    return-void
.end method

.method protected showThermalDialog(I)V
    .locals 12
    .param p1, "id"    # I

    .prologue
    .line 761
    new-instance v11, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$StartupAlertDialogListener;

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mPref:Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;

    const-string v2, "THERMAL_DISABLED"

    invoke-direct {v11, p0, v0, v2}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$StartupAlertDialogListener;-><init>(Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;Lcom/sonyericsson/cameracommon/utility/ParamSharedPrefWrapper;Ljava/lang/String;)V

    .line 764
    .local v11, "listener":Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$StartupAlertDialogListener;
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    if-nez v0, :cond_1

    .line 798
    :cond_0
    :goto_0
    return-void

    .line 769
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v10

    .line 770
    .local v10, "inflater":Landroid/view/LayoutInflater;
    if-eqz v10, :cond_0

    .line 775
    sget v0, Lcom/sonyericsson/cameracommon/R$layout;->thermal_popup_content:I

    const/4 v2, 0x0

    invoke-virtual {v10, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 778
    .local v1, "thermalView":Landroid/view/View;
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->header_text:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 779
    .local v9, "header":Landroid/widget/TextView;
    invoke-virtual {v9, p1}, Landroid/widget/TextView;->setText(I)V

    .line 782
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->check_box:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    .line 783
    .local v7, "checkBox":Landroid/widget/CheckBox;
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->footer_text:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 784
    .local v8, "footer":Landroid/widget/TextView;
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$CheckBoxListener;

    const/4 v2, -0x1

    invoke-direct {v0, v11, v8, v2}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$CheckBoxListener;-><init>(Landroid/widget/CompoundButton$OnCheckedChangeListener;Landroid/widget/TextView;I)V

    invoke-virtual {v7, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 787
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getMessagePopup()Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    move-result-object v0

    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_dialog_high_temp_title_txt:I

    const/4 v3, 0x0

    sget v4, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_ok_txt:I

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->getThermalDialogOnClickListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->getThermalDialogOnCancelListener()Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showOkAndCustomViewContinuouslyUsed(Landroid/view/View;IZILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mThermalDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 795
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mThermalDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_0

    .line 796
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mThermalDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    invoke-virtual {v0, v11}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0
.end method

.method protected startInflateTask(Landroid/view/LayoutInflater;Ljava/util/List;)V
    .locals 2
    .param p1, "layoutInflater"    # Landroid/view/LayoutInflater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/cameracommon/viewfinder/InflateItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 657
    .local p2, "inflateItemList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/cameracommon/viewfinder/InflateItem;>;"
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 658
    .local v0, "executor":Ljava/util/concurrent/ExecutorService;
    new-instance v1, Lcom/sonyericsson/cameracommon/viewfinder/InflateTask;

    invoke-direct {v1, p1, p2}, Lcom/sonyericsson/cameracommon/viewfinder/InflateTask;-><init>(Landroid/view/LayoutInflater;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mInflateFuture:Ljava/util/concurrent/Future;

    .line 660
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 663
    return-void
.end method

.method public startSetupCapturingModeSelectorTask()V
    .locals 3

    .prologue
    .line 589
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;->mIsRequestedLaterSetup:Z

    .line 590
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$SetupCapturingModeSelectorTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$SetupCapturingModeSelectorTask;-><init>(Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 591
    return-void
.end method
