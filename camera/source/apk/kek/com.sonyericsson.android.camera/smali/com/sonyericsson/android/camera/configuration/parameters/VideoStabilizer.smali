.class public final enum Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;
.super Ljava/lang/Enum;
.source "VideoStabilizer.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;",
        ">;",
        "Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

.field public static final enum INTELLIGENT_ACTIVE:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

.field public static final enum OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

.field public static final enum ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

.field public static final enum STEADY_SHOT:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

.field private static final TEXT_ID_SS:I = 0x7f0900dd

.field private static final TEXT_ID_VS:I = 0x7f090111


# instance fields
.field private final mIconId:I

.field private final mTextId:I

.field private final mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 27
    new-instance v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    const-string v1, "STEADY_SHOT"

    const v4, 0x7f090180

    const-string v5, "on-steady-shot"

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->STEADY_SHOT:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    .line 31
    new-instance v4, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    const-string v5, "INTELLIGENT_ACTIVE"

    const v8, 0x7f090159

    const-string v9, "on-intelligent-active"

    move v7, v3

    invoke-direct/range {v4 .. v9}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->INTELLIGENT_ACTIVE:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    .line 35
    new-instance v7, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    const-string v8, "ON"

    const v11, 0x7f09002f

    const-string v12, "on"

    move v9, v13

    move v10, v3

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    .line 39
    new-instance v7, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    const-string v8, "OFF"

    const v11, 0x7f090030

    const-string v12, "off"

    move v9, v14

    move v10, v3

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    .line 26
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->STEADY_SHOT:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->INTELLIGENT_ACTIVE:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    aput-object v1, v0, v13

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    aput-object v1, v0, v14

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

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
    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 67
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->mIconId:I

    .line 68
    iput p4, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->mTextId:I

    .line 69
    iput-object p5, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->mValue:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public static getOptions(I)[Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;
    .locals 1
    .param p0, "cameraId"    # I

    .prologue
    .line 126
    invoke-static {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->getVideoStabilizerOptions(I)[Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    move-result-object v0

    return-object v0
.end method

.method public static getParameterKeyTitleText(I)I
    .locals 6
    .param p0, "cameraId"    # I

    .prologue
    const v3, 0x7f090111

    const v2, 0x7f0900dd

    .line 183
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getInstance()Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getCameraExtensionVersion()Lcom/sonyericsson/cameracommon/device/CameraExtensionVersion;

    move-result-object v1

    const/4 v4, 0x1

    const/4 v5, 0x7

    invoke-virtual {v1, v4, v5}, Lcom/sonyericsson/cameracommon/device/CameraExtensionVersion;->isLaterThanOrEqualTo(II)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 199
    :goto_0
    return v1

    .line 187
    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getInstance()Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getCameraExtensionVersion()Lcom/sonyericsson/cameracommon/device/CameraExtensionVersion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/device/CameraExtensionVersion;->isSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 190
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getCapability(I)Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

    move-result-object v0

    .line 191
    .local v0, "list":Lcom/sonyericsson/android/camera/util/capability/CapabilityList;
    iget-object v1, v0, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->VIDEO_STABILIZER_TYPE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const-string v4, "steady-shot"

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    .line 193
    goto :goto_0

    :cond_1
    move v1, v3

    .line 195
    goto :goto_0

    .end local v0    # "list":Lcom/sonyericsson/android/camera/util/capability/CapabilityList;
    :cond_2
    move v1, v3

    .line 199
    goto :goto_0
.end method

.method public static getRecommendedVideoStabilizerValue(ILcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;
    .locals 6
    .param p0, "cameraId"    # I
    .param p1, "videoSize"    # Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .prologue
    const/4 v0, 0x1

    .line 210
    const-string v3, "## ## ## ##"

    const-string v4, "getRecommendedVideoStabilizerValue()"

    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getInstance()Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getCameraExtensionVersion()Lcom/sonyericsson/cameracommon/device/CameraExtensionVersion;

    move-result-object v3

    const/4 v4, 0x7

    invoke-virtual {v3, v0, v4}, Lcom/sonyericsson/cameracommon/device/CameraExtensionVersion;->isLaterThanOrEqualTo(II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 216
    if-ne p0, v0, :cond_0

    .line 217
    .local v0, "isFacingFront":Z
    :goto_0
    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->isSteadyShotSupported(ILcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Z

    move-result v2

    .line 218
    .local v2, "isSteadyShotSupported":Z
    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->isIntelligentActiveSupported(ILcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Z

    move-result v1

    .line 220
    .local v1, "isIntelligentActiveSupported":Z
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    .line 221
    const-string v3, "## ## ## ##"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  INTELLIGENT_ACTIVE front:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isSteadyShotSupported:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isIntelligentActiveSupported:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->INTELLIGENT_ACTIVE:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    .line 238
    .end local v0    # "isFacingFront":Z
    .end local v1    # "isIntelligentActiveSupported":Z
    .end local v2    # "isSteadyShotSupported":Z
    :goto_1
    return-object v3

    .line 216
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 225
    .restart local v0    # "isFacingFront":Z
    .restart local v1    # "isIntelligentActiveSupported":Z
    .restart local v2    # "isSteadyShotSupported":Z
    :cond_1
    if-eqz v2, :cond_2

    .line 226
    const-string v3, "## ## ## ##"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  STEADY_SHOT front:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isSteadyShotSupported:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isIntelligentActiveSupported:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->STEADY_SHOT:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    goto :goto_1

    .line 231
    :cond_2
    const-string v3, "## ## ## ##"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  OFF front:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isSteadyShotSupported:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isIntelligentActiveSupported:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    goto :goto_1

    .line 237
    .end local v0    # "isFacingFront":Z
    .end local v1    # "isIntelligentActiveSupported":Z
    .end local v2    # "isSteadyShotSupported":Z
    :cond_3
    const-string v3, "## ## ## ##"

    const-string v4, "  ON"

    invoke-static {v3, v4}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    goto :goto_1
.end method

.method public static getVideoStabilizerOptions(I)[Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;
    .locals 6
    .param p0, "cameraId"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 137
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getCapability(I)Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

    move-result-object v0

    .line 138
    .local v0, "list":Lcom/sonyericsson/android/camera/util/capability/CapabilityList;
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getInstance()Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getCameraExtensionVersion()Lcom/sonyericsson/cameracommon/device/CameraExtensionVersion;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v2, v5, v3}, Lcom/sonyericsson/cameracommon/device/CameraExtensionVersion;->isLaterThanOrEqualTo(II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 140
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;>;"
    iget-object v2, v0, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const-string v3, "on-intelligent-active"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->INTELLIGENT_ACTIVE:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_0
    iget-object v2, v0, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const-string v3, "on-steady-shot"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 150
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->STEADY_SHOT:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 156
    iget-object v2, v0, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const-string v3, "on"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 158
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_2
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    new-array v2, v4, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    .line 168
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;>;"
    :goto_0
    return-object v2

    .line 163
    :cond_3
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getInstance()Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getCameraExtensionVersion()Lcom/sonyericsson/cameracommon/device/CameraExtensionVersion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/device/CameraExtensionVersion;->isSupported()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 164
    iget-object v2, v0, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 165
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    aput-object v3, v2, v4

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    aput-object v3, v2, v5

    goto :goto_0

    .line 168
    :cond_4
    new-array v2, v4, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    goto :goto_0
.end method

.method public static isIntelligentActive(Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;)Z
    .locals 1
    .param p0, "videoStabilizer"    # Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    .prologue
    .line 313
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->INTELLIGENT_ACTIVE:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isIntelligentActiveSupported(ILcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Z
    .locals 5
    .param p0, "cameraId"    # I
    .param p1, "videoSize"    # Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .prologue
    const/4 v1, 0x0

    .line 292
    invoke-static {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->isValidWhenVideoSizeIs(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 308
    :cond_0
    :goto_0
    return v1

    .line 297
    :cond_1
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getCapability(I)Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

    move-result-object v0

    .line 298
    .local v0, "list":Lcom/sonyericsson/android/camera/util/capability/CapabilityList;
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getInstance()Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getCameraExtensionVersion()Lcom/sonyericsson/cameracommon/device/CameraExtensionVersion;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x7

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/cameracommon/device/CameraExtensionVersion;->isLaterThanOrEqualTo(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 300
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FULL_HD_60FPS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-eq p1, v2, :cond_0

    .line 304
    iget-object v1, v0, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->MAX_INTELLIGENT_ACTIVE_SIZE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-static {v1, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->isMaxSizeLargerThanOrEqualToVideoSize(Landroid/graphics/Rect;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Z

    move-result v1

    goto :goto_0
.end method

.method private static isMaxSizeLargerThanOrEqualToVideoSize(Landroid/graphics/Rect;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Z
    .locals 2
    .param p0, "maxSize"    # Landroid/graphics/Rect;
    .param p1, "videoSize"    # Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .prologue
    .line 255
    if-eqz p0, :cond_0

    .line 256
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 258
    const/4 v0, 0x1

    .line 261
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSteadyShotSupported(ILcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Z
    .locals 5
    .param p0, "cameraId"    # I
    .param p1, "videoSize"    # Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 265
    invoke-static {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->isValidWhenVideoSizeIs(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 286
    :goto_0
    return v1

    .line 270
    :cond_0
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getCapability(I)Lcom/sonyericsson/android/camera/util/capability/CapabilityList;

    move-result-object v0

    .line 271
    .local v0, "list":Lcom/sonyericsson/android/camera/util/capability/CapabilityList;
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getInstance()Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getCameraExtensionVersion()Lcom/sonyericsson/cameracommon/device/CameraExtensionVersion;

    move-result-object v1

    const/4 v4, 0x7

    invoke-virtual {v1, v3, v4}, Lcom/sonyericsson/cameracommon/device/CameraExtensionVersion;->isLaterThanOrEqualTo(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 273
    iget-object v1, v0, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->MAX_STEADY_SHOT_SIZE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-static {v1, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->isMaxSizeLargerThanOrEqualToVideoSize(Landroid/graphics/Rect;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Z

    move-result v1

    goto :goto_0

    .line 276
    :cond_1
    iget-object v1, v0, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->VIDEO_STABILIZER_TYPE:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const-string v4, "steady-shot"

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 278
    iget-object v1, v0, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->MAX_VIDEO_STABILIZER_SIZE_FOR_LEGACY:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-static {v1, p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->isMaxSizeLargerThanOrEqualToVideoSize(Landroid/graphics/Rect;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Z

    move-result v1

    goto :goto_0

    .line 280
    :cond_2
    iget-object v1, v0, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const-string v4, "on"

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v3

    .line 284
    goto :goto_0

    :cond_3
    move v1, v2

    .line 286
    goto :goto_0
.end method

.method private static isValidWhenVideoSizeIs(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Z
    .locals 2
    .param p0, "videoSize"    # Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .prologue
    .line 243
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoSize:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 249
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 247
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 243
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const-class v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->$VALUES:[Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;

    .prologue
    .line 79
    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterApplicable;->set(Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;)V

    .line 80
    return-void
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->mIconId:I

    return v0
.end method

.method public getParameterKey()Lcom/sonyericsson/android/camera/configuration/ParameterKey;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/ParameterKey;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/configuration/ParameterKey;

    return-object v0
.end method

.method public getParameterKeyTextId()I
    .locals 1

    .prologue
    .line 179
    const v0, 0x7f0900dd

    return v0
.end method

.method public getParameterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
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
    .line 205
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    return-object v0
.end method

.method public getTextId()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->mTextId:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->mValue:Ljava/lang/String;

    return-object v0
.end method
