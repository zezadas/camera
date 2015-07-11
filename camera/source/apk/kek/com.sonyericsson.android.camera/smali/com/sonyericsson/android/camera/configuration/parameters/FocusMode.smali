.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;
.super Ljava/lang/Enum;
.source "FocusMode.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

.field public static final enum FACE_DETECTION:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

.field public static final enum FIXED:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

.field public static final enum INFINITY:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

.field public static final enum MULTI:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

.field public static final enum OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

.field public static final enum SINGLE:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

.field public static final enum TOUCH_FOCUS:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

.field private static final sParameterTextId:I = 0x7f090046


# instance fields
.field private final mFocusArea:Ljava/lang/String;

.field private final mIconId:I

.field private final mSuccessSound:Z

.field private final mTextId:I

.field private mValue:Ljava/lang/String;

.field private mValueForVideo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 31
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    const-string v1, "SINGLE"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const v4, 0x7f090047

    const-string v5, "continuous-picture"

    const-string v6, "continuous-video"

    const-string v7, "center"

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v8}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->SINGLE:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    .line 38
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    const-string v1, "MULTI"

    const/4 v2, 0x1

    const/4 v3, -0x1

    const v4, 0x7f090048

    const-string v5, "macro"

    const-string v6, "macro"

    const-string v7, "multi"

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v8}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->MULTI:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    .line 45
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    const-string v1, "FIXED"

    const/4 v2, 0x2

    const/4 v3, -0x1

    const v4, 0x7f090047

    const-string v5, "fixed"

    const-string v6, "fixed"

    const-string v7, "center"

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->FIXED:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    .line 53
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    const-string v1, "FACE_DETECTION"

    const/4 v2, 0x3

    const/4 v3, -0x1

    const v4, 0x7f09004a

    const-string v5, "continuous-picture"

    const-string v6, "continuous-video"

    const-string v7, "center"

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v8}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->FACE_DETECTION:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    .line 60
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    const-string v1, "TOUCH_FOCUS"

    const/4 v2, 0x4

    const/4 v3, -0x1

    const v4, 0x7f09004b

    const-string v5, "continuous-picture"

    const-string v6, "continuous-video"

    const-string v7, "center"

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v8}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->TOUCH_FOCUS:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    .line 71
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    const-string v1, "INFINITY"

    const/4 v2, 0x5

    const/4 v3, -0x1

    const v4, 0x7f090047

    const-string v5, "infinity"

    const-string v6, "infinity"

    const-string v7, "center"

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v8}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->INFINITY:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    .line 78
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    const-string v1, "OBJECT_TRACKING"

    const/4 v2, 0x6

    const/4 v3, -0x1

    const v4, 0x7f0900ed

    const-string v5, "continuous-picture"

    const-string v6, "continuous-video"

    const-string v7, "center"

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v8}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    .line 30
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    const/4 v1, 0x0

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->SINGLE:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->MULTI:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->FIXED:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->FACE_DETECTION:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->TOUCH_FOCUS:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->INFINITY:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p3, "iconId"    # I
    .param p4, "textId"    # I
    .param p5, "value"    # Ljava/lang/String;
    .param p6, "valueForVideo"    # Ljava/lang/String;
    .param p7, "areaValue"    # Ljava/lang/String;
    .param p8, "successSound"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 120
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->mIconId:I

    .line 121
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->mTextId:I

    .line 122
    iput-object p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->mValue:Ljava/lang/String;

    .line 123
    iput-object p6, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->mValueForVideo:Ljava/lang/String;

    .line 124
    iput-object p7, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->mFocusArea:Ljava/lang/String;

    .line 125
    iput-boolean p8, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->mSuccessSound:Z

    .line 126
    return-void
.end method

