.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;
.super Ljava/lang/Enum;
.source "DestinationToSave.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

.field public static final enum EMMC:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

.field public static final enum INTERNAL_MASS_STORAGE:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

.field public static final enum MEMORY_CARD:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

.field public static final enum SDCARD:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

.field private static final TAG:Ljava/lang/String; = "DestinationToSave"

.field private static sParameterTextId:I

.field private static sPrimaryStorage:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;


# instance fields
.field private final mCompatibleValue:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

.field private mIconId:I

.field private mMountPoint:Ljava/lang/String;

.field private mTextId:I

.field private mType:Landroid/os/storage/StorageManager$StorageType;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 23
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    const-string v1, "EMMC"

    const v4, 0x7f090069

    sget-object v5, Landroid/os/storage/StorageManager$StorageType;->INTERNAL:Landroid/os/storage/StorageManager$StorageType;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;-><init>(Ljava/lang/String;IIILandroid/os/storage/StorageManager$StorageType;Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->EMMC:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    .line 28
    new-instance v4, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    const-string v5, "SDCARD"

    const v8, 0x7f09006a

    sget-object v9, Landroid/os/storage/StorageManager$StorageType;->EXTERNAL_CARD:Landroid/os/storage/StorageManager$StorageType;

    const/4 v10, 0x0

    move v6, v11

    move v7, v3

    invoke-direct/range {v4 .. v10}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;-><init>(Ljava/lang/String;IIILandroid/os/storage/StorageManager$StorageType;Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;)V

    sput-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->SDCARD:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    .line 33
    new-instance v4, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    const-string v5, "INTERNAL_MASS_STORAGE"

    const v8, 0x7f090069

    sget-object v9, Landroid/os/storage/StorageManager$StorageType;->INTERNAL:Landroid/os/storage/StorageManager$StorageType;

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->EMMC:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    move v6, v12

    move v7, v3

    invoke-direct/range {v4 .. v10}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;-><init>(Ljava/lang/String;IIILandroid/os/storage/StorageManager$StorageType;Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;)V

    sput-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->INTERNAL_MASS_STORAGE:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    .line 38
    new-instance v4, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    const-string v5, "MEMORY_CARD"

    const v8, 0x7f09006a

    sget-object v9, Landroid/os/storage/StorageManager$StorageType;->EXTERNAL_CARD:Landroid/os/storage/StorageManager$StorageType;

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->SDCARD:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    move v6, v13

    move v7, v3

    invoke-direct/range {v4 .. v10}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;-><init>(Ljava/lang/String;IIILandroid/os/storage/StorageManager$StorageType;Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;)V

    sput-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->MEMORY_CARD:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    .line 22
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->EMMC:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->SDCARD:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    aput-object v1, v0, v11

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->INTERNAL_MASS_STORAGE:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    aput-object v1, v0, v12

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->MEMORY_CARD:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    aput-object v1, v0, v13

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    .line 48
    const v0, 0x7f090068

    sput v0, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->sParameterTextId:I

    .line 264
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->EMMC:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->sPrimaryStorage:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILandroid/os/storage/StorageManager$StorageType;Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;)V
    .locals 0
    .param p3, "iconId"    # I
    .param p4, "textId"    # I
    .param p5, "storageType"    # Landroid/os/storage/StorageManager$StorageType;
    .param p6, "compatibleValue"    # Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/os/storage/StorageManager$StorageType;",
            "Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;",
            ")V"
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 66
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->mIconId:I

    .line 67
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->mTextId:I

    .line 68
    iput-object p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->mType:Landroid/os/storage/StorageManager$StorageType;

    .line 69
    iput-object p6, p0, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->mCompatibleValue:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    .line 70
    return-void
.end method

