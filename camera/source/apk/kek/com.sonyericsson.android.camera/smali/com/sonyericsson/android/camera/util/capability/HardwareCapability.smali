.class public Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;
.super Ljava/lang/Object;
.source "HardwareCapability.java"


# static fields
.field private static final FILE_NAME:Ljava/lang/String; = "com.sonyericsson.android.camera.supported_values."

.field private static final TAG:Ljava/lang/String; = "HardwareCapability"

.field private static sCameraExtensionVersion:Lcom/sonyericsson/cameracommon/device/CameraExtensionVersion;

.field private static final sInstance:Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;

.field private static final sNumberOfCameras:I


# instance fields
.field private mList:[Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

.field private mNeedToClearSettingsInSharedPref:Z

.field private final mSaveSettingMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSharedPrefsUtil:Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 46
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    .line 50
    .local v0, "numberOfCameras":I
    if-lez v0, :cond_0

    .line 51
    sput v0, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->sNumberOfCameras:I

    .line 58
    :goto_0
    new-instance v1, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;

    invoke-direct {v1}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;-><init>()V

    sput-object v1, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->sInstance:Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;

    .line 75
    const/4 v1, 0x0

    sput-object v1, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->sCameraExtensionVersion:Lcom/sonyericsson/cameracommon/device/CameraExtensionVersion;

    return-void

    .line 53
    :cond_0
    const/4 v1, 0x0

    sput v1, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->sNumberOfCameras:I

    .line 54
    const-string v1, "HardwareCapability"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Camera.getNumberOfCameras() return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    sget v0, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->sNumberOfCameras:I

    new-array v0, v0, [Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->mList:[Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->mSaveSettingMap:Ljava/util/Map;

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->mNeedToClearSettingsInSharedPref:Z

    .line 65
    return-void
.end method

.method public static getCapability(I)Lcom/sonyericsson/android/camera/util/capability/CapabilityList;
    .locals 1
    .param p0, "cameraId"    # I

    .prologue
    .line 92
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->sInstance:Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getList(I)Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->sInstance:Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;

    return-object v0
.end method

.method private getList(I)Lcom/sonyericsson/android/camera/util/capability/CapabilityList;
    .locals 2
    .param p1, "cameraId"    # I

    .prologue
    .line 107
    iget-object v1, p0, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->mList:[Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

    array-length v1, v1

    if-ge p1, v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->mList:[Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

    aget-object v0, v1, p1

    .line 109
    .local v0, "list":Lcom/sonyericsson/android/camera/util/capability/CapabilityList;
    if-eqz v0, :cond_0

    .line 110
    return-object v0

    .line 113
    .end local v0    # "list":Lcom/sonyericsson/android/camera/util/capability/CapabilityList;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public static getNumberOfCameras()I
    .locals 1

    .prologue
    .line 271
    sget v0, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->sNumberOfCameras:I

    return v0
.end method

.method public static isCameraSupported()Z
    .locals 1

    .prologue
    .line 275
    sget v0, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->sNumberOfCameras:I

    if-lez v0, :cond_0

    .line 276
    const/4 v0, 0x1

    .line 278
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFrontCameraSupported()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 283
    sget v1, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->sNumberOfCameras:I

    if-le v1, v0, :cond_0

    .line 286
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStillHdrSupportedWith(Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;)Z
    .locals 1
    .param p0, "resolution"    # Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .prologue
    .line 401
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->TWENTY_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->FIFTEEN_MP_WIDE:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    if-eq p0, v0, :cond_0

    .line 403
    const/4 v0, 0x1

    .line 405
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private load(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cameraId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/android/camera/device/CameraDeviceException;
        }
    .end annotation

    .prologue
    .line 152
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->setCapabilityFromSharedPrefs(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->setCapabilityFromParamsWithCameraOpen(Landroid/content/Context;I)V

    .line 155
    :cond_0
    return-void
.end method

.method private resetSharedPrefs(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 336
    new-instance v0, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;

    invoke-direct {v0, p1}, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;-><init>(Landroid/content/Context;)V

    .line 337
    .local v0, "sharedPrefsUtil":Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;->clearSharedPreferences()V

    .line 338
    return-void
.end method

.method private restoreManualModeSetting()V
    .locals 5

    .prologue
    .line 366
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const-string v4, ""

    invoke-static {v2, v3, v4}, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;->createPrefix(Lcom/sonyericsson/android/camera/configuration/ParameterCategory;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, "prefix":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->mSaveSettingMap:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->FLASH:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 369
    .local v1, "value":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->mSharedPrefsUtil:Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->FLASH:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;->writeString(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 370
    return-void
.end method

.method private restoreSettings(I)V
    .locals 6
    .param p1, "cameraId"    # I

    .prologue
    const/4 v5, 0x1

    .line 357
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->FLASH:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-static {v2, v5, p1}, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;->getPrefix(Lcom/sonyericsson/android/camera/configuration/ParameterKey;II)Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, "prefix":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->mSaveSettingMap:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->FLASH:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 362
    .local v1, "value":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->mSharedPrefsUtil:Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->FLASH:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v5}, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;->writeString(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 363
    return-void
.end method

.method private saveManualModeSetting()V
    .locals 5

    .prologue
    .line 341
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterCategory;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const-string v4, ""

    invoke-static {v2, v3, v4}, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;->createPrefix(Lcom/sonyericsson/android/camera/configuration/ParameterCategory;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, "prefix":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->mSharedPrefsUtil:Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->FLASH:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "default"

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 344
    .local v1, "value":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->mSaveSettingMap:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->FLASH:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    return-void
.end method

.method private saveSettings(I)V
    .locals 5
    .param p1, "cameraId"    # I

    .prologue
    .line 348
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->FLASH:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    const/4 v3, 0x1

    invoke-static {v2, v3, p1}, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;->getPrefix(Lcom/sonyericsson/android/camera/configuration/ParameterKey;II)Ljava/lang/String;

    move-result-object v0

    .line 352
    .local v0, "prefix":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->mSharedPrefsUtil:Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->FLASH:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "default"

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 353
    .local v1, "value":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->mSaveSettingMap:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->FLASH:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    return-void
.end method


# virtual methods
.method public getCameraExtensionVersion()Lcom/sonyericsson/cameracommon/device/CameraExtensionVersion;
    .locals 2

    .prologue
    .line 328
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->sCameraExtensionVersion:Lcom/sonyericsson/cameracommon/device/CameraExtensionVersion;

    if-nez v0, :cond_0

    .line 329
    new-instance v1, Lcom/sonyericsson/cameracommon/device/CameraExtensionVersion;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getList(I)Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->EXTENSION_VERSION:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/sonyericsson/cameracommon/device/CameraExtensionVersion;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->sCameraExtensionVersion:Lcom/sonyericsson/cameracommon/device/CameraExtensionVersion;

    .line 332
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->sCameraExtensionVersion:Lcom/sonyericsson/cameracommon/device/CameraExtensionVersion;

    return-object v0
.end method

.method public getFileName(I)Ljava/lang/String;
    .locals 2
    .param p1, "cameraId"    # I

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.sonyericsson.android.camera.supported_values."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxSoftSkinLevel(I)I
    .locals 1
    .param p1, "cameraId"    # I

    .prologue
    .line 426
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getList(I)Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->MAX_SOFT_SKIN_LEVEL:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public isCameraExtensionSupported(I)Z
    .locals 2
    .param p1, "cameraId"    # I

    .prologue
    .line 266
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getList(I)Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

    move-result-object v1

    iget-object v1, v1, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->EXTENSION_VERSION:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 267
    .local v0, "version":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDetectedFaceIdSupported(I)Z
    .locals 3
    .param p1, "cameraId"    # I

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getCameraExtensionVersion()Lcom/sonyericsson/cameracommon/device/CameraExtensionVersion;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/device/CameraExtensionVersion;->isLaterThanOrEqualTo(II)Z

    move-result v0

    return v0
.end method

.method public isFullHdVideoFpsSupported(II)Z
    .locals 2
    .param p1, "cameraId"    # I
    .param p2, "fps"    # I

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getList(I)Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

    move-result-object v1

    iget-object v1, v1, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->MAX_VIDEO_FRAME:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 298
    .local v0, "maxFrame":I
    mul-int/lit16 v1, p2, 0x3e8

    if-gt v1, v0, :cond_0

    .line 299
    const/4 v1, 0x1

    .line 301
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSceneRecognitionSupported(I)Z
    .locals 1
    .param p1, "cameraId"    # I

    .prologue
    .line 257
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getList(I)Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isStillHdrVer3(I)Z
    .locals 4
    .param p1, "cameraId"    # I

    .prologue
    .line 381
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getList(I)Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

    move-result-object v3

    iget-object v3, v3, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->SCENE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 382
    .local v1, "supportedValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 383
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 385
    .local v2, "value":Ljava/lang/String;
    const-string v3, "hdr"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 386
    const/4 v3, 0x1

    .line 390
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "value":Ljava/lang/String;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isVideoHdrSupported(ILandroid/graphics/Rect;)Z
    .locals 3
    .param p1, "cameraId"    # I
    .param p2, "videoSize"    # Landroid/graphics/Rect;

    .prologue
    .line 315
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getList(I)Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

    move-result-object v1

    iget-object v1, v1, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->MAX_VIDEO_HDR_SIZE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 318
    .local v0, "maxVideoHdrSize":Landroid/graphics/Rect;
    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 321
    const/4 v1, 0x1

    .line 324
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isVideoMetaDataSupported(I)Z
    .locals 2
    .param p1, "cameraId"    # I

    .prologue
    .line 430
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getList(I)Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

    move-result-object v1

    iget-object v1, v1, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->VIDEO_MEATDAT_VALUES:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 431
    .local v0, "supported":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public isVideoNrSupported(I)Z
    .locals 2
    .param p1, "cameraId"    # I

    .prologue
    .line 415
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getList(I)Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

    move-result-object v1

    iget-object v1, v1, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->VIDEO_NR_VALUES:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 416
    .local v0, "supported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "on"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public load(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/android/camera/device/CameraDeviceException;
        }
    .end annotation

    .prologue
    .line 126
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->sNumberOfCameras:I

    if-ge v0, v1, :cond_0

    .line 127
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->load(Landroid/content/Context;I)V

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    :cond_0
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->mNeedToClearSettingsInSharedPref:Z

    if-eqz v1, :cond_3

    .line 131
    new-instance v1, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;

    invoke-direct {v1, p1}, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->mSharedPrefsUtil:Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;

    .line 132
    iget-object v1, p0, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->mSaveSettingMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 133
    const/4 v0, 0x0

    :goto_1
    sget v1, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->sNumberOfCameras:I

    if-ge v0, v1, :cond_1

    .line 134
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->saveSettings(I)V

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 137
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->saveManualModeSetting()V

    .line 138
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->resetSharedPrefs(Landroid/content/Context;)V

    .line 140
    const/4 v0, 0x0

    :goto_2
    sget v1, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->sNumberOfCameras:I

    if-ge v0, v1, :cond_2

    .line 141
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->restoreSettings(I)V

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 144
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->restoreManualModeSetting()V

    .line 145
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->mNeedToClearSettingsInSharedPref:Z

    .line 147
    :cond_3
    return-void
.end method

.method public setCameraParameters(Landroid/content/Context;ILandroid/hardware/Camera$Parameters;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cameraId"    # I
    .param p3, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 103
    invoke-virtual {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->setCapabilityFromParams(Landroid/content/Context;ILandroid/hardware/Camera$Parameters;)V

    .line 104
    return-void
.end method

.method setCapabilityFromParams(Landroid/content/Context;ILandroid/hardware/Camera$Parameters;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cameraId"    # I
    .param p3, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 164
    iget-object v2, p0, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->mList:[Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

    new-instance v3, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

    invoke-direct {v3, p1, p3}, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;-><init>(Landroid/content/Context;Landroid/hardware/Camera$Parameters;)V

    aput-object v3, v2, p2

    .line 167
    const/4 v1, 0x1

    .line 168
    .local v1, "success":Z
    iget-object v2, p0, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->mList:[Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

    aget-object v0, v2, p2

    .line 169
    .local v0, "list":Lcom/sonyericsson/android/camera/util/capability/CapabilityList;
    iget-object v2, v0, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->FPS_RANGE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 170
    const/4 v1, 0x0

    .line 177
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 178
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->store(Landroid/content/Context;I)Z

    .line 182
    :cond_1
    return-void

    .line 171
    :cond_2
    iget-object v2, v0, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->PREVIEW_SIZE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 172
    const/4 v1, 0x0

    goto :goto_0

    .line 173
    :cond_3
    iget-object v2, v0, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->PICTURE_SIZE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    const/4 v1, 0x0

    goto :goto_0
.end method

.method setCapabilityFromParamsWithCameraOpen(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cameraId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/android/camera/device/CameraDeviceException;
        }
    .end annotation

    .prologue
    .line 159
    invoke-static {p1, p2}, Lcom/sonyericsson/android/camera/device/CameraDeviceUtil;->getParams(Landroid/content/Context;I)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 160
    .local v0, "params":Landroid/hardware/Camera$Parameters;
    invoke-virtual {p0, p1, p2, v0}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->setCapabilityFromParams(Landroid/content/Context;ILandroid/hardware/Camera$Parameters;)V

    .line 161
    return-void
.end method

.method setCapabilityFromSharedPrefs(Landroid/content/Context;I)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cameraId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 187
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getFileName(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5, v3}, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 190
    .local v2, "prefs":Landroid/content/SharedPreferences;
    if-nez v2, :cond_1

    .line 219
    :cond_0
    :goto_0
    return v3

    .line 193
    :cond_1
    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 196
    const-string v5, "android.os.Build.FINGERPRINT"

    invoke-interface {v2, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 199
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 203
    :cond_2
    const-string v5, "android.os.Build.FINGERPRINT"

    const-string v6, ""

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "cachedVersion":Ljava/lang/String;
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 205
    .local v1, "currentVersion":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 208
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 209
    iput-boolean v4, p0, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->mNeedToClearSettingsInSharedPref:Z

    goto :goto_0

    .line 217
    :cond_3
    iget-object v3, p0, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->mList:[Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

    new-instance v5, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

    invoke-direct {v5, p1, v2}, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    aput-object v5, v3, p2

    move v3, v4

    .line 219
    goto :goto_0
.end method

.method store(Landroid/content/Context;I)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cameraId"    # I

    .prologue
    const/4 v5, 0x0

    .line 225
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getFileName(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6, v5}, Lcom/sonyericsson/android/camera/util/SharedPreferencesUtil;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 228
    .local v4, "prefs":Landroid/content/SharedPreferences;
    if-nez v4, :cond_0

    .line 248
    :goto_0
    return v5

    .line 233
    :cond_0
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 236
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 237
    .local v1, "fingerPrint":Ljava/lang/String;
    const-string v5, "android.os.Build.FINGERPRINT"

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 241
    iget-object v5, p0, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->mList:[Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

    aget-object v5, v5, p2

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->values()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    .line 242
    .local v3, "item":Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;, "Lcom/sonyericsson/android/camera/util/capability/CapabilityItem<*>;"
    invoke-virtual {v3, v0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->write(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_1

    .line 245
    .end local v3    # "item":Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;, "Lcom/sonyericsson/android/camera/util/capability/CapabilityItem<*>;"
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 248
    const/4 v5, 0x1

    goto :goto_0
.end method
