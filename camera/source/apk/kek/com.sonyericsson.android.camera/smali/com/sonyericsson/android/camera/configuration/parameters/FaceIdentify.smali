.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;
.super Ljava/lang/Enum;
.source "FaceIdentify.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;

.field public static final enum OFF:Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;

.field public static final enum ON:Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;

.field private static final sParameterTextId:I = 0x7f09011a


# instance fields
.field private final mIconId:I

.field private final mIsFaceIdentifyOn:Z

.field private final mTextId:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v3, -0x1

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;

    const-string v1, "ON"

    const v4, 0x7f09002f

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;

    .line 25
    new-instance v6, Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;

    const-string v7, "OFF"

    const v10, 0x7f090030

    move v8, v5

    move v9, v3

    move v11, v2

    invoke-direct/range {v6 .. v11}, Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;

    .line 19
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIZ)V
    .locals 0
    .param p3, "iconId"    # I
    .param p4, "textId"    # I
    .param p5, "on"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ)V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;->mIconId:I

    .line 53
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;->mTextId:I

    .line 54
    iput-boolean p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;->mIsFaceIdentifyOn:Z

    .line 55
    return-void
.end method

.method public static getOptions(Lcom/sonyericsson/android/camera/ActionMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;
    .locals 1
    .param p0, "mode"    # Lcom/sonyericsson/android/camera/ActionMode;

    .prologue
    .line 120
    iget v0, p0, Lcom/sonyericsson/android/camera/ActionMode;->mCameraId:I

    if-nez v0, :cond_0

    .line 121
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/Configurations;->isFaceIdentificationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;

    move-result-object v0

    .line 125
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 19
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;

    .prologue
    .line 64
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;)V

    .line 65
    return-void
.end method

.method public getBooleanValue()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;->mIsFaceIdentifyOn:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;->mIconId:I

    return v0
.end method

.method public getParameterKey()Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->FACE_IDENTIFY:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    return-object v0
.end method

.method public getParameterKeyTextId()I
    .locals 1

    .prologue
    .line 135
    const v0, 0x7f09011a

    return v0
.end method

.method public getParameterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
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
    .line 140
    const/4 v0, 0x0

    aget-object v0, p1, v0

    return-object v0
.end method

.method public getTextId()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;->mTextId:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
