.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/Ev;
.super Ljava/lang/Enum;
.source "Ev.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/Ev;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

.field public static final enum M1_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

.field public static final enum M2_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

.field public static final enum M3_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

.field public static final enum M4_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

.field public static final enum M5_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

.field public static final enum M6_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

.field public static final enum P1_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

.field public static final enum P2_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

.field public static final enum P3_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

.field public static final enum P4_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

.field public static final enum P5_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

.field public static final enum P6_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

.field public static final enum ZERO:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

.field private static final sParameterTextId:I = 0x7f09004d


# instance fields
.field private final mIconId:I

.field private mIndex:I

.field private final mTextId:I

.field private final mValue:F


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x0

    const v3, 0x7f02004d

    .line 22
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    const-string v1, "M6_3"

    const v4, 0x7f09004e

    const/high16 v5, -0x40000000    # -2.0f

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;-><init>(Ljava/lang/String;IIIF)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->M6_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    .line 26
    new-instance v4, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    const-string v5, "M5_3"

    const v8, 0x7f09004f

    const v9, -0x40266666    # -1.7f

    move v7, v3

    invoke-direct/range {v4 .. v9}, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;-><init>(Ljava/lang/String;IIIF)V

    sput-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->M5_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    .line 30
    new-instance v7, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    const-string v8, "M4_3"

    const v11, 0x7f090050

    const v12, -0x4059999a    # -1.3f

    move v9, v13

    move v10, v3

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;-><init>(Ljava/lang/String;IIIF)V

    sput-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->M4_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    .line 34
    new-instance v7, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    const-string v8, "M3_3"

    const v11, 0x7f090051

    const/high16 v12, -0x40800000    # -1.0f

    move v9, v14

    move v10, v3

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;-><init>(Ljava/lang/String;IIIF)V

    sput-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->M3_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    .line 38
    new-instance v7, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    const-string v8, "M2_3"

    const/4 v9, 0x4

    const v11, 0x7f090052

    const v12, -0x40cccccd    # -0.7f

    move v10, v3

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;-><init>(Ljava/lang/String;IIIF)V

    sput-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->M2_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    .line 42
    new-instance v7, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    const-string v8, "M1_3"

    const/4 v9, 0x5

    const v11, 0x7f090053

    const v12, -0x41666666    # -0.3f

    move v10, v3

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;-><init>(Ljava/lang/String;IIIF)V

    sput-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->M1_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    .line 46
    new-instance v7, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    const-string v8, "ZERO"

    const/4 v9, 0x6

    const v10, 0x7f02004e

    const v11, 0x7f090054

    const/4 v12, 0x0

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;-><init>(Ljava/lang/String;IIIF)V

    sput-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->ZERO:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    .line 50
    new-instance v7, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    const-string v8, "P1_3"

    const/4 v9, 0x7

    const v11, 0x7f090055

    const v12, 0x3e99999a    # 0.3f

    move v10, v3

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;-><init>(Ljava/lang/String;IIIF)V

    sput-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->P1_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    .line 54
    new-instance v7, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    const-string v8, "P2_3"

    const/16 v9, 0x8

    const v11, 0x7f090056

    const v12, 0x3f333333    # 0.7f

    move v10, v3

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;-><init>(Ljava/lang/String;IIIF)V

    sput-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->P2_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    .line 58
    new-instance v7, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    const-string v8, "P3_3"

    const/16 v9, 0x9

    const v11, 0x7f090057

    const/high16 v12, 0x3f800000    # 1.0f

    move v10, v3

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;-><init>(Ljava/lang/String;IIIF)V

    sput-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->P3_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    .line 62
    new-instance v7, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    const-string v8, "P4_3"

    const/16 v9, 0xa

    const v11, 0x7f090058

    const v12, 0x3fa66666    # 1.3f

    move v10, v3

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;-><init>(Ljava/lang/String;IIIF)V

    sput-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->P4_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    .line 66
    new-instance v7, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    const-string v8, "P5_3"

    const/16 v9, 0xb

    const v11, 0x7f090059

    const v12, 0x3fd9999a    # 1.7f

    move v10, v3

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;-><init>(Ljava/lang/String;IIIF)V

    sput-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->P5_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    .line 70
    new-instance v7, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    const-string v8, "P6_3"

    const/16 v9, 0xc

    const v11, 0x7f09005a

    const/high16 v12, 0x40000000    # 2.0f

    move v10, v3

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;-><init>(Ljava/lang/String;IIIF)V

    sput-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->P6_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    .line 21
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->M6_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->M5_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->M4_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    aput-object v1, v0, v13

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->M3_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    aput-object v1, v0, v14

    const/4 v1, 0x4

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->M2_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->M1_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->ZERO:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->P1_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->P2_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->P3_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->P4_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->P5_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->P6_3:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIF)V
    .locals 0
    .param p3, "iconId"    # I
    .param p4, "textId"    # I
    .param p5, "value"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIF)V"
        }
    .end annotation

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 99
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->mIconId:I

    .line 100
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->mTextId:I

    .line 101
    iput p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->mValue:F

    .line 102
    return-void
