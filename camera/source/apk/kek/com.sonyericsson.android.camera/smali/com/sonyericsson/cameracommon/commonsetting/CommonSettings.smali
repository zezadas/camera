.class public Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;
.super Ljava/lang/Object;
.source "CommonSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings$1;,
        Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings$StoreTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCachedFirmwareVersion:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mSelectabilities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;",
            "Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Landroid/content/Context;)V
    .locals 1
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mCachedFirmwareVersion:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mSettings:Ljava/util/HashMap;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mSelectabilities:Ljava/util/HashMap;

    .line 67
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mResolver:Landroid/content/ContentResolver;

    .line 68
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mContext:Landroid/content/Context;

    .line 69
    return-void
.end method

.method private createContentProviderUpdateOperation(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 358
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 359
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const-string v1, "value"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingConstants;->COMMONSETTING_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "value"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    return-object v1
.end method

.method private isFirmwareVersionUpdated()Z
    .locals 2

    .prologue
    .line 384
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 385
    .local v0, "currentVersion":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mCachedFirmwareVersion:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 386
    const/4 v1, 0x0

    .line 390
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isUnSelectableSetting(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)Z
    .locals 2
    .param p1, "key"    # Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    .prologue
    .line 320
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings$1;->$SwitchMap$com$sonyericsson$cameracommon$commonsetting$CommonSettingKey:[I

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 329
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 326
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 320
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private joinStoreTask()V
    .locals 3

    .prologue
    .line 190
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mFuture:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_0

    .line 191
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mFuture:Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 192
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mFuture:Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->TAG:Ljava/lang/String;

    const-string v2, "joinStoreTask"

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 196
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 197
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->TAG:Ljava/lang/String;

    const-string v2, "joinStoreTask"

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private loadUnSelectableSettings()V
    .locals 6

    .prologue
    .line 298
    invoke-static {}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->values()[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    move-result-object v0

    .local v0, "arr$":[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 299
    .local v1, "eachKey":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    sget-object v4, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings$1;->$SwitchMap$com$sonyericsson$cameracommon$commonsetting$CommonSettingKey:[I

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 298
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 301
    :pswitch_0
    sget-object v4, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoUpload;->OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/AutoUpload;

    invoke-direct {p0, v1, v4}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->putIntoMap(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    goto :goto_1

    .line 305
    :pswitch_1
    sget-object v4, Lcom/sonyericsson/cameracommon/commonsetting/values/TermOfUse;->NO_VALUE:Lcom/sonyericsson/cameracommon/commonsetting/values/TermOfUse;

    invoke-direct {p0, v1, v4}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->putIntoMap(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    goto :goto_1

    .line 309
    :pswitch_2
    sget-object v4, Lcom/sonyericsson/cameracommon/commonsetting/values/TouchBlock;->NO_VALUE:Lcom/sonyericsson/cameracommon/commonsetting/values/TouchBlock;

    invoke-direct {p0, v1, v4}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->putIntoMap(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    goto :goto_1

    .line 317
    .end local v1    # "eachKey":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    :cond_0
    return-void

    .line 299
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private declared-synchronized putIntoMap(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V
    .locals 1
    .param p1, "key"    # Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    .param p2, "value"    # Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    .prologue
    .line 341
    monitor-enter p0

    if-nez p1, :cond_0

    .line 347
    :goto_0
    monitor-exit p0

    return-void

    .line 346
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mSettings:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 341
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private saveFirmwareVersion()V
    .locals 4

    .prologue
    .line 368
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mCachedFirmwareVersion:Ljava/lang/String;

    .line 369
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 370
    .local v0, "operations":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    const-string v1, "android.os.Build.FINGERPRINT"

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mCachedFirmwareVersion:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->createContentProviderUpdateOperation(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->joinStoreTask()V

    .line 377
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_0

    .line 378
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 380
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings$StoreTask;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mResolver:Landroid/content/ContentResolver;

    invoke-direct {v2, v3, v0}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings$StoreTask;-><init>(Landroid/content/ContentResolver;Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mFuture:Ljava/util/concurrent/Future;

    .line 381
    return-void
.end method


# virtual methods
.method public declared-synchronized get(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    .locals 3
    .param p1, "key"    # Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->SHUTTER_SOUND:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    if-ne p1, v1, :cond_1

    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/StaticConfigurationUtil;->isForceSound()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;->ON:Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :cond_0
    monitor-exit p0

    return-object v0

    .line 84
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mSettings:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    .line 85
    .local v0, "value":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    if-nez v0, :cond_0

    .line 86
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "CommonSettingProvider is not loaded yet."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    .end local v0    # "value":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized isSelectable(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)Z
    .locals 2
    .param p1, "key"    # Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    .prologue
    .line 121
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mSelectabilities:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 122
    .local v0, "selectability":Ljava/lang/Boolean;
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 121
    .end local v0    # "selectability":Ljava/lang/Boolean;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized load()V
    .locals 11

    .prologue
    .line 244
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mSettings:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 247
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingConstants;->COMMONSETTING_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "value"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v6

    .line 256
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_4

    .line 259
    :try_start_1
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load ok. cursor count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 261
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 262
    .local v7, "key":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 264
    .local v10, "value":Ljava/lang/String;
    invoke-static {v7}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->fromKey(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    move-result-object v8

    .line 265
    .local v8, "settingKey":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    if-eqz v8, :cond_1

    .line 266
    invoke-static {v8, v10}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->fromValue(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;Ljava/lang/String;)Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    move-result-object v9

    .line 268
    .local v9, "settingValue":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    invoke-direct {p0, v8, v9}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->putIntoMap(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    .line 270
    .end local v9    # "settingValue":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    :cond_1
    const-string v0, "android.os.Build.FINGERPRINT"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    iput-object v10, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mCachedFirmwareVersion:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 276
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "settingKey":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    .end local v10    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 244
    .end local v6    # "c":Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 276
    .restart local v6    # "c":Landroid/database/Cursor;
    :cond_2
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 284
    :goto_1
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->loadUnSelectableSettings()V

    .line 286
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->isFirmwareVersionUpdated()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 287
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->saveFirmwareVersion()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 289
    :cond_3
    monitor-exit p0

    return-void

    .line 280
    :cond_4
    :try_start_4
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->TAG:Ljava/lang/String;

    const-string v1, "load failed. getting cursor is null."

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1
.end method

.method public declared-synchronized set(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V
    .locals 4
    .param p1, "value"    # Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;->getCommonSettingKey()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    move-result-object v0

    .line 101
    .local v0, "key":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mSettings:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->FAST_CAPTURE:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    if-ne v0, v1, :cond_0

    .line 105
    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;->OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    if-ne p1, v1, :cond_1

    .line 106
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mContext:Landroid/content/Context;

    const-string v2, "fcc.status.off"

    check-cast p1, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    .end local p1    # "value":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;->getProviderValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sonyericsson/cameracommon/commonsetting/securesetting/SecureSettingWriter;->save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->store()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    monitor-exit p0

    return-void

    .line 111
    .restart local p1    # "value":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mContext:Landroid/content/Context;

    const-string v2, "fcc.status.on"

    check-cast p1, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    .end local p1    # "value":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;->getProviderValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sonyericsson/cameracommon/commonsetting/securesetting/SecureSettingWriter;->save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 99
    .end local v0    # "key":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setSelectability(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;Z)V
    .locals 2
    .param p1, "key"    # Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    .param p2, "selectable"    # Z

    .prologue
    .line 127
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mSelectabilities:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    monitor-exit p0

    return-void

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized store()V
    .locals 8

    .prologue
    .line 139
    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v3, "operations":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mSettings:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 142
    .local v0, "i":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    .line 143
    .local v2, "key":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    .line 146
    .local v4, "value":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    invoke-direct {p0, v2}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->isUnSelectableSetting(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 150
    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->createContentProviderUpdateOperation(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 139
    .end local v0    # "i":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    .end local v3    # "operations":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    .end local v4    # "value":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 155
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "operations":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->joinStoreTask()V

    .line 158
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v5, :cond_2

    .line 159
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    iput-object v5, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 161
    :cond_2
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v6, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings$StoreTask;

    iget-object v7, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mResolver:Landroid/content/ContentResolver;

    invoke-direct {v6, v7, v3}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings$StoreTask;-><init>(Landroid/content/ContentResolver;Ljava/util/List;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v5

    iput-object v5, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mFuture:Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    monitor-exit p0

    return-void
.end method

.method public suspend()V
    .locals 1

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->joinStoreTask()V

    .line 176
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 183
    :cond_0
    return-void
.end method
