.class public Lcom/sonymobile/gagtmhelper/GaGtmUtils;
.super Ljava/lang/Object;
.source "GaGtmUtils.java"


# static fields
.field private static final GA_DEFAULT_DISPATCH_PERIOD:I = 0x708

.field private static final GTM_KEY_DEVICE_BUILD_ID:Ljava/lang/String; = "gagtm-deviceBuildId"

.field private static final GTM_KEY_DEVICE_BUILD_MODEL:Ljava/lang/String; = "gagtm-deviceBuildModel"

.field private static final GTM_KEY_DEVICE_BUILD_TYPE:Ljava/lang/String; = "gagtm-deviceBuildType"

.field private static final GTM_KEY_DEVICE_CUSTOMER_ID:Ljava/lang/String; = "gagtm-deviceCustomerId"

.field private static final GTM_KEY_DEVICE_CUSTOMIZATION:Ljava/lang/String; = "gagtm-deviceCustomization"

.field private static final GTM_KEY_DEVICE_CUSTOMIZATION_REVISION:Ljava/lang/String; = "gagtm-deviceCustomizationRevision"

.field private static final GTM_KEY_DEVICE_NETWORK_MCC:Ljava/lang/String; = "gagtm-deviceNetworkMcc"

.field private static final GTM_KEY_DEVICE_NETWORK_MNC:Ljava/lang/String; = "gagtm-deviceNetworkMnc"

.field private static final GTM_KEY_DEVICE_SIM_MCC:Ljava/lang/String; = "gagtm-deviceSimMcc"

.field private static final GTM_KEY_DEVICE_SIM_MNC:Ljava/lang/String; = "gagtm-deviceSimMnc"

.field private static final GTM_KEY_EVENT:Ljava/lang/String; = "event"

.field private static final GTM_KEY_EVENT_ACTION:Ljava/lang/String; = "gagtm-eventAction"

.field private static final GTM_KEY_EVENT_CATEGORY:Ljava/lang/String; = "gagtm-eventCategory"

.field private static final GTM_KEY_EVENT_LABEL:Ljava/lang/String; = "gagtm-eventLabel"

.field private static final GTM_KEY_EVENT_VALUE:Ljava/lang/String; = "gagtm-eventValue"

.field private static final GTM_KEY_EXCEPTION_DESCRIPTION:Ljava/lang/String; = "gagtm-exceptionDescription"

.field private static final GTM_KEY_GA_DISPATCH_PERIOD:Ljava/lang/String; = "gagtm-dispatchPeriod"

.field private static final GTM_KEY_GA_EXCEPTION_DEEP_MODE:Ljava/lang/String; = "gagtm-exceptionDeepMode"

.field private static final GTM_KEY_GA_EXCEPTION_HASH_LIST:Ljava/lang/String; = "gagtm-exceptionHashList"

.field private static final GTM_KEY_GA_EXCEPTION_MAX_REPORTED_ROWS:Ljava/lang/String; = "gagtm-exceptionMaxReportedRows"

.field private static final GTM_KEY_GA_EXCEPTION_MAX_TRAVERSED_ROWS:Ljava/lang/String; = "gagtm-exceptionMaxTraversedRows"

.field private static final GTM_KEY_GA_EXCEPTION_PACKAGE_NAMES:Ljava/lang/String; = "gagtm-exceptionPackageNames"

.field private static final GTM_KEY_GA_FORCE_LOCAL_DISPATCH:Ljava/lang/String; = "gagtm-forceLocalDispatch"

.field private static final GTM_KEY_SCREEN_NAME:Ljava/lang/String; = "gagtm-screenName"

.field private static final GTM_KEY_TIMING_CATEGORY:Ljava/lang/String; = "gagtm-timingCategory"

.field private static final GTM_KEY_TIMING_LABEL:Ljava/lang/String; = "gagtm-timingLabel"

.field private static final GTM_KEY_TIMING_VALUE:Ljava/lang/String; = "gagtm-timingValue"

.field private static final GTM_KEY_TIMING_VAR:Ljava/lang/String; = "gagtm-timingVar"

