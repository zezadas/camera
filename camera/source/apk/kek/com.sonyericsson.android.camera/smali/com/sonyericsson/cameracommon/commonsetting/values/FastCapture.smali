.class public final enum Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;
.super Ljava/lang/Enum;
.source "FastCapture.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;",
        ">;",
        "Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

.field public static final enum LAUNCH_AND_CAPTURE:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

.field public static final enum LAUNCH_AND_RECORDING:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

.field public static final enum LAUNCH_ONLY:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

.field public static final enum OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

.field public static final enum VIDEO_LAUNCH_ONLY:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

.field private static final sParameterTextId:I


# instance fields
.field private final mIconId:I

.field private final mIsFastCaptureOn:Z

.field private final mSettingsSecureValue:Ljava/lang/String;

.field private final mTextId:I

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    const/4 v15, 0x3

    const/4 v14, 0x2

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v5, 0x1

    .line 24
    new-instance v0, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    const-string v1, "LAUNCH_AND_CAPTURE"

    sget v4, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_fast_capturing_launch_and_capture_photo_txt:I

    const-string v7, "photo-launch-and-capture"

    move v6, v5

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;-><init>(Ljava/lang/String;IIIIZLjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    .line 30
    new-instance v6, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    const-string v7, "LAUNCH_ONLY"

    sget v10, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_fast_capturing_launch_only_txt:I

    const-string v13, "photo-launch-only"

    move v8, v5

    move v9, v3

    move v11, v5

    move v12, v5

    invoke-direct/range {v6 .. v13}, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;-><init>(Ljava/lang/String;IIIIZLjava/lang/String;)V

    sput-object v6, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;->LAUNCH_ONLY:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    .line 36
    new-instance v6, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    const-string v7, "LAUNCH_AND_RECORDING"

    sget v10, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_fast_capturing_launch_and_capture_video_txt:I

    const-string v13, "video-launch-and-recording"

    move v8, v14

    move v9, v3

    move v11, v14

    move v12, v5

    invoke-direct/range {v6 .. v13}, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;-><init>(Ljava/lang/String;IIIIZLjava/lang/String;)V

    sput-object v6, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;->LAUNCH_AND_RECORDING:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    .line 42
    new-instance v6, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    const-string v7, "VIDEO_LAUNCH_ONLY"

    sget v10, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_fast_capturing_launch_only_video_txt:I

    const-string v13, "video-launch-only"

    move v8, v15

    move v9, v3

    move v11, v14

    move v12, v5

    invoke-direct/range {v6 .. v13}, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;-><init>(Ljava/lang/String;IIIIZLjava/lang/String;)V

    sput-object v6, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;->VIDEO_LAUNCH_ONLY:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    .line 48
    new-instance v6, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    const-string v7, "OFF"

    const/4 v8, 0x4

    sget v10, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_settings_off_txt:I

    const-string v13, "off"

    move v9, v3

    move v11, v2

    move v12, v2

    invoke-direct/range {v6 .. v13}, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;-><init>(Ljava/lang/String;IIIIZLjava/lang/String;)V

    sput-object v6, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;->OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    .line 23
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;->LAUNCH_ONLY:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;->LAUNCH_AND_RECORDING:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    aput-object v1, v0, v14

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;->VIDEO_LAUNCH_ONLY:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    aput-object v1, v0, v15

    const/4 v1, 0x4

    sget-object v2, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;->OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;->$VALUES:[Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    .line 57
    sget v0, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_fast_capturing_txt:I

    sput v0, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;->sParameterTextId:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIZLjava/lang/String;)V
    .locals 0
    .param p3, "iconId"    # I
    .param p4, "textId"    # I
    .param p5, "type"    # I
    .param p6, "isFastCaptureOn"    # Z
    .param p7, "settingsSecureValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 85
    iput p3, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;->mIconId:I

    .line 86
    iput p4, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;->mTextId:I

    .line 87
    iput p5, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;->mType:I

    .line 88
    iput-boolean p6, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;->mIsFastCaptureOn:Z

    .line 89
    iput-object p7, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;->mSettingsSecureValue:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;->$VALUES:[Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    return-object v0
.end method


# virtual methods
.method public getCameraType()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;->mType:I

    return v0
.end method

.method public getCommonSettingKey()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->FAST_CAPTURE:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    return-object v0
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;->mIconId:I

    return v0
.end method

.method public getParameterKeyTextId()I
    .locals 1

    .prologue
    .line 161
    sget v0, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;->sParameterTextId:I

    return v0
.end method

.method public getParameterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameterkeyTitleTextId()I
    .locals 1

    .prologue
    .line 170
    sget v0, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_fast_capturing_title_txt:I

    return v0
.end method

.method public getProviderValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;->mSettingsSecureValue:Ljava/lang/String;

    return-object v0
.end method

.method public getTextId()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;->mTextId:I

    return v0
.end method

.method public isFastCaptureOn()Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;->mIsFastCaptureOn:Z

    return v0
.end method
