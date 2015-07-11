.class public Lcom/sonyericsson/android/camera/parameter/ParameterManager;
.super Ljava/lang/Object;
.source "ParameterManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/parameter/ParameterManager$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

.field private mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

.field private mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;",
            "Lcom/sonyericsson/android/camera/parameter/Parameters;",
            ">;"
        }
    .end annotation
.end field

.field protected mSettingsApplied:Z

.field private mSharedPrefs:Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/cameracommon/mediasaving/StorageController;)V
    .locals 8
    .param p1, "activity"    # Lcom/sonyericsson/android/camera/CameraActivity;
    .param p2, "launchMode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .param p3, "storageController"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->mSettingsApplied:Z

    .line 57
    iput-object p1, p0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 58
    new-instance v6, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;

    invoke-direct {v6, p1}, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->mSharedPrefs:Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;

    .line 60
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShot()Z

    move-result v2

    .line 61
    .local v2, "isOneShot":Z
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShotVideo()Z

    move-result v3

    .line 62
    .local v3, "isOneShotVideo":Z
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->getConfigurations()Lcom/sonyericsson/android/camera/configuration/Configurations;

    move-result-object v0

    .line 65
    .local v0, "config":Lcom/sonyericsson/android/camera/configuration/Configurations;
    invoke-static {}, Lcom/sonyericsson/android/camera/parameter/CommonParams;->getInstance()Lcom/sonyericsson/android/camera/parameter/CommonParams;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/sonyericsson/android/camera/parameter/CommonParams;->init(Lcom/sonyericsson/android/camera/CameraActivity;)V

    .line 68
    new-instance v6, Ljava/util/EnumMap;

    const-class v7, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-direct {v6, v7}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v6, p0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->mMap:Ljava/util/Map;

    .line 69
    invoke-static {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getValidOptions(Lcom/sonyericsson/android/camera/CameraActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 70
    .local v4, "mode":Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    invoke-static {v4, v3, p3}, Lcom/sonyericsson/android/camera/parameter/Parameters;->create(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;ZLcom/sonyericsson/cameracommon/mediasaving/StorageController;)Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v5

    .line 71
    .local v5, "params":Lcom/sonyericsson/android/camera/parameter/Parameters;
    iget-object v6, p0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->mSharedPrefs:Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;

    invoke-virtual {v5, v2, v3, v0, v6}, Lcom/sonyericsson/android/camera/parameter/Parameters;->prepareHolder(ZZLcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;)V

    .line 72
    iget-object v6, p0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->mMap:Ljava/util/Map;

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 76
    .end local v4    # "mode":Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .end local v5    # "params":Lcom/sonyericsson/android/camera/parameter/Parameters;
    :cond_0
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->changeParameters(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 77
    return-void
.end method

.method private applyChangedValues(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 344
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;>;"
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/CameraActivity;->getControllerManager()Lcom/sonyericsson/android/camera/ControllerManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/ControllerManager;->isControllerReleased()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 355
    :goto_0
    return-void

    .line 348
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    .line 349
    .local v0, "changedValue":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/CameraActivity;->getControllerManager()Lcom/sonyericsson/android/camera/ControllerManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/ControllerManager;->getParameterListener()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;->apply(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;)V

    goto :goto_1

    .line 354
    .end local v0    # "changedValue":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/CameraActivity;->getControllerManager()Lcom/sonyericsson/android/camera/ControllerManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/ControllerManager;->getParameterListener()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;->commit()V

    goto :goto_0
.end method

.method private changeParameters(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .locals 1
    .param p1, "mode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .prologue
    .line 267
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/parameter/Parameters;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    .line 268
    return-void
.end method

.method public static getDestinationToSave()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder",
            "<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;",
            ">;"
        }
    .end annotation

    .prologue
    .line 398
    invoke-static {}, Lcom/sonyericsson/android/camera/parameter/CommonParams;->getInstance()Lcom/sonyericsson/android/camera/parameter/CommonParams;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/CommonParams;->mDestinationToSave:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    return-object v0
.end method

.method private setCommonParams(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V
    .locals 2
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    .prologue
    .line 336
    invoke-static {p1}, Lcom/sonyericsson/android/camera/parameter/SettingsConverter;->getCommonSettingValue(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    move-result-object v0

    .line 338
    .local v0, "commonValue":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    if-eqz v0, :cond_0

    .line 339
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->set(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    .line 341
    :cond_0
    return-void
.end method


# virtual methods
.method public applyCapturingMode(ZLcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .locals 3
    .param p1, "applyAllParams"    # Z
    .param p2, "previous"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .prologue
    .line 383
    if-eqz p1, :cond_0

    .line 384
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getTargetParameters()Ljava/util/EnumMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 390
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;>;"
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->commit()V

    .line 392
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->applyChangedValues(Ljava/util/List;)V

    .line 394
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->updateVideoOption()V

    .line 395
    return-void

    .line 387
    .end local v0    # "values":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;>;"
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->getParameters(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getParameters()Ljava/util/EnumMap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getChangedValues(Ljava/util/EnumMap;)Ljava/util/List;

    move-result-object v0

    .restart local v0    # "values":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;>;"
    goto :goto_0
.end method

.method public changeCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .locals 7
    .param p1, "mode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .prologue
    .line 359
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->changeParameters(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 362
    iget-object v5, p0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    iget-object v5, v5, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    iget-object v6, p0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    invoke-virtual {v5, v6}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->apply(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;)V

    .line 364
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->values()[Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    move-result-object v0

    .local v0, "arr$":[Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 365
    .local v2, "key":Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    iget-object v5, p0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    invoke-virtual {v5, v2}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getOptions(Lcom/sonyericsson/android/camera/configuration/ParameterKey;)[Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v5

    array-length v4, v5

    .line 366
    .local v4, "numberOfOptions":I
    invoke-static {v4}, Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;->getSelectability(I)Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->setSelectability(Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;)V

    .line 364
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 368
    .end local v2    # "key":Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    .end local v4    # "numberOfOptions":I
    :cond_0
    iget-object v5, p0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/parameter/Parameters;->updateSelectability()V

    .line 369
    return-void
.end method

.method public get(Lcom/sonyericsson/android/camera/configuration/ParameterKey;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    .locals 1
    .param p1, "key"    # Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    .prologue
    .line 298
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getParameters()Ljava/util/EnumMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    return-object v0
.end method

.method public getOptions(Lcom/sonyericsson/android/camera/configuration/ParameterKey;)[Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    .locals 1
    .param p1, "key"    # Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    .prologue
    .line 288
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getOptions(Lcom/sonyericsson/android/camera/configuration/ParameterKey;)[Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    return-object v0
.end method

.method public getParameters(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/parameter/Parameters;
    .locals 1
    .param p1, "mode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .prologue
    .line 275
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/parameter/Parameters;

    .line 278
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    goto :goto_0
.end method

.method public getSelfTimerType(Lcom/sonyericsson/android/camera/controller/ControllerEventSource;)I
    .locals 4
    .param p1, "source"    # Lcom/sonyericsson/android/camera/controller/ControllerEventSource;

    .prologue
    .line 423
    const/4 v0, 0x1

    .line 425
    .local v0, "type":I
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShotVideo()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 426
    const/4 v0, 0x2

    move v1, v0

    .line 442
    .end local v0    # "type":I
    .local v1, "type":I
    :goto_0
    return v1

    .line 431
    .end local v1    # "type":I
    .restart local v0    # "type":I
    :cond_0
    sget-object v2, Lcom/sonyericsson/android/camera/parameter/ParameterManager$1;->$SwitchMap$com$sonyericsson$android$camera$controller$ControllerEventSource:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/ControllerEventSource;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 437
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->getParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v2

    iget-object v2, v2, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result v0

    :goto_1
    move v1, v0

    .line 442
    .end local v0    # "type":I
    .restart local v1    # "type":I
    goto :goto_0

    .line 433
    .end local v1    # "type":I
    .restart local v0    # "type":I
    :pswitch_0
    const/4 v0, 0x2

    .line 434
    goto :goto_1

    .line 431
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public isSelfTimerOn()Z
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getSelfTimer()Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->getBooleanValue()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isVideoSelfTimerOn()Z
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getVideoSelfTimer()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSelfTimer;->getBooleanValue()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 240
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->mMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/parameter/Parameters;

    .line 241
    .local v1, "params":Lcom/sonyericsson/android/camera/parameter/Parameters;
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->clearHolder()V

    goto :goto_0

    .line 243
    .end local v1    # "params":Lcom/sonyericsson/android/camera/parameter/Parameters;
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->mMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 245
    iput-object v3, p0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    .line 246
    iput-object v3, p0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->mSharedPrefs:Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;

    .line 247
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 255
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->mMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/parameter/Parameters;

    .line 256
    .local v1, "params":Lcom/sonyericsson/android/camera/parameter/Parameters;
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->reset()V

    goto :goto_0

    .line 258
    .end local v1    # "params":Lcom/sonyericsson/android/camera/parameter/Parameters;
    :cond_0
    return-void
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V
    .locals 4
    .param p1, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    .prologue
    .line 304
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;->getParameterKey()Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    move-result-object v0

    .line 307
    .local v0, "key":Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    invoke-interface {p1, v2}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;->apply(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;)V

    .line 309
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getChangedValues()Ljava/util/List;

    move-result-object v1

    .line 310
    .local v1, "values":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;>;"
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/parameter/Parameters;->commit()V

    .line 312
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    if-ne v0, v2, :cond_2

    .line 313
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/CameraActivity;->getControllerManager()Lcom/sonyericsson/android/camera/ControllerManager;

    move-result-object v3

    move-object v2, p1

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/sonyericsson/android/camera/ControllerManager;->stopObjectTracking(Landroid/graphics/Rect;)V

    .line 320
    :cond_0
    :goto_0
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->applyChangedValues(Ljava/util/List;)V

    .line 322
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;->getParameterKey()Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->isCommon()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 323
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->setCommonParams(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    .line 325
    :cond_1
    return-void

    .line 315
    :cond_2
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    if-ne v0, v2, :cond_0

    .line 316
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/CameraActivity;->getControllerManager()Lcom/sonyericsson/android/camera/ControllerManager;

    move-result-object v3

    move-object v2, p1

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/sonyericsson/android/camera/ControllerManager;->stopObjectTracking(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public suspend()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 187
    iget-boolean v3, p0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->mSettingsApplied:Z

    if-eqz v3, :cond_3

    .line 193
    iget-object v3, p0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->mMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/parameter/Parameters;

    .line 194
    .local v2, "params":Lcom/sonyericsson/android/camera/parameter/Parameters;
    iget-object v3, p0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->mSharedPrefs:Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/parameter/Parameters;->writeSharedPrefs(Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;)V

    goto :goto_0

    .line 197
    .end local v2    # "params":Lcom/sonyericsson/android/camera/parameter/Parameters;
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->mSharedPrefs:Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;

    invoke-virtual {v3, v6}, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;->writeParameters(Z)V

    .line 199
    iget-object v3, p0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShot()Z

    move-result v3

    if-nez v3, :cond_1

    .line 200
    iget-object v3, p0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->mSharedPrefs:Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;

    const-string v4, "KEY_LAST_MODE"

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->getParameters()Lcom/sonyericsson/android/camera/parameter/Parameters;

    move-result-object v5

    iget-object v5, v5, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v6}, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;->writeString(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 204
    iget-object v3, p0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->mSharedPrefs:Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;

    const-string v4, "KEY_LAST_PREVIOUS_MODE"

    iget-object v5, p0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/CameraActivity;->getPreviousCapturingModeNotFront()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v6}, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;->writeString(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 208
    iget-object v3, p0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->mSharedPrefs:Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;

    const-string v4, "KEY_LAST_PREVIOUS_MANUAL_MODE"

    iget-object v5, p0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/CameraActivity;->getPreviousManualMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v6}, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;->writeString(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 212
    :cond_1
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->isFrontCameraSupported()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->mSharedPrefs:Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "FRONT_FAST"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 216
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getInstance()Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->isSceneRecognitionSupported(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 218
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 222
    .local v1, "mode":Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    :goto_1
    iget-object v3, p0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->mSharedPrefs:Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;

    const-string v4, "FRONT_FAST"

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v6}, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;->writeString(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 228
    .end local v1    # "mode":Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->mSharedPrefs:Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;->apply()V

    .line 231
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_3
    iput-boolean v6, p0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->mSettingsApplied:Z

    .line 232
    return-void

    .line 220
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_4
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .restart local v1    # "mode":Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    goto :goto_1
.end method

.method public update(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .locals 18
    .param p1, "launchMode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .prologue
    .line 86
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->mMap:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sonyericsson/android/camera/parameter/Parameters;

    .line 87
    .local v11, "params":Lcom/sonyericsson/android/camera/parameter/Parameters;
    iget-object v13, v11, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v14}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShot()Z

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v15}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShotVideo()Z

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/android/camera/CameraActivity;->getConfigurations()Lcom/sonyericsson/android/camera/configuration/Configurations;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->mSharedPrefs:Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;

    move-object/from16 v17, v0

    invoke-virtual/range {v13 .. v17}, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->init(ZZLcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;)V

    .line 90
    iget-object v13, v11, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    invoke-virtual {v13}, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->values()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    .line 91
    .local v3, "holder":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;, "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder<*>;"
    invoke-virtual {v11, v3}, Lcom/sonyericsson/android/camera/parameter/Parameters;->updateHolder(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;)V

    goto :goto_0

    .line 96
    .end local v3    # "holder":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;, "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder<*>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v11    # "params":Lcom/sonyericsson/android/camera/parameter/Parameters;
    :cond_1
    sget-object v8, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->UNKNOWN:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 97
    .local v8, "lastPhotoMode":Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->mSharedPrefs:Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;

    const-string v14, "KEY_LAST_MODE"

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->name()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 100
    .local v12, "string":Ljava/lang/String;
    invoke-static {v12, v8}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->convertFrom(Ljava/lang/String;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v8

    .line 101
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v13}, Lcom/sonyericsson/android/camera/CameraActivity;->getControllerManager()Lcom/sonyericsson/android/camera/ControllerManager;

    move-result-object v13

    invoke-virtual {v13, v8}, Lcom/sonyericsson/android/camera/ControllerManager;->storeMainPhotoMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 104
    sget-object v13, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->setSaved(Z)V

    .line 107
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v7, "keyList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/android/camera/configuration/ParameterKey;>;"
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->values()[Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    move-result-object v1

    .local v1, "arr$":[Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    array-length v9, v1

    .local v9, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v9, :cond_4

    aget-object v6, v1, v4

    .line 109
    .local v6, "key":Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->isSaved()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 110
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v13}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShotVideo()Z

    move-result v13

    if-eqz v13, :cond_2

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    if-eq v6, v13, :cond_3

    .line 111
    :cond_2
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 116
    .end local v6    # "key":Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->mSharedPrefs:Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;

    invoke-virtual {v13, v7}, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;->readParameters(Ljava/util/List;)V

    .line 120
    invoke-static {}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->values()[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    move-result-object v1

    .local v1, "arr$":[Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    array-length v9, v1

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v9, :cond_5

    aget-object v6, v1, v4

    .line 121
    .local v6, "key":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v13}, Lcom/sonyericsson/android/camera/CameraActivity;->getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    move-result-object v13

    invoke-virtual {v13, v6}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->get(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    move-result-object v2

    .line 122
    .local v2, "commonValue":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    invoke-static {v6, v2}, Lcom/sonyericsson/android/camera/parameter/SettingsConverter;->convertAndApplyValue(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    .line 120
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 128
    .end local v2    # "commonValue":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    .end local v6    # "key":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    :cond_5
    invoke-static {}, Lcom/sonyericsson/android/camera/parameter/CommonParams;->getInstance()Lcom/sonyericsson/android/camera/parameter/CommonParams;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v13, v14}, Lcom/sonyericsson/android/camera/parameter/CommonParams;->update(Lcom/sonyericsson/android/camera/CameraActivity;)V

    .line 131
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->mMap:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sonyericsson/android/camera/parameter/Parameters;

    .line 132
    .restart local v11    # "params":Lcom/sonyericsson/android/camera/parameter/Parameters;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->mSharedPrefs:Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;

    invoke-virtual {v11, v13}, Lcom/sonyericsson/android/camera/parameter/Parameters;->readSharedPrefs(Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;)V

    .line 133
    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/parameter/Parameters;->updatePhotoLight()V

    goto :goto_3

    .line 137
    .end local v11    # "params":Lcom/sonyericsson/android/camera/parameter/Parameters;
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->mMap:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 138
    .local v10, "mode":Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    invoke-virtual {v10}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_7

    .line 139
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->updateVideoOption()V

    goto :goto_4

    .line 144
    .end local v10    # "mode":Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    :cond_8
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/Configurations;->isFaceIdentificationEnabled()Z

    move-result v13

    if-nez v13, :cond_9

    .line 145
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    iget-object v13, v13, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v13, v13, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mFaceIdentify:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v13}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->setDefaultValue()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    .line 149
    :cond_9
    invoke-virtual/range {p0 .. p1}, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->changeCapturingMode(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 152
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    invoke-virtual {v13}, Lcom/sonyericsson/android/camera/parameter/Parameters;->commit()V

    .line 155
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->mMap:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_a
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sonyericsson/android/camera/parameter/Parameters;

    .line 156
    .restart local v11    # "params":Lcom/sonyericsson/android/camera/parameter/Parameters;
    iget-object v13, v11, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    iget-object v14, v14, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq v13, v14, :cond_a

    .line 157
    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/parameter/Parameters;->commit()V

    goto :goto_5

    .line 161
    .end local v11    # "params":Lcom/sonyericsson/android/camera/parameter/Parameters;
    :cond_b
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->mSettingsApplied:Z

    .line 162
    return-void
.end method

.method public updateAutoUpload()V
    .locals 5

    .prologue
    .line 403
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/AutoUpload;->getOptions()[Lcom/sonyericsson/android/camera/configuration/parameters/AutoUpload;

    move-result-object v2

    .line 404
    .local v2, "options":[Lcom/sonyericsson/android/camera/configuration/parameters/AutoUpload;
    invoke-static {}, Lcom/sonyericsson/android/camera/parameter/CommonParams;->getInstance()Lcom/sonyericsson/android/camera/parameter/CommonParams;

    move-result-object v4

    iget-object v4, v4, Lcom/sonyericsson/android/camera/parameter/CommonParams;->mAutoUpload:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v4, v2}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->setOptions([Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    .line 405
    invoke-static {}, Lcom/sonyericsson/android/camera/parameter/CommonParams;->getInstance()Lcom/sonyericsson/android/camera/parameter/CommonParams;

    move-result-object v4

    iget-object v4, v4, Lcom/sonyericsson/android/camera/parameter/CommonParams;->mAutoUpload:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/android/camera/configuration/parameters/AutoUpload;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/AutoUpload;->getParameterKey()Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    move-result-object v1

    .line 406
    .local v1, "key":Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    array-length v4, v2

    invoke-static {v4}, Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;->getSelectability(I)Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->setSelectability(Lcom/sonyericsson/android/camera/configuration/ParameterSelectability;)V

    .line 409
    iget-object v4, p0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->mMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/parameter/Parameters;

    .line 410
    .local v3, "params":Lcom/sonyericsson/android/camera/parameter/Parameters;
    invoke-static {}, Lcom/sonyericsson/android/camera/parameter/CommonParams;->getInstance()Lcom/sonyericsson/android/camera/parameter/CommonParams;

    move-result-object v4

    iget-object v4, v4, Lcom/sonyericsson/android/camera/parameter/CommonParams;->mAutoUpload:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/camera/parameter/Parameters;->updateHolder(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;)V

    goto :goto_0

    .line 412
    .end local v3    # "params":Lcom/sonyericsson/android/camera/parameter/Parameters;
    :cond_0
    return-void
.end method

.method public updateVideoOption()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 166
    new-instance v0, Lcom/sonyericsson/android/camera/ActionMode;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShot()Z

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    iget-object v3, v3, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    iget-object v4, v4, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()I

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/sonyericsson/android/camera/ActionMode;-><init>(ZII)V

    .line 169
    .local v0, "mode":Lcom/sonyericsson/android/camera/ActionMode;
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/CameraActivity;->getConfigurations()Lcom/sonyericsson/android/camera/configuration/Configurations;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getOptions(Lcom/sonyericsson/android/camera/ActionMode;Lcom/sonyericsson/android/camera/configuration/Configurations;)[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v1

    .line 171
    .local v1, "options":[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->mCameraActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShotVideo()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 174
    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 175
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    aget-object v3, v1, v5

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/parameter/Parameters;->set(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)V

    .line 177
    :cond_0
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-virtual {v2, v5}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->setSaved(Z)V

    .line 179
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/android/camera/parameter/ParameterManager;->mCurrentParameters:Lcom/sonyericsson/android/camera/parameter/Parameters;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/parameter/Parameters;->mCapturingModeParams:Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->setOptions([Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    .line 180
    return-void
.end method
