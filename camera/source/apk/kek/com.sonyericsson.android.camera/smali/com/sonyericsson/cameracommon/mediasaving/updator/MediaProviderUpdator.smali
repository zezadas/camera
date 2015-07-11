.class public Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;
.super Ljava/lang/Object;
.source "MediaProviderUpdator.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mContext:Landroid/content/Context;

.field private final mIsOneShotPhoto:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isOneShotPhoto"    # Z

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;->mContext:Landroid/content/Context;

    .line 48
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;->mContext:Landroid/content/Context;

    .line 49
    invoke-static {}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->getInstance()Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->resetStatus()V

    .line 51
    iput-boolean p2, p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;->mIsOneShotPhoto:Z

    .line 52
    return-void
.end method

.method private declared-synchronized crInsert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 148
    monitor-enter p0

    const/4 v1, 0x0

    .line 150
    .local v1, "result":Landroid/net/Uri;
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 157
    :goto_0
    monitor-exit p0

    return-object v1

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "ex":Landroid/database/sqlite/SQLiteFullException;
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    .end local v0    # "ex":Landroid/database/sqlite/SQLiteFullException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 153
    :catch_1
    move-exception v0

    .line 154
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private declared-synchronized crQuery(Ljava/lang/String;)Landroid/net/Uri;
    .locals 9
    .param p1, "queryParam"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 169
    monitor-enter p0

    const/4 v6, 0x0

    .line 171
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingConstants;->VIDEO_STORAGE_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 177
    if-eqz v6, :cond_0

    .line 179
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 181
    .local v7, "mediaId":I
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingConstants;->VIDEO_STORAGE_URI:Landroid/net/Uri;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v8

    .line 186
    .local v8, "uriOriginal":Landroid/net/Uri;
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 189
    .end local v7    # "mediaId":I
    .end local v8    # "uriOriginal":Landroid/net/Uri;
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v8

    .line 186
    :cond_1
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 186
    :catchall_1
    move-exception v0

    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method private getQueryParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 193
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 194
    .local v0, "buff":Ljava/lang/StringBuffer;
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "_data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 199
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private insertVideoContentManager(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;Ljava/lang/String;)Landroid/net/Uri;
    .locals 7
    .param p1, "request"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 203
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "filePath":Ljava/lang/String;
    invoke-virtual {p1, p2}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;->createContentValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v4

    .line 212
    .local v4, "values":Landroid/content/ContentValues;
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;->getQueryParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;->crQuery(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 213
    .local v3, "uri":Landroid/net/Uri;
    if-eqz v3, :cond_1

    .line 214
    new-instance v1, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrUpdateParameter;

    invoke-direct {v1}, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrUpdateParameter;-><init>()V

    .line 215
    .local v1, "params":Lcom/sonyericsson/cameracommon/mediasaving/updator/CrUpdateParameter;
    iput-object v4, v1, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrUpdateParameter;->values:Landroid/content/ContentValues;

    .line 216
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;->mContext:Landroid/content/Context;

    invoke-static {v5, v3, v1}, Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtil;->crUpdate(Landroid/content/Context;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/updator/CrUpdateParameter;)I

    move-result v2

    .line 217
    .local v2, "result":I
    if-gtz v2, :cond_0

    .line 218
    const/4 v5, 0x0

    .line 231
    .end local v1    # "params":Lcom/sonyericsson/cameracommon/mediasaving/updator/CrUpdateParameter;
    .end local v2    # "result":I
    :goto_0
    return-object v5

    .restart local v1    # "params":Lcom/sonyericsson/cameracommon/mediasaving/updator/CrUpdateParameter;
    .restart local v2    # "result":I
    :cond_0
    move-object v5, v3

    .line 220
    goto :goto_0

    .line 223
    .end local v1    # "params":Lcom/sonyericsson/cameracommon/mediasaving/updator/CrUpdateParameter;
    .end local v2    # "result":I
    :cond_1
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;->getSomcType()I

    move-result v5

    if-nez v5, :cond_2

    .line 224
    sget-object v5, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingConstants;->VIDEO_STORAGE_URI:Landroid/net/Uri;

    invoke-direct {p0, v5, v4}, Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;->crInsert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    :goto_1
    move-object v5, v3

    .line 231
    goto :goto_0

    .line 227
    :cond_2
    const-string v5, "somctype"

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;->getSomcType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 229
    sget-object v5, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingConstants;->EXTENDED_VIDEO_STORAGE_URI:Landroid/net/Uri;

    invoke-direct {p0, v5, v4}, Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;->crInsert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_1
.end method

.method private logInsertedContent(Landroid/content/ContentValues;)V
    .locals 0
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 274
    return-void
.end method

.method public static sendBroadcastCameraShot(Landroid/content/Context;Landroid/net/Uri;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "isHighSpeedBurst"    # Z

    .prologue
    .line 286
    if-nez p1, :cond_1

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    if-eqz p0, :cond_0

    .line 295
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 296
    .local v1, "path":Ljava/lang/String;
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingConstants;->EXTENDED_PHOTO_STORAGE_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 300
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingConstants;->EXTENDED_PHOTO_STORAGE_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingConstants;->STANDARD_PHOTO_STORAGE_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 303
    .local v0, "modifiedUri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.hardware.action.NEW_PICTURE"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 304
    if-nez p2, :cond_0

    .line 306
    invoke-static {p0, v0}, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;->sendBroadcastIntent(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    .line 308
    .end local v0    # "modifiedUri":Landroid/net/Uri;
    :cond_2
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingConstants;->PHOTO_STORAGE_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 310
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.hardware.action.NEW_PICTURE"

    invoke-direct {v2, v3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 311
    invoke-static {p0, p1}, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;->sendBroadcastIntent(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    .line 312
    :cond_3
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingConstants;->VIDEO_STORAGE_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 314
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.hardware.action.NEW_VIDEO"

    invoke-direct {v2, v3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public insertPictureAndSendIntent(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;Z)Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;
    .locals 7
    .param p1, "request"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    .param p2, "isSendIntent"    # Z

    .prologue
    .line 67
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->getFilePath()Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "filePath":Ljava/lang/String;
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->FAIL:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    .line 69
    .local v2, "result":Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;
    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 70
    .local v3, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 72
    :try_start_0
    const-string v4, ""

    invoke-virtual {p0, p1, v4}, Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;->insertPictureContentManager(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 73
    if-eqz v3, :cond_0

    .line 74
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->SUCCESS:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :cond_0
    :goto_0
    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->SUCCESS:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    if-ne v2, v4, :cond_2

    .line 86
    new-instance v4, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    invoke-direct {v4, v2, v3, p1}, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;)V

    invoke-virtual {p1, v4}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->notifyStoreResult(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V

    .line 98
    if-eqz p2, :cond_1

    iget-boolean v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;->mIsOneShotPhoto:Z

    if-nez v4, :cond_1

    .line 99
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;->sendBroadcastCameraShot(Landroid/content/Context;Landroid/net/Uri;Z)V

    .line 107
    :cond_1
    :goto_1
    new-instance v4, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    invoke-direct {v4, v2, v3, p1}, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/SavingRequest;)V

    return-object v4

    .line 76
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Landroid/database/sqlite/SQLiteFullException;
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->FAIL_MEMORY_FULL:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    goto :goto_0

    .line 102
    .end local v0    # "e":Landroid/database/sqlite/SQLiteFullException;
    :cond_2
    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to inserting a photo:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {p1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->notifyStoreFailed(Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;)V

    goto :goto_1
.end method

.method public insertPictureContentManager(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;Ljava/lang/String;)Landroid/net/Uri;
    .locals 5
    .param p1, "request"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 122
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingConstants;->PHOTO_STORAGE_URI:Landroid/net/Uri;

    .line 123
    .local v0, "table":Landroid/net/Uri;
    iget-object v3, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v3, v3, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->savedFileType:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;

    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;->BURST:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$SavedFileType;

    if-ne v3, v4, :cond_0

    .line 124
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingConstants;->EXTENDED_PHOTO_STORAGE_URI:Landroid/net/Uri;

    .line 127
    :cond_0
    invoke-virtual {p1, p2}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/PhotoSavingRequest;->createContentValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    .line 129
    .local v2, "values":Landroid/content/ContentValues;
    invoke-direct {p0, v0, v2}, Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;->crInsert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 134
    .local v1, "uri":Landroid/net/Uri;
    return-object v1
.end method

.method public insertVideoAndSendIntent(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;Ljava/lang/String;Z)Landroid/net/Uri;
    .locals 7
    .param p1, "request"    # Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "isSendIntent"    # Z

    .prologue
    .line 237
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;->getFilePath()Ljava/lang/String;

    move-result-object v1

    .line 238
    .local v1, "filePath":Ljava/lang/String;
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->FAIL:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    .line 239
    .local v2, "result":Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;
    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 240
    .local v3, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 242
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;->insertVideoContentManager(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/VideoSavingRequest;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 243
    if-eqz v3, :cond_0

    .line 244
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->SUCCESS:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :cond_0
    :goto_0
    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->SUCCESS:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    if-ne v2, v4, :cond_2

    .line 255
    if-eqz p3, :cond_1

    .line 256
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;->sendBroadcastCameraShot(Landroid/content/Context;Landroid/net/Uri;Z)V

    .line 263
    :cond_1
    :goto_1
    return-object v3

    .line 246
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Landroid/database/sqlite/SQLiteFullException;
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->FAIL_MEMORY_FULL:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    goto :goto_0

    .line 259
    .end local v0    # "e":Landroid/database/sqlite/SQLiteFullException;
    :cond_2
    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/updator/MediaProviderUpdator;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to inserting a video:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
