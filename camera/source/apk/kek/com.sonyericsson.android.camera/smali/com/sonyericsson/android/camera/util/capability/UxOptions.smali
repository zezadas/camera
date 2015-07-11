.class public Lcom/sonyericsson/android/camera/util/capability/UxOptions;
.super Ljava/lang/Object;
.source "UxOptions.java"


# instance fields
.field private final mPhotoFocusModes:[Ljava/lang/String;

.field private final mPhotoFocusModesNoExtension:[Ljava/lang/String;

.field private final mPhotoScenes:[Ljava/lang/String;

.field private final mVideoFocusModes:[Ljava/lang/String;

.field private final mVideoFocusModesNoExtension:[Ljava/lang/String;

.field private final mVideoScenes:[Ljava/lang/String;

.field private final mVideoSizeOneShot:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/UxOptions;->mPhotoScenes:[Ljava/lang/String;

    .line 41
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/UxOptions;->mVideoScenes:[Ljava/lang/String;

    .line 42
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/UxOptions;->mPhotoFocusModes:[Ljava/lang/String;

    .line 43
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/UxOptions;->mVideoFocusModes:[Ljava/lang/String;

    .line 44
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/UxOptions;->mPhotoFocusModesNoExtension:[Ljava/lang/String;

    .line 45
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/UxOptions;->mVideoFocusModesNoExtension:[Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/UxOptions;->mVideoSizeOneShot:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 51
    .local v0, "res":Landroid/content/res/Resources;
    const/high16 v1, 0x7f0e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera/util/capability/UxOptions;->mPhotoScenes:[Ljava/lang/String;

    .line 52
    const v1, 0x7f0e0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera/util/capability/UxOptions;->mVideoScenes:[Ljava/lang/String;

    .line 54
    const v1, 0x7f0e0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera/util/capability/UxOptions;->mPhotoFocusModes:[Ljava/lang/String;

    .line 55
    const v1, 0x7f0e0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera/util/capability/UxOptions;->mVideoFocusModes:[Ljava/lang/String;

    .line 57
    const v1, 0x7f0e0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera/util/capability/UxOptions;->mPhotoFocusModesNoExtension:[Ljava/lang/String;

    .line 59
    const v1, 0x7f0e0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera/util/capability/UxOptions;->mVideoFocusModesNoExtension:[Ljava/lang/String;

    .line 62
    const v1, 0x7f09022a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/android/camera/util/capability/UxOptions;->mVideoSizeOneShot:Ljava/lang/String;

    .line 64
    return-void
.end method


# virtual methods
.method public getFocusModeOptions(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)[Ljava/lang/String;
    .locals 3
    .param p1, "mode"    # Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .prologue
    const/4 v2, 0x2

    .line 75
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getInstance()Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->isCameraExtensionSupported(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 77
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/UxOptions;->mVideoFocusModes:[Ljava/lang/String;

    .line 85
    :goto_0
    return-object v0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/UxOptions;->mPhotoFocusModes:[Ljava/lang/String;

    goto :goto_0

    .line 82
    :cond_1
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getType()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 83
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/UxOptions;->mVideoFocusModesNoExtension:[Ljava/lang/String;

    goto :goto_0

    .line 85
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/UxOptions;->mPhotoFocusModesNoExtension:[Ljava/lang/String;

    goto :goto_0
.end method

.method public getSceneOptions(I)[Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 67
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/UxOptions;->mVideoScenes:[Ljava/lang/String;

    .line 70
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/UxOptions;->mPhotoScenes:[Ljava/lang/String;

    goto :goto_0
.end method

.method public getVideoSizeForOneShot()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/UxOptions;->mVideoSizeOneShot:Ljava/lang/String;

    return-object v0
.end method
