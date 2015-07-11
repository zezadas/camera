.class public Lcom/sonyericsson/android/camera/configuration/Configurations;
.super Ljava/lang/Object;
.source "Configurations.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/configuration/Configurations$ReadConversationProviderTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Configurations"

.field static final sHasShutterKey:Z

.field private static sIsFaceIdentificationEnabled:Z

.field private static sIsLogForOperatorsEnabled:Z


# instance fields
.field private mConversationReader:Lcom/sonyericsson/android/camera/configuration/ConversationReader;

.field private mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mIntentReader:Lcom/sonyericsson/android/camera/configuration/IntentReader;

.field private mReadConversationProviderFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/sonyericsson/android/camera/configuration/ConversationReader;",
            ">;"
        }
    .end annotation
.end field

.field private mSharedPrefs:Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sonyericsson/android/camera/configuration/Configurations;->sIsLogForOperatorsEnabled:Z

    .line 61
    const/16 v0, 0x1b

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v0

    sput-boolean v0, Lcom/sonyericsson/android/camera/configuration/Configurations;->sHasShutterKey:Z

    .line 63
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    return-void
.end method

.method public static hasShutterKey()Z
    .locals 1

    .prologue
    .line 299
    sget-boolean v0, Lcom/sonyericsson/android/camera/configuration/Configurations;->sHasShutterKey:Z

    return v0
.end method

.method public static isFaceIdentificationEnabled()Z
    .locals 1

    .prologue
    .line 412
    sget-boolean v0, Lcom/sonyericsson/android/camera/configuration/Configurations;->sIsFaceIdentificationEnabled:Z

    return v0
.end method

.method public static isLogForOperatorsEnabled()Z
    .locals 1

    .prologue
    .line 324
    sget-boolean v0, Lcom/sonyericsson/android/camera/configuration/Configurations;->sIsLogForOperatorsEnabled:Z

    return v0
.end method

.method private joinInitTask()V
    .locals 3

    .prologue
    .line 105
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/configuration/Configurations;->mReadConversationProviderFuture:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/sonyericsson/android/camera/configuration/Configurations;->mReadConversationProviderFuture:Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/ConversationReader;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/configuration/Configurations;->mConversationReader:Lcom/sonyericsson/android/camera/configuration/ConversationReader;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/Configurations;->shutdownInitTask()V

    .line 118
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    const-string v1, "Configurations"

    const-string v2, "joinInitTask"

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/Configurations;->shutdownInitTask()V

    goto :goto_0

    .line 110
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 111
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    :try_start_2
    const-string v1, "Configurations"

    const-string v2, "joinInitTask"

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/Configurations;->shutdownInitTask()V

    goto :goto_0

    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/Configurations;->shutdownInitTask()V

    throw v1
.end method

.method public static setLogForOperators(Z)V
    .locals 0
    .param p0, "enabled"    # Z

    .prologue
    .line 333
    sput-boolean p0, Lcom/sonyericsson/android/camera/configuration/Configurations;->sIsLogForOperatorsEnabled:Z

    .line 334
    return-void
.end method


