.class public final enum Lcom/sonyericsson/cameracommon/commonsetting/values/AutoUpload;
.super Ljava/lang/Enum;
.source "AutoUpload.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/cameracommon/commonsetting/values/AutoUpload;",
        ">;",
        "Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/commonsetting/values/AutoUpload;

.field public static final enum OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/AutoUpload;

.field public static final enum ON:Lcom/sonyericsson/cameracommon/commonsetting/values/AutoUpload;

.field private static final sParameterTextId:I


# instance fields
.field private final mIconId:I

.field private final mIsAutoUploadOn:Z

.field private final mProviderValue:Ljava/lang/String;

.field private final mTextId:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v3, -0x1

    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoUpload;

    const-string v1, "ON"

    sget v4, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_settings_on_txt:I

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "on"

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoUpload;-><init>(Ljava/lang/String;IIILjava/lang/Boolean;Ljava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoUpload;->ON:Lcom/sonyericsson/cameracommon/commonsetting/values/AutoUpload;

    .line 30
    new-instance v4, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoUpload;

    const-string v5, "OFF"

    sget v8, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_settings_off_txt:I

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const-string v10, "off"

    move v6, v11

    move v7, v3

    invoke-direct/range {v4 .. v10}, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoUpload;-><init>(Ljava/lang/String;IIILjava/lang/Boolean;Ljava/lang/String;)V

    sput-object v4, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoUpload;->OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/AutoUpload;

    .line 24
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonyericsson/cameracommon/commonsetting/values/AutoUpload;

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoUpload;->ON:Lcom/sonyericsson/cameracommon/commonsetting/values/AutoUpload;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoUpload;->OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/AutoUpload;

    aput-object v1, v0, v11

    sput-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoUpload;->$VALUES:[Lcom/sonyericsson/cameracommon/commonsetting/values/AutoUpload;

    .line 39
    sget v0, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_auto_upload_all_txt:I

    sput v0, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoUpload;->sParameterTextId:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/Boolean;Ljava/lang/String;)V
    .locals 1
    .param p3, "iconId"    # I
    .param p4, "textId"    # I
    .param p5, "isAutoUploadOn"    # Ljava/lang/Boolean;
    .param p6, "providerValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 63
    iput p3, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoUpload;->mIconId:I

    .line 64
    iput p4, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoUpload;->mTextId:I

    .line 65
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoUpload;->mIsAutoUploadOn:Z

    .line 66
    iput-object p6, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoUpload;->mProviderValue:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/commonsetting/values/AutoUpload;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    const-class v0, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoUpload;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoUpload;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/commonsetting/values/AutoUpload;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoUpload;->$VALUES:[Lcom/sonyericsson/cameracommon/commonsetting/values/AutoUpload;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/commonsetting/values/AutoUpload;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/commonsetting/values/AutoUpload;

    return-object v0
.end method


# virtual methods
.method public getCommonSettingKey()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->AUTO_UPLOAD:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    return-object v0
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoUpload;->mIconId:I

    return v0
.end method

.method public getParameterKeyTextId()I
    .locals 1

    .prologue
    .line 131
    sget v0, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoUpload;->sParameterTextId:I

    return v0
.end method

.method public getParameterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProviderValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoUpload;->mProviderValue:Ljava/lang/String;

    return-object v0
.end method

.method public getTextId()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoUpload;->mTextId:I

    return v0
.end method

.method public isAutoUploadOn()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/AutoUpload;->mIsAutoUploadOn:Z

    return v0
.end method