.end method

.method public static getOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/Ev;
    .locals 18
    .param p0, "mode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .prologue
    .line 175
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v11, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/camera/configuration/parameters/Ev;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()I

    move-result v13

    invoke-static {v13}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getCapability(I)Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

    move-result-object v8

    .line 178
    .local v8, "list":Lcom/sonyericsson/android/camera/util/capability/CapabilityList;
    iget-object v13, v8, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->EV_MAX:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v13}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 179
    .local v9, "maxIndex":I
    iget-object v13, v8, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->EV_MIN:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v13}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 181
    .local v10, "minIndex":I
    if-nez v9, :cond_1

    if-nez v10, :cond_1

    .line 203
    :cond_0
    :goto_0
    const/4 v13, 0x0

    new-array v13, v13, [Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    return-object v13

    .line 183
    :cond_1
    sget-object v13, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-object/from16 v0, p0

    if-eq v0, v13, :cond_2

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-object/from16 v0, p0

    if-ne v0, v13, :cond_3

    .line 186
    :cond_2
    sget-object v13, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->ZERO:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 189
    :cond_3
    iget-object v13, v8, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->EV_STEP:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v13}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 191
    .local v3, "evStep":F
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    move-result-object v2

    .local v2, "arr$":[Lcom/sonyericsson/android/camera/configuration/parameters/Ev;
    array-length v7, v2

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v7, :cond_0

    aget-object v12, v2, v5

    .line 192
    .local v12, "value":Lcom/sonyericsson/android/camera/configuration/parameters/Ev;
    move v6, v10

    .local v6, "index":I
    :goto_2
    if-gt v6, v9, :cond_4

    .line 193
    int-to-float v13, v6

    mul-float v4, v3, v13

    .line 194
    .local v4, "evValue":F
    const/high16 v13, 0x41200000    # 10.0f

    mul-float/2addr v13, v4

    float-to-double v14, v13

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    add-double v14, v14, v16

    double-to-int v13, v14

    iget v14, v12, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->mValue:F

    const/high16 v15, 0x41200000    # 10.0f

    mul-float/2addr v14, v15

    float-to-double v14, v14

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    add-double v14, v14, v16

    double-to-int v14, v14

    if-ne v13, v14, :cond_5

    .line 195
    iput v6, v12, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->mIndex:I

    .line 196
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    .end local v4    # "evValue":F
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 192
    .restart local v4    # "evValue":F
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/Ev;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/Ev;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;

    .prologue
    .line 111
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/Ev;)V

    .line 112
    return-void
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->mIconId:I

    return v0
.end method

.method public getIntValue()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->mIndex:I

    return v0
.end method

.method public getParameterKey()Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->EV:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    return-object v0
.end method

.method public getParameterKeyTextId()I
    .locals 1

    .prologue
    .line 208
    const v0, 0x7f09004d

    return v0
.end method

.method public getParameterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
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
    .line 213
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->ZERO:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    return-object v0
.end method

.method public getTextId()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->mTextId:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
