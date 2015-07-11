.class public Lcom/sonyericsson/android/camera/parameter/CommonParams;
.super Ljava/lang/Object;
.source "CommonParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/parameter/CommonParams$1;
    }
.end annotation


# static fields
.field private static final sInstance:Lcom/sonyericsson/android/camera/parameter/CommonParams;


# instance fields
.field public mAutoUpload:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder",
            "<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/AutoUpload;",
            ">;"
        }
    .end annotation
.end field

.field public mDestinationToSave:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder",
            "<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;",
            ">;"
        }
    .end annotation
.end field

.field public mFastCapture:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder",
            "<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;",
            ">;"
        }
    .end annotation
.end field

.field public mGeotag:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder",
            "<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;",
            ">;"
        }
    .end annotation
.end field

.field public mShutterSound:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder",
            "<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;",
            ">;"
        }
    .end annotation
.end field

.field public mTouchBlock:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder",
            "<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/TouchBlock;",
            ">;"
        }
    .end annotation
.end field

.field public mTouchCapture:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder",
            "<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;",
            ">;"
        }
    .end annotation
.end field

.field public mVolumeKey:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder",
            "<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/sonyericsson/android/camera/parameter/CommonParams;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/parameter/CommonParams;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/parameter/CommonParams;->sInstance:Lcom/sonyericsson/android/camera/parameter/CommonParams;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->getPrimaryStorage()Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/parameter/CommonParams;->mDestinationToSave:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    .line 47
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->getDefault()Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/parameter/CommonParams;->mFastCapture:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    .line 48
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/parameter/CommonParams;->mGeotag:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    .line 49
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;->SOUND1:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/parameter/CommonParams;->mShutterSound:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    .line 50
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/parameter/CommonParams;->mTouchCapture:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    .line 51
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/AutoUpload;->getDefaultValue()Lcom/sonyericsson/android/camera/configuration/parameters/AutoUpload;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/parameter/CommonParams;->mAutoUpload:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    .line 52
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;->getDefault()Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/parameter/CommonParams;->mVolumeKey:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    .line 53
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/TouchBlock;->getDefaultValue()Lcom/sonyericsson/android/camera/configuration/parameters/TouchBlock;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/parameter/CommonParams;->mTouchBlock:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    .line 54
    return-void
.end method

.method public static getInstance()Lcom/sonyericsson/android/camera/parameter/CommonParams;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/sonyericsson/android/camera/parameter/CommonParams;->sInstance:Lcom/sonyericsson/android/camera/parameter/CommonParams;

    return-object v0
.end method


