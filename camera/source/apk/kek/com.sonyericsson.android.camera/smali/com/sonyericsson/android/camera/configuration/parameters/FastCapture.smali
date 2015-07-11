.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;
.super Ljava/lang/Enum;
.source "FastCapture.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

.field public static final enum LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

.field public static final enum LAUNCH_AND_RECORDING:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

.field public static final enum LAUNCH_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

.field public static final enum OFF:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

.field public static final enum VIDEO_LAUNCH_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

.field private static final sParameterTextId:I = 0x7f09006b


# instance fields
.field private final mBooleanValue:Z

.field private final mIconId:I

.field private final mSettingsSecureValue:Ljava/lang/String;

.field private final mTextId:I

.field private final mType:I

.field private mValue:Ljava/lang/String;


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
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    const-string v1, "LAUNCH_AND_CAPTURE"

    const v4, 0x7f0900de

    const-string v7, "photo-launch-and-capture"

    move v6, v5

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;-><init>(Ljava/lang/String;IIIIZLjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    .line 30
    new-instance v6, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    const-string v7, "LAUNCH_ONLY"

    const v10, 0x7f09009f

    const-string v13, "photo-launch-only"

    move v8, v5

    move v9, v3

    move v11, v5

    move v12, v5

    invoke-direct/range {v6 .. v13}, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;-><init>(Ljava/lang/String;IIIIZLjava/lang/String;)V

    sput-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    .line 36
    new-instance v6, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    const-string v7, "LAUNCH_AND_RECORDING"

    const v10, 0x7f0900df

    const-string v13, "video-launch-and-recording"

    move v8, v14

    move v9, v3

    move v11, v14

    move v12, v5

    invoke-direct/range {v6 .. v13}, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;-><init>(Ljava/lang/String;IIIIZLjava/lang/String;)V

    sput-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_RECORDING:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    .line 43
    new-instance v6, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    const-string v7, "VIDEO_LAUNCH_ONLY"

    const v10, 0x7f0900e0

    const-string v13, "video-launch-only"

    move v8, v15

    move v9, v3

    move v11, v14

    move v12, v5

    invoke-direct/range {v6 .. v13}, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;-><init>(Ljava/lang/String;IIIIZLjava/lang/String;)V

    sput-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->VIDEO_LAUNCH_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    .line 49
    new-instance v6, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    const-string v7, "OFF"

    const/4 v8, 0x4

    const v10, 0x7f090030

    const-string v13, "off"

    move v9, v3

    move v11, v2

    move v12, v2

    invoke-direct/range {v6 .. v13}, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;-><init>(Ljava/lang/String;IIIIZLjava/lang/String;)V

    sput-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    .line 23
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_RECORDING:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    aput-object v1, v0, v14

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->VIDEO_LAUNCH_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    aput-object v1, v0, v15

    const/4 v1, 0x4

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIZLjava/lang/String;)V
    .locals 0
    .param p3, "iconId"    # I
    .param p4, "textId"    # I
    .param p5, "type"    # I
    .param p6, "value"    # Z
    .param p7, "settingsSecureValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 91
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->mIconId:I

    .line 92
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->mTextId:I

    .line 93
    iput p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->mType:I

    .line 94
    iput-boolean p6, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->mBooleanValue:Z

    .line 95
    iput-object p7, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->mSettingsSecureValue:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public static getDefault()Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;
    .locals 1

    .prologue
    .line 207
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    return-object v0
.end method

.method public static getOptions()[Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;
    .locals 2

    .prologue
    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .local v0, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;>;"
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_ONLY:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_CAPTURE:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->LAUNCH_AND_RECORDING:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;

    .prologue
    .line 105
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;)V

    .line 106
    return-void
.end method

.method public getBooleanValue()Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->mBooleanValue:Z

    return v0
.end method

.method public getCameraType()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->mType:I

    return v0
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->mIconId:I

    return v0
.end method

.method public getParameterKey()Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->FAST_CAPTURE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    return-object v0
.end method

.method public getParameterKeyTextId()I
    .locals 1

    .prologue
    .line 194
    const v0, 0x7f09006b

    return v0
.end method

.method public getParameterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameterkeyTitleTextId()I
    .locals 1

    .prologue
    .line 198
    const v0, 0x7f0900aa

    return v0
.end method

.method public getRecommendedValue([Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    .locals 1
    .param p1, "options"    # [Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    .param p2, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    .prologue
    .line 203
    const/4 v0, 0x0

    aget-object v0, p1, v0

    return-object v0
.end method

.method public getSettingsSecureValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->mSettingsSecureValue:Ljava/lang/String;

    return-object v0
.end method

.method public getTextId()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->mTextId:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FastCapture;->mValue:Ljava/lang/String;

    return-object v0
.end method
