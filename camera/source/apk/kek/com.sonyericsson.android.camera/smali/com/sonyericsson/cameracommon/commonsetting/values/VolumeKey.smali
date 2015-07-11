.class public final enum Lcom/sonyericsson/cameracommon/commonsetting/values/VolumeKey;
.super Ljava/lang/Enum;
.source "VolumeKey.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/cameracommon/commonsetting/values/VolumeKey;",
        ">;",
        "Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/commonsetting/values/VolumeKey;

.field public static final enum HW_CAMERA_KEY:Lcom/sonyericsson/cameracommon/commonsetting/values/VolumeKey;

.field public static final enum VOLUME:Lcom/sonyericsson/cameracommon/commonsetting/values/VolumeKey;

.field public static final enum ZOOM:Lcom/sonyericsson/cameracommon/commonsetting/values/VolumeKey;


# instance fields
.field private final mIconId:I

.field private final mSettingsSecureValue:Ljava/lang/String;

.field private final mTextId:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 17
    new-instance v0, Lcom/sonyericsson/cameracommon/commonsetting/values/VolumeKey;

    const-string v1, "ZOOM"

    sget v4, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_volumekey_zoom_txt:I

    const-string v5, "zoom"

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/commonsetting/values/VolumeKey;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/VolumeKey;->ZOOM:Lcom/sonyericsson/cameracommon/commonsetting/values/VolumeKey;

    .line 21
    new-instance v4, Lcom/sonyericsson/cameracommon/commonsetting/values/VolumeKey;

    const-string v5, "VOLUME"

    sget v8, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_volumekey_volume_txt:I

    const-string v9, "volume"

    move v7, v3

    invoke-direct/range {v4 .. v9}, Lcom/sonyericsson/cameracommon/commonsetting/values/VolumeKey;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v4, Lcom/sonyericsson/cameracommon/commonsetting/values/VolumeKey;->VOLUME:Lcom/sonyericsson/cameracommon/commonsetting/values/VolumeKey;

    .line 25
    new-instance v7, Lcom/sonyericsson/cameracommon/commonsetting/values/VolumeKey;

    const-string v8, "HW_CAMERA_KEY"

    sget v11, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_volumekey_shutter_txt:I

    const-string v12, "HW_camera_key"

    move v9, v13

    move v10, v3

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/cameracommon/commonsetting/values/VolumeKey;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v7, Lcom/sonyericsson/cameracommon/commonsetting/values/VolumeKey;->HW_CAMERA_KEY:Lcom/sonyericsson/cameracommon/commonsetting/values/VolumeKey;

    .line 16
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonyericsson/cameracommon/commonsetting/values/VolumeKey;

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/VolumeKey;->ZOOM:Lcom/sonyericsson/cameracommon/commonsetting/values/VolumeKey;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/VolumeKey;->VOLUME:Lcom/sonyericsson/cameracommon/commonsetting/values/VolumeKey;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/VolumeKey;->HW_CAMERA_KEY:Lcom/sonyericsson/cameracommon/commonsetting/values/VolumeKey;

    aput-object v1, v0, v13

    sput-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/VolumeKey;->$VALUES:[Lcom/sonyericsson/cameracommon/commonsetting/values/VolumeKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 0
    .param p3, "iconId"    # I
    .param p4, "textId"    # I
    .param p5, "settingsSecureValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput p3, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/VolumeKey;->mIconId:I

    .line 42
    iput p4, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/VolumeKey;->mTextId:I

    .line 43
    iput-object p5, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/VolumeKey;->mSettingsSecureValue:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/commonsetting/values/VolumeKey;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 16
    const-class v0, Lcom/sonyericsson/cameracommon/commonsetting/values/VolumeKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/commonsetting/values/VolumeKey;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/commonsetting/values/VolumeKey;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/VolumeKey;->$VALUES:[Lcom/sonyericsson/cameracommon/commonsetting/values/VolumeKey;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/commonsetting/values/VolumeKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/commonsetting/values/VolumeKey;

    return-object v0
.end method


# virtual methods
.method public getCommonSettingKey()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->VOLUME_KEY:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    return-object v0
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/VolumeKey;->mIconId:I

    return v0
.end method

.method public getProviderValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/VolumeKey;->mSettingsSecureValue:Ljava/lang/String;

    return-object v0
.end method

.method public getTextId()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/VolumeKey;->mTextId:I

    return v0
.end method
