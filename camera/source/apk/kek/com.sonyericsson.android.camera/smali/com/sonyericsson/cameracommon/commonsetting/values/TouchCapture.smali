.class public final enum Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;
.super Ljava/lang/Enum;
.source "TouchCapture.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;",
        ">;",
        "Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;

.field public static final enum OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;

.field public static final enum ON:Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;

.field private static final sParameterTextId:I


# instance fields
.field private final mIconId:I

.field private final mIsTouchCaptureOn:Z

.field private final mProviderValue:Ljava/lang/String;

.field private final mTextId:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v3, -0x1

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;

    const-string v1, "ON"

    sget v4, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_settings_on_txt:I

    const-string v6, "on"

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;-><init>(Ljava/lang/String;IIIZLjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;->ON:Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;

    .line 30
    new-instance v6, Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;

    const-string v7, "OFF"

    sget v10, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_settings_off_txt:I

    const-string v12, "off"

    move v8, v5

    move v9, v3

    move v11, v2

    invoke-direct/range {v6 .. v12}, Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;-><init>(Ljava/lang/String;IIIZLjava/lang/String;)V

    sput-object v6, Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;->OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;

    .line 23
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;->ON:Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;->OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;->$VALUES:[Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;

    .line 38
    sget v0, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_touch_capturing_title_txt:I

    sput v0, Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;->sParameterTextId:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIZLjava/lang/String;)V
    .locals 0
    .param p3, "iconId"    # I
    .param p4, "textId"    # I
    .param p5, "isTouchCaptureOn"    # Z
    .param p6, "providerValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 61
    iput p3, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;->mIconId:I

    .line 62
    iput p4, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;->mTextId:I

    .line 63
    iput-boolean p5, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;->mIsTouchCaptureOn:Z

    .line 64
    iput-object p6, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;->mProviderValue:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;->$VALUES:[Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;

    return-object v0
.end method


# virtual methods
.method public getCommonSettingKey()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->TOUCH_CAPTURE:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    return-object v0
.end method

.method public getCommonSettingKeyTextId()I
    .locals 1

    .prologue
    .line 127
    sget v0, Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;->sParameterTextId:I

    return v0
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;->mIconId:I

    return v0
.end method

.method public getParameterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProviderValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;->mProviderValue:Ljava/lang/String;

    return-object v0
.end method

.method public getTextId()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;->mTextId:I

    return v0
.end method

.method public isTouchCaptureOn()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/TouchCapture;->mIsTouchCaptureOn:Z

    return v0
.end method
