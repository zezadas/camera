.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;
.super Ljava/lang/Enum;
.source "SmileCapture.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

.field public static final enum HIGH:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

.field public static final enum LOW:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

.field public static final enum MIDDLE:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

.field public static final enum OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

.field private static final sParameterTextId:I = 0x7f0900db


# instance fields
.field private final mDimenId:I

.field private final mIconId:I

.field private final mIsSmileCaptureOn:Z

.field private final mNotificationIconId:I

.field private final mScoreThreshold:I

.field private final mTextId:I

.field private final mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 24
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    const-string v1, "HIGH"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const v4, 0x7f090043

    const v5, 0x7f0200e8

    const/16 v6, 0x46

    const v7, 0x7f0c007d

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v8}, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;-><init>(Ljava/lang/String;IIIIIIZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->HIGH:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    .line 30
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    const-string v1, "MIDDLE"

    const/4 v2, 0x1

    const/4 v3, -0x1

    const v4, 0x7f090044

    const v5, 0x7f0200ea

    const/16 v6, 0x37

    const v7, 0x7f0c007e

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v8}, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;-><init>(Ljava/lang/String;IIIIIIZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->MIDDLE:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    .line 36
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    const-string v1, "LOW"

    const/4 v2, 0x2

    const/4 v3, -0x1

    const v4, 0x7f090045

    const v5, 0x7f0200e9

    const/16 v6, 0x28

    const v7, 0x7f0c007f

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v8}, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;-><init>(Ljava/lang/String;IIIIIIZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->LOW:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    .line 42
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    const-string v1, "OFF"

    const/4 v2, 0x3

    const/4 v3, -0x1

    const v4, 0x7f090030

    const/4 v5, -0x1

    const/16 v6, 0x3e7

    const/4 v7, -0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;-><init>(Ljava/lang/String;IIIIIIZ)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    .line 23
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    const/4 v1, 0x0

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->HIGH:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->MIDDLE:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->LOW:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIIIZ)V
    .locals 1
    .param p3, "iconId"    # I
    .param p4, "textId"    # I
    .param p5, "notificationId"    # I
    .param p6, "threshold"    # I
    .param p7, "dimenId"    # I
    .param p8, "on"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIIZ)V"
        }
    .end annotation

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 84
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->mIconId:I

    .line 85
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->mTextId:I

    .line 86
    iput p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->mNotificationIconId:I

    .line 87
    iput p6, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->mScoreThreshold:I

    .line 88
    iput p7, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->mDimenId:I

    .line 89
    iput-boolean p8, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->mIsSmileCaptureOn:Z

    .line 90
    if-eqz p8, :cond_0

    .line 91
    const-string v0, "on"

    iput-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->mValue:Ljava/lang/String;

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    const-string v0, "off"

    iput-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->mValue:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;
    .locals 1
    .param p0, "mode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()I

    move-result v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getCapability(I)Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->SMILE_DETECTION:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    move-result-object v0

    .line 164
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;

    .prologue
    .line 104
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;)V

    .line 105
    return-void
.end method

.method public getDimenId()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->mDimenId:I

    return v0
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->mIconId:I

    return v0
.end method

.method public getIntValue()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->mScoreThreshold:I

    return v0
.end method

.method public getNotificationIconId()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->mNotificationIconId:I

    return v0
.end method

.method public getParameterKey()Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->SMILE_CAPTURE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    return-object v0
.end method

.method public getParameterKeyTextId()I
    .locals 1

    .prologue
    .line 178
    const v0, 0x7f0900db

    return v0
.end method

.method public getParameterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
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
    .line 183
    const/4 v0, 0x0

    aget-object v0, p1, v0

    return-object v0
.end method

.method public getTextId()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->mTextId:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public isSmileCaptureOn()Z
    .locals 1

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->mIsSmileCaptureOn:Z

    return v0
.end method
