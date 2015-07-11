.class public Lcom/sonyericsson/android/camera/mediasaving/BurstMediaProviderUpdator;
.super Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;
.source "BurstMediaProviderUpdator.java"


# static fields
.field private static final MAX_COUNT_BULK_INSERT:I = 0x64

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mInsertPictureRequestList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/sonyericsson/android/camera/mediasaving/BurstMediaProviderUpdator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/mediasaving/BurstMediaProviderUpdator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isOneShotPhoto"    # Z

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;-><init>(Landroid/content/Context;Z)V

    .line 38
    return-void
.end method


# virtual methods
.method public addInsertPictureRequest(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;)V
    .locals 3
    .param p1, "request"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;

    .prologue
    .line 61
    const-string v2, ""

    invoke-virtual {p1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->createContentValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    .line 62
    .local v1, "values":Landroid/content/ContentValues;
    iget-object v2, p0, Lcom/sonyericsson/android/camera/mediasaving/BurstMediaProviderUpdator;->mInsertPictureRequestList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v2, p0, Lcom/sonyericsson/android/camera/mediasaving/BurstMediaProviderUpdator;->mInsertPictureRequestList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 66
    .local v0, "size":I
    const/16 v2, 0x64

    if-lt v0, v2, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/mediasaving/BurstMediaProviderUpdator;->commitBulkInsert()Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    .line 69
    :cond_0
    return-void
.end method

.method public commitBulkInsert()Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;
    .locals 7

    .prologue
    .line 75
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->FAIL:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    .line 76
    .local v2, "result":Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;
    iget-object v3, p0, Lcom/sonyericsson/android/camera/mediasaving/BurstMediaProviderUpdator;->mInsertPictureRequestList:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 78
    :try_start_0
    iget-object v4, p0, Lcom/sonyericsson/android/camera/mediasaving/BurstMediaProviderUpdator;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingConstants;->EXTENDED_PHOTO_STORAGE_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/mediasaving/BurstMediaProviderUpdator;->mInsertPictureRequestList:Ljava/util/List;

    const/4 v6, 0x0

    new-array v6, v6, [Landroid/content/ContentValues;

    invoke-interface {v3, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/ContentValues;

    invoke-static {v4, v5, v3}, Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtil;->crBulkInsert(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    .line 84
    .local v0, "count":I
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->SUCCESS:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v0    # "count":I
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/android/camera/mediasaving/BurstMediaProviderUpdator;->mInsertPictureRequestList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 91
    :cond_0
    new-instance v3, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-direct {v3, v2, v4, v5}, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;)V

    return-object v3

    .line 85
    :catch_0
    move-exception v1

    .line 87
    .local v1, "e":Landroid/database/sqlite/SQLiteFullException;
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->FAIL_MEMORY_FULL:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    goto :goto_0
.end method

.method public prepareBulkInsert()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sonyericsson/android/camera/mediasaving/BurstMediaProviderUpdator;->mInsertPictureRequestList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/mediasaving/BurstMediaProviderUpdator;->mInsertPictureRequestList:Ljava/util/List;

    .line 49
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/mediasaving/BurstMediaProviderUpdator;->mInsertPictureRequestList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method
