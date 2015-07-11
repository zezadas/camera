.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/Iso;
.super Ljava/lang/Enum;
.source "Iso.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/Iso;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

.field public static final enum ISO_100:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

.field public static final enum ISO_10000:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

.field public static final enum ISO_12800:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

.field public static final enum ISO_1600:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

.field public static final enum ISO_200:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

.field public static final enum ISO_3200:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

.field public static final enum ISO_400:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

.field public static final enum ISO_50:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

.field public static final enum ISO_6400:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

.field public static final enum ISO_800:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

.field public static final enum ISO_AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

.field private static final sParameterTextId:I = 0x7f0901d4


# instance fields
.field private final mAeMode:Ljava/lang/String;

.field private final mIconId:I

.field private final mIsoValue:I

.field private final mTextId:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 27
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    const-string v1, "ISO_AUTO"

    const v4, 0x7f090031

    const-string v5, "auto"

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    .line 32
    new-instance v4, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    const-string v5, "ISO_50"

    const v8, 0x7f0901d6

    const-string v9, "iso-prio"

    const/16 v10, 0x32

    move v6, v11

    move v7, v3

    invoke-direct/range {v4 .. v10}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_50:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    .line 37
    new-instance v4, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    const-string v5, "ISO_100"

    const v8, 0x7f0901d7

    const-string v9, "iso-prio"

    const/16 v10, 0x64

    move v6, v12

    move v7, v3

    invoke-direct/range {v4 .. v10}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_100:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    .line 42
    new-instance v4, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    const-string v5, "ISO_200"

    const v8, 0x7f0901d8

    const-string v9, "iso-prio"

    const/16 v10, 0xc8

    move v6, v13

    move v7, v3

    invoke-direct/range {v4 .. v10}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_200:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    .line 47
    new-instance v4, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    const-string v5, "ISO_400"

    const/4 v6, 0x4

    const v8, 0x7f0901d9

    const-string v9, "iso-prio"

    const/16 v10, 0x190

    move v7, v3

    invoke-direct/range {v4 .. v10}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_400:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    .line 52
    new-instance v4, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    const-string v5, "ISO_800"

    const/4 v6, 0x5

    const v8, 0x7f0901da

    const-string v9, "iso-prio"

    const/16 v10, 0x320

    move v7, v3

    invoke-direct/range {v4 .. v10}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_800:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    .line 57
    new-instance v4, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    const-string v5, "ISO_1600"

    const/4 v6, 0x6

    const v8, 0x7f0901db

    const-string v9, "iso-prio"

    const/16 v10, 0x640

    move v7, v3

    invoke-direct/range {v4 .. v10}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_1600:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    .line 62
    new-instance v4, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    const-string v5, "ISO_3200"

    const/4 v6, 0x7

    const v8, 0x7f0901dc

    const-string v9, "iso-prio"

    const/16 v10, 0xc80

    move v7, v3

    invoke-direct/range {v4 .. v10}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_3200:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    .line 67
    new-instance v4, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    const-string v5, "ISO_6400"

    const/16 v6, 0x8

    const v8, 0x7f0901dd

    const-string v9, "iso-prio"

    const/16 v10, 0x1900

    move v7, v3

    invoke-direct/range {v4 .. v10}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_6400:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    .line 72
    new-instance v4, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    const-string v5, "ISO_10000"

    const/16 v6, 0x9

    const v8, 0x7f0901de

    const-string v9, "iso-prio"

    const/16 v10, 0x2710

    move v7, v3

    invoke-direct/range {v4 .. v10}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_10000:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    .line 77
    new-instance v4, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    const-string v5, "ISO_12800"

    const/16 v6, 0xa

    const v8, 0x7f0901df

    const-string v9, "iso-prio"

    const/16 v10, 0x3200

    move v7, v3

    invoke-direct/range {v4 .. v10}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_12800:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    .line 26
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_50:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    aput-object v1, v0, v11

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_100:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    aput-object v1, v0, v12

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_200:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    aput-object v1, v0, v13

    const/4 v1, 0x4

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_400:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_800:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_1600:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_3200:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_6400:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_10000:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_12800:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;I)V
    .locals 0
    .param p3, "iconId"    # I
    .param p4, "textId"    # I
    .param p5, "aeMode"    # Ljava/lang/String;
    .param p6, "isoValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 100
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->mIconId:I

    .line 101
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->mTextId:I

    .line 102
    iput-object p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->mAeMode:Ljava/lang/String;

    .line 103
    iput p6, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->mIsoValue:I

    .line 104
    return-void
