.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;
.super Ljava/lang/Enum;
.source "SuperResolution.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;

.field public static final enum OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;

.field public static final enum ON:Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;

.field private static final TAG:Ljava/lang/String;

.field private static final sParameterTextId:I = -0x1


# instance fields
.field private final mIconId:I

.field private final mTextId:I

.field private final mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 26
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;

    const-string v1, "ON"

    const v4, 0x7f09002f

    const-string v5, "on"

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;

    .line 30
    new-instance v4, Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;

    const-string v5, "OFF"

    const v8, 0x7f090030

    const-string v9, "off"

    move v7, v3

    invoke-direct/range {v4 .. v9}, Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;

    .line 25
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;

    .line 35
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;->TAG:Ljava/lang/String;

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
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 58
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;->mIconId:I

    .line 59
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;->mTextId:I

    .line 60
    iput-object p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;->mValue:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public static getOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)[Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;
    .locals 7
    .param p0, "mode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .param p1, "mIsOneShotVideo"    # Z

    .prologue
    .line 130
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .local v3, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;>;"
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()I

    move-result v5

    invoke-static {v5}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getCapability(I)Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

    move-result-object v2

    .line 132
    .local v2, "list":Lcom/sonyericsson/android/camera/util/capability/CapabilityList;
    iget-object v5, v2, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->SR_ZOOM:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 133
    .local v0, "captureSupported":Z
    iget-object v5, v2, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->EXIF_MAKER_NOTES_TYPES:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    const-string v6, "super-resolution"

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 135
    .local v1, "exifSupported":Z
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/ClassDefinitionChecker;->isSuperResolutionProcessorSupported()Z

    move-result v4

    .line 144
    .local v4, "postProcSupported":Z
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    if-eqz v4, :cond_3

    .line 145
    if-eqz p1, :cond_0

    .line 146
    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    :goto_0
    const/4 v5, 0x0

    new-array v5, v5, [Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;

    return-object v5

    .line 147
    :cond_0
    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p0, v5, :cond_1

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p0, v5, :cond_2

    .line 148
    :cond_1
    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 150
    :cond_2
    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 153
    :cond_3
    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static isSupported(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)Z
    .locals 6
    .param p0, "mode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .param p1, "mIsOneShotVideo"    # Z

    .prologue
    .line 119
    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;->getOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)[Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;

    move-result-object v4

    .line 120
    .local v4, "options":[Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;
    move-object v0, v4

    .local v0, "arr$":[Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 121
    .local v1, "i":Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;
    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;

    if-ne v1, v5, :cond_0

    .line 122
    const/4 v5, 0x1

    .line 126
    .end local v1    # "i":Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;
    :goto_1
    return v5

    .line 120
    .restart local v1    # "i":Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 126
    .end local v1    # "i":Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;

    .prologue
    .line 65
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;)V

    .line 66
    return-void
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;->mIconId:I

    return v0
.end method

.method public getParameterKey()Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->SUPER_RESOLUTION:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    return-object v0
.end method

.method public getParameterKeyTextId()I
    .locals 1

    .prologue
    .line 75
    const/4 v0, -0x1

    return v0
.end method

.method public getParameterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
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
    .line 115
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;

    return-object v0
.end method

.method public getTextId()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;->mTextId:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/SuperResolution;->mValue:Ljava/lang/String;

    return-object v0
.end method
