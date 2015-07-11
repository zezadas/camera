.class public Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;
.super Lcom/sonyericsson/cameracommon/mediasaving/StorageController;
.source "StorageAutoSwitchController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$1;,
        Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$DialogDismissListener;,
        Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$DialogCancelListener;,
        Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$DialogCancelClickListener;,
        Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$DialogOkClickListener;,
        Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$StorageAutoSwitchListener;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field private mDualStorageDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

.field private mStorageAutoSwitchListener:Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$StorageAutoSwitchListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$StorageAutoSwitchListener;Lcom/sonyericsson/cameracommon/viewfinder/ViewFinderInterface;)V
    .locals 1
    .param p1, "switchListener"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$StorageAutoSwitchListener;
    .param p2, "viewFinder"    # Lcom/sonyericsson/cameracommon/viewfinder/ViewFinderInterface;

    .prologue
    .line 35
    invoke-direct {p0, p2}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;-><init>(Lcom/sonyericsson/cameracommon/viewfinder/ViewFinderInterface;)V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->mDualStorageDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 36
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->mStorageAutoSwitchListener:Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$StorageAutoSwitchListener;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;)Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$StorageAutoSwitchListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->mStorageAutoSwitchListener:Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$StorageAutoSwitchListener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;
    .param p1, "x1"    # Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->mDualStorageDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    return-object p1
.end method