# virtual methods
.method public countUpFrontCameraLocationHelpShownTimes()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 265
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/Configurations;->getFrontCameraHelpShownTimes()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 268
    .local v0, "times":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 269
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v1, v4, :cond_0

    .line 270
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 274
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/configuration/Configurations;->mSharedPrefs:Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;

    const-string v2, "FRONT_CAMERA_LOCATION_HELP_SHOWN_TIMES"

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;->writeString(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 277
    return-void
.end method

.method public countUpZoomHelpShownTimes()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 215
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/Configurations;->getZoomHelpShownTimes()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 218
    .local v0, "times":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 219
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v2, v3, :cond_0

    .line 220
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 224
    :cond_0
    new-instance v1, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/configuration/Configurations;->mSharedPrefs:Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;-><init>(Landroid/content/SharedPreferences;)V

    .line 226
    .local v1, "writer":Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;
    const-string v2, "ZOOM_HELP_SHOWN_TIMES"

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;->apply()V

    .line 229
    return-void
.end method

.method public getCommonSettingsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 377
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getCropValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/Configurations;->mIntentReader:Lcom/sonyericsson/android/camera/configuration/IntentReader;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/configuration/IntentReader;->mCropValue:Ljava/lang/String;

    return-object v0
.end method

.method public getFrontCameraHelpShownTimes()I
    .locals 5

    .prologue
    .line 245
    iget-object v2, p0, Lcom/sonyericsson/android/camera/configuration/Configurations;->mSharedPrefs:Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;

    const-string v3, "FRONT_CAMERA_LOCATION_HELP_SHOWN_TIMES"

    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 249
    .local v1, "timesString":Ljava/lang/String;
    const/4 v0, 0x0

    .line 251
    .local v0, "times":I
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 256
    :goto_0
    return v0

    .line 252
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getMmsOptions()Lcom/sonyericsson/android/camera/configuration/MmsOptions;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/Configurations;->mConversationReader:Lcom/sonyericsson/android/camera/configuration/ConversationReader;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/ConversationReader;->getMmsOptions()Lcom/sonyericsson/android/camera/configuration/MmsOptions;

    move-result-object v0

    return-object v0
.end method

.method public getParameterSetStringMap(ZII)Ljava/util/Map;
    .locals 1
    .param p1, "isOneShot"    # Z
    .param p2, "type"    # I
    .param p3, "facing"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 306
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getVideoMaxDurationInMillisecs()J
    .locals 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/Configurations;->mIntentReader:Lcom/sonyericsson/android/camera/configuration/IntentReader;

    iget-wide v0, v0, Lcom/sonyericsson/android/camera/configuration/IntentReader;->mVideoMaxDurationInMillisecs:J

    return-wide v0
.end method

.method public getVideoMaxFileSizeInBytes()J
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/Configurations;->mIntentReader:Lcom/sonyericsson/android/camera/configuration/IntentReader;

    iget-wide v0, v0, Lcom/sonyericsson/android/camera/configuration/IntentReader;->mVideoMaxFileSizeInBytes:J

    return-wide v0
.end method

.method public getVideoQuality()J
    .locals 2

    .prologue
    .line 361
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/Configurations;->mIntentReader:Lcom/sonyericsson/android/camera/configuration/IntentReader;

    iget-wide v0, v0, Lcom/sonyericsson/android/camera/configuration/IntentReader;->mVideoQuality:J

    return-wide v0
.end method

.method public getZoomHelpShownTimes()I
    .locals 5

    .prologue
    .line 194
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/configuration/Configurations;->mSharedPrefs:Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;-><init>(Landroid/content/SharedPreferences;)V

    .line 196
    .local v0, "reader":Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;
    const-string v3, "ZOOM_HELP_SHOWN_TIMES"

    const-string v4, "0"

    invoke-virtual {v0, v3, v4}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 199
    .local v2, "timesString":Ljava/lang/String;
    const/4 v1, 0x0

    .line 201
    .local v1, "times":I
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 206
    :goto_0
    return v1

    .line 202
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public hasLimitForSizeOrDuration()Z
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/Configurations;->mIntentReader:Lcom/sonyericsson/android/camera/configuration/IntentReader;

    iget-boolean v0, v0, Lcom/sonyericsson/android/camera/configuration/IntentReader;->mhasLimit:Z

    return v0
.end method

.method public init(Lcom/sonyericsson/android/camera/CameraActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/sonyericsson/android/camera/CameraActivity;

    .prologue
    .line 152
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/IntentReader;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/configuration/IntentReader;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/configuration/Configurations;->mIntentReader:Lcom/sonyericsson/android/camera/configuration/IntentReader;

    .line 153
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/Configurations;->mIntentReader:Lcom/sonyericsson/android/camera/configuration/IntentReader;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/configuration/IntentReader;->readIntent(Landroid/content/Intent;)V

    .line 155
    invoke-static {p1}, Lcom/sonyericsson/android/camera/configuration/CustomizationReader;->readCustomization(Landroid/content/Context;)V

    .line 157
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/configuration/Configurations;->joinInitTask()V

    .line 159
    new-instance v0, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;

    invoke-direct {v0, p1}, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/configuration/Configurations;->mSharedPrefs:Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;

    .line 160
    return-void
.end method

.method public isFirstRun()Z
    .locals 4

    .prologue
    .line 390
    iget-object v1, p0, Lcom/sonyericsson/android/camera/configuration/Configurations;->mSharedPrefs:Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;

    const-string v2, "IS_FIRST_RUN"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 393
    .local v0, "firstRun":Z
    return v0
.end method

.method public isMmsSupported()Z
    .locals 1

    .prologue
    .line 315
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/CustomizationReader;->isMmsSupported()Z

    move-result v0

    return v0
.end method

.method public isNeedToShowFrontCameraLocationHelp()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 286
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/Configurations;->getFrontCameraHelpShownTimes()I

    move-result v1

    if-ge v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNeedToShowZoomHelp()Z
    .locals 2

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/Configurations;->getZoomHelpShownTimes()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume(Lcom/sonyericsson/android/camera/CameraActivity;)V
    .locals 3
    .param p1, "activity"    # Lcom/sonyericsson/android/camera/CameraActivity;

    .prologue
    const/4 v2, 0x0

    .line 166
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getInstance()Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->isDetectedFaceIdSupported(I)Z

    move-result v0

    .line 169
    .local v0, "isDetectedFaceIdSupported":Z
    if-eqz v0, :cond_0

    .line 170
    invoke-static {p1}, Lcom/sonymobile/cameracommon/photoanalyzer/faceidentification/FaceIdentificationUtil;->exist(Landroid/content/Context;)Z

    move-result v1

    sput-boolean v1, Lcom/sonyericsson/android/camera/configuration/Configurations;->sIsFaceIdentificationEnabled:Z

    .line 174
    :goto_0
    return-void

    .line 172
    :cond_0
    sput-boolean v2, Lcom/sonyericsson/android/camera/configuration/Configurations;->sIsFaceIdentificationEnabled:Z

    goto :goto_0
.end method

.method public setCommonSettingsMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 382
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public setFirstRun(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 403
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/Configurations;->mSharedPrefs:Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;

    const-string v1, "IS_FIRST_RUN"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;->writeBoolean(Ljava/lang/String;ZZ)V

    .line 404
    return-void
.end method

.method public setParameterSetStringMap(ZIILjava/util/Map;)V
    .locals 0
    .param p1, "isOneShot"    # Z
    .param p2, "type"    # I
    .param p3, "facing"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 186
    .local p4, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public shutdownInitTask()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 87
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/Configurations;->mReadConversationProviderFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/Configurations;->mReadConversationProviderFuture:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 89
    iput-object v2, p0, Lcom/sonyericsson/android/camera/configuration/Configurations;->mReadConversationProviderFuture:Ljava/util/concurrent/Future;

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/Configurations;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/Configurations;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 93
    iput-object v2, p0, Lcom/sonyericsson/android/camera/configuration/Configurations;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 98
    :cond_1
    return-void
.end method

.method public startInitTask(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/configuration/Configurations;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 73
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/Configurations;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonyericsson/android/camera/configuration/Configurations$ReadConversationProviderTask;

    invoke-direct {v1, p1}, Lcom/sonyericsson/android/camera/configuration/Configurations$ReadConversationProviderTask;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/configuration/Configurations;->mReadConversationProviderFuture:Ljava/util/concurrent/Future;

    .line 78
    return-void
.end method
