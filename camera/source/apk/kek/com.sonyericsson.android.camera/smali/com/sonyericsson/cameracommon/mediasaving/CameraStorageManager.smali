.class public Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;
.super Ljava/lang/Object;
.source "CameraStorageManager.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/activity/BaseActivity$StorageEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$1;,
        Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$ExternalMemoryListener;,
        Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    }
.end annotation


# static fields
.field private static final SHARED_PREFERENCE_KEY:Ljava/lang/String; = "is-sdcard-available-on-previous-onpause"

.field private static final SHARED_PREFERENCE_NAME:Ljava/lang/String; = "storage_preferences"

.field private static final TAG:Ljava/lang/String;

.field public static final TIMEOUT_GET_STATFS:I = 0xbb8


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCurrentStorage:Ljava/lang/String;

.field private final mLastStorageStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;",
            ">;"
        }
    .end annotation
.end field

.field private final mSharedPrefs:Landroid/content/SharedPreferences;

.field private mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/sonyericsson/cameracommon/mediasaving/StorageController;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "storageController"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mCurrentStorage:Ljava/lang/String;

    .line 77
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mActivity:Landroid/app/Activity;

    .line 78
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    .line 79
    const-string v4, "storage_preferences"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 80
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mLastStorageStates:Ljava/util/Map;

    .line 81
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getMountedPaths(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 82
    .local v3, "storage":Ljava/lang/String;
    const-wide/16 v4, 0x0

    const-string v6, ""

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->updateStorageState(Ljava/lang/String;JLjava/lang/String;)Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .line 81
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 84
    .end local v3    # "storage":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private checkFsWritable(Ljava/lang/String;)Z
    .locals 2
    .param p1, "storage"    # Ljava/lang/String;

    .prologue
    .line 277
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 278
    .local v0, "directory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 279
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 280
    const/4 v1, 0x0

    .line 283
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    goto :goto_0
.end method

.method private getLastStorageState()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mLastStorageStates:Ljava/util/Map;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mCurrentStorage:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    return-object v0
.end method

.method private getNextStateFromRemain(J)Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    .locals 5
    .param p1, "availableSize"    # J

    .prologue
    .line 234
    const-wide/32 v2, 0x25800

    cmp-long v1, p1, v2

    if-lez v1, :cond_0

    .line 235
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_READY:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .line 244
    .local v0, "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    :goto_0
    return-object v0

    .line 236
    .end local v0    # "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    :cond_0
    const-wide/32 v2, 0xf000

    cmp-long v1, p1, v2

    if-lez v1, :cond_1

    .line 237
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_READY_LOW:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .restart local v0    # "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    goto :goto_0

    .line 239
    .end local v0    # "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    :cond_1
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_FULL:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .restart local v0    # "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    goto :goto_0
.end method

.method private getNextStateFromVolume(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    .locals 3
    .param p1, "storage"    # Ljava/lang/String;

    .prologue
    .line 184
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mActivity:Landroid/app/Activity;

    invoke-static {p1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getVolumeState(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, "state":Ljava/lang/String;
    const-string v2, "bad_removal"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 190
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_NO_MEMORY_CARD:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .line 208
    .local v0, "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    :goto_0
    return-object v0

    .line 191
    .end local v0    # "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    :cond_0
    const-string v2, "mounted_ro"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 192
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_READ_ONLY:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .restart local v0    # "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    goto :goto_0

    .line 193
    .end local v0    # "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    :cond_1
    const-string v2, "removed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 194
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_NO_MEMORY_CARD:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .restart local v0    # "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    goto :goto_0

    .line 195
    .end local v0    # "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    :cond_2
    const-string v2, "shared"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 196
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_SHARED:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .restart local v0    # "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    goto :goto_0

    .line 197
    .end local v0    # "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    :cond_3
    const-string v2, "unmountable"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 198
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_FORMAT:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .restart local v0    # "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    goto :goto_0

    .line 199
    .end local v0    # "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    :cond_4
    const-string v2, "unmounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 200
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_SHARED:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .restart local v0    # "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    goto :goto_0

    .line 201
    .end local v0    # "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    :cond_5
    const-string v2, "checking"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 202
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_CHECKING:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .restart local v0    # "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    goto :goto_0

    .line 203
    .end local v0    # "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    :cond_6
    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 204
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_READY:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .restart local v0    # "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    goto :goto_0

    .line 206
    .end local v0    # "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    :cond_7
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_ACCESS:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .restart local v0    # "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    goto :goto_0
.end method

.method private getNextStateFromWritable(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    .locals 4
    .param p1, "storage"    # Ljava/lang/String;

    .prologue
    .line 213
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->checkFsWritable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 214
    invoke-static {}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->getInstance()Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;

    move-result-object v1

    invoke-static {}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->getInstance()Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->getDcimDirectory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->isAlreadyLastFileExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_FULL:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .line 229
    .local v0, "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    :goto_0
    return-object v0

    .line 217
    .end local v0    # "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    :cond_0
    invoke-static {}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->getInstance()Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;

    move-result-object v1

    invoke-static {}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->getInstance()Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->getDcimDirectory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->checkAndCreateDirectory(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 219
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_READY:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .restart local v0    # "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    goto :goto_0

    .line 221
    .end local v0    # "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    :cond_1
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_NO_DCIM:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .restart local v0    # "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    goto :goto_0

    .line 224
    .end local v0    # "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    :cond_2
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_READ_ONLY:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .restart local v0    # "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    goto :goto_0
.end method

.method private isExternalStorageChangedToReadable()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 558
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v2, "is-sdcard-available-on-previous-onpause"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 559
    sget-object v1, Landroid/os/storage/StorageManager$StorageType;->EXTERNAL_CARD:Landroid/os/storage/StorageManager$StorageType;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getPathFromType(Landroid/os/storage/StorageManager$StorageType;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->isReadable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 560
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->saveExternalStorageStateInPrefs()V

    .line 561
    const/4 v0, 0x1

    .line 564
    :cond_0
    return v0
.end method

.method private isReadable(Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;)Z
    .locals 2
    .param p1, "state"    # Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .prologue
    .line 516
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$1;->$SwitchMap$com$sonyericsson$cameracommon$mediasaving$CameraStorageManager$DetailStorageState:[I

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 526
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 524
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 516
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isReadable(Ljava/lang/String;)Z
    .locals 2
    .param p1, "storage"    # Ljava/lang/String;

    .prologue
    .line 511
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mLastStorageStates:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .line 512
    .local v0, "state":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->isReadable(Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;)Z

    move-result v1

    return v1
.end method

.method private isReady(Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;)Z
    .locals 3
    .param p1, "state"    # Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .prologue
    const/4 v0, 0x0

    .line 483
    if-nez p1, :cond_0

    .line 492
    :goto_0
    return v0

    .line 486
    :cond_0
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$1;->$SwitchMap$com$sonyericsson$cameracommon$mediasaving$CameraStorageManager$DetailStorageState:[I

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 490
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 486
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private logStorageState()V
    .locals 0

    .prologue
    .line 267
    return-void
.end method

.method private setLastStorageState(Ljava/lang/String;Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;)V
    .locals 1
    .param p1, "storage"    # Ljava/lang/String;
    .param p2, "state"    # Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .prologue
    .line 252
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mLastStorageStates:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->updateStorageState(Ljava/lang/String;Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;)V

    .line 255
    return-void
.end method

.method private updateAllStorageState(Ljava/lang/String;JLjava/lang/String;)V
    .locals 8
    .param p1, "targetStorage"    # Ljava/lang/String;
    .param p2, "reservedSize"    # J
    .param p4, "intentAction"    # Ljava/lang/String;

    .prologue
    .line 114
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getMountedPaths(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 115
    .local v3, "storage":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 116
    invoke-direct {p0, v3, p2, p3, p4}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->updateStorageState(Ljava/lang/String;JLjava/lang/String;)Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .line 114
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 118
    :cond_0
    const-wide/16 v4, 0x0

    const-string v6, ""

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->updateStorageState(Ljava/lang/String;JLjava/lang/String;)Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    goto :goto_1

    .line 121
    .end local v3    # "storage":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private updateStorageState(Ljava/lang/String;JLjava/lang/String;)Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    .locals 4
    .param p1, "storage"    # Ljava/lang/String;
    .param p2, "reservedSize"    # J
    .param p4, "intentAction"    # Ljava/lang/String;

    .prologue
    .line 146
    const-wide/16 v0, 0x0

    .line 149
    .local v0, "availableSize":J
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->getNextStateFromVolume(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    move-result-object v2

    .line 152
    .local v2, "newState":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    sget-object v3, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_READY:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    if-ne v2, v3, :cond_0

    .line 153
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->getNextStateFromWritable(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    move-result-object v2

    .line 157
    :cond_0
    sget-object v3, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_READY:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    if-ne v2, v3, :cond_1

    .line 158
    invoke-virtual {p0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->updateAvailableStorageSize(Ljava/lang/String;J)J

    move-result-wide v0

    .line 159
    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->getNextStateFromRemain(J)Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    move-result-object v2

    .line 163
    :cond_1
    const-string v3, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 164
    sget-object v3, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_NO_MEMORY_CARD:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 165
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_NO_MEMORY_CARD:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .line 175
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mCurrentStorage:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 176
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    invoke-virtual {v3, v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->setAvailableStorageSize(J)V

    .line 179
    :cond_3
    invoke-direct {p0, p1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->setLastStorageState(Ljava/lang/String;Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;)V

    .line 180
    return-object v2

    .line 167
    :cond_4
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->MEMORY_ERR_SHARED:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    goto :goto_0
.end method


# virtual methods
.method public addStorageListener(Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;)V
    .locals 1
    .param p1, "cb"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;

    .prologue
    .line 294
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->addStorageListener(Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;)V

    .line 295
    return-void
.end method

.method public getReadableStorage()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 536
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 537
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mLastStorageStates:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 538
    .local v2, "s":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->isReadable(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 539
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 542
    .end local v2    # "s":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public getStatFs(Ljava/lang/String;)Landroid/os/StatFs;
    .locals 10
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    .line 364
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    .line 365
    .local v3, "executor":Ljava/util/concurrent/ExecutorService;
    new-instance v6, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$GetStatFsTask;

    invoke-direct {v6, p1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$GetStatFsTask;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v4

    .line 367
    .local v4, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Landroid/os/StatFs;>;"
    const/4 v5, 0x0

    .line 370
    .local v5, "statFs":Landroid/os/StatFs;
    const-wide/16 v6, 0xbb8

    :try_start_0
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v6, v7, v8}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/os/StatFs;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    invoke-interface {v4, v9}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 379
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 382
    :goto_0
    return-object v5

    .line 371
    :catch_0
    move-exception v2

    .line 372
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_1
    sget-object v6, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->TAG:Ljava/lang/String;

    const-string v7, "GetStatFsTask has been interrupted."

    invoke-static {v6, v7, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 378
    invoke-interface {v4, v9}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 379
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    goto :goto_0

    .line 373
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v2

    .line 374
    .local v2, "e":Ljava/util/concurrent/ExecutionException;
    :try_start_2
    sget-object v6, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->TAG:Ljava/lang/String;

    const-string v7, "GetStatFsTask failed."

    invoke-static {v6, v7, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 378
    invoke-interface {v4, v9}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 379
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    goto :goto_0

    .line 375
    .end local v2    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_2
    move-exception v2

    .line 376
    .local v2, "e":Ljava/util/concurrent/TimeoutException;
    :try_start_3
    sget-object v6, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->TAG:Ljava/lang/String;

    const-string v7, "GetStatFsTask failed."

    invoke-static {v6, v7, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 378
    invoke-interface {v4, v9}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 379
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    goto :goto_0

    .line 378
    .end local v2    # "e":Ljava/util/concurrent/TimeoutException;
    :catchall_0
    move-exception v6

    invoke-interface {v4, v9}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 379
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    throw v6
.end method

.method public hasEnoughFreeSpace()Z
    .locals 4

    .prologue
    .line 452
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->getLastStorageState()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    move-result-object v1

    .line 454
    .local v1, "state":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$1;->$SwitchMap$com$sonyericsson$cameracommon$mediasaving$CameraStorageManager$DetailStorageState:[I

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 459
    const/4 v0, 0x0

    .line 463
    .local v0, "hasEnoughFreeSpace":Z
    :goto_0
    return v0

    .line 456
    .end local v0    # "hasEnoughFreeSpace":Z
    :pswitch_0
    const/4 v0, 0x1

    .line 457
    .restart local v0    # "hasEnoughFreeSpace":Z
    goto :goto_0

    .line 454
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public isCurrentStorageExternal()Z
    .locals 3

    .prologue
    .line 431
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mCurrentStorage:Ljava/lang/String;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getStorageTypeFromPath(Ljava/lang/String;Landroid/content/Context;)Landroid/os/storage/StorageManager$StorageType;

    move-result-object v0

    .line 432
    .local v0, "storageType":Landroid/os/storage/StorageManager$StorageType;
    sget-object v1, Landroid/os/storage/StorageManager$StorageType;->EXTERNAL_CARD:Landroid/os/storage/StorageManager$StorageType;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isReadable()Z
    .locals 2

    .prologue
    .line 506
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->getLastStorageState()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    move-result-object v0

    .line 507
    .local v0, "state":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->isReadable(Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;)Z

    move-result v1

    return v1
.end method

.method public isReady()Z
    .locals 2

    .prologue
    .line 472
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->getLastStorageState()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    move-result-object v0

    .line 473
    .local v0, "state":Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->isReady(Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;)Z

    move-result v1

    return v1
.end method

.method public isStorageExternal(Ljava/lang/String;)Z
    .locals 2
    .param p1, "storage"    # Ljava/lang/String;

    .prologue
    .line 436
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mActivity:Landroid/app/Activity;

    invoke-static {p1, v1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getStorageTypeFromPath(Ljava/lang/String;Landroid/content/Context;)Landroid/os/storage/StorageManager$StorageType;

    move-result-object v0

    .line 437
    .local v0, "storageType":Landroid/os/storage/StorageManager$StorageType;
    sget-object v1, Landroid/os/storage/StorageManager$StorageType;->EXTERNAL_CARD:Landroid/os/storage/StorageManager$StorageType;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isStorageInternal(Ljava/lang/String;)Z
    .locals 2
    .param p1, "storage"    # Ljava/lang/String;

    .prologue
    .line 441
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mActivity:Landroid/app/Activity;

    invoke-static {p1, v1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getStorageTypeFromPath(Ljava/lang/String;Landroid/content/Context;)Landroid/os/storage/StorageManager$StorageType;

    move-result-object v0

    .line 442
    .local v0, "storageType":Landroid/os/storage/StorageManager$StorageType;
    sget-object v1, Landroid/os/storage/StorageManager$StorageType;->INTERNAL:Landroid/os/storage/StorageManager$StorageType;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isToggledStorageReady()Z
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->isToggledStorageReady()Z

    move-result v0

    return v0
.end method

.method public onMediaScanFinished()V
    .locals 3

    .prologue
    .line 290
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mCurrentStorage:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->checkAndNotifyStateChanged(Ljava/lang/String;Z)V

    .line 291
    return-void
.end method

.method public onStorageCheckRequested(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "storage"    # Ljava/lang/String;

    .prologue
    .line 108
    const-wide/16 v0, 0x0

    invoke-direct {p0, p2, v0, v1, p1}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->updateAllStorageState(Ljava/lang/String;JLjava/lang/String;)V

    .line 109
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mLastStorageStates:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, p2, v0, v2, v3}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->checkAllState(Ljava/lang/String;Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;ZZ)V

    .line 110
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->pause()V

    .line 547
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->release()V

    .line 551
    return-void
.end method

.method public removeStorageListener(Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;)V
    .locals 1
    .param p1, "cb"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;

    .prologue
    .line 298
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->removeStorageListener(Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;)V

    .line 299
    return-void
.end method

.method public requestCheckAll()V
    .locals 5

    .prologue
    .line 349
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mCurrentStorage:Ljava/lang/String;

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mLastStorageStates:Ljava/util/Map;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mCurrentStorage:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->isExternalStorageChangedToReadable()Z

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->checkAllState(Ljava/lang/String;Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;ZZ)V

    .line 352
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 324
    const-string v0, ""

    const-wide/16 v2, 0x0

    const-string v1, ""

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->updateAllStorageState(Ljava/lang/String;JLjava/lang/String;)V

    .line 325
    return-void
.end method

.method public saveExternalStorageStateInPrefs()V
    .locals 4

    .prologue
    .line 573
    sget-object v2, Landroid/os/storage/StorageManager$StorageType;->EXTERNAL_CARD:Landroid/os/storage/StorageManager$StorageType;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getPathFromType(Landroid/os/storage/StorageManager$StorageType;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 574
    .local v1, "external":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 575
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_0

    .line 576
    const-string v2, "is-sdcard-available-on-previous-onpause"

    invoke-direct {p0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->isReadable(Ljava/lang/String;)Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 577
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 579
    :cond_0
    return-void
.end method

.method public setCurrentStorage(Landroid/os/storage/StorageManager$StorageType;)V
    .locals 4
    .param p1, "type"    # Landroid/os/storage/StorageManager$StorageType;

    .prologue
    .line 336
    if-nez p1, :cond_0

    .line 343
    :goto_0
    return-void

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mActivity:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getPathFromType(Landroid/os/storage/StorageManager$StorageType;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mCurrentStorage:Ljava/lang/String;

    .line 340
    invoke-static {}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->getInstance()Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mCurrentStorage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->setDestinationToSave(Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mCurrentStorage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->setCurrentStorage(Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mCurrentStorage:Ljava/lang/String;

    const-wide/16 v2, 0x0

    const-string v1, ""

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->updateStorageState(Ljava/lang/String;JLjava/lang/String;)Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    goto :goto_0
.end method

.method public updateAvailableStorageSize(Ljava/lang/String;J)J
    .locals 12
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "reservedSize"    # J

    .prologue
    const-wide/16 v0, 0x0

    .line 394
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->getStatFs(Ljava/lang/String;)Landroid/os/StatFs;

    move-result-object v7

    .line 397
    .local v7, "statFs":Landroid/os/StatFs;
    if-nez v7, :cond_1

    .line 398
    sget-object v8, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to get StatFs: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :cond_0
    :goto_0
    return-wide v0

    .line 403
    :cond_1
    iget-object v8, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mActivity:Landroid/app/Activity;

    invoke-static {p1, v8}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getVolumeState(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 404
    .local v6, "envState":Ljava/lang/String;
    const-string v8, "mounted"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 410
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x11

    if-gt v8, v9, :cond_2

    .line 411
    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v4, v8

    .line 412
    .local v4, "blocksize":J
    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v8

    int-to-long v2, v8

    .line 423
    .local v2, "blocknum":J
    :goto_1
    mul-long v8, v4, v2

    sub-long/2addr v8, p2

    const-wide/16 v10, 0x400

    div-long/2addr v8, v10

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 427
    .local v0, "availableSize":J
    goto :goto_0

    .line 415
    .end local v0    # "availableSize":J
    .end local v2    # "blocknum":J
    .end local v4    # "blocksize":J
    :cond_2
    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v4

    .line 416
    .restart local v4    # "blocksize":J
    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v2

    .restart local v2    # "blocknum":J
    goto :goto_1
.end method

.method public updateRemain(JZ)J
    .locals 5
    .param p1, "reservedSize"    # J
    .param p3, "forceNotify"    # Z

    .prologue
    .line 313
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mCurrentStorage:Ljava/lang/String;

    const-string v1, ""

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->updateAllStorageState(Ljava/lang/String;JLjava/lang/String;)V

    .line 314
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mCurrentStorage:Ljava/lang/String;

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mLastStorageStates:Ljava/util/Map;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mCurrentStorage:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->isExternalStorageChangedToReadable()Z

    move-result v3

    invoke-virtual {v1, v2, v0, v3, p3}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->checkAllState(Ljava/lang/String;Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;ZZ)V

    .line 316
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->mStorageController:Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->getAvailableStorageSize()J

    move-result-wide v0

    return-wide v0
.end method
