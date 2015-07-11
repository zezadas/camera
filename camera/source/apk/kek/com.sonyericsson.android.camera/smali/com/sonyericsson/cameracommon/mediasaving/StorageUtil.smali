.class public Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;
.super Ljava/lang/Object;
.source "StorageUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$1;,
        Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$GetStatFsTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getMountedPaths(Landroid/content/Context;)[Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v3, "mountedPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getStorageManager(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    .local v0, "arr$":[Landroid/os/storage/StorageVolume;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 59
    .local v4, "value":Landroid/os/storage/StorageVolume;
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 60
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 64
    .end local v4    # "value":Landroid/os/storage/StorageVolume;
    :cond_1
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    return-object v5
.end method

.method private static getPathFromConfig(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 234
    sget v9, Lcom/sonyericsson/cameracommon/R$string;->default_destination_to_save:I

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 238
    .local v1, "defaultStorage":Ljava/lang/String;
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getStorageManager(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v6

    .line 239
    .local v6, "storageManager":Landroid/os/storage/StorageManager;
    invoke-virtual {v6}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    .local v0, "arr$":[Landroid/os/storage/StorageVolume;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v7, v0, v2

    .line 240
    .local v7, "storageVolume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 241
    .local v4, "path":Ljava/lang/String;
    invoke-static {v4, p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getStorageTypeFromPath(Ljava/lang/String;Landroid/content/Context;)Landroid/os/storage/StorageManager$StorageType;

    move-result-object v8

    .line 242
    .local v8, "type":Landroid/os/storage/StorageManager$StorageType;
    invoke-virtual {v8}, Landroid/os/storage/StorageManager$StorageType;->name()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 243
    .local v5, "storage":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 248
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "storage":Ljava/lang/String;
    .end local v7    # "storageVolume":Landroid/os/storage/StorageVolume;
    .end local v8    # "type":Landroid/os/storage/StorageManager$StorageType;
    :goto_1
    return-object v4

    .line 239
    .restart local v4    # "path":Ljava/lang/String;
    .restart local v5    # "storage":Ljava/lang/String;
    .restart local v7    # "storageVolume":Landroid/os/storage/StorageVolume;
    .restart local v8    # "type":Landroid/os/storage/StorageManager$StorageType;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 248
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "storage":Ljava/lang/String;
    .end local v7    # "storageVolume":Landroid/os/storage/StorageVolume;
    .end local v8    # "type":Landroid/os/storage/StorageManager$StorageType;
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method public static getPathFromSaveDestination(Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "storage"    # Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getStorageTypeFromSaveDestination(Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;)Landroid/os/storage/StorageManager$StorageType;

    move-result-object v0

    .line 79
    .local v0, "type":Landroid/os/storage/StorageManager$StorageType;
    invoke-static {v0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getPathFromType(Landroid/os/storage/StorageManager$StorageType;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getPathFromType(Landroid/os/storage/StorageManager$StorageType;Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # Landroid/os/storage/StorageManager$StorageType;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 121
    :try_start_0
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getStorageManager(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/os/storage/StorageManager;->getVolumePath(Landroid/os/storage/StorageManager$StorageType;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 123
    :goto_0
    return-object v1

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getPathFromConfig(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 136
    if-nez p1, :cond_1

    .line 138
    const/4 v12, 0x0

    .line 223
    :cond_0
    :goto_0
    return-object v12

    .line 142
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v14

    .line 143
    .local v14, "path":Ljava/lang/String;
    if-nez v14, :cond_2

    .line 145
    const/4 v12, 0x0

    goto :goto_0

    .line 147
    :cond_2
    invoke-static/range {p0 .. p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getStorageManager(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v7

    .local v7, "arr$":[Landroid/os/storage/StorageVolume;
    array-length v11, v7

    .local v11, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_1
    if-ge v9, v11, :cond_3

    aget-object v16, v7, v9

    .line 148
    .local v16, "storage":Landroid/os/storage/StorageVolume;
    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v12

    .line 149
    .local v12, "mountPoint":Ljava/lang/String;
    invoke-virtual {v14, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 147
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 157
    .end local v12    # "mountPoint":Ljava/lang/String;
    .end local v16    # "storage":Landroid/os/storage/StorageVolume;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 158
    .local v1, "r":Landroid/content/ContentResolver;
    const/4 v8, 0x0

    .line 161
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x1

    :try_start_0
    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "_data"

    aput-object v4, v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 163
    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 167
    const-string v2, "_data"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 168
    .local v10, "index":I
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getType(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    .line 171
    const/4 v12, 0x0

    .line 192
    if-eqz v8, :cond_0

    .line 193
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 175
    :cond_4
    :try_start_1
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 177
    .local v15, "pathFromContent":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getStorageManager(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v7

    array-length v11, v7

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v11, :cond_6

    aget-object v16, v7, v9

    .line 178
    .restart local v16    # "storage":Landroid/os/storage/StorageVolume;
    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v12

    .line 179
    .restart local v12    # "mountPoint":Ljava/lang/String;
    invoke-virtual {v15, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_5

    .line 192
    if-eqz v8, :cond_0

    .line 193
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 177
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 192
    .end local v10    # "index":I
    .end local v12    # "mountPoint":Ljava/lang/String;
    .end local v15    # "pathFromContent":Ljava/lang/String;
    .end local v16    # "storage":Landroid/os/storage/StorageVolume;
    :cond_6
    if-eqz v8, :cond_7

    .line 193
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 208
    :cond_7
    :goto_3
    const/4 v13, 0x0

    .line 210
    .local v13, "os":Ljava/io/OutputStream;
    :try_start_2
    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v13

    .line 211
    invoke-static/range {p0 .. p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getStorageManager(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v2

    sget-object v3, Landroid/os/storage/StorageManager$StorageType;->INTERNAL:Landroid/os/storage/StorageManager$StorageType;

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageManager;->getVolumePath(Landroid/os/storage/StorageManager$StorageType;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v12

    .line 215
    if-eqz v13, :cond_0

    .line 217
    :try_start_3
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 218
    :catch_0
    move-exception v2

    goto/16 :goto_0

    .line 189
    .end local v13    # "os":Ljava/io/OutputStream;
    :catch_1
    move-exception v2

    .line 192
    if-eqz v8, :cond_7

    .line 193
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 192
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_8

    .line 193
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v2

    .line 212
    .restart local v13    # "os":Ljava/io/OutputStream;
    :catch_2
    move-exception v2

    .line 215
    if-eqz v13, :cond_9

    .line 217
    :try_start_4
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 223
    :cond_9
    :goto_4
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 215
    :catchall_1
    move-exception v2

    if-eqz v13, :cond_a

    .line 217
    :try_start_5
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 220
    :cond_a
    :goto_5
    throw v2

    .line 218
    :catch_3
    move-exception v2

    goto :goto_4

    :catch_4
    move-exception v3

    goto :goto_5
.end method

.method private static getStorageManager(Landroid/content/Context;)Landroid/os/storage/StorageManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 252
    const-string v0, "storage"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method public static getStorageTypeFromPath(Ljava/lang/String;Landroid/content/Context;)Landroid/os/storage/StorageManager$StorageType;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    sget-object v1, Landroid/os/storage/StorageManager$StorageType;->UNKNOWN:Landroid/os/storage/StorageManager$StorageType;

    .line 91
    .local v1, "type":Landroid/os/storage/StorageManager$StorageType;
    :try_start_0
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getStorageManager(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/os/storage/StorageManager;->getVolumeType(Ljava/lang/String;)Landroid/os/storage/StorageManager$StorageType;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 96
    :goto_0
    return-object v1

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/io/FileNotFoundException;
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVolumeType("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") failed."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getStorageTypeFromSaveDestination(Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;)Landroid/os/storage/StorageManager$StorageType;
    .locals 2
    .param p0, "storage"    # Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;

    .prologue
    .line 68
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil$1;->$SwitchMap$com$sonyericsson$cameracommon$commonsetting$values$SaveDestination:[I

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 73
    sget-object v0, Landroid/os/storage/StorageManager$StorageType;->INTERNAL:Landroid/os/storage/StorageManager$StorageType;

    :goto_0
    return-object v0

    .line 70
    :pswitch_0
    sget-object v0, Landroid/os/storage/StorageManager$StorageType;->EXTERNAL_CARD:Landroid/os/storage/StorageManager$StorageType;

    goto :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getStorageTypeFromUri(Landroid/net/Uri;Landroid/content/Context;)Landroid/os/storage/StorageManager$StorageType;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    invoke-static {p1, p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getStorageTypeFromPath(Ljava/lang/String;Landroid/content/Context;)Landroid/os/storage/StorageManager$StorageType;

    move-result-object v1

    .line 109
    .local v1, "type":Landroid/os/storage/StorageManager$StorageType;
    invoke-static {v0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getStorageTypeFromPath(Ljava/lang/String;Landroid/content/Context;)Landroid/os/storage/StorageManager$StorageType;

    move-result-object v2

    return-object v2
.end method

.method public static getVolumeState(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getStorageManager(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "envState":Ljava/lang/String;
    return-object v0
.end method
