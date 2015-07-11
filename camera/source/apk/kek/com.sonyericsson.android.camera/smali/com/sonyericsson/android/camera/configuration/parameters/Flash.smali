.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/Flash;
.super Ljava/lang/Enum;
.source "Flash.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/Flash;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

.field public static final enum AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

.field public static final enum LED_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

.field public static final enum LED_ON:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

.field public static final enum OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

.field public static final enum ON:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

.field public static final enum PHOTO_LIGHT_ON_AS_FLASH:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

.field public static final enum RED_EYE:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;


# instance fields
.field private final mIconId:I

.field private final mIsSceneDependent:Z

.field private final mTextId:I

.field private final mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 22
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    const-string v1, "AUTO"

    const/4 v2, 0x0

    const v3, 0x7f020052

    const v4, 0x7f090031

    const-string v5, "auto"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;-><init>(Ljava/lang/String;IIILjava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    .line 26
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    const-string v1, "ON"

    const/4 v2, 0x1

    const v3, 0x7f020053

    const v4, 0x7f09003c

    const-string v5, "on"

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;-><init>(Ljava/lang/String;IIILjava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    .line 30
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    const-string v1, "RED_EYE"

    const/4 v2, 0x2

    const v3, 0x7f020055

    const v4, 0x7f09003d

    const-string v5, "red-eye"

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;-><init>(Ljava/lang/String;IIILjava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->RED_EYE:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    .line 34
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    const-string v1, "OFF"

    const/4 v2, 0x3

    const v3, 0x7f020054

    const v4, 0x7f090030

    const-string v5, "off"

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;-><init>(Ljava/lang/String;IIILjava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    .line 38
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    const-string v1, "LED_ON"

    const/4 v2, 0x4

    const v3, 0x7f020056

    const v4, 0x7f090101

    const-string v5, "torch"

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;-><init>(Ljava/lang/String;IIILjava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->LED_ON:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    .line 42
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    const-string v1, "LED_OFF"

    const/4 v2, 0x5

    const v3, 0x7f020057

    const v4, 0x7f090030

    const-string v5, "off"

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;-><init>(Ljava/lang/String;IIILjava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->LED_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    .line 48
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    const-string v1, "PHOTO_LIGHT_ON_AS_FLASH"

    const/4 v2, 0x6

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->getIconId()I

    move-result v3

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->getTextId()I

    move-result v4

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->getValue()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;-><init>(Ljava/lang/String;IIILjava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->PHOTO_LIGHT_ON_AS_FLASH:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    .line 21
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    const/4 v1, 0x0

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->RED_EYE:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->LED_ON:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->LED_OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->PHOTO_LIGHT_ON_AS_FLASH:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;Z)V
    .locals 0
    .param p3, "iconId"    # I
    .param p4, "textId"    # I
    .param p5, "value"    # Ljava/lang/String;
    .param p6, "sceneDependent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 75
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->mIconId:I

    .line 76
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->mTextId:I

    .line 77
    iput-object p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->mValue:Ljava/lang/String;

    .line 78
    iput-boolean p6, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->mIsSceneDependent:Z

    .line 79
    return-void
.end method

.method public static getDefaultValue()Lcom/sonyericsson/android/camera/configuration/parameters/Flash;
    .locals 1

    .prologue
    .line 201
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->getInstance()Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->getDefaultFlash()Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    move-result-object v0

    return-object v0
.end method

.method public static getFlashFromParameterString(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/Flash;
    .locals 5
    .param p0, "flashString"    # Ljava/lang/String;

    .prologue
    .line 190
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    move-result-object v0

    .local v0, "arr$":[Lcom/sonyericsson/android/camera/configuration/parameters/Flash;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 191
    .local v1, "flash":Lcom/sonyericsson/android/camera/configuration/parameters/Flash;
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 197
    .end local v1    # "flash":Lcom/sonyericsson/android/camera/configuration/parameters/Flash;
    :goto_1
    return-object v1

    .line 190
    .restart local v1    # "flash":Lcom/sonyericsson/android/camera/configuration/parameters/Flash;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 197
    .end local v1    # "flash":Lcom/sonyericsson/android/camera/configuration/parameters/Flash;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getOptions(Lcom/sonyericsson/android/camera/ActionMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/Flash;
    .locals 11
    .param p0, "mode"    # Lcom/sonyericsson/android/camera/ActionMode;

    .prologue
    .line 144
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .local v5, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/camera/configuration/parameters/Flash;>;"
    iget v9, p0, Lcom/sonyericsson/android/camera/ActionMode;->mType:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 146
    iget v9, p0, Lcom/sonyericsson/android/camera/ActionMode;->mCameraId:I

    invoke-static {v9}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getCapability(I)Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

    move-result-object v9

    iget-object v9, v9, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->FLASH:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 148
    .local v7, "supportedValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    .line 149
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->getInstance()Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;

    move-result-object v9

    invoke-virtual {v9, p0, v7}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->getFlashOptions(Lcom/sonyericsson/android/camera/ActionMode;Ljava/util/List;)[Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    move-result-object v1

    .line 151
    .local v1, "expectedOptions":[Lcom/sonyericsson/android/camera/configuration/parameters/Flash;
    move-object v0, v1

    .local v0, "arr$":[Lcom/sonyericsson/android/camera/configuration/parameters/Flash;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v2    # "i$":I
    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v8, v0, v3

    .line 152
    .local v8, "value":Lcom/sonyericsson/android/camera/configuration/parameters/Flash;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v3    # "i$":I
    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 153
    .local v6, "supportedValue":Ljava/lang/String;
    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 154
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    .end local v6    # "supportedValue":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    .local v2, "i$":I
    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_0

    .line 161
    .end local v0    # "arr$":[Lcom/sonyericsson/android/camera/configuration/parameters/Flash;
    .end local v1    # "expectedOptions":[Lcom/sonyericsson/android/camera/configuration/parameters/Flash;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v7    # "supportedValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "value":Lcom/sonyericsson/android/camera/configuration/parameters/Flash;
    :cond_2
    const/4 v9, 0x0

    new-array v9, v9, [Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    return-object v9
.end method

.method public static getParameterKeyTitleTextId()I
    .locals 1

    .prologue
    .line 205
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->getInstance()Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->getParameterKeyTitleTextId()I

    move-result v0

    return v0
.end method

.method public static isSupported(I)Z
    .locals 2
    .param p0, "cameraId"    # I

    .prologue
    .line 165
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getCapability(I)Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

    move-result-object v1

    iget-object v1, v1, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->FLASH:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 167
    .local v0, "supportedValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 168
    const/4 v1, 0x1

    .line 170
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/Flash;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/Flash;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;

    .prologue
    .line 88
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/Flash;)V

    .line 89
    return-void
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->mIconId:I

    return v0
.end method

.method public getParameterKey()Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->FLASH:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    return-object v0
.end method

.method public getParameterKeyTextId()I
    .locals 1

    .prologue
    .line 181
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->getInstance()Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->getParameterKeyTextId()I

    move-result v0

    return v0
.end method

.method public getParameterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
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
    .line 186
    const/4 v0, 0x0

    aget-object v0, p1, v0

    return-object v0
.end method

.method public getTextId()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->mTextId:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public isSceneDependent()Z
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->mIsSceneDependent:Z

    return v0
.end method
