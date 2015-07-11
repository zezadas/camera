.class public Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;
.super Ljava/lang/Object;
.source "GoogleAnalyticsUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$2;,
        Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$PanoramaInfo;,
        Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$CurrentUserOperationHolder;
    }
.end annotation


# static fields
.field private static final CONTAINER_ID:Ljava/lang/String; = "GTM-W4X44J"

.field private static final MY_WANTED_TIMEOUT_MILLISECONDS:I

.field private static final TAG:Ljava/lang/String;

.field private static final sInstance:Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;


# instance fields
.field private final mCameraAddonReceiverForGA:Lcom/sonymobile/cameracommon/googleanalytics/CameraAddonReceiverForGA;

.field private mContext:Landroid/content/Context;

.field private mIsFailedToOpenCamera:Z

.field private mIsViewEventSent:Z

.field private mPanoramaInfo:Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$PanoramaInfo;

.field private mUserOperationInfo:Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$CurrentUserOperationHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->TAG:Ljava/lang/String;

    .line 160
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;

    invoke-direct {v0}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;-><init>()V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->sInstance:Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$CurrentUserOperationHolder;

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$CurrentUserOperationHolder;-><init>(Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$1;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->mUserOperationInfo:Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$CurrentUserOperationHolder;

    .line 149
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$PanoramaInfo;

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$PanoramaInfo;-><init>(Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$1;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->mPanoramaInfo:Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$PanoramaInfo;

    .line 162
    iput-object v1, p0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->mContext:Landroid/content/Context;

    .line 164
    iput-boolean v2, p0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->mIsViewEventSent:Z

    .line 169
    iput-boolean v2, p0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->mIsFailedToOpenCamera:Z

    .line 171
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/CameraAddonReceiverForGA;

    invoke-direct {v0}, Lcom/sonymobile/cameracommon/googleanalytics/CameraAddonReceiverForGA;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->mCameraAddonReceiverForGA:Lcom/sonymobile/cameracommon/googleanalytics/CameraAddonReceiverForGA;

    .line 176
    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;
    .param p1, "x1"    # Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # J

    .prologue
    .line 48
    invoke-direct/range {p0 .. p5}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->sendEvent(Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$400(Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance()Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;
    .locals 1

    .prologue
    .line 179
    sget-object v0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->sInstance:Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;

    return-object v0
.end method

.method private loadGtmContainer()V
    .locals 6

    .prologue
    .line 218
    iget-object v2, p0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/TagManager;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/TagManager;

    move-result-object v1

    .line 222
    .local v1, "tagManager":Lcom/google/android/gms/tagmanager/TagManager;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tagmanager/TagManager;->setVerboseLoggingEnabled(Z)V

    .line 224
    const-string v2, "GTM-W4X44J"

    sget v3, Lcom/sonyericsson/cameracommon/R$raw;->gtm_default_container:I

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/tagmanager/TagManager;->loadContainerPreferNonDefault(Ljava/lang/String;I)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    .line 234
    .local v0, "pending":Lcom/google/android/gms/common/api/PendingResult;, "Lcom/google/android/gms/common/api/PendingResult<Lcom/google/android/gms/tagmanager/ContainerHolder;>;"
    new-instance v2, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$1;

    invoke-direct {v2, p0}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$1;-><init>(Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;)V

    const-wide/16 v4, 0x0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v4, v5, v3}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;JLjava/util/concurrent/TimeUnit;)V

    .line 275
    return-void
.end method

.method private registerCameraAddonReceiverForGA()V
    .locals 6

    .prologue
    .line 280
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 281
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "com.sonymobile.camera.addon.action.ADD_BUTTON_PRESSED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 282
    const-string v2, "com.sonymobile.camera.addon.action.APP_SELECTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 285
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->mCameraAddonReceiverForGA:Lcom/sonymobile/cameracommon/googleanalytics/CameraAddonReceiverForGA;

    const-string v4, "com.sonymobile.permission.CAMERA_ADDON_NOTIFY_GA"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :goto_0
    return-void

    .line 287
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v2, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->TAG:Ljava/lang/String;

    const-string v3, "CameraAddonReceiverForGA is already binded."

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendEvent(Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6
    .param p1, "category"    # Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "value"    # J

    .prologue
    .line 480
    iget-object v0, p0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->pushEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 481
    return-void
.end method

.method private sendView(Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;)V
    .locals 2
    .param p1, "screen"    # Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;

    .prologue
    .line 368
    if-nez p1, :cond_0

    .line 372
    :goto_0
    return-void

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->pushAppView(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setCustomDimension(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "gtmKey"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 343
    iget-object v0, p0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/DataLayer;->mapOf([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->pushToDataLayer(Landroid/content/Context;Ljava/util/Map;)V

    .line 344
    return-void
.end method

.method private setLaunchedBy(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;)V
    .locals 8
    .param p1, "activity"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    .param p2, "launchedBy"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;

    .prologue
    .line 306
    sget-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$GALaunchedBy;->OTHER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$GALaunchedBy;

    .line 308
    .local v0, "gaLauncbhedBy":Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$GALaunchedBy;
    sget-object v6, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$2;->$SwitchMap$com$sonyericsson$cameracommon$activity$BaseActivity$LaunchedBy:[I

    invoke-virtual {p2}, Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 336
    :goto_0
    const-string v6, "gagtm-launchedBy"

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$GALaunchedBy;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->setCustomDimension(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    return-void

    .line 310
    :pswitch_0
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 311
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->isOneShot()Z

    move-result v4

    .line 312
    .local v4, "isOneShot":Z
    const-string v6, "com.sonymobile.camera.addon.intent.extra.CAPTURING_MODE"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    .line 313
    .local v2, "hasExtra":Z
    const-string v6, "android.intent.extra.SUBJECT"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 314
    .local v5, "subject":Ljava/lang/String;
    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    .line 320
    .local v1, "hasCategory":Z
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 321
    sget-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$GALaunchedBy;->MODE_SELECTOR:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$GALaunchedBy;

    goto :goto_0

    .line 322
    :cond_0
    if-eqz v4, :cond_1

    .line 323
    sget-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$GALaunchedBy;->ONE_SHOT_APP:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$GALaunchedBy;

    goto :goto_0

    .line 324
    :cond_1
    const-string v6, "CameraWidget"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 325
    sget-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$GALaunchedBy;->CAMERA_WIDGET:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$GALaunchedBy;

    goto :goto_0

    .line 327
    :cond_2
    sget-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$GALaunchedBy;->HOME:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$GALaunchedBy;

    .line 329
    goto :goto_0

    .line 308
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private unregisterCameraAddonReceiverForGA()V
    .locals 3

    .prologue
    .line 298
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->mCameraAddonReceiverForGA:Lcom/sonymobile/cameracommon/googleanalytics/CameraAddonReceiverForGA;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :goto_0
    return-void

    .line 299
    :catch_0
    move-exception v0

    .line 301
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v1, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->TAG:Ljava/lang/String;

    const-string v2, "CameraAddonReceiverForGA is already unbinded."

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 187
    invoke-static {p1}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->readAndSetGaEnabled(Landroid/content/Context;)V

    .line 189
    iput-object p1, p0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->mContext:Landroid/content/Context;

    .line 191
    iget-object v0, p0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->isSomcGaEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->getContainerHolder()Lcom/google/android/gms/tagmanager/ContainerHolder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 193
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->loadGtmContainer()V

    .line 196
    :cond_0
    return-void
.end method

.method public onPause(Z)V
    .locals 1
    .param p1, "isSameActivity"    # Z

    .prologue
    .line 206
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->mIsViewEventSent:Z

    .line 207
    iget-object v0, p0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->mUserOperationInfo:Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$CurrentUserOperationHolder;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$CurrentUserOperationHolder;->sendUserOperation()V

    .line 208
    iget-object v0, p0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->mPanoramaInfo:Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$PanoramaInfo;

    # invokes: Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$PanoramaInfo;->sendPanoramaInfo()V
    invoke-static {v0}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$PanoramaInfo;->access$300(Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$PanoramaInfo;)V

    .line 210
    if-nez p1, :cond_0

    .line 211
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->unregisterCameraAddonReceiverForGA()V

    .line 215
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 201
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->registerCameraAddonReceiverForGA()V

    .line 202
    return-void
.end method

.method public sendCameraNotAvailableEvent()V
    .locals 4

    .prologue
    .line 389
    iget-boolean v1, p0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->mIsFailedToOpenCamera:Z

    invoke-static {v1}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CameraNotAvailable;->getType(Z)Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CameraNotAvailable;

    move-result-object v0

    .line 391
    .local v0, "cameraNotAvailable":Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CameraNotAvailable;
    sget-object v1, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;->CAMERA_NOT_AVAILABLE:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$CameraNotAvailable;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->sendEvent(Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->mIsFailedToOpenCamera:Z

    .line 393
    return-void
.end method

.method public sendEvent(Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Action;Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Label;)V
    .locals 6
    .param p1, "category"    # Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;
    .param p2, "action"    # Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Action;
    .param p3, "label"    # Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Label;

    .prologue
    .line 461
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->sendEvent(Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Action;Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Label;J)V

    .line 462
    return-void
.end method

.method public sendEvent(Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Action;Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Label;J)V
    .locals 6
    .param p1, "category"    # Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;
    .param p2, "action"    # Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Action;
    .param p3, "label"    # Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Label;
    .param p4, "value"    # J

    .prologue
    const/4 v3, 0x0

    .line 465
    if-nez p2, :cond_0

    move-object v2, v3

    .line 466
    .local v2, "strAction":Ljava/lang/String;
    :goto_0
    if-nez p3, :cond_1

    .local v3, "strLabel":Ljava/lang/String;
    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-wide v4, p4

    .line 468
    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->sendEvent(Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;J)V

    .line 469
    return-void

    .line 465
    .end local v2    # "strAction":Ljava/lang/String;
    .end local v3    # "strLabel":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 466
    .restart local v2    # "strAction":Ljava/lang/String;
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public sendEvent(Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "category"    # Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;

    .prologue
    .line 472
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->sendEvent(Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;J)V

    .line 473
    return-void
.end method

.method public sendMultiCameraConnectionFailedEvent(Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraConnectionFailed;)V
    .locals 2
    .param p1, "failed"    # Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$MultiCameraConnectionFailed;

    .prologue
    .line 396
    sget-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;->MULTI_CAMERA_CONNECTION_FAILED:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->sendEvent(Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Action;Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Label;)V

    .line 397
    return-void
.end method

.method public sendRecordingEvent(Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$UserOperation;ZIZ)V
    .locals 6
    .param p1, "userOperation"    # Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$UserOperation;
    .param p2, "isThermalStop"    # Z
    .param p3, "recTimeMillis"    # I
    .param p4, "isLaunchViewerAfterRec"    # Z

    .prologue
    .line 434
    invoke-static {p2}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$StopOperation;->getType(Z)Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$StopOperation;

    move-result-object v1

    .line 435
    .local v1, "stopOperation":Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$StopOperation;
    div-int/lit16 v0, p3, 0x3e8

    .line 437
    .local v0, "recTimeSec":I
    if-lez v0, :cond_1

    .line 438
    if-nez p4, :cond_0

    .line 439
    invoke-virtual {p0, p1}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->setUserOperation(Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$UserOperation;)V

    .line 441
    :cond_0
    sget-object v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;->RECORDING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$StopOperation;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_Sec"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->sendEvent(Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    :cond_1
    return-void
.end method

.method public sendSettingsCommon(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V
    .locals 4
    .param p1, "commonValue"    # Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    .prologue
    .line 401
    sget-object v2, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$2;->$SwitchMap$com$sonyericsson$cameracommon$commonsetting$CommonSettingKey:[I

    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;->getCommonSettingKey()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 417
    :goto_0
    return-void

    .line 408
    :pswitch_0
    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;->getCommonSettingKey()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->toString()Ljava/lang/String;

    move-result-object v0

    .line 409
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 410
    .local v1, "value":Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->getInstance()Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;

    move-result-object v2

    sget-object v3, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;->SETTINGS_COMMON:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

    invoke-virtual {v2, v3, v0, v1}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->sendEvent(Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 401
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

.method public sendSettingsCommon(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 421
    invoke-static {}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->getInstance()Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;->SETTINGS_COMMON:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->sendEvent(Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    return-void
.end method

.method public sendThermalEvent(ZZ)V
    .locals 3
    .param p1, "isOnStartup"    # Z
    .param p2, "isRecording"    # Z

    .prologue
    .line 378
    invoke-static {p1}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ThermalMitigation;->getType(Z)Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ThermalMitigation;

    move-result-object v1

    .line 379
    .local v1, "thrmalMitigation":Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ThermalMitigation;
    invoke-static {p2}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ForceQuit;->getType(Z)Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ForceQuit;

    move-result-object v0

    .line 381
    .local v0, "forceQuit":Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ForceQuit;
    sget-object v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;->THERMAL_MITIGATION:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;

    invoke-virtual {p0, v2, v1, v0}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->sendEvent(Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Category;Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Action;Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Label;)V

    .line 382
    return-void
.end method

.method public sendView(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;)V
    .locals 1
    .param p1, "activity"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity;
    .param p2, "launchedBy"    # Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;
    .param p3, "screen"    # Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;

    .prologue
    .line 348
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->mIsViewEventSent:Z

    if-nez v0, :cond_0

    .line 349
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->setLaunchedBy(Lcom/sonyericsson/cameracommon/activity/BaseActivity;Lcom/sonyericsson/cameracommon/activity/BaseActivity$LaunchedBy;)V

    .line 350
    invoke-direct {p0, p3}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->sendView(Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;)V

    .line 352
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->mIsViewEventSent:Z

    .line 354
    :cond_0
    return-void
.end method

.method public sendView(Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$GALaunchedBy;Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;)V
    .locals 2
    .param p1, "launchedBy"    # Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$GALaunchedBy;
    .param p2, "screen"    # Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;

    .prologue
    .line 357
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->mIsViewEventSent:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$GALaunchedBy;->SAME_ACTIVITY:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$GALaunchedBy;

    if-ne p1, v0, :cond_1

    .line 358
    :cond_0
    const-string v0, "gagtm-launchedBy"

    invoke-virtual {p1}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$GALaunchedBy;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->setCustomDimension(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-direct {p0, p2}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->sendView(Lcom/sonymobile/cameracommon/googleanalytics/parameters/Screen;)V

    .line 361
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->mIsViewEventSent:Z

    .line 363
    :cond_1
    return-void
.end method

.method public setCameraNotAvailableFailedToOpen()V
    .locals 1

    .prologue
    .line 385
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->mIsFailedToOpenCamera:Z

    .line 386
    return-void
.end method

.method public setUserOperation(Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$UserOperation;)V
    .locals 1
    .param p1, "operation"    # Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$UserOperation;

    .prologue
    .line 447
    iget-object v0, p0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->mUserOperationInfo:Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$CurrentUserOperationHolder;

    invoke-virtual {v0, p1}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$CurrentUserOperationHolder;->setUserOperation(Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$UserOperation;)V

    .line 448
    return-void
.end method

.method public setViewerLaunched()V
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->mUserOperationInfo:Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$CurrentUserOperationHolder;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$CurrentUserOperationHolder;->setViewerLaunched()V

    .line 428
    iget-object v0, p0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->mPanoramaInfo:Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$PanoramaInfo;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$PanoramaInfo;->setViewerLaunched()V

    .line 429
    return-void
.end method

.method public succeedInPanorama()V
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->mPanoramaInfo:Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$PanoramaInfo;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$PanoramaInfo;->succeedInPanorama()V

    .line 457
    return-void
.end method

.method public tryPanorama()V
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil;->mPanoramaInfo:Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$PanoramaInfo;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/googleanalytics/GoogleAnalyticsUtil$PanoramaInfo;->tryPanorama()V

    .line 453
    return-void
.end method
