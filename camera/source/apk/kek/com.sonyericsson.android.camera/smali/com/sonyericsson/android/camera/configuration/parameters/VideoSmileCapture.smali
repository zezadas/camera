.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;
.super Ljava/lang/Enum;
.source "VideoSmileCapture.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

.field public static final enum HIGH:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

.field public static final enum LOW:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

.field public static final enum MIDDLE:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

.field public static final enum OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

.field private static final sParameterTextId:I = 0x7f090112


# instance fields
.field private final mNotificationIconId:I

.field private final mSmile:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

.field private final mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 21
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    const-string v1, "HIGH"

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->HIGH:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    const v3, 0x7f0200ee

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;-><init>(Ljava/lang/String;ILcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->HIGH:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    .line 25
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    const-string v1, "MIDDLE"

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->MIDDLE:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    const v3, 0x7f0200f0

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;-><init>(Ljava/lang/String;ILcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->MIDDLE:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    .line 29
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    const-string v1, "LOW"

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->LOW:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    const v3, 0x7f0200ef

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;-><init>(Ljava/lang/String;ILcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->LOW:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    .line 33
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    const-string v1, "OFF"

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    const/4 v3, -0x1

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;-><init>(Ljava/lang/String;ILcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    .line 20
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->HIGH:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->MIDDLE:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->LOW:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    aput-object v1, v0, v7

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;I)V
    .locals 1
    .param p3, "smile"    # Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;
    .param p4, "notificationIconId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 57
    iput-object p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->mSmile:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    .line 58
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->mSmile:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->isSmileCaptureOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const-string v0, "on"

    iput-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->mValue:Ljava/lang/String;

    .line 63
    :goto_0
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->mNotificationIconId:I

    .line 64
    return-void

    .line 61
    :cond_0
    const-string v0, "off"

    iput-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->mValue:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getOptions(ZLcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;
    .locals 3
    .param p0, "isOneshot"    # Z
    .param p1, "mode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .prologue
    const/4 v2, 0x0

    .line 130
    if-eqz p0, :cond_0

    .line 131
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    aput-object v1, v0, v2

    .line 136
    :goto_0
    return-object v0

    .line 133
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()I

    move-result v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getCapability(I)Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->SMILE_DETECTION:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    move-result-object v0

    goto :goto_0

    .line 136
    :cond_1
    new-array v0, v2, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;

    .prologue
    .line 73
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;)V

    .line 74
    return-void
.end method

.method public getDimenId()I
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->mSmile:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->getDimenId()I

    move-result v0

    return v0
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->mSmile:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->getIconId()I

    move-result v0

    return v0
.end method

.method public getIntValue()I
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->mSmile:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->getIntValue()I

    move-result v0

    return v0
.end method

.method public getNotificationIconId()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->mNotificationIconId:I

    return v0
.end method

.method public getParameterKey()Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->VIDEO_SMILE_CAPTURE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    return-object v0
.end method

.method public getParameterKeyTextId()I
    .locals 1

    .prologue
    .line 150
    const v0, 0x7f090112

    return v0
.end method

.method public getParameterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
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
    .line 155
    const/4 v0, 0x0

    aget-object v0, p1, v0

    return-object v0
.end method

.method public getSmileCapture(Z)Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;
    .locals 1
    .param p1, "isOneshot"    # Z

    .prologue
    .line 171
    if-eqz p1, :cond_0

    .line 172
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    .line 174
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->mSmile:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    goto :goto_0
.end method

.method public getTextId()I
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->mSmile:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->getTextId()I

    move-result v0

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public isSmileCaptureOn()Z
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->mSmile:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->isSmileCaptureOn()Z

    move-result v0

    return v0
.end method
