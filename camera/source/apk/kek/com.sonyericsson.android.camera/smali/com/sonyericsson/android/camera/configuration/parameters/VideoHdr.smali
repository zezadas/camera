.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;
.super Ljava/lang/Enum;
.source "VideoHdr.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

.field public static final enum OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

.field public static final enum ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

.field private static final sParameterTextId:I = 0x7f0900fb


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

    .line 25
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    const-string v1, "ON"

    const v4, 0x7f09002f

    const-string v5, "on"

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    .line 29
    new-instance v4, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    const-string v5, "OFF"

    const v8, 0x7f090030

    const-string v9, "off"

    move v7, v3

    invoke-direct/range {v4 .. v9}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    .line 24
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

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
    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->mIconId:I

    .line 56
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->mTextId:I

    .line 57
    iput-object p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->mValue:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public static getOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;
    .locals 4
    .param p0, "mode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .prologue
    .line 124
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;>;"
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()I

    move-result v3

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getCapability(I)Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

    move-result-object v0

    .line 126
    .local v0, "list":Lcom/sonyericsson/android/camera/util/capability/CapabilityList;
    iget-object v3, v0, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->VIDEO_HDR:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 127
    .local v2, "supported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 128
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_0
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    const/4 v3, 0x0

    new-array v3, v3, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    return-object v3
.end method

.method public static isSupported(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Z
    .locals 3
    .param p0, "mode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()I

    move-result v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getCapability(I)Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

    move-result-object v0

    .line 115
    .local v0, "list":Lcom/sonyericsson/android/camera/util/capability/CapabilityList;
    iget-object v2, v0, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->VIDEO_HDR:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 116
    .local v1, "supported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    const/4 v2, 0x0

    .line 119
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;

    .prologue
    .line 67
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)V

    .line 68
    return-void
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->mIconId:I

    return v0
.end method

.method public getParameterKey()Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    return-object v0
.end method

.method public getParameterKeyTextId()I
    .locals 1

    .prologue
    .line 136
    const v0, 0x7f0900fb

    return v0
.end method

.method public getParameterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameterkeyTitleTextId()I
    .locals 1

    .prologue
    .line 140
    const v0, 0x7f0900c8

    return v0
.end method

.method public getRecommendedValue([Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    .locals 1
    .param p1, "options"    # [Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;
    .param p2, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    .prologue
    .line 145
    const/4 v0, 0x0

    aget-object v0, p1, v0

    return-object v0
.end method

.method public getTextId()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->mTextId:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->mValue:Ljava/lang/String;

    return-object v0
.end method
