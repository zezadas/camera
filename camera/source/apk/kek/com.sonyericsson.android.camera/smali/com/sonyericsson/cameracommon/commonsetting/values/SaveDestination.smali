.class public final enum Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;
.super Ljava/lang/Enum;
.source "SaveDestination.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;",
        ">;",
        "Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;

.field public static final enum EMMC:Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;

.field public static final enum SDCARD:Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;

.field private static final TAG:Ljava/lang/String;

.field private static sParameterTextId:I

.field private static sPrimaryStorage:Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;


# instance fields
.field private final mCompatibleValue:Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;

.field private mIconId:I

.field private final mProviderValue:Ljava/lang/String;

.field private mTextId:I

.field private final mType:Landroid/os/storage/StorageManager$StorageType;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 31
    new-instance v0, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;

    const-string v1, "EMMC"

    sget v4, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_save_destination_ims_txt:I

    const-string v6, "emmc"

    sget-object v7, Landroid/os/storage/StorageManager$StorageType;->INTERNAL:Landroid/os/storage/StorageManager$StorageType;

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;-><init>(Ljava/lang/String;IIILcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;Ljava/lang/String;Landroid/os/storage/StorageManager$StorageType;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;->EMMC:Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;

    .line 37
    new-instance v6, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;

    const-string v7, "SDCARD"

    sget v10, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_save_destination_sd_txt:I

    const-string v12, "sdcard"

    sget-object v13, Landroid/os/storage/StorageManager$StorageType;->EXTERNAL_CARD:Landroid/os/storage/StorageManager$StorageType;

    move v9, v3

    move-object v11, v5

    invoke-direct/range {v6 .. v13}, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;-><init>(Ljava/lang/String;IIILcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;Ljava/lang/String;Landroid/os/storage/StorageManager$StorageType;)V

    sput-object v6, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;->SDCARD:Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;

    .line 30
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;->EMMC:Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;->SDCARD:Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;

    aput-object v1, v0, v8

    sput-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;->$VALUES:[Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;

    .line 45
    const-class v0, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;->TAG:Ljava/lang/String;

    .line 48
    sget v0, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_save_destination_txt:I

    sput v0, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;->sParameterTextId:I

    .line 141
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;->EMMC:Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;

    sput-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;->sPrimaryStorage:Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;Ljava/lang/String;Landroid/os/storage/StorageManager$StorageType;)V
    .locals 0
    .param p3, "iconId"    # I
    .param p4, "textId"    # I
    .param p5, "compatibleValue"    # Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;
    .param p6, "providerValue"    # Ljava/lang/String;
    .param p7, "type"    # Landroid/os/storage/StorageManager$StorageType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;",
            "Ljava/lang/String;",
            "Landroid/os/storage/StorageManager$StorageType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 75
    iput p3, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;->mIconId:I

    .line 76
    iput p4, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;->mTextId:I

    .line 77
    iput-object p5, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;->mCompatibleValue:Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;

    .line 78
    iput-object p6, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;->mProviderValue:Ljava/lang/String;

    .line 79
    iput-object p7, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;->mType:Landroid/os/storage/StorageManager$StorageType;

    .line 80
    return-void
.end method

.method public static getOptions(Landroid/content/Context;)Ljava/util/List;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    const-string v14, "storage"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/storage/StorageManager;

    .line 155
    .local v10, "storageManager":Landroid/os/storage/StorageManager;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v8, "options":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;>;"
    invoke-virtual {v10}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v1

    .local v1, "arr$":[Landroid/os/storage/StorageVolume;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    move v5, v4

    .end local v1    # "arr$":[Landroid/os/storage/StorageVolume;
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_2

    aget-object v13, v1, v5

    .line 157
    .local v13, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v13}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v9

    .line 159
    .local v9, "path":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v10, v9}, Landroid/os/storage/StorageManager;->getVolumeType(Ljava/lang/String;)Landroid/os/storage/StorageManager$StorageType;

    move-result-object v11

    .line 160
    .local v11, "type":Landroid/os/storage/StorageManager$StorageType;
    invoke-static {}, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;->values()[Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;

    move-result-object v2

    .local v2, "arr$":[Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;
    array-length v7, v2

    .local v7, "len$":I
    const/4 v4, 0x0

    .end local v5    # "i$":I
    .restart local v4    # "i$":I
    :goto_1
    if-ge v4, v7, :cond_0

    aget-object v12, v2, v4

    .line 161
    .local v12, "value":Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;
    iget-object v14, v12, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;->mType:Landroid/os/storage/StorageManager$StorageType;

    if-ne v11, v14, :cond_1

    .line 162
    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    .end local v2    # "arr$":[Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;
    .end local v4    # "i$":I
    .end local v7    # "len$":I
    .end local v11    # "type":Landroid/os/storage/StorageManager$StorageType;
    .end local v12    # "value":Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;
    :cond_0
    :goto_2
    add-int/lit8 v4, v5, 0x1

    .restart local v4    # "i$":I
    move v5, v4

    .end local v4    # "i$":I
    .restart local v5    # "i$":I
    goto :goto_0

    .line 160
    .end local v5    # "i$":I
    .restart local v2    # "arr$":[Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;
    .restart local v4    # "i$":I
    .restart local v7    # "len$":I
    .restart local v11    # "type":Landroid/os/storage/StorageManager$StorageType;
    .restart local v12    # "value":Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 166
    .end local v2    # "arr$":[Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;
    .end local v4    # "i$":I
    .end local v7    # "len$":I
    .end local v11    # "type":Landroid/os/storage/StorageManager$StorageType;
    .end local v12    # "value":Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;
    :catch_0
    move-exception v3

    .line 167
    .local v3, "e":Ljava/io/FileNotFoundException;
    sget-object v14, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "No StorageType found for the path: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 172
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .end local v9    # "path":Ljava/lang/String;
    .end local v13    # "volume":Landroid/os/storage/StorageVolume;
    .restart local v5    # "i$":I
    :cond_2
    return-object v8
.end method

.method public static getPrimaryStorage()Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;->sPrimaryStorage:Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 30
    const-class v0, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;->$VALUES:[Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;

    return-object v0
.end method


# virtual methods
.method public getCommonSettingKey()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->SAVE_DESTINATION:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    return-object v0
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;->mIconId:I

    return v0
.end method

.method public getParameterKeyTextId()I
    .locals 1

    .prologue
    .line 137
    sget v0, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;->sParameterTextId:I

    return v0
.end method

.method public getParameterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProviderValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;->mProviderValue:Ljava/lang/String;

    return-object v0
.end method

.method public getTextId()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;->mTextId:I

    return v0
.end method

.method public isCompatibleValue()Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;->mCompatibleValue:Lcom/sonyericsson/cameracommon/commonsetting/values/SaveDestination;

    return-object v0
.end method
