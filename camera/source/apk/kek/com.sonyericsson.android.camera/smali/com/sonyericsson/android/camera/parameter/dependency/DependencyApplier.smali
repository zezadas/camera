.class public abstract Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;
.super Ljava/lang/Object;
.source "DependencyApplier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    return-void
.end method

.method public static create(Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;
    .locals 2
    .param p0, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;

    .prologue
    .line 303
    sget-object v0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CaptureFrameShape:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CaptureFrameShape;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 311
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :pswitch_0
    new-instance v0, Lcom/sonyericsson/android/camera/parameter/dependency/CaptureFrameShapeWideApplier;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/parameter/dependency/CaptureFrameShapeWideApplier;-><init>()V

    .line 308
    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Lcom/sonyericsson/android/camera/parameter/dependency/CaptureFrameShapeStandardApplier;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/parameter/dependency/CaptureFrameShapeStandardApplier;-><init>()V

    goto :goto_0

    .line 303
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static create(Lcom/sonyericsson/android/camera/configuration/parameters/Ev;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;
    .locals 2
    .param p0, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    .prologue
    .line 272
    sget-object v0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$Ev:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 277
    new-instance v0, Lcom/sonyericsson/android/camera/parameter/dependency/EvOtherApplier;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/parameter/dependency/EvOtherApplier;-><init>()V

    :goto_0
    return-object v0

    .line 274
    :pswitch_0
    new-instance v0, Lcom/sonyericsson/android/camera/parameter/dependency/EvZeroApplier;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/parameter/dependency/EvZeroApplier;-><init>()V

    goto :goto_0

    .line 272
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static create(Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;
    .locals 2
    .param p0, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;

    .prologue
    .line 172
    sget-object v0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$FaceIdentify:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 177
    new-instance v0, Lcom/sonyericsson/android/camera/parameter/dependency/FaceIdentifyOnApplier;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/parameter/dependency/FaceIdentifyOnApplier;-><init>()V

    :goto_0
    return-object v0

    .line 174
    :pswitch_0
    new-instance v0, Lcom/sonyericsson/android/camera/parameter/dependency/FaceIdentifyOffApplier;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/parameter/dependency/FaceIdentifyOffApplier;-><init>()V

    goto :goto_0

    .line 172
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static create(Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;
    .locals 2
    .param p0, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;

    .prologue
    .line 220
    sget-object v0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$FocusMode:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/FocusMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 225
    new-instance v0, Lcom/sonyericsson/android/camera/parameter/dependency/FocusModeOtherApplier;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/parameter/dependency/FocusModeOtherApplier;-><init>()V

    :goto_0
    return-object v0

    .line 222
    :pswitch_0
    new-instance v0, Lcom/sonyericsson/android/camera/parameter/dependency/FocusModeFaceDetectionApplier;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/parameter/dependency/FocusModeFaceDetectionApplier;-><init>()V

    goto :goto_0

    .line 220
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static create(Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;
    .locals 2
    .param p0, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;

    .prologue
    .line 104
    sget-object v0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$Hdr:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/Hdr;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 111
    new-instance v0, Lcom/sonyericsson/android/camera/parameter/dependency/HdrOffApplier;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/parameter/dependency/HdrOffApplier;-><init>()V

    :goto_0
    return-object v0

    .line 108
    :pswitch_0
    new-instance v0, Lcom/sonyericsson/android/camera/parameter/dependency/HdrOnApplier;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/parameter/dependency/HdrOnApplier;-><init>()V

    goto :goto_0

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static create(Lcom/sonyericsson/android/camera/configuration/parameters/Iso;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;
    .locals 2
    .param p0, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    .prologue
    .line 140
    sget-object v0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$Iso:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 145
    new-instance v0, Lcom/sonyericsson/android/camera/parameter/dependency/IsoManualApplier;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/parameter/dependency/IsoManualApplier;-><init>()V

    :goto_0
    return-object v0

    .line 142
    :pswitch_0
    new-instance v0, Lcom/sonyericsson/android/camera/parameter/dependency/IsoAutoApplier;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/parameter/dependency/IsoAutoApplier;-><init>()V

    goto :goto_0

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static create(Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;
    .locals 2
    .param p0, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/Resolution;->getPictureRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 289
    .local v0, "width":I
    const/16 v1, 0xf00

    if-le v0, v1, :cond_0

    .line 290
    new-instance v1, Lcom/sonyericsson/android/camera/parameter/dependency/ResolutionCorrectionApplier;

    invoke-direct {v1}, Lcom/sonyericsson/android/camera/parameter/dependency/ResolutionCorrectionApplier;-><init>()V

    .line 292
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/sonyericsson/android/camera/parameter/dependency/ResolutionOtherApplier;

    invoke-direct {v1}, Lcom/sonyericsson/android/camera/parameter/dependency/ResolutionOtherApplier;-><init>()V

    goto :goto_0
.end method

.method public static create(Lcom/sonyericsson/android/camera/configuration/parameters/Scene;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;
    .locals 2
    .param p0, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    .prologue
    .line 55
    sget-object v0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$Scene:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 93
    new-instance v0, Lcom/sonyericsson/android/camera/parameter/dependency/SceneOffApplier;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/parameter/dependency/SceneOffApplier;-><init>()V

    :goto_0
    return-object v0

    .line 60
    :pswitch_0
    new-instance v0, Lcom/sonyericsson/android/camera/parameter/dependency/SceneSoftSnapApplier;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/parameter/dependency/SceneSoftSnapApplier;-><init>()V

    goto :goto_0

    .line 65
    :pswitch_1
    new-instance v0, Lcom/sonyericsson/android/camera/parameter/dependency/SceneLandscapeApplier;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/parameter/dependency/SceneLandscapeApplier;-><init>()V

    goto :goto_0

    .line 68
    :pswitch_2
    new-instance v0, Lcom/sonyericsson/android/camera/parameter/dependency/SceneBackLightHdrApplier;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/parameter/dependency/SceneBackLightHdrApplier;-><init>()V

    goto :goto_0

    .line 72
    :pswitch_3
    new-instance v0, Lcom/sonyericsson/android/camera/parameter/dependency/SceneNightPortraitApplier;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/parameter/dependency/SceneNightPortraitApplier;-><init>()V

    goto :goto_0

    .line 75
    :pswitch_4
    new-instance v0, Lcom/sonyericsson/android/camera/parameter/dependency/SceneTwilightApplier;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/parameter/dependency/SceneTwilightApplier;-><init>()V

    goto :goto_0

    .line 78
    :pswitch_5
    new-instance v0, Lcom/sonyericsson/android/camera/parameter/dependency/SceneHighSensitivityApplier;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/parameter/dependency/SceneHighSensitivityApplier;-><init>()V

    goto :goto_0

    .line 81
    :pswitch_6
    new-instance v0, Lcom/sonyericsson/android/camera/parameter/dependency/SceneGourmetApplier;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/parameter/dependency/SceneGourmetApplier;-><init>()V

    goto :goto_0

    .line 85
    :pswitch_7
    new-instance v0, Lcom/sonyericsson/android/camera/parameter/dependency/ScenePetApplier;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/parameter/dependency/ScenePetApplier;-><init>()V

    goto :goto_0

    .line 90
    :pswitch_8
    new-instance v0, Lcom/sonyericsson/android/camera/parameter/dependency/SceneSportsApplier;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/parameter/dependency/SceneSportsApplier;-><init>()V

    goto :goto_0

    .line 55
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method public static create(Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;
    .locals 2
    .param p0, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    .prologue
    .line 156
    sget-object v0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SelfTimer:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 161
    new-instance v0, Lcom/sonyericsson/android/camera/parameter/dependency/SelfTimerOnApplier;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/parameter/dependency/SelfTimerOnApplier;-><init>()V

    :goto_0
    return-object v0

    .line 158
    :pswitch_0
    new-instance v0, Lcom/sonyericsson/android/camera/parameter/dependency/SelfTimerOffApplier;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/parameter/dependency/SelfTimerOffApplier;-><init>()V

    goto :goto_0

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static create(Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;
    .locals 2
    .param p0, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    .prologue
    .line 188
    sget-object v0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$SmileCapture:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 193
    new-instance v0, Lcom/sonyericsson/android/camera/parameter/dependency/SmileCaptureOnApplier;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/parameter/dependency/SmileCaptureOnApplier;-><init>()V

    :goto_0
    return-object v0

    .line 190
    :pswitch_0
    new-instance v0, Lcom/sonyericsson/android/camera/parameter/dependency/SmileCaptureOffApplier;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/parameter/dependency/SmileCaptureOffApplier;-><init>()V

    goto :goto_0

    .line 188
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static create(Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;
    .locals 2
    .param p0, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;

    .prologue
    .line 122
    sget-object v0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$Stabilizer:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/Stabilizer;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 129
    new-instance v0, Lcom/sonyericsson/android/camera/parameter/dependency/StabilizerOffApplier;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/parameter/dependency/StabilizerOffApplier;-><init>()V

    :goto_0
    return-object v0

    .line 126
    :pswitch_0
    new-instance v0, Lcom/sonyericsson/android/camera/parameter/dependency/StabilizerOnApplier;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/parameter/dependency/StabilizerOnApplier;-><init>()V

    goto :goto_0

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static create(Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;
    .locals 2
    .param p0, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    .prologue
    .line 256
    sget-object v0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoHdr:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 261
    new-instance v0, Lcom/sonyericsson/android/camera/parameter/dependency/VideoHdrOffApplier;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/parameter/dependency/VideoHdrOffApplier;-><init>()V

    :goto_0
    return-object v0

    .line 258
    :pswitch_0
    new-instance v0, Lcom/sonyericsson/android/camera/parameter/dependency/VideoHdrOnApplier;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/parameter/dependency/VideoHdrOnApplier;-><init>()V

    goto :goto_0

    .line 256
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static create(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Z)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;
    .locals 2
    .param p0, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    .param p1, "isOneShotVideo"    # Z

    .prologue
    .line 236
    sget-object v0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoSize:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 245
    new-instance v0, Lcom/sonyericsson/android/camera/parameter/dependency/VideoSizeOtherApplier;

    invoke-direct {v0, p1}, Lcom/sonyericsson/android/camera/parameter/dependency/VideoSizeOtherApplier;-><init>(Z)V

    :goto_0
    return-object v0

    .line 240
    :pswitch_0
    new-instance v0, Lcom/sonyericsson/android/camera/parameter/dependency/VideoSizeCorrectionApplier;

    invoke-direct {v0, p1}, Lcom/sonyericsson/android/camera/parameter/dependency/VideoSizeCorrectionApplier;-><init>(Z)V

    goto :goto_0

    .line 242
    :pswitch_1
    new-instance v0, Lcom/sonyericsson/android/camera/parameter/dependency/VideoSize60FPSApplier;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/parameter/dependency/VideoSize60FPSApplier;-><init>()V

    goto :goto_0

    .line 236
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static create(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;)Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;
    .locals 2
    .param p0, "value"    # Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    .prologue
    .line 204
    sget-object v0, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoSmileCapture:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 209
    new-instance v0, Lcom/sonyericsson/android/camera/parameter/dependency/VideoSmileCaptureOnApplier;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/parameter/dependency/VideoSmileCaptureOnApplier;-><init>()V

    :goto_0
    return-object v0

    .line 206
    :pswitch_0
    new-instance v0, Lcom/sonyericsson/android/camera/parameter/dependency/VideoSmileCaptureOffApplier;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/parameter/dependency/VideoSmileCaptureOffApplier;-><init>()V

    goto :goto_0

    .line 204
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public abstract apply(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V
.end method

.method public abstract reset(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V
.end method
