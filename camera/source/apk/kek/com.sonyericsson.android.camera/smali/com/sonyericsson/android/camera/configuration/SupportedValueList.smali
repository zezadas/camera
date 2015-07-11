.class public Lcom/sonyericsson/android/camera/configuration/SupportedValueList;
.super Ljava/lang/Object;
.source "SupportedValueList.java"


# static fields
.field static final TAG:Ljava/lang/String; = "SupportedValueList"

.field public static final sPhotoSurfaceSizeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field public static final sVideoSurfaceSizeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mEvStep:F

.field public mFacing:I

.field public mFlash:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mFocusArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mFocusMode:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mIsFaceDetectionSupported:Z

.field public mIsHdrSupported:Z

.field public mIsImageStabilizerSupported:Z

.field public mIsSceneRecognitionSupported:Z

.field public mIsSmileDetectionSupported:Z

.field public mIsSmoothZoomSupported:Z

.field public mIsVideoStabilizerSupported:Z

.field public mIsoValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mMaxEv:I

.field public mMaxNumFocusAreas:I

.field public mMetering:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mMinEv:I

.field public mPictureSize:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation
.end field

.field public mPreferredPreviewSizeForVideo:Landroid/hardware/Camera$Size;

.field public mPreviewFpsRange:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[I>;"
        }
    .end annotation
.end field

.field public mPreviewSize:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation
.end field

.field public mResolutionOptions:Lcom/sonyericsson/android/camera/configuration/ResolutionOptions;

.field public mScene:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mVideoSize:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation
.end field