.end method

.method public static getOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;)[Lcom/sonyericsson/android/camera/configuration/parameters/Iso;
    .locals 11
    .param p0, "mode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .param p1, "resolution"    # Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .prologue
    const/4 v10, 0x0

    .line 174
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v4, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/camera/configuration/parameters/Iso;>;"
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()I

    move-result v8

    invoke-static {v8}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getCapability(I)Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

    move-result-object v3

    .line 180
    .local v3, "list":Lcom/sonyericsson/android/camera/util/capability/CapabilityList;
    iget-object v8, v3, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->AE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 181
    .local v5, "supportedAe":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 182
    new-array v8, v10, [Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    .line 213
    :goto_0
    return-object v8

    .line 183
    :cond_0
    sget-object v8, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 185
    sget-object v8, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    sget-object v8, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p0, v8, :cond_1

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p0, v8, :cond_1

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p0, v8, :cond_1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    .line 190
    :cond_1
    new-array v8, v10, [Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    goto :goto_0

    .line 195
    :cond_2
    sget-object v8, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_100:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 196
    new-array v8, v10, [Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    goto :goto_0

    .line 200
    :cond_3
    iget-object v8, v3, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->ISO:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v8}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 201
    .local v6, "supportedIso":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    move-result-object v0

    .local v0, "arr$":[Lcom/sonyericsson/android/camera/configuration/parameters/Iso;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_6

    aget-object v7, v0, v1

    .line 202
    .local v7, "value":Lcom/sonyericsson/android/camera/configuration/parameters/Iso;
    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->getIsoValue()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 203
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    const/16 v9, 0xf00

    if-le v8, v9, :cond_5

    .line 204
    invoke-virtual {v7}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->getIsoValue()I

    move-result v8

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_800:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    invoke-virtual {v9}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->getIsoValue()I

    move-result v9

    if-gt v8, v9, :cond_4

    .line 205
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 208
    :cond_5
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 213
    .end local v7    # "value":Lcom/sonyericsson/android/camera/configuration/parameters/Iso;
    :cond_6
    new-array v8, v10, [Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    goto/16 :goto_0
.end method

.method public static isAlwaysChangeToAutoToResolveDependency()Z
    .locals 3

    .prologue
    .line 222
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getInstance()Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getCameraExtensionVersion()Lcom/sonyericsson/cameracommon/device/CameraExtensionVersion;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/device/CameraExtensionVersion;->isLaterThanOrEqualTo(II)Z

    move-result v0

    return v0
.end method

.method public static isExclusiveWith(Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;)Z
    .locals 2
    .param p0, "resolution"    # Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .prologue
    .line 233
    const/16 v0, 0xf00

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/Iso;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/Iso;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;

    .prologue
    .line 113
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/Iso;)V

    .line 114
    return-void
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->mIconId:I

    return v0
.end method

.method public getIsoValue()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->mIsoValue:I

    return v0
.end method

.method public getParameterKey()Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->ISO:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    return-object v0
.end method

.method public getParameterKeyTextId()I
    .locals 1

    .prologue
    .line 165
    const v0, 0x7f0901d4

    return v0
.end method

.method public getParameterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
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
    .line 170
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    return-object v0
.end method

.method public getTextId()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->mTextId:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->mAeMode:Ljava/lang/String;

    return-object v0
.end method
