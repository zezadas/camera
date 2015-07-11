.class public Lcom/sonyericsson/android/camera/addon/CameraAddonReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CameraAddonReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/sonyericsson/android/camera/addon/CameraAddonReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/addon/CameraAddonReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static isCameraSupported(I)Z
    .locals 1
    .param p0, "cameraid"    # I

    .prologue
    .line 83
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getNumberOfCameras()I

    move-result v0

    if-le v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSuperiorAutoSupported(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const v7, 0x7f0900ff

    const v6, 0x7f0900d1

    const/4 v5, 0x1

    .line 40
    sget-object v2, Lcom/sonyericsson/android/camera/addon/CameraAddonReceiver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive() intent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v0, "attrs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributes;>;"
    invoke-static {p1}, Lcom/sonyericsson/android/camera/addon/CameraAddonReceiver;->isSuperiorAutoSupported(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 46
    new-instance v2, Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;

    invoke-direct {v2}, Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;->packageName(Ljava/lang/String;)Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;

    move-result-object v2

    const-class v3, Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;->activityName(Ljava/lang/String;)Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SCENE_RECOGNITION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;->modeName(Ljava/lang/String;)Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;

    move-result-object v2

    const v3, 0x7f020012

    invoke-virtual {v2, v3}, Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;->selectorIconId(I)Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;->selectorLabelId(I)Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;

    move-result-object v2

    const v3, 0x7f02000a

    invoke-virtual {v2, v3}, Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;->shortcutIconId(I)Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;

    move-result-object v2

    const v3, 0x7f090117

    invoke-virtual {v2, v3}, Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;->descriptionLabelId(I)Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;->shortcutLabelId(I)Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;->isVisibleNormal(Z)Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;->isVisibleOneshot(Z)Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;->build()Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributes;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    :cond_0
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sonyericsson/android/camera/addon/CameraAddonReceiver;->isCameraSupported(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 62
    new-instance v2, Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;

    invoke-direct {v2}, Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;->packageName(Ljava/lang/String;)Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;

    move-result-object v2

    const-class v3, Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;->activityName(Ljava/lang/String;)Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;->modeName(Ljava/lang/String;)Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;

    move-result-object v2

    const v3, 0x7f020011

    invoke-virtual {v2, v3}, Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;->selectorIconId(I)Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;->selectorLabelId(I)Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;

    move-result-object v2

    const v3, 0x7f020009

    invoke-virtual {v2, v3}, Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;->shortcutIconId(I)Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;

    move-result-object v2

    const v3, 0x7f090118

    invoke-virtual {v2, v3}, Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;->descriptionLabelId(I)Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;->shortcutLabelId(I)Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;->isVisibleNormal(Z)Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;->isVisibleOneshot(Z)Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;->build()Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributes;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 79
    .local v1, "resolver":Landroid/content/ContentResolver;
    invoke-static {v1, v0}, Lcom/sonymobile/camera/addon/internal/registration/AddOnRegistrationHelper;->register(Landroid/content/ContentResolver;Ljava/util/List;)V

    .line 80
    return-void
.end method
