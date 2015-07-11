.class public final enum Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;
.super Ljava/lang/Enum;
.source "ShutterSound.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;",
        ">;",
        "Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;

.field public static final enum OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;

.field public static final enum ON:Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;

.field private static final sParameterTextId:I


# instance fields
.field private final mDirectoryName:Ljava/lang/String;

.field private final mIconId:I

.field private final mIsShutterSoundOn:Z

.field private final mProviderValue:Ljava/lang/String;

.field private final mTextId:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v3, -0x1

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;

    const-string v1, "ON"

    sget v4, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_settings_on_txt:I

    const-string v6, "sound1/"

    const-string v7, "on"

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;-><init>(Ljava/lang/String;IIIZLjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;->ON:Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;

    .line 31
    new-instance v6, Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;

    const-string v7, "OFF"

    sget v10, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_settings_off_txt:I

    const-string v12, "sound0/"

    const-string v13, "off"

    move v8, v5

    move v9, v3

    move v11, v2

    invoke-direct/range {v6 .. v13}, Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;-><init>(Ljava/lang/String;IIIZLjava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;->OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;

    .line 23
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;->ON:Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;->OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;->$VALUES:[Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;

    .line 40
    sget v0, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_camera_sound_txt:I

    sput v0, Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;->sParameterTextId:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3, "iconId"    # I
    .param p4, "textId"    # I
    .param p5, "isShutterSoundOn"    # Z
    .param p6, "directoryName"    # Ljava/lang/String;
    .param p7, "providerValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 68
    iput p3, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;->mIconId:I

    .line 69
    iput p4, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;->mTextId:I

    .line 70
    iput-boolean p5, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;->mIsShutterSoundOn:Z

    .line 71
    iput-object p6, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;->mDirectoryName:Ljava/lang/String;

    .line 72
    iput-object p7, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;->mProviderValue:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;->$VALUES:[Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;

    return-object v0
.end method


# virtual methods
.method public getCommonSettingKey()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->SHUTTER_SOUND:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    return-object v0
.end method

.method public getDirectoryName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;->mDirectoryName:Ljava/lang/String;

    return-object v0
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;->mIconId:I

    return v0
.end method

.method public getParameterKeyTextId()I
    .locals 1

    .prologue
    .line 144
    sget v0, Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;->sParameterTextId:I

    return v0
.end method

.method public getParameterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProviderValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;->mProviderValue:Ljava/lang/String;

    return-object v0
.end method

.method public getTextId()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;->mTextId:I

    return v0
.end method

.method public isShutterSoundOn()Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;->mIsShutterSoundOn:Z

    return v0
.end method
