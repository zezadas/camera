.class public Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;
.super Ljava/lang/Object;
.source "SharedPreferencesUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil$1;,
        Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil$GetSharedPreferencesTask;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field private mMaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mPrefixList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mReader:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;

.field private mWriter:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;->mPrefixList:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;->mMaps:Ljava/util/Map;

    .line 57
    const-string v0, "com.sonyericsson.android.camera.shared_preferences"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;->mPreferences:Landroid/content/SharedPreferences;

    .line 59
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;->mPreferences:Landroid/content/SharedPreferences;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;-><init>(Landroid/content/SharedPreferences;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;->mWriter:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;

    .line 60
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;->mPreferences:Landroid/content/SharedPreferences;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;-><init>(Landroid/content/SharedPreferences;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;->mReader:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;

    .line 61
    return-void
.end method

.method private apply(Z)V
    .locals 0
    .param p1, "apply"    # Z

    .prologue
    .line 119
    if-eqz p1, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;->apply()V

    .line 122
    :cond_0
    return-void
.end method

.method public static createPrefix(Lcom/sonyericsson/android/camera/configuration/ParameterCategory;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "category"    # Lcom/sonyericsson/android/camera/configuration/ParameterCategory;
    .param p1, "mode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .param p2, "extra"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x5f

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 169
    sget-object v1, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterCategory:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 177
    :goto_0
    :pswitch_0
    if-eqz p2, :cond_0

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 178
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 181
    :cond_0
    const-string v1, "PARAMS_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 173
    :pswitch_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 169
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getCommonPrefix()Ljava/lang/String;
    .locals 3

    .prologue
    .line 216
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->COMMON:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->UNKNOWN:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;->createPrefix(Lcom/sonyericsson/android/camera/configuration/ParameterCategory;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPrefix(Lcom/sonyericsson/android/camera/configuration/ParameterKey;II)Ljava/lang/String;
    .locals 4
    .param p0, "key"    # Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    .param p1, "type"    # I
    .param p2, "facing"    # I

    .prologue
    const/4 v3, 0x1

    .line 195
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->getCategory()Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    move-result-object v0

    .line 197
    .local v0, "category":Lcom/sonyericsson/android/camera/configuration/ParameterCategory;
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->UNKNOWN:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 198
    .local v1, "mode":Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->COMMON:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    if-eq v0, v2, :cond_0

    .line 199
    if-ne p2, v3, :cond_2

    .line 200
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getInstance()Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->isSceneRecognitionSupported(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 202
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 211
    :cond_0
    :goto_0
    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;->createPrefix(Lcom/sonyericsson/android/camera/configuration/ParameterCategory;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 204
    :cond_1
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    goto :goto_0

    .line 207
    :cond_2
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    goto :goto_0
.end method

.method public static getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .prologue
    const/4 v9, 0x1

    .line 229
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    .line 230
    .local v3, "executor":Ljava/util/concurrent/ExecutorService;
    new-instance v6, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil$GetSharedPreferencesTask;

    invoke-direct {v6, p0, p1, p2}, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil$GetSharedPreferencesTask;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-interface {v3, v6}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v4

    .line 233
    .local v4, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Landroid/content/SharedPreferences;>;"
    const/4 v5, 0x0

    .line 235
    .local v5, "sharedPrefs":Landroid/content/SharedPreferences;
    const-wide/16 v6, 0xbb8

    :try_start_0
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v6, v7, v8}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/content/SharedPreferences;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    invoke-interface {v4, v9}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 244
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 247
    :goto_0
    return-object v5

    .line 236
    :catch_0
    move-exception v2

    .line 237
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_1
    sget-object v6, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;->TAG:Ljava/lang/String;

    const-string v7, "Get shared prefs has been interrupted."

    invoke-static {v6, v7, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    invoke-interface {v4, v9}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 244
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    goto :goto_0

    .line 238
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v2

    .line 239
    .local v2, "e":Ljava/util/concurrent/ExecutionException;
    :try_start_2
    sget-object v6, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;->TAG:Ljava/lang/String;

    const-string v7, "Get shared prefs failed."

    invoke-static {v6, v7, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 243
    invoke-interface {v4, v9}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 244
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    goto :goto_0

    .line 240
    .end local v2    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_2
    move-exception v2

    .line 241
    .local v2, "e":Ljava/util/concurrent/TimeoutException;
    :try_start_3
    sget-object v6, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;->TAG:Ljava/lang/String;

    const-string v7, "Get shared prefs failed."

    invoke-static {v6, v7, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 243
    invoke-interface {v4, v9}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 244
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    goto :goto_0

    .line 243
    .end local v2    # "e":Ljava/util/concurrent/TimeoutException;
    :catchall_0
    move-exception v6

    invoke-interface {v4, v9}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 244
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    throw v6
.end method


# virtual methods
.method public apply()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;->mWriter:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;->apply()V

    .line 126
    return-void
.end method

.method public clearSharedPreferences()V
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 272
    :cond_0
    return-void
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getStringMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;->mMaps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;->mMaps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 150
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method public readBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 91
    iget-object v1, p0, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;->mReader:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;

    invoke-virtual {v1, p1, p2}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 94
    .local v0, "value":Z
    return v0
.end method

.method public readParameters(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/android/camera/configuration/ParameterKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, "keyList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/android/camera/configuration/ParameterKey;>;"
    iget-object v3, p0, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v3, :cond_1

    .line 78
    :cond_0
    return-void

    .line 73
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;->mPrefixList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 75
    .local v1, "prefix":Ljava/lang/String;
    iget-object v3, p0, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;->mReader:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;

    invoke-virtual {v3, p1, v1}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;->readStringMap(Ljava/util/List;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 76
    .local v2, "value":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;->mMaps:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 98
    iget-object v1, p0, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;->mReader:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;

    invoke-virtual {v1, p1, p2}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "value":Ljava/lang/String;
    return-object v0
.end method

.method public registerKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;->mPrefixList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;->mPrefixList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_0
    return-void
.end method

.method public setStringMap(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 160
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;->mMaps:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    return-void
.end method

.method public writeBoolean(Ljava/lang/String;ZZ)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .param p3, "apply"    # Z

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;->mWriter:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;->writeBoolean(Ljava/lang/String;Z)V

    .line 108
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;->apply(Z)V

    .line 109
    return-void
.end method

.method public writeParameters(Z)V
    .locals 4
    .param p1, "apply"    # Z

    .prologue
    .line 81
    iget-object v2, p0, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;->mMaps:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 84
    .local v1, "prefix":Ljava/lang/String;
    iget-object v3, p0, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;->mWriter:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;->mMaps:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-virtual {v3, v2, v1}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;->writeString(Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    .line 87
    .end local v1    # "prefix":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;->apply(Z)V

    .line 88
    return-void
.end method

.method public writeString(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "apply"    # Z

    .prologue
    .line 114
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;->mWriter:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;->apply(Z)V

    .line 116
    return-void
.end method
