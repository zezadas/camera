.class public Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtil;
.super Ljava/lang/Object;
.source "ContentResolverUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtil$AsyncDeleteTask;
    }
.end annotation


# static fields
.field private static final MPO_EXTENSION:Ljava/lang/String; = ".MPO"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Landroid/net/Uri;Z)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # Z

    .prologue
    .line 24
    invoke-static {p0, p1, p2}, Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtil;->deleteImageImpl(Landroid/content/Context;Landroid/net/Uri;Z)Z

    move-result v0

    return v0
.end method

.method public static crBulkInsert(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "params"    # [Landroid/content/ContentValues;

    .prologue
    .line 115
    const/4 v1, 0x0

    .line 117
    .local v1, "result":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 124
    :goto_0
    return v1

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Landroid/database/sqlite/SQLiteFullException;
    throw v0

    .line 120
    .end local v0    # "e":Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public static crDelete(Landroid/content/Context;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/updator/CrDeleteParameter;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "params"    # Lcom/sonyericsson/cameracommon/mediasaving/updator/CrDeleteParameter;

    .prologue
    .line 91
    const/4 v0, 0x0

    .line 93
    .local v0, "result":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrDeleteParameter;->where:Ljava/lang/String;

    iget-object v3, p2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrDeleteParameter;->selectionArgs:[Ljava/lang/String;

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 101
    :goto_0
    return v0

    .line 97
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static crOpenInputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 157
    const/4 v0, 0x0

    .line 159
    .local v0, "result":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 163
    :goto_0
    return-object v0

    .line 160
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static crOpenOutputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/OutputStream;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 147
    const/4 v0, 0x0

    .line 149
    .local v0, "result":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 153
    :goto_0
    return-object v0

    .line 150
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static crQuery(Landroid/content/Context;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;)Landroid/database/Cursor;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "params"    # Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    .prologue
    .line 64
    const/4 v6, 0x0

    .line 67
    .local v6, "result":Landroid/database/Cursor;
    :try_start_0
    iget v0, p2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->limit:I

    if-lez v0, :cond_0

    .line 68
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s limit %d offset %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->sortOrder:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->limit:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->offset:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 77
    .local v5, "order":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->projection:[Ljava/lang/String;

    iget-object v3, p2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->where:Ljava/lang/String;

    iget-object v4, p2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->selectionArgs:[Ljava/lang/String;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 86
    .end local v5    # "order":Ljava/lang/String;
    :goto_1
    return-object v6

    .line 75
    :cond_0
    iget-object v5, p2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->sortOrder:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v5    # "order":Ljava/lang/String;
    goto :goto_0

    .line 83
    .end local v5    # "order":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static crUpdate(Landroid/content/Context;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/updator/CrUpdateParameter;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "params"    # Lcom/sonyericsson/cameracommon/mediasaving/updator/CrUpdateParameter;

    .prologue
    .line 129
    const/4 v1, 0x0

    .line 131
    .local v1, "result":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrUpdateParameter;->values:Landroid/content/ContentValues;

    iget-object v4, p2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrUpdateParameter;->where:Ljava/lang/String;

    iget-object v5, p2, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrUpdateParameter;->selectionArgs:[Ljava/lang/String;

    invoke-virtual {v2, p1, v3, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 142
    :goto_0
    return v1

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Landroid/database/sqlite/SQLiteFullException;
    throw v0

    .line 138
    .end local v0    # "e":Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public static deleteImage(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 188
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtil;->deleteImageImpl(Landroid/content/Context;Landroid/net/Uri;Z)Z

    move-result v0

    return v0
.end method

.method private static deleteImageByFilePath(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 253
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    new-array v0, v1, [Ljava/lang/String;

    aput-object p1, v0, v3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtil$1;

    invoke-direct {v2}, Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtil$1;-><init>()V

    invoke-static {p0, v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 273
    :cond_0
    return-void
.end method

.method private static deleteImageImpl(Landroid/content/Context;Landroid/net/Uri;Z)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "withMpo"    # Z

    .prologue
    .line 194
    if-nez p1, :cond_0

    .line 195
    const/4 v7, 0x0

    .line 238
    :goto_0
    return v7

    .line 198
    :cond_0
    new-instance v5, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    invoke-direct {v5}, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;-><init>()V

    .line 200
    .local v5, "params":Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "_id"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "_data"

    aput-object v10, v8, v9

    iput-object v8, v5, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->projection:[Ljava/lang/String;

    .line 201
    const/4 v8, 0x0

    iput-object v8, v5, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->where:Ljava/lang/String;

    .line 202
    const/4 v8, 0x0

    iput-object v8, v5, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->selectionArgs:[Ljava/lang/String;

    .line 203
    const/4 v8, 0x0

    iput-object v8, v5, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->sortOrder:Ljava/lang/String;

    .line 204
    const/4 v8, 0x0

    iput v8, v5, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->limit:I

    .line 205
    const/4 v8, 0x0

    iput v8, v5, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->offset:I

    .line 206
    invoke-static {p0, p1, v5}, Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtil;->crQuery(Landroid/content/Context;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;)Landroid/database/Cursor;

    move-result-object v0

    .line 207
    .local v0, "cur":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 208
    .local v2, "failCount":I
    if-eqz v0, :cond_4

    .line 209
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-ge v3, v8, :cond_3

    .line 210
    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 211
    const/4 v8, 0x1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 214
    .local v6, "path":Ljava/lang/String;
    new-instance v1, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrDeleteParameter;

    invoke-direct {v1}, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrDeleteParameter;-><init>()V

    .line 215
    .local v1, "deleteParams":Lcom/sonyericsson/cameracommon/mediasaving/updator/CrDeleteParameter;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrDeleteParameter;->where:Ljava/lang/String;

    .line 216
    const/4 v8, 0x0

    iput-object v8, v1, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrDeleteParameter;->selectionArgs:[Ljava/lang/String;

    .line 217
    invoke-static {p0, p1, v1}, Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtil;->crDelete(Landroid/content/Context;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/updator/CrDeleteParameter;)I

    move-result v4

    .line 218
    .local v4, "number":I
    const/4 v8, 0x1

    if-eq v4, v8, :cond_1

    .line 219
    add-int/lit8 v2, v2, 0x1

    .line 221
    :cond_1
    if-eqz p2, :cond_2

    .line 222
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6}, Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtil;->removeExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".MPO"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtil;->deleteImageByFilePath(Landroid/content/Context;Ljava/lang/String;)V

    .line 209
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 225
    .end local v1    # "deleteParams":Lcom/sonyericsson/cameracommon/mediasaving/updator/CrDeleteParameter;
    .end local v4    # "number":I
    .end local v6    # "path":Ljava/lang/String;
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 230
    .end local v3    # "i":I
    :cond_4
    const/4 v7, 0x0

    .line 231
    .local v7, "result":Z
    if-nez v2, :cond_5

    .line 232
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 234
    :cond_5
    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method public static executeDeteleTask(Landroid/content/Context;Landroid/net/Uri;ZLcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtilListener;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "withMpo"    # Z
    .param p3, "listener"    # Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtilListener;

    .prologue
    .line 248
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtil$AsyncDeleteTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtil$AsyncDeleteTask;-><init>(Landroid/content/Context;Landroid/net/Uri;ZLcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtilListener;)V

    .line 249
    .local v0, "task":Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtil$AsyncDeleteTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/updator/ContentResolverUtil$AsyncDeleteTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 250
    return-void
.end method

.method public static isExist(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 168
    const/4 v2, 0x1

    .line 169
    .local v2, "result":Z
    const/4 v1, 0x0

    .line 171
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 176
    :goto_0
    if-eqz v1, :cond_0

    .line 178
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 184
    :cond_0
    :goto_1
    return v2

    .line 172
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0

    .line 179
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method private static removeExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 276
    if-nez p0, :cond_1

    .line 277
    const/4 p0, 0x0

    .line 283
    .end local p0    # "fileName":Ljava/lang/String;
    .local v0, "point":I
    :cond_0
    :goto_0
    return-object p0

    .line 279
    .end local v0    # "point":I
    .restart local p0    # "fileName":Ljava/lang/String;
    :cond_1
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 280
    .restart local v0    # "point":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 281
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method