.field private static final LOG_TAG:Ljava/lang/String; = "GaGtmHelper"

.field private static final SOMC_GA_ENABLED_SETTING:Ljava/lang/String; = "somc.google_analytics_enabled"

.field private static final SYSTEM_BUILD_CUSTOMER_ID:Ljava/lang/String; = "ro.somc.customerid"

.field private static final SYSTEM_BUILD_CUSTOMIZATION:Ljava/lang/String; = "ro.semc.version.cust"

.field private static final SYSTEM_BUILD_CUSTOMIZATION_REVISION:Ljava/lang/String; = "ro.semc.version.cust_revision"

.field private static volatile mContainerHolder:Lcom/google/android/gms/tagmanager/ContainerHolder;

.field private static final mContainerHolderLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    sput-object v0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerHolder:Lcom/google/android/gms/tagmanager/ContainerHolder;

    .line 109
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerHolderLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    return-void
.end method

.method public static getContainerHolder()Lcom/google/android/gms/tagmanager/ContainerHolder;
    .locals 2

    .prologue
    .line 145
    sget-object v1, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerHolderLock:Ljava/lang/Object;

    monitor-enter v1

    .line 146
    :try_start_0
    sget-object v0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerHolder:Lcom/google/android/gms/tagmanager/ContainerHolder;

    monitor-exit v1

    return-object v0

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static isSomcGaEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 121
    const/4 v0, 0x1

    .line 122
    .local v0, "defaultValueEnabled":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "somc.google_analytics_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static pushAppView(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "screenName"    # Ljava/lang/String;

    .prologue
    .line 169
    const-string v0, "GaGtmHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pushAppView screenName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/TagManager;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/TagManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/TagManager;->getDataLayer()Lcom/google/android/gms/tagmanager/DataLayer;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "event"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "appView"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "gagtm-screenName"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p1, v1, v2

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/DataLayer;->mapOf([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/DataLayer;->push(Ljava/util/Map;)V

    .line 174
    return-void
.end method

.method public static pushDeepEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventCategory"    # Ljava/lang/String;
    .param p2, "eventAction"    # Ljava/lang/String;
    .param p3, "eventLabel"    # Ljava/lang/String;
    .param p4, "eventValue"    # J

    .prologue
    .line 262
    const-string v0, "GaGtmHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pushDeepEvent category="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " label="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/TagManager;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/TagManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/TagManager;->getDataLayer()Lcom/google/android/gms/tagmanager/DataLayer;

    move-result-object v0

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "event"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "deepEvent"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "gagtm-eventCategory"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p1, v1, v2

    const/4 v2, 0x4

    const-string v3, "gagtm-eventAction"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aput-object p2, v1, v2

    const/4 v2, 0x6

    const-string v3, "gagtm-eventLabel"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    aput-object p3, v1, v2

    const/16 v2, 0x8

    const-string v3, "gagtm-eventValue"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/DataLayer;->mapOf([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/DataLayer;->push(Ljava/util/Map;)V

    .line 272
    return-void
.end method

.method public static pushDeepException(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "exceptionDescription"    # Ljava/lang/String;

    .prologue
    .line 297
    const-string v0, "GaGtmHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pushDeepException exceptionDescription="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/TagManager;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/TagManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/TagManager;->getDataLayer()Lcom/google/android/gms/tagmanager/DataLayer;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "event"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "deepException"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "gagtm-exceptionDescription"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p1, v1, v2

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/DataLayer;->mapOf([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/DataLayer;->push(Ljava/util/Map;)V

    .line 302
    return-void
.end method

.method public static pushEndSession(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 244
    const-string v0, "GaGtmHelper"

    const-string v1, "pushEndSession"

    invoke-static {v0, v1}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/TagManager;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/TagManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/TagManager;->getDataLayer()Lcom/google/android/gms/tagmanager/DataLayer;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "event"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "endSession"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/DataLayer;->mapOf([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/DataLayer;->push(Ljava/util/Map;)V

    .line 248
    return-void
.end method

.method public static pushEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventCategory"    # Ljava/lang/String;
    .param p2, "eventAction"    # Ljava/lang/String;
    .param p3, "eventLabel"    # Ljava/lang/String;
    .param p4, "eventValue"    # J

    .prologue
    .line 188
    const-string v0, "GaGtmHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pushEvent category="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " label="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/TagManager;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/TagManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/TagManager;->getDataLayer()Lcom/google/android/gms/tagmanager/DataLayer;

    move-result-object v0

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "event"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "event"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "gagtm-eventCategory"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p1, v1, v2

    const/4 v2, 0x4

    const-string v3, "gagtm-eventAction"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aput-object p2, v1, v2

    const/4 v2, 0x6

    const-string v3, "gagtm-eventLabel"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    aput-object p3, v1, v2

    const/16 v2, 0x8

    const-string v3, "gagtm-eventValue"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/DataLayer;->mapOf([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/DataLayer;->push(Ljava/util/Map;)V

    .line 198
    return-void
.end method

.method public static pushException(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "exceptionDescription"    # Ljava/lang/String;

    .prologue
    .line 282
    const-string v0, "GaGtmHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pushException exceptionDescription="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/TagManager;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/TagManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/TagManager;->getDataLayer()Lcom/google/android/gms/tagmanager/DataLayer;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "event"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "exception"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "gagtm-exceptionDescription"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p1, v1, v2

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/DataLayer;->mapOf([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/DataLayer;->push(Ljava/util/Map;)V

    .line 287
    return-void
.end method

.method public static declared-synchronized pushInitDefaultsToDataLayer(Landroid/content/Context;)V
    .locals 15
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 323
    const-class v12, Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    monitor-enter v12

    :try_start_0
    const-string v1, ""

    .line 324
    .local v1, "customization":Ljava/lang/String;
    const-string v2, ""

    .line 325
    .local v2, "customizationRevision":Ljava/lang/String;
    const-string v0, ""

    .line 326
    .local v0, "customerId":Ljava/lang/String;
    const-string v8, ""

    .line 327
    .local v8, "simMnc":Ljava/lang/String;
    const-string v7, ""

    .line 328
    .local v7, "simMcc":Ljava/lang/String;
    const-string v5, ""

    .line 329
    .local v5, "networkMnc":Ljava/lang/String;
    const-string v4, ""

    .line 331
    .local v4, "networkMcc":Ljava/lang/String;
    const-string v11, "GaGtmHelper"

    const-string v13, "pushInitDefaultsToDataLayer"

    invoke-static {v11, v13}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    :try_start_1
    const-string v11, "ro.semc.version.cust"

    invoke-static {p0, v11}, Lcom/sonymobile/gagtmhelper/SystemPropertiesProxy;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 336
    const-string v11, "ro.semc.version.cust_revision"

    invoke-static {p0, v11}, Lcom/sonymobile/gagtmhelper/SystemPropertiesProxy;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 338
    const-string v11, "ro.somc.customerid"

    invoke-static {p0, v11}, Lcom/sonymobile/gagtmhelper/SystemPropertiesProxy;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 344
    :goto_0
    :try_start_2
    const-string v11, "phone"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 349
    .local v10, "tm":Landroid/telephony/TelephonyManager;
    :try_start_3
    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v11

    const/4 v13, 0x5

    if-ne v11, v13, :cond_4

    .line 351
    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v9

    .line 352
    .local v9, "simOperator":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v13, 0x5

    if-eq v11, v13, :cond_0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v13, 0x6

    if-ne v11, v13, :cond_1

    .line 353
    :cond_0
    const/4 v11, 0x0

    const/4 v13, 0x3

    invoke-virtual {v9, v11, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 355
    const/4 v11, 0x3

    invoke-virtual {v9, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v8

    .line 368
    .end local v9    # "simOperator":Ljava/lang/String;
    :cond_1
    :goto_1
    :try_start_4
    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v6

    .line 369
    .local v6, "networkOperator":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v13, 0x5

    if-eq v11, v13, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v13, 0x6

    if-ne v11, v13, :cond_3

    .line 370
    :cond_2
    const/4 v11, 0x0

    const/4 v13, 0x3

    invoke-virtual {v6, v11, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 371
    const/4 v11, 0x3

    invoke-virtual {v6, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v5

    .line 377
    .end local v6    # "networkOperator":Ljava/lang/String;
    :cond_3
    :goto_2
    :try_start_5
    const-string v11, "GaGtmHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Pushing to data layer deviceBuildModel:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "deviceBuildId: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", deviceBuildType:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "deviceCustomization:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "deviceCustomizationRevision:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "deviceCustomerId: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", deviceSimMcc: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "deviceSimMnc: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", deviceNetworkMcc: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "deviceNetworkMnc: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    const/16 v11, 0x14

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string v14, "gagtm-deviceBuildModel"

    aput-object v14, v11, v13

    const/4 v13, 0x1

    sget-object v14, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v14, v11, v13

    const/4 v13, 0x2

    const-string v14, "gagtm-deviceBuildId"

    aput-object v14, v11, v13

    const/4 v13, 0x3

    sget-object v14, Landroid/os/Build;->ID:Ljava/lang/String;

    aput-object v14, v11, v13

    const/4 v13, 0x4

    const-string v14, "gagtm-deviceBuildType"

    aput-object v14, v11, v13

    const/4 v13, 0x5

    sget-object v14, Landroid/os/Build;->TYPE:Ljava/lang/String;

    aput-object v14, v11, v13

    const/4 v13, 0x6

    const-string v14, "gagtm-deviceCustomization"

    aput-object v14, v11, v13

    const/4 v13, 0x7

    aput-object v1, v11, v13

    const/16 v13, 0x8

    const-string v14, "gagtm-deviceCustomizationRevision"

    aput-object v14, v11, v13

    const/16 v13, 0x9

    aput-object v2, v11, v13

    const/16 v13, 0xa

    const-string v14, "gagtm-deviceCustomerId"

    aput-object v14, v11, v13

    const/16 v13, 0xb

    aput-object v0, v11, v13

    const/16 v13, 0xc

    const-string v14, "gagtm-deviceSimMcc"

    aput-object v14, v11, v13

    const/16 v13, 0xd

    aput-object v7, v11, v13

    const/16 v13, 0xe

    const-string v14, "gagtm-deviceSimMnc"

    aput-object v14, v11, v13

    const/16 v13, 0xf

    aput-object v8, v11, v13

    const/16 v13, 0x10

    const-string v14, "gagtm-deviceNetworkMcc"

    aput-object v14, v11, v13

    const/16 v13, 0x11

    aput-object v4, v11, v13

    const/16 v13, 0x12

    const-string v14, "gagtm-deviceNetworkMnc"

    aput-object v14, v11, v13

    const/16 v13, 0x13

    aput-object v5, v11, v13

    invoke-static {v11}, Lcom/google/android/gms/tagmanager/DataLayer;->mapOf([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->pushToDataLayer(Landroid/content/Context;Ljava/util/Map;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 397
    monitor-exit v12

    return-void

    .line 340
    .end local v10    # "tm":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v3

    .line 341
    .local v3, "e":Ljava/lang/Exception;
    :try_start_6
    const-string v11, "GaGtmHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SystemProperty exception:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 323
    .end local v0    # "customerId":Ljava/lang/String;
    .end local v1    # "customization":Ljava/lang/String;
    .end local v2    # "customizationRevision":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "networkMcc":Ljava/lang/String;
    .end local v5    # "networkMnc":Ljava/lang/String;
    .end local v7    # "simMcc":Ljava/lang/String;
    .end local v8    # "simMnc":Ljava/lang/String;
    :catchall_0
    move-exception v11

    monitor-exit v12

    throw v11

    .line 360
    .restart local v0    # "customerId":Ljava/lang/String;
    .restart local v1    # "customization":Ljava/lang/String;
    .restart local v2    # "customizationRevision":Ljava/lang/String;
    .restart local v4    # "networkMcc":Ljava/lang/String;
    .restart local v5    # "networkMnc":Ljava/lang/String;
    .restart local v7    # "simMcc":Ljava/lang/String;
    .restart local v8    # "simMnc":Ljava/lang/String;
    .restart local v10    # "tm":Landroid/telephony/TelephonyManager;
    :cond_4
    :try_start_7
    const-string v11, "GaGtmHelper"

    const-string v13, "SIM state is not ready"

    invoke-static {v11, v13}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    .line 362
    :catch_1
    move-exception v3

    .line 363
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_8
    const-string v11, "GaGtmHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unexpected exception reading SIM info:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 373
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v3

    .line 374
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v11, "GaGtmHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unexpected exception reading network info:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_2
.end method

.method public static pushStartSession(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 230
    const-string v0, "GaGtmHelper"

    const-string v1, "pushStartSession"

    invoke-static {v0, v1}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/TagManager;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/TagManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/TagManager;->getDataLayer()Lcom/google/android/gms/tagmanager/DataLayer;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "event"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "startSession"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/DataLayer;->mapOf([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/DataLayer;->push(Ljava/util/Map;)V

    .line 234
    return-void
.end method

.method public static pushTiming(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "timingCategory"    # Ljava/lang/String;
    .param p2, "timingValue"    # J
    .param p4, "timingVar"    # Ljava/lang/String;
    .param p5, "timingLabel"    # Ljava/lang/String;

    .prologue
    .line 212
    const-string v0, "GaGtmHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pushTiming category="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " var="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " label="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/TagManager;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/TagManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/TagManager;->getDataLayer()Lcom/google/android/gms/tagmanager/DataLayer;

    move-result-object v0

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "event"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "timing"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "gagtm-timingCategory"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p1, v1, v2

    const/4 v2, 0x4

    const-string v3, "gagtm-timingValue"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "gagtm-timingVar"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    aput-object p4, v1, v2

    const/16 v2, 0x8

    const-string v3, "gagtm-timingLabel"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    aput-object p5, v1, v2

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/DataLayer;->mapOf([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/DataLayer;->push(Ljava/util/Map;)V

    .line 221
    return-void
.end method

.method public static pushToDataLayer(Landroid/content/Context;Ljava/util/Map;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 312
    .local p1, "keyValueData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/TagManager;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/TagManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/TagManager;->getDataLayer()Lcom/google/android/gms/tagmanager/DataLayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/DataLayer;->push(Ljava/util/Map;)V

    .line 313
    return-void
.end method

.method public static readAndSetGaEnabled(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 132
    invoke-static {p0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->isSomcGaEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 134
    .local v0, "gaEnabled":Z
    const-string v1, "GaGtmHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "somc.google_analytics_enabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v2

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->setAppOptOut(Z)V

    .line 139
    return-void

    .line 138
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized setContainerDefaults(Landroid/content/Context;)V
    .locals 16
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 407
    const-class v10, Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    monitor-enter v10

    :try_start_0
    const-string v9, "GaGtmHelper"

    const-string v11, "setContainerDefaults"

    invoke-static {v9, v11}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    sget-object v9, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerHolder:Lcom/google/android/gms/tagmanager/ContainerHolder;

    if-nez v9, :cond_0

    .line 410
    const-string v9, "GaGtmHelper"

    const-string v11, "container holder is null exiting"

    invoke-static {v9, v11}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 465
    :goto_0
    monitor-exit v10

    return-void

    .line 414
    :cond_0
    :try_start_1
    sget-object v9, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerHolder:Lcom/google/android/gms/tagmanager/ContainerHolder;

    invoke-interface {v9}, Lcom/google/android/gms/tagmanager/ContainerHolder;->getContainer()Lcom/google/android/gms/tagmanager/Container;

    move-result-object v0

    .line 416
    .local v0, "container":Lcom/google/android/gms/tagmanager/Container;
    if-nez v0, :cond_1

    .line 417
    const-string v9, "GaGtmHelper"

    const-string v11, "container is null exiting"

    invoke-static {v9, v11}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 407
    .end local v0    # "container":Lcom/google/android/gms/tagmanager/Container;
    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9

    .line 422
    .restart local v0    # "container":Lcom/google/android/gms/tagmanager/Container;
    :cond_1
    :try_start_2
    const-string v9, "gagtm-dispatchPeriod"

    invoke-virtual {v0, v9}, Lcom/google/android/gms/tagmanager/Container;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    long-to-int v1, v12

    .line 423
    .local v1, "gaDispatchPeriod":I
    if-gtz v1, :cond_2

    .line 426
    const/16 v1, 0x708

    .line 428
    :cond_2
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v8

    .line 429
    .local v8, "googleAnalytics":Lcom/google/android/gms/analytics/GoogleAnalytics;
    const-string v9, "GaGtmHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "gaDispatchPeriod:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    invoke-virtual {v8, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->setLocalDispatchPeriod(I)V

    .line 433
    const-string v9, "gagtm-forceLocalDispatch"

    invoke-virtual {v0, v9}, Lcom/google/android/gms/tagmanager/Container;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    const-wide/16 v14, 0x1

    cmp-long v9, v12, v14

    if-nez v9, :cond_4

    const/4 v7, 0x1

    .line 435
    .local v7, "gaForceLocalDispatch":Z
    :goto_1
    const-string v9, "GaGtmHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "gaForceLocalDispatch:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    if-eqz v7, :cond_3

    .line 437
    const-string v9, "GaGtmHelper"

    const-string v11, "gaForceLocalDispatch will be ignored, consider removing it from your container"

    invoke-static {v9, v11}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    :cond_3
    const-string v9, "gagtm-exceptionMaxReportedRows"

    invoke-virtual {v0, v9}, Lcom/google/android/gms/tagmanager/Container;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    long-to-int v4, v12

    .line 447
    .local v4, "gaExceptionMaxReportedRows":I
    invoke-static {v4}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->setMaxReportedRows(I)V

    .line 450
    const-string v9, "gagtm-exceptionMaxTraversedRows"

    invoke-virtual {v0, v9}, Lcom/google/android/gms/tagmanager/Container;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    long-to-int v5, v12

    .line 452
    .local v5, "gaExceptionMaxTraversedRows":I
    invoke-static {v5}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->setMaxTraversedRows(I)V

    .line 455
    const-string v9, "gagtm-exceptionPackageNames"

    invoke-virtual {v0, v9}, Lcom/google/android/gms/tagmanager/Container;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 456
    .local v6, "gaExceptionPackageNames":Ljava/lang/String;
    invoke-static {v6}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->setEnabledPackageNames(Ljava/lang/String;)V

    .line 459
    const-string v9, "gagtm-exceptionHashList"

    invoke-virtual {v0, v9}, Lcom/google/android/gms/tagmanager/Container;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 460
    .local v3, "gaExceptionHashList":Ljava/lang/String;
    invoke-static {v3}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->setDeepCrashHashList(Ljava/lang/String;)V

    .line 463
    const-string v9, "gagtm-exceptionDeepMode"

    invoke-virtual {v0, v9}, Lcom/google/android/gms/tagmanager/Container;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 464
    .local v2, "gaExceptionDeepMode":Ljava/lang/String;
    invoke-static {v2}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->setDeepMode(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 433
    .end local v2    # "gaExceptionDeepMode":Ljava/lang/String;
    .end local v3    # "gaExceptionHashList":Ljava/lang/String;
    .end local v4    # "gaExceptionMaxReportedRows":I
    .end local v5    # "gaExceptionMaxTraversedRows":I
    .end local v6    # "gaExceptionPackageNames":Ljava/lang/String;
    .end local v7    # "gaForceLocalDispatch":Z
    :cond_4
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public static setContainerHolder(Lcom/google/android/gms/tagmanager/ContainerHolder;)V
    .locals 2
    .param p0, "containerHolder"    # Lcom/google/android/gms/tagmanager/ContainerHolder;

    .prologue
    .line 157
    sget-object v1, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerHolderLock:Ljava/lang/Object;

    monitor-enter v1

    .line 158
    :try_start_0
    sput-object p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerHolder:Lcom/google/android/gms/tagmanager/ContainerHolder;

    .line 159
    monitor-exit v1

    .line 160
    return-void

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