.method public static getOptions()[Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;
    .locals 6

    .prologue
    .line 248
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 249
    .local v3, "options":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;>;"
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    move-result-object v0

    .local v0, "arr$":[Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 250
    .local v4, "value":Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->getPath()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 251
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 256
    .end local v4    # "value":Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;
    :cond_1
    const/4 v5, 0x0

    new-array v5, v5, [Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    return-object v5
.end method

.method public static getOptions(Landroid/net/Uri;Ljava/lang/String;Landroid/content/Context;)[Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;
    .locals 6
    .param p0, "extraOutput"    # Landroid/net/Uri;
    .param p1, "fixedStoragePath"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 223
    if-eqz p1, :cond_0

    .line 224
    invoke-static {p1, p2}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getStorageTypeFromPath(Ljava/lang/String;Landroid/content/Context;)Landroid/os/storage/StorageManager$StorageType;

    move-result-object v1

    .line 227
    .local v1, "fixedStorage":Landroid/os/storage/StorageManager$StorageType;
    const/4 v0, 0x0

    .line 228
    .local v0, "dstTo":Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave$1;->$SwitchMap$android$os$storage$StorageManager$StorageType:[I

    invoke-virtual {v1}, Landroid/os/storage/StorageManager$StorageType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 237
    :goto_0
    if-eqz v0, :cond_1

    .line 238
    new-array v2, v5, [Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    aput-object v0, v2, v4

    .line 244
    .end local v0    # "dstTo":Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;
    .end local v1    # "fixedStorage":Landroid/os/storage/StorageManager$StorageType;
    :goto_1
    return-object v2

    .line 230
    .restart local v0    # "dstTo":Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;
    .restart local v1    # "fixedStorage":Landroid/os/storage/StorageManager$StorageType;
    :pswitch_0
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->EMMC:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    .line 231
    goto :goto_0

    .line 234
    :pswitch_1
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->SDCARD:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    goto :goto_0

    .line 240
    .end local v0    # "dstTo":Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;
    .end local v1    # "fixedStorage":Landroid/os/storage/StorageManager$StorageType;
    :cond_0
    if-eqz p0, :cond_1

    .line 242
    new-array v2, v5, [Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->EMMC:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    aput-object v3, v2, v4

    goto :goto_1

    .line 244
    :cond_1
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->getOptions()[Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    move-result-object v2

    goto :goto_1

    .line 228
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getPrimaryStorage()Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;
    .locals 1

    .prologue
    .line 286
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->sPrimaryStorage:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    return-object v0
.end method

.method public static getValueFromPath(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;
    .locals 7
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 204
    if-nez p0, :cond_1

    move-object v4, v5

    .line 217
    :cond_0
    :goto_0
    return-object v4

    .line 207
    :cond_1
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    move-result-object v0

    .local v0, "arr$":[Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v4, v0, v1

    .line 208
    .local v4, "value":Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 209
    .local v3, "mountPoint":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 210
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 207
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v3    # "mountPoint":Ljava/lang/String;
    .end local v4    # "value":Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;
    :cond_3
    move-object v4, v5

    .line 217
    goto :goto_0
.end method

.method public static setMountPoint(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "paths"    # [Ljava/lang/String;

    .prologue
    .line 73
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v6, v0, v3

    .line 75
    .local v6, "path":Ljava/lang/String;
    invoke-static {v6, p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageUtil;->getStorageTypeFromPath(Ljava/lang/String;Landroid/content/Context;)Landroid/os/storage/StorageManager$StorageType;

    move-result-object v7

    .line 77
    .local v7, "type":Landroid/os/storage/StorageManager$StorageType;
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    move-result-object v1

    .local v1, "arr$":[Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v5, :cond_0

    aget-object v8, v1, v2

    .line 79
    .local v8, "value":Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;
    iget-object v9, v8, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->mCompatibleValue:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    if-nez v9, :cond_2

    .line 80
    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->getType()Landroid/os/storage/StorageManager$StorageType;

    move-result-object v9

    if-ne v7, v9, :cond_1

    .line 81
    iput-object v6, v8, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->mMountPoint:Ljava/lang/String;

    .line 73
    .end local v8    # "value":Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;
    :cond_0
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_0

    .line 85
    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    .restart local v8    # "value":Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;
    :cond_1
    sget-object v9, Landroid/os/storage/StorageManager$StorageType;->UNKNOWN:Landroid/os/storage/StorageManager$StorageType;

    if-ne v7, v9, :cond_2

    .line 86
    const-string v9, "/dev/null"

    iput-object v9, v8, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->mMountPoint:Ljava/lang/String;

    .line 77
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 94
    .end local v1    # "arr$":[Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;
    .end local v2    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "path":Ljava/lang/String;
    .end local v7    # "type":Landroid/os/storage/StorageManager$StorageType;
    .end local v8    # "value":Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;
    .restart local v3    # "i$":I
    :cond_3
    invoke-static {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->updatePrimaryStorage(Landroid/content/Context;)V

    .line 95
    return-void
.end method

.method private static updatePrimaryStorage(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 275
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090025

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, "defaultStorage":Ljava/lang/String;
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->SDCARD:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->getType()Landroid/os/storage/StorageManager$StorageType;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/storage/StorageManager$StorageType;->name()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 278
    .local v1, "sdcard":Ljava/lang/String;
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->EMMC:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->getPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 279
    :cond_0
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->SDCARD:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->getPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 280
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->SDCARD:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    sput-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->sPrimaryStorage:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    .line 283
    :cond_1
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;

    .prologue
    .line 104
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;)V

    .line 105
    return-void
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->mIconId:I

    return v0
.end method

.method public getParameterKey()Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    return-object v0
.end method

.method public getParameterKeyTextId()I
    .locals 1

    .prologue
    .line 122
    sget v0, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->sParameterTextId:I

    return v0
.end method

.method public getParameterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->mMountPoint:Ljava/lang/String;

    return-object v0
.end method

.method public getRecommendedValue([Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    .locals 6
    .param p1, "options"    # [Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    .param p2, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    .prologue
    .line 167
    if-eqz p1, :cond_3

    move-object v1, p2

    .line 168
    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    .line 170
    .local v1, "currentValue":Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;
    iget-object v5, v1, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->mCompatibleValue:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    if-nez v5, :cond_0

    .line 185
    .end local v1    # "currentValue":Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;
    :goto_0
    return-object v1

    .line 174
    .restart local v1    # "currentValue":Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v2, v0, v3

    .line 175
    .local v2, "element":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    iget-object v5, v1, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->mCompatibleValue:Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    if-ne v2, v5, :cond_1

    move-object v1, v2

    .line 178
    goto :goto_0

    .line 174
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 181
    .end local v2    # "element":Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    :cond_2
    array-length v5, p1

    if-lez v5, :cond_3

    .line 182
    const/4 v5, 0x0

    aget-object v1, p1, v5

    goto :goto_0

    .line 185
    .end local v0    # "arr$":[Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    .end local v1    # "currentValue":Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_3
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->getPrimaryStorage()Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    move-result-object v1

    goto :goto_0
.end method

.method public getTextId()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->mTextId:I

    return v0
.end method

.method public getType()Landroid/os/storage/StorageManager$StorageType;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->mType:Landroid/os/storage/StorageManager$StorageType;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
