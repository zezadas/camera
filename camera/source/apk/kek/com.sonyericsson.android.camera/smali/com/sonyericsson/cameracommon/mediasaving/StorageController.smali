.class public Lcom/sonyericsson/cameracommon/mediasaving/StorageController;
.super Ljava/lang/Object;
.source "StorageController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/mediasaving/StorageController$1;,
        Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageDialogStateListener;,
        Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;,
        Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field protected mAvailableSize:J

.field protected mCurrentStorage:Ljava/lang/String;

.field private mIsOneShot:Z

.field protected final mLatestCheckedStorageState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;",
            ">;"
        }
    .end annotation
.end field

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

.field protected final mStoragePriority:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected final mStorageStatus:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;",
            ">;"
        }
    .end annotation
.end field

.field protected mViewFinder:Lcom/sonyericsson/cameracommon/viewfinder/ViewFinderInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/cameracommon/viewfinder/ViewFinderInterface;)V
    .locals 1
    .param p1, "viewFinder"    # Lcom/sonyericsson/cameracommon/viewfinder/ViewFinderInterface;

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    .line 107
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mCurrentStorage:Ljava/lang/String;

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mListeners:Ljava/util/List;

    .line 137
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mStoragePriority:Ljava/util/Map;

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mStorageStatus:Ljava/util/Map;

    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mLatestCheckedStorageState:Ljava/util/Map;

    .line 140
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mViewFinder:Lcom/sonyericsson/cameracommon/viewfinder/ViewFinderInterface;

    .line 141
    return-void
.end method

.method private notifyAvailableSize(J)V
    .locals 3
    .param p1, "available"    # J

    .prologue
    .line 353
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;

    .line 354
    .local v1, "listener":Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;
    invoke-interface {v1, p1, p2}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;->onAvailableSizeUpdated(J)V

    goto :goto_0

    .line 356
    .end local v1    # "listener":Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;
    :cond_0
    return-void
.end method

