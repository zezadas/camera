.class public Lcom/sonyericsson/android/camera/fastcapturing/PlatformDependencyResolver;
.super Ljava/lang/Object;
.source "PlatformDependencyResolver.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/sonyericsson/android/camera/fastcapturing/PlatformDependencyResolver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/fastcapturing/PlatformDependencyResolver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBurstFrameRate(Landroid/hardware/Camera$Parameters;Landroid/content/Context;)I
    .locals 5
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 463
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0003

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 465
    .local v0, "burstFps":I
    const-string v3, "sony-max-burst-shot-frame-rate"

    invoke-virtual {p0, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 466
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 467
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 468
    .local v1, "maxBurstFps":I
    if-ge v1, v0, :cond_0

    .line 472
    .end local v1    # "maxBurstFps":I
    :goto_0
    return v1

    :cond_0
    move v1, v0

    goto :goto_0
.end method

.method public static getBurstPictureSizeAccordingTo(Landroid/hardware/Camera$Parameters;)Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    .locals 6
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 417
    const/4 v1, 0x0

    .line 418
    .local v1, "maxResolutionWidth":I
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v3

    .line 419
    .local v3, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-eqz v3, :cond_1

    .line 420
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 421
    .local v2, "size":Landroid/hardware/Camera$Size;
    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    if-ge v1, v4, :cond_0

    .line 422
    iget v1, v2, Landroid/hardware/Camera$Size;->width:I

    goto :goto_0

    .line 427
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "size":Landroid/hardware/Camera$Size;
    :cond_1
    sparse-switch v1, :sswitch_data_0

    .line 435
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Burst supported ?"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 429
    :sswitch_0
    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->HDR_NINE_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .line 432
    :goto_1
    return-object v4

    :sswitch_1
    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->HDR_SIX_MP:Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    goto :goto_1

    .line 427
    nop

    :sswitch_data_0
    .sparse-switch
        0xcc0 -> :sswitch_1
        0x1020 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getDefaultFlash(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;
    .locals 2
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 257
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v0

    .line 259
    .local v0, "allSupported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 260
    const-string v1, "auto"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    const-string v1, "auto"

    .line 266
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getDefaultFocusModeForFastCapturePhoto(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;
    .locals 2
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 168
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    .line 170
    .local v0, "allSupported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    .line 171
    const-string v1, "continuous-picture"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    const-string v1, "continuous-picture"

    .line 181
    :goto_0
    return-object v1

    .line 175
    :cond_0
    const-string v1, "auto"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 177
    const-string v1, "auto"

    goto :goto_0

    .line 181
    :cond_1
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getDefaultFocusModeForFastCaptureVideo(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;
    .locals 2
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 187
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    .line 189
    .local v0, "allSupported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    const-string v1, "continuous-video"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    const-string v1, "continuous-video"

    .line 196
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getDefaultMeteringForFastCapture(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;
    .locals 3
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 149
    const-string v1, "sony-metering-mode-values"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "metering":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 152
    const/4 v1, 0x0

    .line 160
    :goto_0
    return-object v1

    .line 156
    :cond_0
    const-string v1, "face"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 158
    const-string v1, "center-weighted"

    goto :goto_0

    .line 160
    :cond_1
    const-string v1, "face"

    goto :goto_0
.end method

.method public static getDefaultPhotolight(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;
    .locals 2
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 271
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v0

    .line 273
    .local v0, "allSupported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 274
    const-string v1, "off"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    const-string v1, "off"

    .line 280
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getDefaultResolution(Landroid/hardware/Camera$Parameters;Landroid/content/Context;)Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    .locals 4
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    const/4 v1, 0x0

    .line 48
    .local v1, "maxResolutionWidth":I
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v2

    .line 49
    .local v2, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-nez v2, :cond_0

    .line 50
    const/4 v3, 0x0

    .line 57
    :goto_0
    return-object v3

    .line 52
    :cond_0
    invoke-static {p1, v2}, Lcom/sonyericsson/android/camera/configuration/SupportedValueList;->getMaxPictureWidth(Landroid/content/Context;Ljava/util/List;)I

    move-result v1

    .line 54
    invoke-static {p1, v1}, Lcom/sonyericsson/android/camera/configuration/ResolutionOptions;->getDefaultResolution(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "defaultResolution":Ljava/lang/String;
    invoke-static {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object v3

    goto :goto_0
.end method

.method public static getDefaultResolutionFrom(Landroid/content/Context;Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;Landroid/hardware/Camera$Parameters;I)Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shape"    # Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;
    .param p2, "params"    # Landroid/hardware/Camera$Parameters;
    .param p3, "cameraId"    # I

    .prologue
    .line 558
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/sonyericsson/android/camera/configuration/SupportedValueList;->getMaxPictureWidth(Landroid/content/Context;Ljava/util/List;)I

    move-result v6

    .line 562
    .local v6, "sensorWidth":I
    sparse-switch v6, :sswitch_data_0

    .line 601
    new-instance v9, Lcom/sonyericsson/android/camera/configuration/parameters/UnsupportedSensorResolutionException;

    invoke-direct {v9, v6}, Lcom/sonyericsson/android/camera/configuration/parameters/UnsupportedSensorResolutionException;-><init>(I)V

    throw v9

    .line 569
    :sswitch_0
    const v5, 0x7f0e0013

    .line 605
    .local v5, "resId":I
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 608
    .local v8, "values":[Ljava/lang/String;
    move-object v0, v8

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v7, v0, v3

    .line 609
    .local v7, "value":Ljava/lang/String;
    invoke-static {v7}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    move-result-object v2

    .line 610
    .local v2, "eachReso":Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    const/high16 v9, 0x42c80000    # 100.0f

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v9, v10

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    float-to-int v1, v9

    .line 613
    .local v1, "aspect":I
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;->getAspectRatio_x100()I

    move-result v9

    if-ne v1, v9, :cond_2

    .line 614
    return-object v2

    .line 573
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "aspect":I
    .end local v2    # "eachReso":Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "resId":I
    .end local v7    # "value":Ljava/lang/String;
    .end local v8    # "values":[Ljava/lang/String;
    :sswitch_1
    const v5, 0x7f0e0014

    .line 574
    .restart local v5    # "resId":I
    goto :goto_0

    .line 577
    .end local v5    # "resId":I
    :sswitch_2
    const v5, 0x7f0e0015

    .line 578
    .restart local v5    # "resId":I
    goto :goto_0

    .line 581
    .end local v5    # "resId":I
    :sswitch_3
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getInstance()Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;

    move-result-object v9

    invoke-virtual {v9, p3}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->isStillHdrVer3(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 582
    const v5, 0x7f0e0018

    .restart local v5    # "resId":I
    goto :goto_0

    .line 584
    .end local v5    # "resId":I
    :cond_0
    const v5, 0x7f0e0017

    .line 586
    .restart local v5    # "resId":I
    goto :goto_0

    .line 589
    .end local v5    # "resId":I
    :sswitch_4
    const v5, 0x7f0e0019

    .line 590
    .restart local v5    # "resId":I
    goto :goto_0

    .line 593
    .end local v5    # "resId":I
    :sswitch_5
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->getInstance()Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;

    move-result-object v9

    invoke-virtual {v9, p3}, Lcom/sonyericsson/android/camera/util/capability/HardwareCapability;->isStillHdrVer3(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 594
    const v5, 0x7f0e0010

    .restart local v5    # "resId":I
    goto :goto_0

    .line 596
    .end local v5    # "resId":I
    :cond_1
    const v5, 0x7f0e000f

    .line 598
    .restart local v5    # "resId":I
    goto :goto_0

    .line 608
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "aspect":I
    .restart local v2    # "eachReso":Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v7    # "value":Ljava/lang/String;
    .restart local v8    # "values":[Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 618
    .end local v1    # "aspect":I
    .end local v2    # "eachReso":Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;
    .end local v7    # "value":Ljava/lang/String;
    :cond_3
    new-instance v9, Lcom/sonyericsson/android/camera/configuration/parameters/UnsupportedSensorResolutionException;

    invoke-direct {v9, v6}, Lcom/sonyericsson/android/camera/configuration/parameters/UnsupportedSensorResolutionException;-><init>(I)V

    throw v9

    .line 562
    :sswitch_data_0
    .sparse-switch
        0x780 -> :sswitch_5
        0xa20 -> :sswitch_4
        0xcc0 -> :sswitch_3
        0x1020 -> :sswitch_2
        0x1480 -> :sswitch_1
        0x1590 -> :sswitch_0
        0x1760 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getDefaultSceneModeForFastCapture(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;
    .locals 2
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 113
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v0

    .line 115
    .local v0, "allScenes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 116
    const/4 v1, 0x0

    .line 125
    :goto_0
    return-object v1

    .line 120
    :cond_0
    const-string v1, "auto"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 121
    const-string v1, "auto"

    goto :goto_0

    .line 125
    :cond_1
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getDefaultVideoSize(Landroid/hardware/Camera$Parameters;)Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    .locals 10
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/16 v9, 0x1e0

    .line 63
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v6

    .line 65
    .local v6, "supportedList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v1, 0x0

    .line 66
    .local v1, "isFullHdSupported":Z
    const/4 v3, 0x0

    .line 67
    .local v3, "isHdSupported":Z
    const/4 v2, 0x0

    .line 68
    .local v2, "isFwvgaSupported":Z
    const/4 v4, 0x0

    .line 71
    .local v4, "isVgaSupported":Z
    if-eqz v6, :cond_4

    .line 72
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    .line 73
    .local v5, "size":Landroid/hardware/Camera$Size;
    iget v7, v5, Landroid/hardware/Camera$Size;->width:I

    const/16 v8, 0x780

    if-ne v7, v8, :cond_1

    iget v7, v5, Landroid/hardware/Camera$Size;->height:I

    const/16 v8, 0x438

    if-ne v7, v8, :cond_1

    .line 75
    const/4 v1, 0x1

    .line 77
    :cond_1
    iget v7, v5, Landroid/hardware/Camera$Size;->width:I

    const/16 v8, 0x500

    if-ne v7, v8, :cond_2

    iget v7, v5, Landroid/hardware/Camera$Size;->height:I

    const/16 v8, 0x2d0

    if-ne v7, v8, :cond_2

    .line 79
    const/4 v3, 0x1

    .line 81
    :cond_2
    iget v7, v5, Landroid/hardware/Camera$Size;->width:I

    const/16 v8, 0x360

    if-ne v7, v8, :cond_3

    iget v7, v5, Landroid/hardware/Camera$Size;->height:I

    if-ne v7, v9, :cond_3

    .line 83
    const/4 v2, 0x1

    .line 85
    :cond_3
    iget v7, v5, Landroid/hardware/Camera$Size;->width:I

    const/16 v8, 0x280

    if-ne v7, v8, :cond_0

    iget v7, v5, Landroid/hardware/Camera$Size;->height:I

    if-ne v7, v9, :cond_0

    .line 87
    const/4 v4, 0x1

    goto :goto_0

    .line 93
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v5    # "size":Landroid/hardware/Camera$Size;
    :cond_4
    if-eqz v1, :cond_5

    .line 94
    sget-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FULL_HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 107
    :goto_1
    return-object v7

    .line 96
    :cond_5
    if-eqz v3, :cond_6

    .line 97
    sget-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    goto :goto_1

    .line 99
    :cond_6
    if-eqz v2, :cond_7

    .line 100
    sget-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FWVGA:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    goto :goto_1

    .line 102
    :cond_7
    if-eqz v4, :cond_8

    .line 103
    sget-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->VGA:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    goto :goto_1

    .line 107
    :cond_8
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public static getDefaultWhiteBalanceForFastCapturePhoto(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;
    .locals 2
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 131
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v0

    .line 133
    .local v0, "allWhiteBalances":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 134
    const/4 v1, 0x0

    .line 143
    :goto_0
    return-object v1

    .line 138
    :cond_0
    const-string v1, "auto"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    const-string v1, "auto"

    goto :goto_0

    .line 143
    :cond_1
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getMaxSuperResolutionZoom(Landroid/hardware/Camera$Parameters;)I
    .locals 3
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 501
    const/4 v0, 0x0

    .line 502
    .local v0, "max":I
    const-string v2, "sony-max-sr-zoom"

    invoke-virtual {p0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 506
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 507
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 510
    :cond_0
    return v0
.end method

.method public static getOptimalPreviewSize(Landroid/content/Context;Landroid/hardware/Camera$Parameters;ILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "type"    # I
    .param p3, "targetRect"    # Landroid/graphics/Rect;

    .prologue
    .line 383
    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    .line 384
    move-object v0, p3

    .line 385
    .local v0, "baseRect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreferredPreviewSizeForVideo()Landroid/hardware/Camera$Size;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->convertCameraSize(Landroid/hardware/Camera$Size;)Landroid/graphics/Rect;

    move-result-object v1

    .line 394
    .local v1, "maxRect":Landroid/graphics/Rect;
    :goto_0
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->convertCameraSizeList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera/CameraSize;->getOptimalPreviewRect(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/util/List;)Landroid/graphics/Rect;

    move-result-object v2

    return-object v2

    .line 387
    .end local v0    # "baseRect":Landroid/graphics/Rect;
    .end local v1    # "maxRect":Landroid/graphics/Rect;
    :cond_0
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {p0, v2}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutDependencyResolver;->getSurfaceRect(Landroid/content/Context;F)Landroid/graphics/Rect;

    move-result-object v0

    .line 391
    .restart local v0    # "baseRect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreferredPreviewSizeForVideo()Landroid/hardware/Camera$Size;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/capability/CapabilityList;->convertCameraSize(Landroid/hardware/Camera$Size;)Landroid/graphics/Rect;

    move-result-object v1

    .restart local v1    # "maxRect":Landroid/graphics/Rect;
    goto :goto_0
.end method

.method public static getSoftSkinMaxLevel(Landroid/hardware/Camera$Parameters;)I
    .locals 3
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 532
    const/4 v0, 0x0

    .line 533
    .local v0, "max":I
    const-string v2, "sony-max-soft-skin-level"

    invoke-virtual {p0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 537
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 538
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 541
    :cond_0
    return v0
.end method

.method public static isAutoSceneRecogntionDuringRecSupported(Landroid/hardware/Camera$Parameters;)Z
    .locals 5
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v2, 0x0

    .line 440
    if-nez p0, :cond_1

    .line 459
    :cond_0
    :goto_0
    return v2

    .line 444
    :cond_1
    const-string v3, "sony-scene-detect-apply-types"

    invoke-virtual {p0, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 445
    .local v1, "values":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 451
    const-string v3, "recording"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 453
    const/4 v0, 0x0

    .line 459
    .local v0, "isAsrResultAffectToVideoFrame":Z
    :goto_1
    invoke-static {p0}, Lcom/sonyericsson/android/camera/fastcapturing/PlatformDependencyResolver;->isSceneRecognitionSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 456
    .end local v0    # "isAsrResultAffectToVideoFrame":Z
    :cond_2
    const/4 v0, 0x1

    .restart local v0    # "isAsrResultAffectToVideoFrame":Z
    goto :goto_1
.end method

.method public static isBurstCaptureSupported(Landroid/hardware/Camera$Parameters;)Z
    .locals 4
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v1, 0x0

    .line 401
    const-string v2, "sony-burst-shot-values"

    invoke-virtual {p0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 403
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 411
    :cond_0
    :goto_0
    return v1

    .line 407
    :cond_1
    const-string v2, "on"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 411
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isFaceDetectionSupported(Landroid/hardware/Camera$Parameters;)Z
    .locals 1
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 307
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v0

    if-lez v0, :cond_0

    .line 308
    const/4 v0, 0x1

    .line 310
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFlashLightSupported(Landroid/hardware/Camera$Parameters;)Z
    .locals 2
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 285
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v0

    .line 286
    .local v0, "allSupported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 287
    const-string v1, "on"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    const/4 v1, 0x1

    .line 291
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isHdrSupported(Landroid/hardware/Camera$Parameters;)Z
    .locals 4
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v1, 0x0

    .line 202
    const-string v2, "sony-is-values"

    invoke-virtual {p0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "values":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 214
    :cond_0
    :goto_0
    return v1

    .line 209
    :cond_1
    const-string v2, "auto"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 214
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isImageStabilizerSupported(Landroid/hardware/Camera$Parameters;)Z
    .locals 4
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v1, 0x0

    .line 222
    const-string v2, "sony-is-values"

    invoke-virtual {p0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "values":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 234
    :cond_0
    :goto_0
    return v1

    .line 229
    :cond_1
    const-string v2, "on"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 234
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isIsoSupported(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z
    .locals 4
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;
    .param p1, "targetValue"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 350
    const-string v2, "sony-ae-mode-values"

    invoke-virtual {p0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 352
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 360
    :cond_0
    :goto_0
    return v1

    .line 356
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 360
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isObjectTrackingSuppoted(Landroid/hardware/Camera$Parameters;)Z
    .locals 2
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 325
    const-string v1, "sony-object-tracking-supported"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 328
    .local v0, "value":Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isPhotoLightSupported(Landroid/hardware/Camera$Parameters;)Z
    .locals 2
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 296
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v0

    .line 297
    .local v0, "allSupported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 298
    const-string v1, "torch"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 299
    const/4 v1, 0x1

    .line 302
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSceneRecognitionSupported(Landroid/hardware/Camera$Parameters;)Z
    .locals 2
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 316
    const-string v1, "sony-scene-detect-supported"

    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, "value":Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isSoftSkinSupported(Landroid/hardware/Camera$Parameters;)Z
    .locals 3
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v1, 0x0

    .line 514
    if-nez p0, :cond_1

    .line 528
    :cond_0
    :goto_0
    return v1

    .line 518
    :cond_1
    const-string v2, "sony-max-soft-skin-level"

    invoke-virtual {p0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 520
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 524
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    .line 525
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isSuperResolutionZoomSupported(Landroid/hardware/Camera$Parameters;)Z
    .locals 7
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v4, 0x0

    .line 477
    if-nez p0, :cond_1

    .line 497
    :cond_0
    :goto_0
    return v4

    .line 483
    :cond_1
    const-string v5, "true"

    const-string v6, "sony-sr-zoom-supported"

    invoke-virtual {p0, v6}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 486
    .local v0, "captureSupported":Z
    const/4 v1, 0x0

    .line 487
    .local v1, "exifSupported":Z
    const-string v5, "sony-exif-maker-note-types"

    invoke-virtual {p0, v5}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 488
    .local v3, "values":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 489
    const-string v5, "super-resolution"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 491
    const/4 v1, 0x1

    .line 495
    :cond_2
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/ClassDefinitionChecker;->isSuperResolutionProcessorSupported()Z

    move-result v2

    .line 497
    .local v2, "postProcSupported":Z
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static isVideoHdrSupported(Landroid/hardware/Camera$Parameters;)Z
    .locals 4
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v1, 0x0

    .line 334
    const-string v2, "sony-video-hdr-values"

    invoke-virtual {p0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, "values":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 346
    :cond_0
    :goto_0
    return v1

    .line 341
    :cond_1
    const-string v2, "on"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 346
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isVideoStabilizerSupported(Landroid/hardware/Camera$Parameters;)Z
    .locals 4
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v1, 0x0

    .line 240
    const-string v2, "sony-vs-values"

    invoke-virtual {p0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, "values":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 252
    :cond_0
    :goto_0
    return v1

    .line 247
    :cond_1
    const-string v2, "on"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 252
    const/4 v1, 0x1

    goto :goto_0
.end method
