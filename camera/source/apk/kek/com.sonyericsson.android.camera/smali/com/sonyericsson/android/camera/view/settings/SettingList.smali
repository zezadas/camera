.class public Lcom/sonyericsson/android/camera/view/settings/SettingList;
.super Ljava/lang/Object;
.source "SettingList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/settings/SettingList$1;,
        Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;
    }
.end annotation


# static fields
.field private static final AUTO:[Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

.field private static final AUTO_TABLET:[Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

.field private static final FRONT:[Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

.field private static final FRONT_FLASH_SUPPORTED:[Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

.field private static final FRONT_TABLET:[Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

.field public static final LIST_APPEND:I = 0x1

.field public static final LIST_REMOVE:I

.field private static final PROGRAM_PHOTO:[Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

.field private static final PROGRAM_PHOTO_TABLET:[Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

.field private static final PROGRAM_VIDEO:[Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

.field private static final PROGRAM_VIDEO_TABLET:[Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

.field private static sDisplayingParameterKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sonyericsson/android/camera/view/settings/SettingGroup;",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/android/camera/configuration/ParameterKey;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    .line 44
    const/4 v10, 0x5

    new-array v10, v10, [Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    const/4 v11, 0x0

    sget-object v12, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->BLANK:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->BLANK:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    sget-object v12, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->FLASH_LIGHT:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    aput-object v12, v10, v11

    const/4 v11, 0x3

    sget-object v12, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->FACING:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    aput-object v12, v10, v11

    const/4 v11, 0x4

    sget-object v12, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->MENU:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    aput-object v12, v10, v11

    sput-object v10, Lcom/sonyericsson/android/camera/view/settings/SettingList;->AUTO:[Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    .line 52
    const/4 v10, 0x5

    new-array v10, v10, [Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    const/4 v11, 0x0

    sget-object v12, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->SCENE:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->CONTROL:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    sget-object v12, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->FLASH_LIGHT:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    aput-object v12, v10, v11

    const/4 v11, 0x3

    sget-object v12, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->FACING:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    aput-object v12, v10, v11

    const/4 v11, 0x4

    sget-object v12, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->MENU:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    aput-object v12, v10, v11

    sput-object v10, Lcom/sonyericsson/android/camera/view/settings/SettingList;->PROGRAM_PHOTO:[Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    .line 60
    const/4 v10, 0x5

    new-array v10, v10, [Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    const/4 v11, 0x0

    sget-object v12, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->SCENE:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->CONTROL:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    sget-object v12, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->FLASH_LIGHT:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    aput-object v12, v10, v11

    const/4 v11, 0x3

    sget-object v12, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->FACING:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    aput-object v12, v10, v11

    const/4 v11, 0x4

    sget-object v12, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->MENU:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    aput-object v12, v10, v11

    sput-object v10, Lcom/sonyericsson/android/camera/view/settings/SettingList;->PROGRAM_VIDEO:[Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    .line 68
    const/4 v10, 0x5

    new-array v10, v10, [Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    const/4 v11, 0x0

    sget-object v12, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->BLANK:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->BLANK:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    sget-object v12, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->SELF_TIMER:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    aput-object v12, v10, v11

    const/4 v11, 0x3

    sget-object v12, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->FACING:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    aput-object v12, v10, v11

    const/4 v11, 0x4

    sget-object v12, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->MENU:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    aput-object v12, v10, v11

    sput-object v10, Lcom/sonyericsson/android/camera/view/settings/SettingList;->FRONT:[Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    .line 76
    const/4 v10, 0x5

    new-array v10, v10, [Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    const/4 v11, 0x0

    sget-object v12, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->BLANK:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->SELF_TIMER:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    sget-object v12, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->FLASH_LIGHT:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    aput-object v12, v10, v11

    const/4 v11, 0x3

    sget-object v12, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->FACING:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    aput-object v12, v10, v11

    const/4 v11, 0x4

    sget-object v12, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->MENU:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    aput-object v12, v10, v11

    sput-object v10, Lcom/sonyericsson/android/camera/view/settings/SettingList;->FRONT_FLASH_SUPPORTED:[Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    .line 84
    const/4 v10, 0x7

    new-array v10, v10, [Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    const/4 v11, 0x0

    sget-object v12, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->BLANK:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->BLANK:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    sget-object v12, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->BLANK:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    aput-object v12, v10, v11

    const/4 v11, 0x3

    sget-object v12, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->BLANK:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    aput-object v12, v10, v11

    const/4 v11, 0x4

    sget-object v12, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->BLANK:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    aput-object v12, v10, v11

    const/4 v11, 0x5

    sget-object v12, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->FACING:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    aput-object v12, v10, v11

    const/4 v11, 0x6

    sget-object v12, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->MENU:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    aput-object v12, v10, v11

    sput-object v10, Lcom/sonyericsson/android/camera/view/settings/SettingList;->AUTO_TABLET:[Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    .line 94
    const/4 v10, 0x7

    new-array v10, v10, [Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    const/4 v11, 0x0

    sget-object v12, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->BLANK:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->BLANK:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    sget-object v12, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->BLANK:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    aput-object v12, v10, v11

    const/4 v11, 0x3

    sget-object v12, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->SCENE:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    aput-object v12, v10, v11

    const/4 v11, 0x4

    sget-object v12, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->CONTROL:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    aput-object v12, v10, v11

    const/4 v11, 0x5

    sget-object v12, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->FACING:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    aput-object v12, v10, v11

    const/4 v11, 0x6

    sget-object v12, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->MENU:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    aput-object v12, v10, v11

    sput-object v10, Lcom/sonyericsson/android/camera/view/settings/SettingList;->PROGRAM_PHOTO_TABLET:[Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    .line 104
    const/4 v10, 0x7

    new-array v10, v10, [Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    const/4 v11, 0x0

    sget-object v12, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->BLANK:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->BLANK:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    sget-object v12, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->BLANK:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    aput-object v12, v10, v11

    const/4 v11, 0x3

    sget-object v12, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->SCENE:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    aput-object v12, v10, v11

    const/4 v11, 0x4

    sget-object v12, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->CONTROL:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    aput-object v12, v10, v11

    const/4 v11, 0x5

    sget-object v12, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->FACING:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    aput-object v12, v10, v11

    const/4 v11, 0x6

    sget-object v12, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->MENU:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    aput-object v12, v10, v11

    sput-object v10, Lcom/sonyericsson/android/camera/view/settings/SettingList;->PROGRAM_VIDEO_TABLET:[Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    .line 114
    const/4 v10, 0x7

    new-array v10, v10, [Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    const/4 v11, 0x0

    sget-object v12, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->BLANK:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->BLANK:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    sget-object v12, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->BLANK:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    aput-object v12, v10, v11

    const/4 v11, 0x3

    sget-object v12, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->BLANK:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    aput-object v12, v10, v11

    const/4 v11, 0x4

    sget-object v12, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->SELF_TIMER:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    aput-object v12, v10, v11

    const/4 v11, 0x5

    sget-object v12, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->FACING:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    aput-object v12, v10, v11

    const/4 v11, 0x6

    sget-object v12, Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;->MENU:Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    aput-object v12, v10, v11

    sput-object v10, Lcom/sonyericsson/android/camera/view/settings/SettingList;->FRONT_TABLET:[Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    .line 209
    new-instance v10, Ljava/util/EnumMap;

    const-class v11, Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

    invoke-direct {v10, v11}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v10, Lcom/sonyericsson/android/camera/view/settings/SettingList;->sDisplayingParameterKeyMap:Ljava/util/Map;

    .line 212
    invoke-static {}, Lcom/sonyericsson/android/camera/view/settings/SettingGroup;->values()[Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

    move-result-object v0

    .local v0, "arr$":[Lcom/sonyericsson/android/camera/view/settings/SettingGroup;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    move v5, v4

    .end local v0    # "arr$":[Lcom/sonyericsson/android/camera/view/settings/SettingGroup;
    .end local v4    # "i$":I
    .end local v7    # "len$":I
    .local v5, "i$":I
    :goto_0
    if-ge v5, v7, :cond_2

    aget-object v3, v0, v5

    .line 213
    .local v3, "group":Lcom/sonyericsson/android/camera/view/settings/SettingGroup;
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/settings/SettingGroup;->getSettingItemList()[Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    move-result-object v2

    .line 215
    .local v2, "candidate":[Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 216
    .local v9, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/android/camera/configuration/ParameterKey;>;"
    move-object v1, v2

    .local v1, "arr$":[Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    array-length v8, v1

    .local v8, "len$":I
    const/4 v4, 0x0

    .end local v5    # "i$":I
    .restart local v4    # "i$":I
    :goto_1
    if-ge v4, v8, :cond_1

    aget-object v6, v1, v4

    .line 217
    .local v6, "key":Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    sget-object v10, Lcom/sonyericsson/android/camera/view/settings/SettingList$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterKey:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 232
    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 219
    :pswitch_0
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/StaticConfigurationUtil;->isForceSound()Z

    move-result v10

    if-nez v10, :cond_0

    .line 220
    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 227
    :pswitch_1
    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 236
    .end local v6    # "key":Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    :cond_1
    sget-object v10, Lcom/sonyericsson/android/camera/view/settings/SettingList;->sDisplayingParameterKeyMap:Ljava/util/Map;

    invoke-interface {v10, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    .end local v4    # "i$":I
    .restart local v5    # "i$":I
    goto :goto_0

    .line 239
    .end local v1    # "arr$":[Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    .end local v2    # "candidate":[Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    .end local v3    # "group":Lcom/sonyericsson/android/camera/view/settings/SettingGroup;
    .end local v8    # "len$":I
    .end local v9    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/android/camera/configuration/ParameterKey;>;"
    :cond_2
    return-void

    .line 217
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static getDefaultTab(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/view/settings/SettingGroup;
    .locals 2
    .param p0, "mode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .prologue
    .line 164
    sget-object v0, Lcom/sonyericsson/android/camera/view/settings/SettingList$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 175
    sget-object v0, Lcom/sonyericsson/android/camera/view/settings/SettingGroup;->COMMON:Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

    :goto_0
    return-object v0

    .line 169
    :pswitch_0
    sget-object v0, Lcom/sonyericsson/android/camera/view/settings/SettingGroup;->PHOTO:Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

    goto :goto_0

    .line 173
    :pswitch_1
    sget-object v0, Lcom/sonyericsson/android/camera/view/settings/SettingGroup;->VIDEO:Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

    goto :goto_0

    .line 164
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getSettingGroupItemListList(Lcom/sonyericsson/android/camera/view/settings/SettingGroup;)Ljava/util/List;
    .locals 1
    .param p0, "group"    # Lcom/sonyericsson/android/camera/view/settings/SettingGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/view/settings/SettingGroup;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/android/camera/configuration/ParameterKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    sget-object v0, Lcom/sonyericsson/android/camera/view/settings/SettingList;->sDisplayingParameterKeyMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static getSettingShortcutList(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Landroid/app/Activity;)Ljava/util/List;
    .locals 2
    .param p0, "mode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;",
            "Landroid/app/Activity;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/utility/ProductConfig;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    sget-object v0, Lcom/sonyericsson/android/camera/view/settings/SettingList$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 139
    sget-object v0, Lcom/sonyericsson/android/camera/view/settings/SettingList;->AUTO_TABLET:[Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 158
    :goto_0
    return-object v0

    .line 129
    :pswitch_0
    sget-object v0, Lcom/sonyericsson/android/camera/view/settings/SettingList;->AUTO_TABLET:[Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 131
    :pswitch_1
    sget-object v0, Lcom/sonyericsson/android/camera/view/settings/SettingList;->PROGRAM_PHOTO_TABLET:[Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 133
    :pswitch_2
    sget-object v0, Lcom/sonyericsson/android/camera/view/settings/SettingList;->PROGRAM_VIDEO_TABLET:[Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 137
    :pswitch_3
    sget-object v0, Lcom/sonyericsson/android/camera/view/settings/SettingList;->FRONT_TABLET:[Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 142
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/view/settings/SettingList$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 158
    sget-object v0, Lcom/sonyericsson/android/camera/view/settings/SettingList;->AUTO:[Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 144
    :pswitch_4
    sget-object v0, Lcom/sonyericsson/android/camera/view/settings/SettingList;->AUTO:[Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 146
    :pswitch_5
    sget-object v0, Lcom/sonyericsson/android/camera/view/settings/SettingList;->PROGRAM_PHOTO:[Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 148
    :pswitch_6
    sget-object v0, Lcom/sonyericsson/android/camera/view/settings/SettingList;->PROGRAM_VIDEO:[Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 152
    :pswitch_7
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()I

    move-result v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->isSupported(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    sget-object v0, Lcom/sonyericsson/android/camera/view/settings/SettingList;->FRONT_FLASH_SUPPORTED:[Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 155
    :cond_1
    sget-object v0, Lcom/sonyericsson/android/camera/view/settings/SettingList;->FRONT:[Lcom/sonyericsson/android/camera/view/settings/SettingList$Shortcut;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 142
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public static getSettingTabList(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;
    .locals 6
    .param p0, "mode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 180
    sget-object v0, Lcom/sonyericsson/android/camera/view/settings/SettingList$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 198
    new-array v0, v5, [Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    sget-object v1, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;->Photo:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;->Video:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;->Common:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    aput-object v1, v0, v4

    :goto_0
    return-object v0

    .line 184
    :pswitch_0
    new-array v0, v5, [Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    sget-object v1, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;->Photo:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;->Video:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;->Common:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    aput-object v1, v0, v4

    goto :goto_0

    .line 189
    :pswitch_1
    new-array v0, v4, [Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    sget-object v1, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;->Photo:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;->Common:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    aput-object v1, v0, v3

    goto :goto_0

    .line 194
    :pswitch_2
    new-array v0, v4, [Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    sget-object v1, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;->Video:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;->Common:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    aput-object v1, v0, v3

    goto :goto_0

    .line 180
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static updateList(Lcom/sonyericsson/android/camera/configuration/ParameterKey;I)V
    .locals 0
    .param p0, "targetKey"    # Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    .param p1, "code"    # I

    .prologue
    .line 266
    return-void
.end method
