.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;
.super Ljava/lang/Enum;
.source "WhiteBalance.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

.field public static final enum AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

.field public static final enum CLOUDY_DAYLIGHT:Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

.field public static final enum DAYLIGHT:Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

.field public static final enum FLUORESCENT:Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

.field public static final enum INCANDESCENT:Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

.field private static final sParameterTextId:I = 0x7f09005b


# instance fields
.field private final mIconId:I

.field private final mTextId:I

.field private final mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

    const-string v1, "AUTO"

    const v3, 0x7f0200f7

    const v4, 0x7f09005c

    const-string v5, "auto"

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

    .line 30
    new-instance v3, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

    const-string v4, "INCANDESCENT"

    const v6, 0x7f0200fb

    const v7, 0x7f09005d

    const-string v8, "incandescent"

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;->INCANDESCENT:Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

    .line 34
    new-instance v3, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

    const-string v4, "FLUORESCENT"

    const v6, 0x7f0200fa

    const v7, 0x7f09005e

    const-string v8, "fluorescent"

    move v5, v10

    invoke-direct/range {v3 .. v8}, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;->FLUORESCENT:Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

    .line 38
    new-instance v3, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

    const-string v4, "DAYLIGHT"

    const v6, 0x7f0200f9

    const v7, 0x7f09005f

    const-string v8, "daylight"

    move v5, v11

    invoke-direct/range {v3 .. v8}, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;->DAYLIGHT:Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

    .line 42
    new-instance v3, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

    const-string v4, "CLOUDY_DAYLIGHT"

    const v6, 0x7f0200f8

    const v7, 0x7f090060

    const-string v8, "cloudy-daylight"

    move v5, v12

    invoke-direct/range {v3 .. v8}, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;->CLOUDY_DAYLIGHT:Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

    .line 25
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;->INCANDESCENT:Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

    aput-object v1, v0, v9

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;->FLUORESCENT:Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

    aput-object v1, v0, v10

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;->DAYLIGHT:Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

    aput-object v1, v0, v11

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;->CLOUDY_DAYLIGHT:Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

    aput-object v1, v0, v12

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

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
    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 68
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;->mIconId:I

    .line 69
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;->mTextId:I

    .line 70
    iput-object p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;->mValue:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public static getOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;
    .locals 9
    .param p0, "mode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .prologue
    .line 128
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v4, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;>;"
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()I

    move-result v8

    invoke-static {v8}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getCapability(I)Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

    move-result-object v8

    iget-object v8, v8, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->WHITE_BALANCE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 131
    .local v6, "supportedValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    .line 132
    sget-object v8, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p0, v8, :cond_0

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p0, v8, :cond_2

    .line 133
    :cond_0
    sget-object v8, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_1
    const/4 v8, 0x0

    new-array v8, v8, [Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

    return-object v8

    .line 135
    :cond_2
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

    move-result-object v0

    .local v0, "arr$":[Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;
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
    .local v7, "value":Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;
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
    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;->getValue()Ljava/lang/String;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;

    .prologue
    .line 80
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;)V

    .line 81
    return-void
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;->mIconId:I

    return v0
.end method

.method public getParameterKey()Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->WHITE_BALANCE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    return-object v0
.end method

.method public getParameterKeyTextId()I
    .locals 1

    .prologue
    .line 155
    const v0, 0x7f09005b

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
    .line 108
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;->mTextId:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;->mValue:Ljava/lang/String;

    return-object v0
.end method