.method private notifyStateChanged(Ljava/lang/String;)V
    .locals 3
    .param p1, "storage"    # Ljava/lang/String;

    .prologue
    .line 333
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;

    .line 334
    .local v1, "listener":Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;
    invoke-interface {v1, p1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;->onStorageStateChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 336
    .end local v1    # "listener":Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;
    :cond_0
    return-void
.end method

.method private notifyStorageChanged()V
    .locals 3

    .prologue
    .line 342
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;

    .line 343
    .local v1, "listener":Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;
    invoke-interface {v1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;->onDestinationToSaveChanged()V

    goto :goto_0

    .line 345
    .end local v1    # "listener":Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;
    :cond_0
    return-void
.end method


# virtual methods
.method public addStorageListener(Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;)V
    .locals 1
    .param p1, "cb"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;

    .prologue
    .line 228
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    :cond_0
    return-void
.end method

.method protected checkAllState(Ljava/lang/String;Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;ZZ)V
    .locals 3
    .param p1, "storage"    # Ljava/lang/String;
    .param p2, "state"    # Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    .param p3, "isStorageEvent"    # Z
    .param p4, "forceNotify"    # Z

    .prologue
    .line 154
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mViewFinder:Lcom/sonyericsson/cameracommon/viewfinder/ViewFinderInterface;

    invoke-interface {v2}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinderInterface;->isHeadUpDesplayReady()Z

    move-result v2

    if-nez v2, :cond_1

    .line 170
    :cond_0
    return-void

    .line 161
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mStoragePriority:Ljava/util/Map;

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

    .line 164
    .local v1, "targetStorage":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mCurrentStorage:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 165
    invoke-static {p2}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->getState(Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;)Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->showOrClearStorageErrorPopup(Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;)Z

    .line 168
    :cond_2
    invoke-virtual {p0, v1, p4}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->checkAndNotifyStateChanged(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method protected checkAndNotifyStateChanged(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "storage"    # Ljava/lang/String;
    .param p2, "forceNotify"    # Z

    .prologue
    .line 271
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mLatestCheckedStorageState:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mStorageStatus:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    if-eqz p2, :cond_1

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mLatestCheckedStorageState:Ljava/util/Map;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mStorageStatus:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->notifyStateChanged(Ljava/lang/String;)V

    .line 282
    :cond_1
    iget-wide v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mAvailableSize:J

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->notifyAvailableSize(J)V

    .line 283
    return-void
.end method

.method protected closeDialog(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 304
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->isMemoryErrorPopupOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->cancelMemoryErrorPopup(Landroid/content/DialogInterface;)V

    .line 309
    :cond_0
    return-void
.end method

.method protected closeDialog(Z)V
    .locals 1
    .param p1, "closeOnlyError"    # Z

    .prologue
    .line 320
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->isMemoryErrorPopupOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->cancelMemoryErrorPopup(Z)V

    .line 325
    :cond_0
    return-void
.end method

.method public getAvailableStorageSize()J
    .locals 2

    .prologue
    .line 466
    iget-wide v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mAvailableSize:J

    return-wide v0
.end method

.method public getCurrentStorageState()Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mStorageStatus:Ljava/util/Map;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mCurrentStorage:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    return-object v0
.end method

.method public isCurrentStorageExternal()Z
    .locals 2

    .prologue
    .line 477
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mStoragePriority:Ljava/util/Map;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mCurrentStorage:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected isOneShotMode()Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mIsOneShot:Z

    return v0
.end method

.method public isStorageDialogOpen()Z
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->isMemoryErrorPopupOpened()Z

    move-result v0

    return v0
.end method

.method public isToggledStorageReady()Z
    .locals 5

    .prologue
    .line 426
    const/4 v1, 0x0

    .line 427
    .local v1, "isReady":Z
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mStoragePriority:Ljava/util/Map;

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

    .line 428
    .local v2, "storage":Ljava/lang/String;
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mCurrentStorage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 431
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mStorageStatus:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->AVAILABLE:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    if-ne v3, v4, :cond_0

    .line 432
    const/4 v1, 0x1

    goto :goto_0

    .line 435
    .end local v2    # "storage":Ljava/lang/String;
    :cond_1
    return v1
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 362
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->closeDialog(Z)V

    .line 363
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 370
    return-void
.end method

.method public removeStorageListener(Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;)V
    .locals 1
    .param p1, "cb"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;

    .prologue
    .line 239
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 242
    :cond_0
    return-void
.end method

.method protected requestErrorCheckLater(Ljava/lang/String;)V
    .locals 2
    .param p1, "storage"    # Ljava/lang/String;

    .prologue
    .line 293
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mLatestCheckedStorageState:Ljava/util/Map;

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->AVAILABLE:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    return-void
.end method

.method protected setAvailableStorageSize(J)V
    .locals 1
    .param p1, "size"    # J

    .prologue
    .line 458
    iput-wide p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mAvailableSize:J

    .line 459
    return-void
.end method

.method public setCurrentStorage(Ljava/lang/String;)V
    .locals 1
    .param p1, "storage"    # Ljava/lang/String;

    .prologue
    .line 386
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mCurrentStorage:Ljava/lang/String;

    .line 387
    invoke-static {}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->getInstance()Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->resetStatus()V

    .line 388
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->notifyStorageChanged()V

    .line 389
    return-void
.end method

.method public setMessegePopup(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;)V
    .locals 0
    .param p1, "messagePopup"    # Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    .prologue
    .line 442
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    .line 443
    return-void
.end method

.method public setOneShotMode(Z)V
    .locals 0
    .param p1, "oneShot"    # Z

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mIsOneShot:Z

    .line 134
    return-void
.end method

.method public setStorage(Ljava/lang/String;I)V
    .locals 2
    .param p1, "storage"    # Ljava/lang/String;
    .param p2, "priority"    # I

    .prologue
    .line 398
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mStoragePriority:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    return-void
.end method

.method protected showOrClearStorageErrorPopup(Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;)Z
    .locals 5
    .param p1, "state"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    .prologue
    const/4 v4, 0x1

    .line 179
    const/4 v0, -0x1

    .line 180
    .local v0, "textId":I
    sget v1, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_memory_title_txt:I

    .line 181
    .local v1, "titleId":I
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->isCurrentStorageExternal()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 183
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$1;->$SwitchMap$com$sonyericsson$cameracommon$mediasaving$StorageController$StorageState:[I

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->getCurrentStorageState()Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 216
    :goto_0
    invoke-virtual {p0, v0, v1, v4}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->showStoragePopup(IIZ)Z

    move-result v2

    return v2

    .line 185
    :pswitch_0
    invoke-virtual {p0, v4}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->closeDialog(Z)V

    goto :goto_0

    .line 189
    :pswitch_1
    sget v0, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_memory_full_txt:I

    .line 190
    goto :goto_0

    .line 195
    :pswitch_2
    sget v0, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_memory_unavailable_txt:I

    goto :goto_0

    .line 200
    :cond_0
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$1;->$SwitchMap$com$sonyericsson$cameracommon$mediasaving$StorageController$StorageState:[I

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->getCurrentStorageState()Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    goto :goto_0

    .line 202
    :pswitch_3
    invoke-virtual {p0, v4}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->closeDialog(Z)V

    goto :goto_0

    .line 206
    :pswitch_4
    sget v0, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_memory_ims_full_txt:I

    .line 207
    goto :goto_0

    .line 212
    :pswitch_5
    sget v0, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_memory_ims_unavailable_txt:I

    goto :goto_0

    .line 183
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 200
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method protected showStoragePopup(IIZ)Z
    .locals 3
    .param p1, "textId"    # I
    .param p2, "titleId"    # I
    .param p3, "isError"    # Z

    .prologue
    .line 408
    const/4 v1, 0x0

    .line 410
    .local v1, "isShow":Z
    if-lez p1, :cond_0

    .line 413
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    invoke-virtual {v2, p1, p2, p3}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showMemoryError(IIZ)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v0

    .line 415
    .local v0, "dialog":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    if-eqz v0, :cond_0

    .line 416
    const/4 v1, 0x1

    .line 419
    .end local v0    # "dialog":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    :cond_0
    return v1
.end method

.method public updateStorageState(Ljava/lang/String;Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;)V
    .locals 2
    .param p1, "storage"    # Ljava/lang/String;
    .param p2, "state"    # Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .prologue
    .line 251
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mStoragePriority:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 261
    :goto_0
    return-void

    .line 255
    :cond_0
    invoke-static {p2}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->getState(Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;)Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    move-result-object v0

    .line 260
    .local v0, "newState":Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mStorageStatus:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
