.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;
.super Ljava/lang/Enum;
.source "PhotoLight.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

.field public static final enum OFF:Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

.field public static final enum ON:Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

.field private static final sParameterTextId:I = 0x7f090101


# instance fields
.field private final mBooleanValue:Z

.field private final mIconId:I

.field private final mTextId:I

.field private final mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    const-string v1, "ON"

    const v3, 0x7f020056

    const v4, 0x7f09002f

    const-string v5, "torch"

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;-><init>(Ljava/lang/String;IIILjava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    .line 25
    new-instance v4, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    const-string v5, "OFF"

    const v7, 0x7f020057

    const v8, 0x7f090030

    const-string v9, "off"

    move v10, v2

    invoke-direct/range {v4 .. v10}, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;-><init>(Ljava/lang/String;IIILjava/lang/String;Z)V

    sput-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    .line 20
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;Z)V
    .locals 0
    .param p3, "iconId"    # I
    .param p4, "textId"    # I
    .param p5, "value"    # Ljava/lang/String;
    .param p6, "booleanValue"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 54
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->mIconId:I

    .line 55
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->mTextId:I

    .line 56
    iput-object p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->mValue:Ljava/lang/String;

    .line 57
    iput-boolean p6, p0, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->mBooleanValue:Z

    .line 58
    return-void
.end method

.method public static getOptions(Lcom/sonyericsson/android/camera/ActionMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;
    .locals 10
    .param p0, "mode"    # Lcom/sonyericsson/android/camera/ActionMode;

    .prologue
    .line 116
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v5, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;>;"
    iget v9, p0, Lcom/sonyericsson/android/camera/ActionMode;->mCameraId:I

    invoke-static {v9}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getCapability(I)Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

    move-result-object v9

    iget-object v9, v9, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->FLASH:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 118
    .local v7, "supportedValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    .line 119
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->getInstance()Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;

    move-result-object v9

    invoke-virtual {v9, p0, v7}, Lcom/sonyericsson/android/camera/configuration/parameters/LedOptionsResolver;->getPhotoLightOptions(Lcom/sonyericsson/android/camera/ActionMode;Ljava/util/List;)[Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    move-result-object v1

    .line 121
    .local v1, "expectedOptions":[Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;
    move-object v0, v1

    .local v0, "arr$":[Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;
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

    .line 122
    .local v8, "value":Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;
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

    .line 123
    .local v6, "supportedValue":Ljava/lang/String;
    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 124
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    .end local v6    # "supportedValue":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    .local v2, "i$":I
    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_0

    .line 130
    .end local v0    # "arr$":[Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;
    .end local v1    # "expectedOptions":[Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v8    # "value":Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;
    :cond_2
    const/4 v9, 0x0

    new-array v9, v9, [Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    return-object v9
.end method

.method public static getPhotoLightFromParameterString(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;
    .locals 5
    .param p0, "photolightString"    # Ljava/lang/String;

    .prologue
    .line 153
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    move-result-object v0

    .local v0, "arr$":[Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 154
    .local v3, "photolight":Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 160
    .end local v3    # "photolight":Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;
    :goto_1
    return-object v3

    .line 153
    .restart local v3    # "photolight":Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 160
    .end local v3    # "photolight":Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;

    .prologue
    .line 67
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;)V

    .line 68
    return-void
.end method

.method public getBooleanValue()Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->mBooleanValue:Z

    return v0
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->mIconId:I

    return v0
.end method

.method public getParameterKey()Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->PHOTO_LIGHT:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    return-object v0
.end method

.method public getParameterKeyTextId()I
    .locals 1

    .prologue
    .line 144
    const v0, 0x7f090101

    return v0
.end method

.method public getParameterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
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
    .line 149
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;

    return-object v0
.end method

.method public getTextId()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->mTextId:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/PhotoLight;->mValue:Ljava/lang/String;

    return-object v0
.end method
