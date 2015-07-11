.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;
.super Ljava/lang/Enum;
.source "BurstShot.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;

.field public static final enum BEST_EFFORT:Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;

.field public static final enum HIGH:Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;

.field public static final enum OFF:Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;

.field private static final sParameterTextId:I = 0x7f0900eb


# instance fields
.field private final mIconId:I

.field private final mQuality:I

.field private final mTextId:I

.field private final mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v3, -0x1

    .line 31
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;

    const-string v1, "HIGH"

    const v4, 0x7f090109

    const-string v6, "on"

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;-><init>(Ljava/lang/String;IIIILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;->HIGH:Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;

    .line 36
    new-instance v6, Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;

    const-string v7, "BEST_EFFORT"

    const v10, 0x7f090108

    const-string v12, "off"

    move v8, v5

    move v9, v3

    move v11, v5

    invoke-direct/range {v6 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;-><init>(Ljava/lang/String;IIIILjava/lang/String;)V

    sput-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;->BEST_EFFORT:Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;

    .line 41
    new-instance v6, Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;

    const-string v7, "OFF"

    const v10, 0x7f090030

    const-string v12, "off"

    move v8, v13

    move v9, v3

    move v11, v3

    invoke-direct/range {v6 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;-><init>(Ljava/lang/String;IIIILjava/lang/String;)V

    sput-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;

    .line 30
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;->HIGH:Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;->BEST_EFFORT:Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;

    aput-object v1, v0, v13

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIILjava/lang/String;)V
    .locals 0
    .param p3, "iconId"    # I
    .param p4, "textId"    # I
    .param p5, "jpegQuality"    # I
    .param p6, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 69
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;->mIconId:I

    .line 70
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;->mTextId:I

    .line 71
    iput p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;->mQuality:I

    .line 72
    iput-object p6, p0, Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;->mValue:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public static getBurstResolution(Lcom/sonyericsson/android/camera/parameter/Parameters;)Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    .locals 11
    .param p0, "params"    # Lcom/sonyericsson/android/camera/parameter/Parameters;

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getResolution()Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object v1

    .line 125
    .local v1, "burstResolution":Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getBurstShot()Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;

    move-result-object v2

    .line 127
    .local v2, "burstShot":Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;
    sget-object v8, Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;->HIGH:Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;

    if-ne v2, v8, :cond_0

    .line 128
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 129
    .local v3, "burstSize":Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()I

    move-result v8

    invoke-static {v8}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getCapability(I)Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

    move-result-object v8

    iget-object v8, v8, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->MAX_BURST_SHOT_SIZE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    .line 132
    .local v7, "maxBurstSize":Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v9

    mul-int/2addr v8, v9

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v10

    mul-int/2addr v9, v10

    if-gt v8, v9, :cond_1

    .line 149
    .end local v1    # "burstResolution":Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    .end local v3    # "burstSize":Landroid/graphics/Rect;
    .end local v7    # "maxBurstSize":Landroid/graphics/Rect;
    :cond_0
    :goto_0
    return-object v1

    .line 138
    .restart local v1    # "burstResolution":Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    .restart local v3    # "burstSize":Landroid/graphics/Rect;
    .restart local v7    # "maxBurstSize":Landroid/graphics/Rect;
    :cond_1
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object v0

    .local v0, "arr$":[Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_3

    aget-object v4, v0, v5

    .line 139
    .local v4, "eachReso":Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v1, v4

    .line 140
    goto :goto_0

    .line 138
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 144
    .end local v4    # "eachReso":Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    :cond_3
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "max burst size is not contained in supported."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public static getDefault()Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;
    .locals 1

    .prologue
    .line 208
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;

    return-object v0
.end method

.method public static getOptions()[Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;
    .locals 1

    .prologue
    .line 182
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;

    move-result-object v0

    return-object v0
.end method

.method public static getOptions(ZLcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;
    .locals 4
    .param p0, "isOneShot"    # Z
    .param p1, "mode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .prologue
    .line 162
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;>;"
    if-nez p0, :cond_2

    .line 164
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p1, v3, :cond_0

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p1, v3, :cond_0

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p1, v3, :cond_2

    .line 166
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()I

    move-result v3

    if-nez v3, :cond_1

    .line 167
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()I

    move-result v3

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getCapability(I)Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

    move-result-object v0

    .line 168
    .local v0, "list":Lcom/sonyericsson/android/camera/util/capability/CapabilityList;
    iget-object v3, v0, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->BURST_SHOT:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 169
    .local v2, "supportedValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 170
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;->HIGH:Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    .end local v0    # "list":Lcom/sonyericsson/android/camera/util/capability/CapabilityList;
    .end local v2    # "supportedValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;->BEST_EFFORT:Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_2
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    const/4 v3, 0x0

    new-array v3, v3, [Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;

    return-object v3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 30
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;

    .prologue
    .line 82
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;)V

    .line 83
    return-void
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;->mIconId:I

    return v0
.end method

.method public getParameterKey()Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->BURST_SHOT:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    return-object v0
.end method

.method public getParameterKeyTextId()I
    .locals 1

    .prologue
    .line 192
    const v0, 0x7f0900eb

    return v0
.end method

.method public getParameterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQuality()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;->mQuality:I

    return v0
.end method

.method public getRecommendedValue([Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    .locals 1
    .param p1, "options"    # [Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    .param p2, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    .prologue
    .line 197
    const/4 v0, 0x0

    aget-object v0, p1, v0

    return-object v0
.end method

.method public getTextId()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;->mTextId:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public isBurstShotOn()Z
    .locals 1

    .prologue
    .line 204
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/BurstShot;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