.method public static getDefaultValue(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;
    .locals 2
    .param p0, "mode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .prologue
    .line 309
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 321
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->FACE_DETECTION:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    :goto_0
    return-object v0

    .line 313
    :pswitch_0
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->FACE_DETECTION:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    goto :goto_0

    .line 315
    :pswitch_1
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->TOUCH_FOCUS:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    goto :goto_0

    .line 319
    :pswitch_2
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->FIXED:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    goto :goto_0

    .line 309
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private static getExpectedOptions([Ljava/lang/String;)[Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;
    .locals 6
    .param p0, "customizedOptions"    # [Ljava/lang/String;

    .prologue
    .line 265
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .local v1, "expectedOptions":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;>;"
    if-eqz p0, :cond_0

    .line 267
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 268
    .local v4, "value":Ljava/lang/String;
    const-class v5, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    invoke-static {v5, v4}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 271
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "value":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->values()[Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    move-result-object v5

    .line 273
    :goto_1
    return-object v5

    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_1
    const/4 v5, 0x0

    new-array v5, v5, [Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    goto :goto_1
.end method

.method public static getOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;
    .locals 15
    .param p0, "mode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .prologue
    .line 199
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 201
    .local v7, "options":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;>;"
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()I

    move-result v13

    invoke-static {v13}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getCapability(I)Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

    move-result-object v5

    .line 202
    .local v5, "list":Lcom/sonyericsson/android/camera/util/capability/CapabilityList;
    iget-object v13, v5, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->FOCUS_MODE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v13}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 203
    .local v9, "supportedFocusMode":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v13, v5, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->FOCUS_AREA:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v13}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 205
    .local v8, "supportedFocusArea":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_7

    .line 207
    sget-object v13, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p0, v13, :cond_2

    .line 208
    const/4 v13, 0x1

    new-array v1, v13, [Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    const/4 v13, 0x0

    sget-object v14, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->FACE_DETECTION:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    aput-object v14, v1, v13

    .line 215
    .local v1, "expectedOptions":[Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;
    :goto_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 216
    .local v6, "modeOptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;>;"
    move-object v0, v1

    .local v0, "arr$":[Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v2    # "i$":I
    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v12, v0, v3

    .line 217
    .local v12, "value":Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v3    # "i$":I
    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 218
    .local v10, "supportedValue":Ljava/lang/String;
    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->getValue()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 219
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    .end local v10    # "supportedValue":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    .local v2, "i$":I
    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_1

    .line 210
    .end local v0    # "arr$":[Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;
    .end local v1    # "expectedOptions":[Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "modeOptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;>;"
    .end local v12    # "value":Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;
    :cond_2
    iget-object v13, v5, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->UX_CAPABILITY:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v13}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sonyericsson/android/camera/util/capability/UxOptions;

    invoke-virtual {v13, p0}, Lcom/sonyericsson/android/camera/util/capability/UxOptions;->getFocusModeOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Ljava/lang/String;

    move-result-object v11

    .line 211
    .local v11, "ux":[Ljava/lang/String;
    invoke-static {v11}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->getExpectedOptions([Ljava/lang/String;)[Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    move-result-object v1

    .restart local v1    # "expectedOptions":[Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;
    goto :goto_0

    .line 226
    .end local v11    # "ux":[Ljava/lang/String;
    .restart local v0    # "arr$":[Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v6    # "modeOptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;>;"
    :cond_3
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 227
    move-object v7, v6

    .line 240
    .end local v3    # "i$":I
    :cond_4
    iget-object v13, v5, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->MAX_NUM_FACE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v13}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/4 v14, 0x1

    if-ge v13, v14, :cond_5

    .line 241
    sget-object v13, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->FACE_DETECTION:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    invoke-static {v13, v7}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->remove(Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;Ljava/util/List;)V

    .line 245
    :cond_5
    iget-object v13, v5, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->MAX_NUM_FOCUS_AREA:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v13}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/4 v14, 0x1

    if-ge v13, v14, :cond_6

    .line 246
    sget-object v13, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->TOUCH_FOCUS:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    invoke-static {v13, v7}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->remove(Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;Ljava/util/List;)V

    .line 250
    :cond_6
    iget-object v13, v5, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v13}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-nez v13, :cond_7

    .line 251
    sget-object v13, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    invoke-static {v13, v7}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->remove(Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;Ljava/util/List;)V

    .line 255
    .end local v0    # "arr$":[Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;
    .end local v1    # "expectedOptions":[Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;
    .end local v4    # "len$":I
    .end local v6    # "modeOptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;>;"
    :cond_7
    const/4 v13, 0x0

    new-array v13, v13, [Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    invoke-interface {v7, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    return-object v13

    .line 229
    .restart local v0    # "arr$":[Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;
    .restart local v1    # "expectedOptions":[Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v6    # "modeOptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;>;"
    :cond_8
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v3    # "i$":I
    :cond_9
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    .line 230
    .restart local v12    # "value":Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 231
    .restart local v10    # "supportedValue":Ljava/lang/String;
    invoke-virtual {v12}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->getFocusArea()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 232
    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private static remove(Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;Ljava/util/List;)V
    .locals 1
    .param p0, "option"    # Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 259
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;>;"
    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    invoke-interface {p1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 262
    :cond_0
    return-void
.end method

.method public static updateValue(ILjava/util/List;)V
    .locals 2
    .param p0, "cameraId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 301
    .local p1, "supportedFocusMode":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 302
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->SINGLE:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 303
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->SINGLE:Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    const-string v1, "auto"

    iput-object v1, v0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->mValue:Ljava/lang/String;

    .line 306
    :cond_0
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 30
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;

    .prologue
    .line 135
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;)V

    .line 136
    return-void
.end method

.method public getFocusArea()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->mFocusArea:Ljava/lang/String;

    return-object v0
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->mIconId:I

    return v0
.end method

.method public getParameterKey()Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->FOCUS_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    return-object v0
.end method

.method public getParameterKeyTextId()I
    .locals 1

    .prologue
    .line 283
    const v0, 0x7f090046

    return v0
.end method

.method public getParameterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
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
    .line 288
    const/4 v0, 0x0

    aget-object v0, p1, v0

    return-object v0
.end method

.method public getTextId()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->mTextId:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public getValueForVideo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->mValueForVideo:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccessSound()Z
    .locals 1

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->mSuccessSound:Z

    return v0
.end method