.method private checkBetterStorage(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "targetStorage"    # Ljava/lang/String;
    .param p2, "notify"    # Z

    .prologue
    const/4 v0, 0x0

    .line 116
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->isOneShotMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 128
    :cond_0
    :goto_0
    return v0

    .line 120
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->hasBetterStorage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    if-nez p2, :cond_2

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->mStorageStatus:Ljava/util/Map;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->mCurrentStorage:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->AVAILABLE:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    if-eq v1, v2, :cond_0

    .line 125
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private switchStorage()V
    .locals 2

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->getCurrentStorageState()Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->AVAILABLE:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    if-ne v0, v1, :cond_0

    .line 135
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->closeDialog(Z)V

    .line 136
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->showPopupDualStorageAvailable()Z

    .line 143
    :goto_0
    return-void

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->getCurrentStorageState()Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->showDialogForForceChanged(Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;)Z

    .line 141
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->mStorageAutoSwitchListener:Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$StorageAutoSwitchListener;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->mCurrentStorage:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$StorageAutoSwitchListener;->onStorageAutoSwitch(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected checkAllState(Ljava/lang/String;Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;ZZ)V
    .locals 3
    .param p1, "storage"    # Ljava/lang/String;
    .param p2, "state"    # Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    .param p3, "isStorageEvent"    # Z
    .param p4, "forceNotify"    # Z

    .prologue
    .line 87
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->mViewFinder:Lcom/sonyericsson/cameracommon/viewfinder/ViewFinderInterface;

    invoke-interface {v2}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinderInterface;->isHeadUpDesplayReady()Z

    move-result v2

    if-nez v2, :cond_1

    .line 110
    :cond_0
    return-void

    .line 94
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->mStoragePriority:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 95
    .local v1, "targetStorage":Ljava/lang/String;
    invoke-virtual {p0, p1, p4}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->checkAndNotifyStateChanged(Ljava/lang/String;Z)V

    .line 99
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->mCurrentStorage:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 100
    invoke-direct {p0, p1, p3}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->checkBetterStorage(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 101
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->switchStorage()V

    goto :goto_0

    .line 106
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->getCurrentStorageState()Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->showOrClearStorageErrorPopup(Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;)Z

    goto :goto_0
.end method

.method protected getTextIdForForceChanged(Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;)I
    .locals 3
    .param p1, "state"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    .prologue
    .line 186
    const/4 v0, -0x1

    .line 188
    .local v0, "textId":I
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->isCurrentStorageExternal()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$1;->$SwitchMap$com$sonyericsson$cameracommon$mediasaving$StorageController$StorageState:[I

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 224
    :goto_0
    :pswitch_0
    return v0

    .line 196
    :pswitch_1
    sget v0, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_change_full_storage_to_internal_txt:I

    .line 197
    goto :goto_0

    .line 202
    :pswitch_2
    sget v0, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_storage_changing_to_internal_txt:I

    goto :goto_0

    .line 207
    :cond_0
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$1;->$SwitchMap$com$sonyericsson$cameracommon$mediasaving$StorageController$StorageState:[I

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 213
    :pswitch_3
    sget v0, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_internal_memory_full_txt:I

    .line 214
    goto :goto_0

    .line 219
    :pswitch_4
    sget v0, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_internal_memory_unavailable_txt:I

    goto :goto_0

    .line 190
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 207
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method protected hasBetterStorage(Ljava/lang/String;)Z
    .locals 6
    .param p1, "targetStorage"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 296
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->mStoragePriority:Ljava/util/Map;

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->mCurrentStorage:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 297
    .local v0, "currentPriority":I
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->mStorageAutoSwitchListener:Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$StorageAutoSwitchListener;

    invoke-interface {v3}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$StorageAutoSwitchListener;->canSwitchStorage()Z

    move-result v3

    if-nez v3, :cond_0

    .line 299
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->requestErrorCheckLater(Ljava/lang/String;)V

    move v3, v4

    .line 317
    :goto_0
    return v3

    .line 303
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->mStorageStatus:Ljava/util/Map;

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->mCurrentStorage:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v5, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->AVAILABLE:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    if-eq v3, v5, :cond_1

    .line 305
    const/16 v0, 0x64

    .line 308
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->mStoragePriority:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 309
    .local v2, "storage":Ljava/lang/String;
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->mStoragePriority:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v3, v0, :cond_2

    .line 310
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->mStorageStatus:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v5, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->AVAILABLE:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    if-ne v3, v5, :cond_2

    .line 313
    const/4 v3, 0x1

    goto :goto_0

    .end local v2    # "storage":Ljava/lang/String;
    :cond_3
    move v3, v4

    .line 317
    goto :goto_0
.end method

.method public isToggledStorageReady()Z
    .locals 5

    .prologue
    .line 336
    const/4 v1, 0x0

    .line 337
    .local v1, "isReady":Z
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->mStoragePriority:Ljava/util/Map;

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

    .line 338
    .local v2, "storage":Ljava/lang/String;
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->mCurrentStorage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 341
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->mStorageStatus:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->AVAILABLE:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    if-ne v3, v4, :cond_0

    .line 342
    const/4 v1, 0x1

    goto :goto_0

    .line 345
    .end local v2    # "storage":Ljava/lang/String;
    :cond_1
    return v1
.end method

.method public setStorage(Ljava/lang/String;I)V
    .locals 2
    .param p1, "storage"    # Ljava/lang/String;
    .param p2, "priority"    # I

    .prologue
    .line 328
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->mStoragePriority:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    return-void
.end method

.method protected showDialogForForceChanged(Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;)Z
    .locals 3
    .param p1, "state"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    .prologue
    const/4 v2, 0x0

    .line 283
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->getTextIdForForceChanged(Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;)I

    move-result v0

    .line 284
    .local v0, "textId":I
    sget v1, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_save_destination_title_txt:I

    .line 285
    .local v1, "titleId":I
    invoke-virtual {p0, v2}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->closeDialog(Z)V

    .line 286
    invoke-virtual {p0, v0, v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->showStoragePopup(IIZ)Z

    move-result v2

    return v2
.end method

.method protected showOrClearStorageErrorPopup(Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;)Z
    .locals 5
    .param p1, "state"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    .prologue
    const/4 v4, 0x1

    .line 235
    const/4 v0, -0x1

    .line 236
    .local v0, "textId":I
    sget v1, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_memory_title_txt:I

    .line 237
    .local v1, "titleId":I
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->isCurrentStorageExternal()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 239
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$1;->$SwitchMap$com$sonyericsson$cameracommon$mediasaving$StorageController$StorageState:[I

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->getCurrentStorageState()Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 272
    :goto_0
    invoke-virtual {p0, v0, v1, v4}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->showStoragePopup(IIZ)Z

    move-result v2

    return v2

    .line 241
    :pswitch_0
    invoke-virtual {p0, v4}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->closeDialog(Z)V

    goto :goto_0

    .line 245
    :pswitch_1
    sget v0, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_internal_sd_full_txt:I

    .line 246
    goto :goto_0

    .line 251
    :pswitch_2
    sget v0, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_memory_unavailable_txt:I

    goto :goto_0

    .line 256
    :cond_0
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$1;->$SwitchMap$com$sonyericsson$cameracommon$mediasaving$StorageController$StorageState:[I

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->getCurrentStorageState()Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    goto :goto_0

    .line 258
    :pswitch_3
    invoke-virtual {p0, v4}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->closeDialog(Z)V

    goto :goto_0

    .line 262
    :pswitch_4
    sget v0, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_internal_sd_full_txt:I

    .line 263
    goto :goto_0

    .line 268
    :pswitch_5
    sget v0, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_memory_ims_unavailable_txt:I

    goto :goto_0

    .line 239
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 256
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method protected showPopupDualStorageAvailable()Z
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 152
    sget v1, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_change_storage_to_sd_txt:I

    .line 153
    .local v1, "textId":I
    const/4 v10, 0x0

    .line 155
    .local v10, "isShow":Z
    if-lez v1, :cond_1

    .line 156
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->mDualStorageDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_0

    .line 157
    const/4 v0, 0x1

    .line 176
    :goto_0
    return v0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_save_destination_title_txt:I

    const/4 v3, 0x0

    sget v4, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_change_txt:I

    sget v5, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_cancel_txt:I

    new-instance v6, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$DialogOkClickListener;

    invoke-direct {v6, p0, v11}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$DialogOkClickListener;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$1;)V

    new-instance v7, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$DialogCancelClickListener;

    invoke-direct {v7, p0, v11}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$DialogCancelClickListener;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$1;)V

    new-instance v8, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$DialogCancelListener;

    invoke-direct {v8, p0, v11}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$DialogCancelListener;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$1;)V

    new-instance v9, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$DialogDismissListener;

    invoke-direct {v9, p0, v11}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$DialogDismissListener;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$1;)V

    invoke-virtual/range {v0 .. v9}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showOkAndCancelStorage(IIZIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnDismissListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->mDualStorageDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 172
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->mDualStorageDialog:Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    if-eqz v0, :cond_1

    .line 173
    const/4 v10, 0x1

    :cond_1
    move v0, v10

    .line 176
    goto :goto_0
.end method