# virtual methods
.method public init(Lcom/sonyericsson/android/camera/CameraActivity;)V
    .locals 6
    .param p1, "activity"    # Lcom/sonyericsson/android/camera/CameraActivity;

    .prologue
    .line 57
    const/4 v0, 0x0

    .line 58
    .local v0, "fixedStoragePath":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->hasExtraOutputPath()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 60
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->getExtraOutput()Landroid/net/Uri;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 62
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->getExtraOutput()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4, v0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->getOptions(Landroid/net/Uri;Ljava/lang/String;Landroid/content/Context;)[Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    move-result-object v3

    .line 64
    .local v3, "options":[Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;
    iget-object v4, p0, Lcom/sonyericsson/android/camera/parameter/CommonParams;->mDestinationToSave:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v4, v3}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->setOptions([Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    .line 66
    iget-object v4, p0, Lcom/sonyericsson/android/camera/parameter/CommonParams;->mFastCapture:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->getOptions()[Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->setOptions([Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    .line 67
    iget-object v4, p0, Lcom/sonyericsson/android/camera/parameter/CommonParams;->mGeotag:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->getOptions()[Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->setOptions([Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    .line 68
    iget-object v4, p0, Lcom/sonyericsson/android/camera/parameter/CommonParams;->mShutterSound:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/StaticConfigurationUtil;->isForceSound()Z

    move-result v5

    invoke-static {v5}, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;->getOptions(Z)[Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSound;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->setOptions([Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    .line 70
    iget-object v4, p0, Lcom/sonyericsson/android/camera/parameter/CommonParams;->mTouchCapture:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;->getOptions()[Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->setOptions([Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    .line 71
    iget-object v4, p0, Lcom/sonyericsson/android/camera/parameter/CommonParams;->mAutoUpload:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/AutoUpload;->getOptions()[Lcom/sonyericsson/android/camera/configuration/parameters/AutoUpload;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->setOptions([Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    .line 72
    iget-object v4, p0, Lcom/sonyericsson/android/camera/parameter/CommonParams;->mVolumeKey:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;->getOptions()[Lcom/sonyericsson/android/camera/configuration/parameters/VolumeKey;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->setOptions([Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    .line 73
    iget-object v4, p0, Lcom/sonyericsson/android/camera/parameter/CommonParams;->mTouchBlock:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/TouchBlock;->getOptions(Landroid/content/Context;)[Lcom/sonyericsson/android/camera/configuration/parameters/TouchBlock;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->setOptions([Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    .line 75
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/parameter/CommonParams;->values()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    .line 76
    .local v1, "holder":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;, "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder<*>;"
    invoke-static {v1}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->updateDefaultValue(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    goto :goto_0

    .line 78
    .end local v1    # "holder":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;, "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder<*>;"
    :cond_1
    return-void
.end method

.method public update()V
    .locals 2

    .prologue
    .line 159
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->setSaved(Z)V

    .line 160
    iget-object v0, p0, Lcom/sonyericsson/android/camera/parameter/CommonParams;->mDestinationToSave:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->getOptions()[Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->setOptions([Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    .line 161
    return-void
.end method

.method public update(Lcom/sonyericsson/android/camera/CameraActivity;)V
    .locals 10
    .param p1, "activity"    # Lcom/sonyericsson/android/camera/CameraActivity;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 114
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->getExtraOutput()Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 115
    const/4 v5, 0x0

    .line 117
    .local v5, "sharedPrefs":Z
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->getExtraOutput()Landroid/net/Uri;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, "fixedStoragePath":Ljava/lang/String;
    invoke-static {v2, p1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getStorageTypeFromPath(Ljava/lang/String;Landroid/content/Context;)Landroid/os/storage/StorageManager$StorageType;

    move-result-object v1

    .line 122
    .local v1, "fixedStorage":Landroid/os/storage/StorageManager$StorageType;
    const/4 v0, 0x0

    .line 123
    .local v0, "dstTo":Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;
    sget-object v6, Lcom/sonyericsson/android/camera/parameter/CommonParams$1;->$SwitchMap$android$os$storage$StorageManager$StorageType:[I

    invoke-virtual {v1}, Landroid/os/storage/StorageManager$StorageType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 137
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->EMMC:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    .line 138
    const/4 v4, 0x0

    .line 139
    .local v4, "settingsMenu":I
    new-array v3, v8, [Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    .line 144
    .local v3, "options":[Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;
    :goto_0
    iget-object v6, p0, Lcom/sonyericsson/android/camera/parameter/CommonParams;->mDestinationToSave:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v6, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->set(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    .line 145
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->getStorageManager()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->setCurrentStorage(Landroid/os/storage/StorageManager$StorageType;)V

    .line 153
    .end local v0    # "dstTo":Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;
    .end local v1    # "fixedStorage":Landroid/os/storage/StorageManager$StorageType;
    .end local v2    # "fixedStoragePath":Ljava/lang/String;
    :goto_1
    sget-object v6, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-virtual {v6, v5}, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->setSaved(Z)V

    .line 154
    sget-object v6, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-static {v6, v4}, Lcom/sonyericsson/android/camera/view/settings/SettingList;->updateList(Lcom/sonyericsson/android/camera/configuration/ParameterKey;I)V

    .line 155
    iget-object v6, p0, Lcom/sonyericsson/android/camera/parameter/CommonParams;->mDestinationToSave:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v6, v3}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->setOptions([Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)V

    .line 156
    return-void

    .line 125
    .end local v3    # "options":[Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;
    .end local v4    # "settingsMenu":I
    .restart local v0    # "dstTo":Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;
    .restart local v1    # "fixedStorage":Landroid/os/storage/StorageManager$StorageType;
    .restart local v2    # "fixedStoragePath":Ljava/lang/String;
    :pswitch_0
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->EMMC:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    .line 126
    const/4 v4, 0x1

    .line 127
    .restart local v4    # "settingsMenu":I
    new-array v3, v9, [Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    aput-object v0, v3, v8

    .line 128
    .restart local v3    # "options":[Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;
    goto :goto_0

    .line 131
    .end local v3    # "options":[Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;
    .end local v4    # "settingsMenu":I
    :pswitch_1
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->SDCARD:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    .line 132
    const/4 v4, 0x1

    .line 133
    .restart local v4    # "settingsMenu":I
    new-array v3, v9, [Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    aput-object v0, v3, v8

    .line 134
    .restart local v3    # "options":[Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;
    goto :goto_0

    .line 148
    .end local v0    # "dstTo":Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;
    .end local v1    # "fixedStorage":Landroid/os/storage/StorageManager$StorageType;
    .end local v2    # "fixedStoragePath":Ljava/lang/String;
    .end local v3    # "options":[Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;
    .end local v4    # "settingsMenu":I
    .end local v5    # "sharedPrefs":Z
    :cond_0
    const/4 v5, 0x1

    .line 149
    .restart local v5    # "sharedPrefs":Z
    const/4 v4, 0x1

    .line 150
    .restart local v4    # "settingsMenu":I
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->getOptions()[Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    move-result-object v3

    .restart local v3    # "options":[Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;
    goto :goto_1

    .line 123
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public values()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder<*>;>;"
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/CommonParams;->mDestinationToSave:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/CommonParams;->mFastCapture:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/CommonParams;->mGeotag:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/CommonParams;->mShutterSound:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/CommonParams;->mTouchCapture:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/CommonParams;->mAutoUpload:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/CommonParams;->mVolumeKey:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v1, p0, Lcom/sonyericsson/android/camera/parameter/CommonParams;->mTouchBlock:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    return-object v0
.end method
