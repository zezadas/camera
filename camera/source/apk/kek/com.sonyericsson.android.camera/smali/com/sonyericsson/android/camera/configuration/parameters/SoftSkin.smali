.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;
.super Ljava/lang/Enum;
.source "SoftSkin.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

.field public static final enum OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

.field public static final enum ON:Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

.field private static final sParameterTextId:I = 0x7f0900e7


# instance fields
.field private final mIconId:I

.field private final mScene:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

.field private final mTextId:I

.field private final mValue:F


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 29
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

    const-string v1, "ON"

    const v4, 0x7f09002f

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;-><init>(Ljava/lang/String;IIILcom/sonyericsson/android/camera/configuration/parameters/Scene;F)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

    .line 34
    new-instance v4, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

    const-string v5, "OFF"

    const v8, 0x7f090030

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    const/4 v10, 0x0

    move v6, v11

    move v7, v3

    invoke-direct/range {v4 .. v10}, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;-><init>(Ljava/lang/String;IIILcom/sonyericsson/android/camera/configuration/parameters/Scene;F)V

    sput-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

    .line 28
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

    aput-object v1, v0, v11

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILcom/sonyericsson/android/camera/configuration/parameters/Scene;F)V
    .locals 0
    .param p3, "iconId"    # I
    .param p4, "textId"    # I
    .param p5, "scene"    # Lcom/sonyericsson/android/camera/configuration/parameters/Scene;
    .param p6, "value"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/sonyericsson/android/camera/configuration/parameters/Scene;",
            "F)V"
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 61
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;->mIconId:I

    .line 62
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;->mTextId:I

    .line 63
    iput-object p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;->mScene:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    .line 64
    iput p6, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;->mValue:F

    .line 65
    return-void
.end method

.method public static getOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;
    .locals 7
    .param p0, "mode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 127
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p0, v2, :cond_0

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p0, v2, :cond_5

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()I

    move-result v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getCapability(I)Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

    move-result-object v0

    .line 129
    .local v0, "list":Lcom/sonyericsson/android/camera/util/capability/CapabilityList;
    iget-object v2, v0, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->SCENE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 130
    .local v1, "supportedValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getInstance()Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getCameraExtensionVersion()Lcom/sonyericsson/cameracommon/device/CameraExtensionVersion;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v5, v3}, Lcom/sonyericsson/cameracommon/device/CameraExtensionVersion;->isLaterThanOrEqualTo(II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 132
    const-string v2, "portrait"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getInstance()Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getMaxSoftSkinLevel(I)I

    move-result v2

    if-lez v2, :cond_1

    .line 135
    new-array v2, v6, [Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

    aput-object v3, v2, v4

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

    aput-object v3, v2, v5

    .line 151
    .end local v0    # "list":Lcom/sonyericsson/android/camera/util/capability/CapabilityList;
    .end local v1    # "supportedValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    return-object v2

    .line 137
    .restart local v0    # "list":Lcom/sonyericsson/android/camera/util/capability/CapabilityList;
    .restart local v1    # "supportedValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    const-string v2, "soft-skin"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 138
    new-array v2, v6, [Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

    aput-object v3, v2, v4

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

    aput-object v3, v2, v5

    goto :goto_0

    .line 140
    :cond_2
    new-array v2, v4, [Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

    goto :goto_0

    .line 144
    :cond_3
    const-string v2, "soft-skin"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 145
    new-array v2, v6, [Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

    aput-object v3, v2, v4

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

    aput-object v3, v2, v5

    goto :goto_0

    .line 147
    :cond_4
    new-array v2, v4, [Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

    goto :goto_0

    .line 151
    .end local v0    # "list":Lcom/sonyericsson/android/camera/util/capability/CapabilityList;
    .end local v1    # "supportedValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    new-array v2, v4, [Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;

    .prologue
    .line 69
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;)V

    .line 70
    return-void
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;->mIconId:I

    return v0
.end method

.method public getLevel(I)Ljava/lang/String;
    .locals 2
    .param p1, "maxLevel"    # I

    .prologue
    .line 168
    int-to-float v0, p1

    iget v1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;->mValue:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameterKey()Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->SOFT_SKIN:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    return-object v0
.end method

.method public getParameterKeyTextId()I
    .locals 1

    .prologue
    .line 79
    const v0, 0x7f0900e7

    return v0
.end method

.method public getParameterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameterkeyTitleTextId()I
    .locals 1

    .prologue
    .line 83
    const v0, 0x7f0900ec

    return v0
.end method

.method public getRecommendedValue([Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    .locals 1
    .param p1, "options"    # [Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    .param p2, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    .prologue
    .line 123
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

    return-object v0
.end method

.method public getScene()Lcom/sonyericsson/android/camera/configuration/parameters/Scene;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;->mScene:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    return-object v0
.end method

.method public getTextId()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;->mTextId:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isOn()Z
    .locals 1

    .prologue
    .line 160
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/SoftSkin;

    if-ne v0, p0, :cond_0

    .line 161
    const/4 v0, 0x1

    .line 163
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
