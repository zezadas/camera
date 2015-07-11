.class public Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;
.super Ljava/lang/Object;
.source "GeotagManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager$6;,
        Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager$ConfirmLocationAccessDialogListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAcquiring:Z

.field private final mContext:Landroid/content/Context;

.field private mIsItemChecked:Z

.field private mLocationAcquiredListener:Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;

.field private mLocationListenerGps:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

.field private mLocationListenerNetwork:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

.field private mLocationManager:Landroid/location/LocationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mAcquiring:Z

    .line 59
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mContext:Landroid/content/Context;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;
    .param p1, "x1"    # Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;
    .param p2, "x2"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    .param p3, "x3"    # Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;
    .param p4, "x4"    # Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->checkLocationService(Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mIsItemChecked:Z

    return v0
.end method

.method static synthetic access$102(Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mIsItemChecked:Z

    return p1
.end method

.method private checkLocationService(Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;)V
    .locals 2
    .param p1, "geotag"    # Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;
    .param p2, "activity"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    .param p3, "settingDialogController"    # Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;
    .param p4, "listener"    # Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;

    .prologue
    .line 291
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->updateLocation(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    .line 292
    invoke-virtual {p2}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->set(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    .line 294
    if-eqz p4, :cond_0

    .line 295
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;->ON:Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;

    if-ne p1, v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p4, v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;->onSet(Z)V

    .line 298
    :cond_0
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;->ON:Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;

    if-ne p1, v0, :cond_2

    .line 299
    invoke-static {p2}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->isLocationServiceAvailable(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 300
    if-eqz p3, :cond_1

    .line 301
    invoke-interface {p3}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;->closeCurrentDialog()V

    .line 304
    :cond_1
    invoke-virtual {p2}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;->ON:Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->set(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    .line 305
    invoke-virtual {p2}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getMessagePopup()Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    move-result-object v0

    invoke-virtual {v0, p2, p4}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showLaunchSettingAppDialog(Landroid/app/Activity;Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;)V

    .line 308
    :cond_2
    return-void

    .line 295
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getGeotag(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;)Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;
    .locals 2
    .param p0, "activity"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    .param p1, "originalValue"    # Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;

    .prologue
    .line 362
    move-object v0, p1

    .line 363
    .local v0, "modifiedValue":Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;
    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;->ON:Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;

    if-ne p1, v1, :cond_0

    .line 364
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->isLocationServiceAvailable(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 365
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;->OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;

    .line 368
    :cond_0
    return-object v0
.end method

.method private static isLocationServiceAvailable(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)Z
    .locals 1
    .param p0, "activity"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;

    .prologue
    .line 373
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->readLocationSettings()V

    .line 374
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->isGpsLocationAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->isNetworkLocationAllowed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public assignResource()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerGps:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    const-string v1, "gps"

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerGps:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerNetwork:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    if-nez v0, :cond_1

    .line 71
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    const-string v1, "network"

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerNetwork:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_2

    .line 77
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationManager:Landroid/location/LocationManager;

    .line 80
    :cond_2
    return-void
.end method

.method public confirmLocationService(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;)V
    .locals 9
    .param p1, "activity"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    .param p2, "settings"    # Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;
    .param p3, "listener"    # Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 414
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->GEO_TAG:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    invoke-virtual {p2, v0}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->get(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    move-result-object v8

    check-cast v8, Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;

    .line 415
    .local v8, "geotag":Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;->ON:Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;

    if-ne v8, v0, :cond_0

    invoke-static {p1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->isLocationServiceAvailable(Lcom/sonyericsson/cameracommon/activity/BaseActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;->ON:Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;

    invoke-virtual {p2, v0}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->set(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    .line 417
    invoke-interface {p3, v2}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;->onSet(Z)V

    .line 424
    :goto_0
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->DO_NOT_SHOW_AGAIN_CHECK_FOR_GEOTAG_DIALOG:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    invoke-virtual {p2, v0}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->get(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    move-result-object v7

    check-cast v7, Lcom/sonyericsson/cameracommon/commonsetting/values/DoNotShowAgainCheckForGeotagDialog;

    .line 428
    .local v7, "check":Lcom/sonyericsson/cameracommon/commonsetting/values/DoNotShowAgainCheckForGeotagDialog;
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/DoNotShowAgainCheckForGeotagDialog;->CHECKED:Lcom/sonyericsson/cameracommon/commonsetting/values/DoNotShowAgainCheckForGeotagDialog;

    if-ne v7, v0, :cond_1

    .line 467
    :goto_1
    :pswitch_0
    return-void

    .line 419
    .end local v7    # "check":Lcom/sonyericsson/cameracommon/commonsetting/values/DoNotShowAgainCheckForGeotagDialog;
    :cond_0
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;->OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;

    invoke-virtual {p2, v0}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->set(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    .line 420
    invoke-interface {p3, v3}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;->onSet(Z)V

    .line 421
    sget-object v8, Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;->OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;

    goto :goto_0

    .line 433
    .restart local v7    # "check":Lcom/sonyericsson/cameracommon/commonsetting/values/DoNotShowAgainCheckForGeotagDialog;
    :cond_1
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager$6;->$SwitchMap$com$sonyericsson$cameracommon$commonsetting$values$Geotag:[I

    invoke-virtual {v8}, Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 439
    iput-boolean v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mIsItemChecked:Z

    .line 440
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getMessagePopup()Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    move-result-object v0

    new-instance v3, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager$ConfirmLocationAccessDialogListener;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager$ConfirmLocationAccessDialogListener;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;)V

    new-instance v4, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager$ConfirmLocationAccessDialogListener;

    invoke-direct {v4, p0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager$ConfirmLocationAccessDialogListener;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;)V

    new-instance v5, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager$4;

    invoke-direct {v5, p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager$4;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;Lcom/sonyericsson/cameracommon/activity/BaseActivity;)V

    new-instance v6, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager$5;

    invoke-direct {v6, p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager$5;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;)V

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showConfirmLocationAccess(Landroid/app/Activity;ZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_1

    .line 433
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getCurrentLocation()Landroid/location/Location;
    .locals 3

    .prologue
    .line 184
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerNetwork:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->current()Landroid/location/Location;

    move-result-object v1

    .line 185
    .local v1, "locNetwork":Landroid/location/Location;
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerGps:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->current()Landroid/location/Location;

    move-result-object v0

    .line 187
    .local v0, "locGps":Landroid/location/Location;
    if-eqz v0, :cond_0

    .line 194
    .end local v0    # "locGps":Landroid/location/Location;
    :goto_0
    return-object v0

    .line 190
    .restart local v0    # "locGps":Landroid/location/Location;
    :cond_0
    if-eqz v1, :cond_1

    move-object v0, v1

    .line 191
    goto :goto_0

    .line 194
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLocationListener(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 378
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerGps:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerGps:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mProvider:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerGps:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    .line 388
    :goto_0
    return-object v0

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerNetwork:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    if-eqz v0, :cond_1

    .line 384
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerNetwork:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->mProvider:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 385
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerNetwork:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    goto :goto_0

    .line 388
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAcquiring()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mAcquiring:Z

    return v0
.end method

.method public isDisabled()Z
    .locals 3

    .prologue
    .line 393
    const/4 v0, 0x0

    .line 394
    .local v0, "gps":Z
    const/4 v1, 0x0

    .line 396
    .local v1, "net":Z
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerGps:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    if-eqz v2, :cond_0

    .line 397
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerGps:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->isDisabled()Z

    move-result v0

    .line 400
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerNetwork:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    if-eqz v2, :cond_1

    .line 401
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerNetwork:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->isDisabled()Z

    move-result v1

    .line 404
    :cond_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isGpsAcquired()Z
    .locals 2

    .prologue
    .line 234
    const/4 v0, 0x0

    .line 235
    .local v0, "isAcquired":Z
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerGps:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    if-eqz v1, :cond_0

    .line 236
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerGps:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->current()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 237
    const/4 v0, 0x1

    .line 241
    :cond_0
    return v0
.end method

.method public isNetworkAcquired()Z
    .locals 2

    .prologue
    .line 249
    const/4 v0, 0x0

    .line 250
    .local v0, "isAcquired":Z
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerNetwork:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    if-eqz v1, :cond_0

    .line 251
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerNetwork:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->current()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 252
    const/4 v0, 0x1

    .line 256
    :cond_0
    return v0
.end method

.method public notifyStatus()V
    .locals 3

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->isDisabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 206
    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;->OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;

    invoke-virtual {p0, v2}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->updateLocation(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    .line 207
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationAcquiredListener:Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;

    if-eqz v2, :cond_0

    .line 208
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationAcquiredListener:Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;

    invoke-interface {v2}, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;->onDisabled()V

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->isGpsAcquired()Z

    move-result v0

    .line 214
    .local v0, "gps":Z
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->isNetworkAcquired()Z

    move-result v1

    .line 216
    .local v1, "net":Z
    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    .line 217
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationAcquiredListener:Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;

    if-eqz v2, :cond_0

    .line 219
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationAcquiredListener:Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;

    invoke-interface {v2, v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;->onAcquired(ZZ)V

    goto :goto_0

    .line 222
    :cond_3
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationAcquiredListener:Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;

    if-eqz v2, :cond_0

    .line 224
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationAcquiredListener:Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;

    invoke-interface {v2}, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;->onLost()V

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 97
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->setLocationAcquiredListener(Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;)V

    .line 98
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerGps:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    .line 99
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerNetwork:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    .line 100
    return-void
.end method

.method public releaseResource()V
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->stopReceivingLocationUpdates()V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationManager:Landroid/location/LocationManager;

    .line 90
    return-void
.end method

.method public setGeotag(Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;)V
    .locals 10
    .param p1, "geotag"    # Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;
    .param p2, "activity"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    .param p3, "settingDialogController"    # Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;
    .param p4, "listener"    # Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;

    .prologue
    .line 316
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;->ON:Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;

    if-ne p1, v0, :cond_1

    .line 317
    invoke-static {p2}, Lcom/sonyericsson/cameracommon/utility/RegionConfig;->isChinaRegion(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {p2}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getMessagePopup()Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    move-result-object v8

    const/4 v9, 0x0

    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager$1;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;)V

    new-instance v5, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager$2;

    invoke-direct {v5, p0, p2, p3, p4}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager$2;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;)V

    new-instance v6, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager$3;

    invoke-direct {v6, p0, p2, p3, p4}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager$3;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;)V

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p2

    move v3, v9

    move-object v4, v0

    invoke-virtual/range {v1 .. v7}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showConfirmLocationAccess(Landroid/app/Activity;ZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 359
    :goto_0
    return-void

    .line 354
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->checkLocationService(Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;)V

    goto :goto_0

    .line 357
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->checkLocationService(Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogController;Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagSettingListener;)V

    goto :goto_0
.end method

.method public setLocationAcquiredListener(Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationAcquiredListener:Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;

    .line 109
    return-void
.end method

.method public declared-synchronized startLocationUpdates(ZZ)V
    .locals 7
    .param p1, "gps"    # Z
    .param p2, "network"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 126
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/32 v2, 0xea60

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerGps:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 132
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerGps:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->reset()V

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mAcquiring:Z

    .line 137
    :cond_0
    if-eqz p2, :cond_1

    .line 138
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/32 v2, 0xea60

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerNetwork:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 142
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerNetwork:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->reset()V

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mAcquiring:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 147
    :catch_0
    move-exception v6

    .line 148
    .local v6, "ex":Ljava/lang/SecurityException;
    :try_start_1
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->TAG:Ljava/lang/String;

    const-string v1, "provider can\'t access."

    invoke-static {v0, v1, v6}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mAcquiring:Z

    .line 150
    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    .end local v6    # "ex":Ljava/lang/SecurityException;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 151
    :catch_1
    move-exception v6

    .line 153
    .local v6, "ex":Ljava/lang/IllegalArgumentException;
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mAcquiring:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized stopReceivingLocationUpdates()V
    .locals 2

    .prologue
    .line 164
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mAcquiring:Z

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerGps:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->reset()V

    .line 167
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerNetwork:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;->reset()V

    .line 168
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerGps:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 169
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationListenerNetwork:Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 171
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mAcquiring:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    :cond_1
    monitor-exit p0

    return-void

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateLocation(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V
    .locals 4
    .param p1, "geotag"    # Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->assignResource()V

    .line 268
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->stopReceivingLocationUpdates()V

    .line 270
    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;->ON:Lcom/sonyericsson/cameracommon/commonsetting/values/Geotag;

    if-ne p1, v2, :cond_1

    .line 272
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationAcquiredListener:Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;

    if-eqz v2, :cond_0

    .line 273
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mLocationAcquiredListener:Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;

    invoke-interface {v2}, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationAcquiredListener;->onLost()V

    .line 277
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mContext:Landroid/content/Context;

    const-string v3, "gps"

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;->isLocationProviderAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 279
    .local v0, "gps":Z
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->mContext:Landroid/content/Context;

    const-string v3, "network"

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/mediasaving/location/LocationSettingsReader;->isLocationProviderAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 282
    .local v1, "net":Z
    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->startLocationUpdates(ZZ)V

    .line 284
    .end local v0    # "gps":Z
    .end local v1    # "net":Z
    :cond_1
    return-void
.end method
