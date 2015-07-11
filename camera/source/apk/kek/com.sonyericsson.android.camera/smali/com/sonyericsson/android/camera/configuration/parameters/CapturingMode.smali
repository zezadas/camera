.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
.super Ljava/lang/Enum;
.source "CapturingMode.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

.field public static final enum FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

.field public static final enum FRONT_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

.field public static final enum NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

.field public static final enum PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

.field public static final enum SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

.field public static final enum SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

.field private static final TAG:Ljava/lang/String;

.field public static final enum UNKNOWN:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

.field public static final enum VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

.field private static final sParameterTextId:I = 0x7f090026

.field private static final sPhotoOptions:[Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;


# instance fields
.field private final mCameraId:I

.field private final mIconId:I

.field private final mTextId:I

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v11, 0x1

    .line 29
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const-string v1, "UNKNOWN"

    move v4, v3

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->UNKNOWN:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 34
    new-instance v4, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const-string v5, "SCENE_RECOGNITION"

    const v7, 0x7f020012

    const v8, 0x7f0900d1

    move v6, v11

    move v9, v11

    move v10, v2

    invoke-direct/range {v4 .. v10}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;-><init>(Ljava/lang/String;IIIII)V

    sput-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 39
    new-instance v4, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const-string v5, "NORMAL"

    const v7, 0x7f020011

    const v8, 0x7f0900ff

    move v6, v12

    move v9, v11

    move v10, v2

    invoke-direct/range {v4 .. v10}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;-><init>(Ljava/lang/String;IIIII)V

    sput-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 44
    new-instance v4, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const-string v5, "VIDEO"

    const v7, 0x7f020011

    const v8, 0x7f0900ff

    move v6, v13

    move v9, v12

    move v10, v2

    invoke-direct/range {v4 .. v10}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;-><init>(Ljava/lang/String;IIIII)V

    sput-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 49
    new-instance v4, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const-string v5, "SUPERIOR_FRONT"

    const/4 v6, 0x4

    move v7, v3

    move v8, v3

    move v9, v11

    move v10, v11

    invoke-direct/range {v4 .. v10}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;-><init>(Ljava/lang/String;IIIII)V

    sput-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 54
    new-instance v4, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const-string v5, "FRONT_PHOTO"

    const/4 v6, 0x5

    move v7, v3

    move v8, v3

    move v9, v11

    move v10, v11

    invoke-direct/range {v4 .. v10}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;-><init>(Ljava/lang/String;IIIII)V

    sput-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 60
    new-instance v4, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const-string v5, "FRONT_VIDEO"

    const/4 v6, 0x6

    move v7, v3

    move v8, v3

    move v9, v12

    move v10, v11

    invoke-direct/range {v4 .. v10}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;-><init>(Ljava/lang/String;IIIII)V

    sput-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 65
    new-instance v4, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const-string v5, "PHOTO"

    const/4 v6, 0x7

    move v7, v3

    move v8, v3

    move v9, v11

    move v10, v2

    invoke-direct/range {v4 .. v10}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;-><init>(Ljava/lang/String;IIIII)V

    sput-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 28
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->UNKNOWN:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    aput-object v1, v0, v11

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    aput-object v1, v0, v12

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    aput-object v1, v0, v13

    const/4 v1, 0x4

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    aput-object v3, v0, v1

    const/4 v1, 0x5

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    aput-object v3, v0, v1

    const/4 v1, 0x6

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    aput-object v3, v0, v1

    const/4 v1, 0x7

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    aput-object v3, v0, v1

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 73
    new-array v0, v12, [Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    aput-object v1, v0, v11

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->sPhotoOptions:[Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 235
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIII)V
    .locals 0
    .param p3, "iconId"    # I
    .param p4, "textId"    # I
    .param p5, "type"    # I
    .param p6, "cameraId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)V"
        }
    .end annotation

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 106
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->mIconId:I

    .line 107
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->mTextId:I

    .line 108
    iput p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->mType:I

    .line 109
    iput p6, p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->mCameraId:I

    .line 110
    return-void
.end method

.method public static convertFrom(Ljava/lang/String;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "defaultMode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .prologue
    .line 238
    move-object v1, p1

    .line 240
    .local v1, "mode":Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    :try_start_0
    invoke-static {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 244
    :goto_0
    return-object v1

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mode["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] is not supported."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getPhotoOptions()[Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .locals 1

    .prologue
    .line 165
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->sPhotoOptions:[Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    return-object v0
.end method

.method public static getValidOptions(Lcom/sonyericsson/android/camera/CameraActivity;)Ljava/util/List;
    .locals 3
    .param p0, "activity"    # Lcom/sonyericsson/android/camera/CameraActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/CameraActivity;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .local v0, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;>;"
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isPhotoIn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->isVideoIn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 194
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    :cond_1
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getInstance()Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->isSceneRecognitionSupported(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 199
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    :cond_2
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->isFrontCameraSupported()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 202
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    :cond_3
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->isFrontCameraSupported()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getInstance()Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->isSceneRecognitionSupported(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 207
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    :cond_4
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;

    .prologue
    .line 119
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    .line 120
    return-void
.end method

.method public getCameraId()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->mCameraId:I

    return v0
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->mIconId:I

    return v0
.end method

.method public getParameterKey()Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    return-object v0
.end method

.method public getParameterKeyTextId()I
    .locals 1

    .prologue
    .line 175
    const v0, 0x7f090026

    return v0
.end method

.method public getParameterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
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
    .line 180
    const/4 v0, 0x0

    aget-object v0, p1, v0

    return-object v0
.end method

.method public getTextId()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->mTextId:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->mType:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isFront()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 222
    iget v1, p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->mCameraId:I

    if-ne v1, v0, :cond_0

    .line 225
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMainPhoto()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 214
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()I

    move-result v1

    if-nez v1, :cond_0

    .line 218
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isManual()Z
    .locals 1

    .prologue
    .line 253
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p0, v0, :cond_1

    .line 254
    :cond_0
    const/4 v0, 0x1

    .line 256
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSuperiorAuto()Z
    .locals 1

    .prologue
    .line 229
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p0, v0, :cond_1

    .line 230
    :cond_0
    const/4 v0, 0x1

    .line 232
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