.field public mWhiteBalance:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/SupportedValueList;->sPhotoSurfaceSizeMap:Ljava/util/HashMap;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/configuration/SupportedValueList;->sVideoSurfaceSizeMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;Landroid/hardware/Camera$Parameters;I)V
    .locals 3
    .param p1, "context"    # Lcom/sonyericsson/android/camera/CameraActivity;
    .param p2, "params"    # Landroid/hardware/Camera$Parameters;
    .param p3, "facing"    # I

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    if-nez p2, :cond_0

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parameters of camera Id["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    iput p3, p0, Lcom/sonyericsson/android/camera/configuration/SupportedValueList;->mFacing:I

    .line 75
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/configuration/SupportedValueList;->getSupportedFlash(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/configuration/SupportedValueList;->mFlash:Ljava/util/List;

    .line 76
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/configuration/SupportedValueList;->getSupportedWhiteBalance(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/configuration/SupportedValueList;->mWhiteBalance:Ljava/util/List;

    .line 77
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/configuration/SupportedValueList;->getSupportedScene(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/configuration/SupportedValueList;->mScene:Ljava/util/List;

    .line 78
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/configuration/SupportedValueList;->getSupportedFocusMode(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/configuration/SupportedValueList;->mFocusMode:Ljava/util/List;

    .line 79
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera/configuration/SupportedValueList;->mMaxEv:I

    .line 81
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera/configuration/SupportedValueList;->mMinEv:I

    .line 83
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera/configuration/SupportedValueList;->mEvStep:F

    .line 85
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/configuration/SupportedValueList;->getSupportedPreviewSize(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/configuration/SupportedValueList;->mPreviewSize:Ljava/util/List;

    .line 86
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/configuration/SupportedValueList;->getSupportedPictureSize(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/configuration/SupportedValueList;->mPictureSize:Ljava/util/List;

    .line 87
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/configuration/SupportedValueList;->getSupportedVideoSize(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/configuration/SupportedValueList;->mVideoSize:Ljava/util/List;

    .line 88
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/configuration/SupportedValueList;->getPreferredPreviewSizeForVideo(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Size;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/configuration/SupportedValueList;->mPreferredPreviewSizeForVideo:Landroid/hardware/Camera$Size;

    .line 89
    iget-object v0, p0, Lcom/sonyericsson/android/camera/configuration/SupportedValueList;->mPictureSize:Ljava/util/List;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/configuration/SupportedValueList;->mPreviewSize:Ljava/util/List;

    invoke-direct {p0, p1, v0, v1}, Lcom/sonyericsson/android/camera/configuration/SupportedValueList;->getResolutionOptions(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Lcom/sonyericsson/android/camera/configuration/ResolutionOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/configuration/SupportedValueList;->mResolutionOptions:Lcom/sonyericsson/android/camera/configuration/ResolutionOptions;

    .line 90
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/configuration/SupportedValueList;->mPreviewFpsRange:Ljava/util/List;

    .line 91
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->isSmoothZoomSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/configuration/SupportedValueList;->mIsSmoothZoomSupported:Z

    .line 92
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera/configuration/SupportedValueList;->mMaxNumFocusAreas:I

    .line 95
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/configuration/SupportedValueList;->getSupportedMetering(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/configuration/SupportedValueList;->mMetering:Ljava/util/List;

    .line 96
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/configuration/SupportedValueList;->getSupportedImageStabilizer(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/configuration/SupportedValueList;->mIsImageStabilizerSupported:Z

    .line 97
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/configuration/SupportedValueList;->getSupportedVideoStabilizer(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/configuration/SupportedValueList;->mIsVideoStabilizerSupported:Z

    .line 98
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/configuration/SupportedValueList;->getSupportedFocusArea(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/configuration/SupportedValueList;->mFocusArea:Ljava/util/List;

    .line 99
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/configuration/SupportedValueList;->getMaxMultiFocusNum(Landroid/hardware/Camera$Parameters;)I

    .line 100
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/configuration/SupportedValueList;->getSupportedSceneRecognition(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/configuration/SupportedValueList;->mIsSceneRecognitionSupported:Z

    .line 101
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/configuration/SupportedValueList;->getSupportedFaceDetection(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/configuration/SupportedValueList;->mIsFaceDetectionSupported:Z

    .line 102
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/configuration/SupportedValueList;->getSupportedSmileDetection(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/configuration/SupportedValueList;->mIsSmileDetectionSupported:Z

    .line 103
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/configuration/SupportedValueList;->getSupportedIsoValues(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/configuration/SupportedValueList;->mIsoValues:Ljava/util/List;

    .line 104
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/configuration/SupportedValueList;->getSupportedHdr(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/configuration/SupportedValueList;->mIsHdrSupported:Z

    .line 105
    return-void
.end method

.method private getMaxMultiFocusNum(Landroid/hardware/Camera$Parameters;)I
    .locals 2
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 227
    const/4 v0, 0x0

    .line 229
    .local v0, "num":I
    :try_start_0
    const-string v1, "sony-max-multi-focus-num"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 235
    :goto_0
    return v0

    .line 230
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getMaxPictureWidth(Landroid/content/Context;Ljava/util/List;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 334
    .local p1, "supportedPictureSize":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/ResolutionDependence;->isDependOnAspect(Landroid/content/Context;)Z

    move-result v2

    .line 335
    .local v2, "independentOfAspect":Z
    const/4 v4, 0x0

    .line 336
    .local v4, "maxPictureWidth":I
    const/4 v3, 0x0

    .line 337
    .local v3, "maxPictureSize":I
    const/4 v0, 0x0

    .line 338
    .local v0, "currentPictureSize":I
    if-eqz p1, :cond_2

    .line 339
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    .line 340
    .local v5, "size":Landroid/hardware/Camera$Size;
    if-eqz v2, :cond_1

    .line 341
    iget v6, v5, Landroid/hardware/Camera$Size;->width:I

    iget v7, v5, Landroid/hardware/Camera$Size;->height:I

    mul-int v0, v6, v7

    .line 342
    if-ge v3, v0, :cond_0

    .line 343
    move v3, v0

    .line 344
    iget v4, v5, Landroid/hardware/Camera$Size;->width:I

    goto :goto_0

    .line 347
    :cond_1
    iget v6, v5, Landroid/hardware/Camera$Size;->width:I

    if-ge v4, v6, :cond_0

    .line 348
    iget v4, v5, Landroid/hardware/Camera$Size;->width:I

    goto :goto_0

    .line 353
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v5    # "size":Landroid/hardware/Camera$Size;
    :cond_2
    return v4
.end method

.method private getPreferredPreviewSizeForVideo(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Size;
    .locals 1
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 161
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreferredPreviewSizeForVideo()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 164
    .local v0, "size":Landroid/hardware/Camera$Size;
    return-object v0
.end method

.method private getPreviewHeight(Landroid/content/Context;ILjava/util/List;)I
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "maxPictureWidth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 358
    .local p3, "supportedPreviewSize":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v2, 0x0

    .line 359
    .local v2, "previewHeight":I
    const/16 v4, 0xcc0

    if-ne p2, v4, :cond_1

    .line 360
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    .line 361
    .local v3, "size":Landroid/hardware/Camera$Size;
    iget v0, v3, Landroid/hardware/Camera$Size;->height:I

    .line 362
    .local v0, "height":I
    const/16 v4, 0x438

    if-ne v0, v4, :cond_2

    .line 363
    move v2, v0

    .line 370
    .end local v0    # "height":I
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "size":Landroid/hardware/Camera$Size;
    :cond_1
    return v2

    .line 365
    .restart local v0    # "height":I
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "size":Landroid/hardware/Camera$Size;
    :cond_2
    const/16 v4, 0x2d0

    if-ne v0, v4, :cond_0

    .line 366
    move v2, v0

    goto :goto_0
.end method

.method private getResolutionOptions(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Lcom/sonyericsson/android/camera/configuration/ResolutionOptions;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Lcom/sonyericsson/android/camera/configuration/ResolutionOptions;"
        }
    .end annotation

    .prologue
    .line 322
    .local p2, "supportedPictureSize":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .local p3, "supportedPreviewSize":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-static {p1, p2}, Lcom/sonyericsson/android/camera/configuration/SupportedValueList;->getMaxPictureWidth(Landroid/content/Context;Ljava/util/List;)I

    move-result v0

    .line 325
    .local v0, "maxPictureWidth":I
    invoke-direct {p0, p1, v0, p3}, Lcom/sonyericsson/android/camera/configuration/SupportedValueList;->getPreviewHeight(Landroid/content/Context;ILjava/util/List;)I

    move-result v1

    .line 330
    .local v1, "previewHeight":I
    new-instance v2, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions;

    invoke-direct {v2, p1, v0, v1}, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions;-><init>(Landroid/content/Context;II)V

    return-object v2
.end method

.method private getSupportedFaceDetection(Landroid/hardware/Camera$Parameters;)Z
    .locals 1
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 257
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v0

    if-lez v0, :cond_0

    .line 258
    const/4 v0, 0x1

    .line 260
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSupportedFlash(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 3
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    const-string v2, "Flash"

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/android/camera/configuration/SupportedValueList;->getSupportedValues(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 171
    .local v0, "supportedValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-object v0
.end method

.method private getSupportedFocusArea(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 2
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    const-string v0, "sony-focus-area-values"

    const-string v1, ","

    invoke-direct {p0, p1, v0, v1}, Lcom/sonyericsson/android/camera/configuration/SupportedValueList;->getSupportedValues(Landroid/hardware/Camera$Parameters;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getSupportedFocusMode(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 3
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    const-string v2, "FocusMode"

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/android/camera/configuration/SupportedValueList;->getSupportedValues(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 192
    .local v0, "supportedValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-object v0
.end method

.method private getSupportedHdr(Landroid/hardware/Camera$Parameters;)Z
    .locals 2
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 270
    const-string v0, "sony-is-values"

    const-string v1, "on-still-hdr"

    invoke-direct {p0, p1, v0, v1}, Lcom/sonyericsson/android/camera/configuration/SupportedValueList;->isSupported(Landroid/hardware/Camera$Parameters;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private getSupportedImageStabilizer(Landroid/hardware/Camera$Parameters;)Z
    .locals 2
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 239
    const-string v0, "sony-is-values"

    const-string v1, "on"

    invoke-direct {p0, p1, v0, v1}, Lcom/sonyericsson/android/camera/configuration/SupportedValueList;->isSupported(Landroid/hardware/Camera$Parameters;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private getSupportedIsoValues(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 2
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    const-string v0, "sony-iso-values"

    const-string v1, ","

    invoke-direct {p0, p1, v0, v1}, Lcom/sonyericsson/android/camera/configuration/SupportedValueList;->getSupportedValues(Landroid/hardware/Camera$Parameters;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getSupportedMetering(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 2
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 212
    const-string v0, "sony-metering-mode-values"

    const-string v1, ","

    invoke-direct {p0, p1, v0, v1}, Lcom/sonyericsson/android/camera/configuration/SupportedValueList;->getSupportedValues(Landroid/hardware/Camera$Parameters;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getSupportedPictureSize(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 1
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v0

    .line 124
    .local v0, "size":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-nez v0, :cond_0

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "size":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .restart local v0    # "size":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_0
    return-object v0
.end method

.method private getSupportedPreviewSize(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 1
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    .line 141
    .local v0, "size":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-nez v0, :cond_0

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "size":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .restart local v0    # "size":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_0
    return-object v0
.end method

.method private getSupportedScene(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 3
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v1

    const-string v2, "Scene"

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/android/camera/configuration/SupportedValueList;->getSupportedValues(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 185
    .local v0, "supportedValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-object v0
.end method

.method private getSupportedSceneRecognition(Landroid/hardware/Camera$Parameters;)Z
    .locals 2
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 264
    const-string v0, "sony-scene-detect-supported"

    const-string v1, "true"

    invoke-direct {p0, p1, v0, v1}, Lcom/sonyericsson/android/camera/configuration/SupportedValueList;->isSupported(Landroid/hardware/Camera$Parameters;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private getSupportedSmileDetection(Landroid/hardware/Camera$Parameters;)Z
    .locals 2
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 251
    const-string v0, "sony-smile-detect-values"

    const-string v1, "on"

    invoke-direct {p0, p1, v0, v1}, Lcom/sonyericsson/android/camera/configuration/SupportedValueList;->isSupported(Landroid/hardware/Camera$Parameters;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private getSupportedValues(Landroid/hardware/Camera$Parameters;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "delimiter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 295
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 296
    .local v4, "supportedValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 297
    .local v5, "value":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 298
    invoke-virtual {v5, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 299
    .local v3, "supported":Ljava/lang/String;
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 306
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "supported":Ljava/lang/String;
    :cond_0
    return-object v4
.end method

.method private getSupportedValues(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 199
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v2, "supportedValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 201
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 202
    .local v1, "supported":Ljava/lang/String;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 208
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "supported":Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method private getSupportedVideoSize(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 1
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v0

    .line 152
    .local v0, "size":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-nez v0, :cond_0

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "size":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .restart local v0    # "size":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_0
    return-object v0
.end method

.method private getSupportedVideoStabilizer(Landroid/hardware/Camera$Parameters;)Z
    .locals 2
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 245
    const-string v0, "sony-vs-values"

    const-string v1, "on"

    invoke-direct {p0, p1, v0, v1}, Lcom/sonyericsson/android/camera/configuration/SupportedValueList;->isSupported(Landroid/hardware/Camera$Parameters;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private getSupportedWhiteBalance(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 3
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v1

    const-string v2, "WhiteBalance"

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/android/camera/configuration/SupportedValueList;->getSupportedValues(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 178
    .local v0, "supportedValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-object v0
.end method

.method private isSupported(Landroid/hardware/Camera$Parameters;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "marker"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 277
    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 286
    :cond_0
    :goto_0
    return v1

    .line 283
    :cond_1
    invoke-virtual {v0, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 284
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private logSize(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    return-void
.end method
