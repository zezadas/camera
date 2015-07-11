.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/AutoUpload;
.super Ljava/lang/Enum;
.source "AutoUpload.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/AutoUpload;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/AutoUpload;

.field public static final enum OFF:Lcom/sonyericsson/android/camera/configuration/parameters/AutoUpload;

.field public static final enum ON:Lcom/sonyericsson/android/camera/configuration/parameters/AutoUpload;

.field private static final sParameterTextId:I = 0x7f0900fe


# instance fields
.field private final mIconId:I

.field private final mIsAutoUploadOn:Z

.field private final mTextId:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 17
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/AutoUpload;

    const-string v1, "ON"

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/configuration/parameters/AutoUpload;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/AutoUpload;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/AutoUpload;

    .line 21
    new-instance v6, Lcom/sonyericsson/android/camera/configuration/parameters/AutoUpload;

    const-string v7, "OFF"

    move v8, v5

    move v9, v3

    move v10, v3

    move v11, v2

    invoke-direct/range {v6 .. v11}, Lcom/sonyericsson/android/camera/configuration/parameters/AutoUpload;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/AutoUpload;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/AutoUpload;

    .line 16
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/AutoUpload;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/AutoUpload;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/AutoUpload;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/AutoUpload;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/AutoUpload;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/AutoUpload;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/AutoUpload;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIZ)V
    .locals 0
    .param p3, "iconId"    # I
    .param p4, "textId"    # I
    .param p5, "isAutoUploadMode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ)V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/AutoUpload;->mIconId:I

    .line 47
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/AutoUpload;->mTextId:I

    .line 48
    iput-boolean p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/AutoUpload;->mIsAutoUploadOn:Z

    .line 49
    return-void
.end method

.method public static getDefaultValue()Lcom/sonyericsson/android/camera/configuration/parameters/AutoUpload;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/AutoUpload;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/AutoUpload;

    return-object v0
.end method

.method public static getOptions()[Lcom/sonyericsson/android/camera/configuration/parameters/AutoUpload;
    .locals 1

    .prologue
    .line 105
    invoke-static {}, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;->getInstance()Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/autoupload/AutoUploadSettings;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/AutoUpload;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/AutoUpload;

    move-result-object v0

    .line 109
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/AutoUpload;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/AutoUpload;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 16
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/AutoUpload;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/AutoUpload;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/AutoUpload;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/AutoUpload;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/AutoUpload;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/AutoUpload;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/AutoUpload;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;

    .prologue
    .line 58
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/AutoUpload;)V

    .line 59
    return-void
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/AutoUpload;->mIconId:I

    return v0
.end method

.method public getParameterKey()Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->AUTO_UPLOAD:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    return-object v0
.end method

.method public getParameterKeyTextId()I
    .locals 1

    .prologue
    .line 124
    const v0, 0x7f0900fe

    return v0
.end method

.method public getParameterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecommendedValue([Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    .locals 1
    .param p1, "options"    # [Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    .param p2, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    .prologue
    .line 129
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/AutoUpload;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/AutoUpload;

    return-object v0
.end method

.method public getTextId()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/AutoUpload;->mTextId:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/AutoUpload;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAutoUploadOn()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/AutoUpload;->mIsAutoUploadOn:Z

    return v0
.end method
