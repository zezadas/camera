.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/Metering;
.super Ljava/lang/Enum;
.source "Metering.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/Metering;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

.field public static final enum AVERAGE:Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

.field public static final enum CENTER:Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

.field public static final enum FACE:Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

.field public static final enum MULTI:Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

.field public static final enum SPOT:Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

.field private static final sParameterTextId:I = 0x7f090061


# instance fields
.field private final mIconId:I

.field private final mTextId:I

.field private final mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 24
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    const-string v1, "FACE"

    const v4, 0x7f09015d

    const-string v5, "face"

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;->FACE:Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    .line 28
    new-instance v4, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    const-string v5, "MULTI"

    const v8, 0x7f0900dc

    const-string v9, "multi"

    move v7, v3

    invoke-direct/range {v4 .. v9}, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;->MULTI:Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    .line 32
    new-instance v7, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    const-string v8, "CENTER"

    const v11, 0x7f090062

    const-string v12, "center-weighted"

    move v9, v13

    move v10, v3

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;->CENTER:Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    .line 36
    new-instance v7, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    const-string v8, "SPOT"

    const v11, 0x7f090064

    const-string v12, "spot"

    move v9, v14

    move v10, v3

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;->SPOT:Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    .line 40
    new-instance v7, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    const-string v8, "AVERAGE"

    const/4 v9, 0x4

    const v11, 0x7f090063

    const-string v12, "frame-average"

    move v10, v3

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;->AVERAGE:Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    .line 23
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;->FACE:Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;->MULTI:Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;->CENTER:Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    aput-object v1, v0, v13

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;->SPOT:Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    aput-object v1, v0, v14

    const/4 v1, 0x4

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;->AVERAGE:Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 0
    .param p3, "iconId"    # I
    .param p4, "textId"    # I
    .param p5, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 66
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;->mIconId:I

    .line 67
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;->mTextId:I

    .line 68
    iput-object p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;->mValue:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public static getDefaultValue(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/Metering;
    .locals 2
    .param p0, "mode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()I

    move-result v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getCapability(I)Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

    move-result-object v1

    iget-object v1, v1, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->METERING:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 166
    .local v0, "supportedValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;->FACE:Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;->mValue:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;->FACE:Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    .line 170
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;->CENTER:Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    goto :goto_0
.end method

.method public static getOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/Metering;
    .locals 9
    .param p0, "mode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .prologue
    .line 127
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .local v4, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/camera/configuration/parameters/Metering;>;"
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()I

    move-result v8

    invoke-static {v8}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getCapability(I)Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

    move-result-object v8

    iget-object v8, v8, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->METERING:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 130
    .local v6, "supportedValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    .line 131
    sget-object v8, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p0, v8, :cond_0

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p0, v8, :cond_0

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p0, v8, :cond_2

    .line 133
    :cond_0
    invoke-static {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;->getDefaultValue(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_1
    const/4 v8, 0x0

    new-array v8, v8, [Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    return-object v8

    .line 135
    :cond_2
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    move-result-object v0

    .local v0, "arr$":[Lcom/sonyericsson/android/camera/configuration/parameters/Metering;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    move v2, v1

    .end local v1    # "i$":I
    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v7, v0, v2

    .line 136
    .local v7, "value":Lcom/sonyericsson/android/camera/configuration/parameters/Metering;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v2    # "i$":I
    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 137
    .local v5, "supportedValue":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 138
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    .end local v5    # "supportedValue":Ljava/lang/String;
    :cond_4
    add-int/lit8 v1, v2, 0x1

    .local v1, "i$":I
    move v2, v1

    .end local v1    # "i$":I
    .restart local v2    # "i$":I
    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/Metering;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/Metering;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/Metering;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/Metering;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;

    .prologue
    .line 78
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/Metering;)V

    .line 79
    return-void
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;->mIconId:I

    return v0
.end method

.method public getParameterKey()Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->METERING:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    return-object v0
.end method

.method public getParameterKeyTextId()I
    .locals 1

    .prologue
    .line 155
    const v0, 0x7f090061

    return v0
.end method

.method public getParameterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
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
    .line 160
    const/4 v0, 0x0

    aget-object v0, p1, v0

    return-object v0
.end method

.method public getTextId()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;->mTextId:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Metering;->mValue:Ljava/lang/String;

    return-object v0
.end method
