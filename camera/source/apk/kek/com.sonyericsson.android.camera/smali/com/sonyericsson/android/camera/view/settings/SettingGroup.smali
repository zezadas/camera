.class public final enum Lcom/sonyericsson/android/camera/view/settings/SettingGroup;
.super Ljava/lang/Enum;
.source "SettingGroup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera/view/settings/SettingGroup;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

.field public static final enum COMMON:Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

.field public static final enum CONTROL:Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

.field public static final enum FLASH_LIGHT:Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

.field public static final enum PHOTO:Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

.field public static final enum SCENE:Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

.field public static final enum VIDEO:Lcom/sonyericsson/android/camera/view/settings/SettingGroup;


# instance fields
.field private final mItems:[Lcom/sonyericsson/android/camera/configuration/ParameterKey;

.field private final mTextId:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 11
    new-instance v0, Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

    const-string v1, "PHOTO"

    const v2, 0x7f09010f

    const/16 v3, 0xe

    new-array v3, v3, [Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->RESOLUTION:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    aput-object v4, v3, v7

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->CAPTURE_FRAME_SHAPE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    aput-object v4, v3, v8

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->SELF_TIMER:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    aput-object v4, v3, v9

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->SMILE_CAPTURE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    aput-object v4, v3, v10

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->FOCUS_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    aput-object v4, v3, v11

    const/4 v4, 0x5

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->HDR:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    aput-object v5, v3, v4

    const/4 v4, 0x6

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->ISO:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    aput-object v5, v3, v4

    const/4 v4, 0x7

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->METERING:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    aput-object v5, v3, v4

    const/16 v4, 0x8

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->STABILIZER:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    aput-object v5, v3, v4

    const/16 v4, 0x9

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    aput-object v5, v3, v4

    const/16 v4, 0xa

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->AUTO_REVIEW:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    aput-object v5, v3, v4

    const/16 v4, 0xb

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->BURST_SHOT:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    aput-object v5, v3, v4

    const/16 v4, 0xc

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->SUPER_RESOLUTION:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    aput-object v5, v3, v4

    const/16 v4, 0xd

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->FACE_IDENTIFY:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    aput-object v5, v3, v4

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/sonyericsson/android/camera/view/settings/SettingGroup;-><init>(Ljava/lang/String;II[Lcom/sonyericsson/android/camera/configuration/ParameterKey;)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/settings/SettingGroup;->PHOTO:Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

    .line 29
    new-instance v0, Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

    const-string v1, "VIDEO"

    const v2, 0x7f09010e

    const/16 v3, 0x9

    new-array v3, v3, [Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    aput-object v4, v3, v7

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->VIDEO_SELF_TIMER:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    aput-object v4, v3, v8

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->VIDEO_SMILE_CAPTURE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    aput-object v4, v3, v9

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->FOCUS_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    aput-object v4, v3, v10

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    aput-object v4, v3, v11

    const/4 v4, 0x5

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->METERING:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    aput-object v5, v3, v4

    const/4 v4, 0x6

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    aput-object v5, v3, v4

    const/4 v4, 0x7

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->MICROPHONE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    aput-object v5, v3, v4

    const/16 v4, 0x8

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->VIDEO_AUTO_REVIEW:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    aput-object v5, v3, v4

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/sonyericsson/android/camera/view/settings/SettingGroup;-><init>(Ljava/lang/String;II[Lcom/sonyericsson/android/camera/configuration/ParameterKey;)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/settings/SettingGroup;->VIDEO:Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

    .line 42
    new-instance v0, Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

    const-string v1, "SCENE"

    const v2, 0x7f090204

    new-array v3, v7, [Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/sonyericsson/android/camera/view/settings/SettingGroup;-><init>(Ljava/lang/String;II[Lcom/sonyericsson/android/camera/configuration/ParameterKey;)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/settings/SettingGroup;->SCENE:Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

    .line 46
    new-instance v0, Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

    const-string v1, "CONTROL"

    const v2, 0x7f090208

    new-array v3, v9, [Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->EV:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    aput-object v4, v3, v7

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->WHITE_BALANCE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    aput-object v4, v3, v8

    invoke-direct {v0, v1, v10, v2, v3}, Lcom/sonyericsson/android/camera/view/settings/SettingGroup;-><init>(Ljava/lang/String;II[Lcom/sonyericsson/android/camera/configuration/ParameterKey;)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/settings/SettingGroup;->CONTROL:Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

    .line 52
    new-instance v0, Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

    const-string v1, "FLASH_LIGHT"

    const v2, 0x7f0900a2

    new-array v3, v9, [Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->FLASH:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    aput-object v4, v3, v7

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->PHOTO_LIGHT:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    aput-object v4, v3, v8

    invoke-direct {v0, v1, v11, v2, v3}, Lcom/sonyericsson/android/camera/view/settings/SettingGroup;-><init>(Ljava/lang/String;II[Lcom/sonyericsson/android/camera/configuration/ParameterKey;)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/settings/SettingGroup;->FLASH_LIGHT:Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

    .line 58
    new-instance v0, Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

    const-string v1, "COMMON"

    const/4 v2, 0x5

    const v3, 0x7f090110

    const/16 v4, 0x8

    new-array v4, v4, [Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->FAST_CAPTURE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    aput-object v5, v4, v7

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->GEO_TAG:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    aput-object v5, v4, v8

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->AUTO_UPLOAD:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    aput-object v5, v4, v9

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->TOUCH_CAPTURE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    aput-object v5, v4, v10

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->VOLUME_KEY:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    aput-object v5, v4, v11

    const/4 v5, 0x5

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->SHUTTER_SOUND:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    aput-object v6, v4, v5

    const/4 v5, 0x6

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    aput-object v6, v4, v5

    const/4 v5, 0x7

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->TOUCH_BLOCK:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    aput-object v6, v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/android/camera/view/settings/SettingGroup;-><init>(Ljava/lang/String;II[Lcom/sonyericsson/android/camera/configuration/ParameterKey;)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/settings/SettingGroup;->COMMON:Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

    .line 10
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

    sget-object v1, Lcom/sonyericsson/android/camera/view/settings/SettingGroup;->PHOTO:Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonyericsson/android/camera/view/settings/SettingGroup;->VIDEO:Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

    aput-object v1, v0, v8

    sget-object v1, Lcom/sonyericsson/android/camera/view/settings/SettingGroup;->SCENE:Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

    aput-object v1, v0, v9

    sget-object v1, Lcom/sonyericsson/android/camera/view/settings/SettingGroup;->CONTROL:Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

    aput-object v1, v0, v10

    sget-object v1, Lcom/sonyericsson/android/camera/view/settings/SettingGroup;->FLASH_LIGHT:Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

    aput-object v1, v0, v11

    const/4 v1, 0x5

    sget-object v2, Lcom/sonyericsson/android/camera/view/settings/SettingGroup;->COMMON:Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/android/camera/view/settings/SettingGroup;->$VALUES:[Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II[Lcom/sonyericsson/android/camera/configuration/ParameterKey;)V
    .locals 0
    .param p3, "textId"    # I
    .param p4, "items"    # [Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lcom/sonyericsson/android/camera/configuration/ParameterKey;",
            ")V"
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 73
    iput p3, p0, Lcom/sonyericsson/android/camera/view/settings/SettingGroup;->mTextId:I

    .line 74
    iput-object p4, p0, Lcom/sonyericsson/android/camera/view/settings/SettingGroup;->mItems:[Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    .line 75
    return-void
.end method

.method public static getGroup(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/settings/SettingGroup;
    .locals 5
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-static {}, Lcom/sonyericsson/android/camera/view/settings/SettingGroup;->values()[Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

    move-result-object v0

    .local v0, "arr$":[Lcom/sonyericsson/android/camera/view/settings/SettingGroup;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 96
    .local v1, "groupName":Lcom/sonyericsson/android/camera/view/settings/SettingGroup;
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/settings/SettingGroup;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 100
    .end local v1    # "groupName":Lcom/sonyericsson/android/camera/view/settings/SettingGroup;
    :goto_1
    return-object v1

    .line 95
    .restart local v1    # "groupName":Lcom/sonyericsson/android/camera/view/settings/SettingGroup;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 100
    .end local v1    # "groupName":Lcom/sonyericsson/android/camera/view/settings/SettingGroup;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/settings/SettingGroup;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/view/settings/SettingGroup;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/sonyericsson/android/camera/view/settings/SettingGroup;->$VALUES:[Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/view/settings/SettingGroup;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

    return-object v0
.end method


# virtual methods
.method public getSettingItemList()[Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/settings/SettingGroup;->mItems:[Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/ParameterKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    return-object v0
.end method

.method public getTextId()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/sonyericsson/android/camera/view/settings/SettingGroup;->mTextId:I

    return v0
.end method

.method public valueOf(Lcom/sonyericsson/android/camera/view/settings/SettingGroup;)[Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    .locals 1
    .param p1, "group"    # Lcom/sonyericsson/android/camera/view/settings/SettingGroup;

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/settings/SettingGroup;->getSettingItemList()[Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    move-result-object v0

    return-object v0
.end method
