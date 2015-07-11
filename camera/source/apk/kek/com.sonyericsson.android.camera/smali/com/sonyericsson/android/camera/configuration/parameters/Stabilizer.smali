.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;
.super Ljava/lang/Enum;
.source "Stabilizer.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;

.field public static final enum AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;

.field public static final enum OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;

.field public static final enum ON:Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;

.field private static final sParameterTextId:I = 0x7f090065


# instance fields
.field private final mBooleanValue:Z

.field private final mIconId:I

.field private final mNotificationId:I

.field private final mTextId:I

.field private final mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 27
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;

    const-string v1, "ON"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const v4, 0x7f09002f

    const/4 v5, -0x1

    const-string v6, "on"

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;-><init>(Ljava/lang/String;IIIILjava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;

    .line 33
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;

    const-string v1, "OFF"

    const/4 v2, 0x1

    const/4 v3, -0x1

    const v4, 0x7f090030

    const/4 v5, -0x1

    const-string v6, "off"

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;-><init>(Ljava/lang/String;IIIILjava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;

    .line 39
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;

    const-string v1, "AUTO"

    const/4 v2, 0x2

    const/4 v3, -0x1

    const v4, 0x7f09002f

    const/4 v5, -0x1

    const-string v6, "auto"

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;-><init>(Ljava/lang/String;IIIILjava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;

    const/4 v1, 0x0

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIILjava/lang/String;Z)V
    .locals 0
    .param p3, "iconId"    # I
    .param p4, "textId"    # I
    .param p5, "notificationId"    # I
    .param p6, "value"    # Ljava/lang/String;
    .param p7, "booleanValue"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 77
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;->mIconId:I

    .line 78
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;->mTextId:I

    .line 79
    iput p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;->mNotificationId:I

    .line 80
    iput-boolean p7, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;->mBooleanValue:Z

    .line 81
    iput-object p6, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;->mValue:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public static getDefault(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;
    .locals 1
    .param p0, "mode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .prologue
    .line 192
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p0, v0, :cond_1

    .line 193
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;

    .line 195
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;

    goto :goto_0
.end method

.method public static getOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;
    .locals 5
    .param p0, "mode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .prologue
    .line 163
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;>;"
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    .line 166
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()I

    move-result v3

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getCapability(I)Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

    move-result-object v0

    .line 167
    .local v0, "list":Lcom/sonyericsson/android/camera/util/capability/CapabilityList;
    iget-object v3, v0, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->IMAGE_STABILIZER:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 168
    .local v2, "supportedValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 169
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p0, v3, :cond_0

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p0, v3, :cond_2

    .line 171
    :cond_0
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    .end local v0    # "list":Lcom/sonyericsson/android/camera/util/capability/CapabilityList;
    .end local v2    # "supportedValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    const/4 v3, 0x0

    new-array v3, v3, [Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;

    return-object v3

    .line 173
    .restart local v0    # "list":Lcom/sonyericsson/android/camera/util/capability/CapabilityList;
    .restart local v2    # "supportedValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;

    .prologue
    .line 91
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;)V

    .line 92
    return-void
.end method

.method public getBooleanValue()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;->mBooleanValue:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;->mIconId:I

    return v0
.end method

.method public getNotificationIconId()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;->mNotificationId:I

    return v0
.end method

.method public getParameterKey()Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->STABILIZER:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    return-object v0
.end method

.method public getParameterKeyTextId()I
    .locals 1

    .prologue
    .line 183
    const v0, 0x7f090065

    return v0
.end method

.method public getParameterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
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
    .line 188
    const/4 v0, 0x0

    aget-object v0, p1, v0

    return-object v0
.end method

.method public getTextId()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;->mTextId:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;->mValue:Ljava/lang/String;

    return-object v0
.end method
