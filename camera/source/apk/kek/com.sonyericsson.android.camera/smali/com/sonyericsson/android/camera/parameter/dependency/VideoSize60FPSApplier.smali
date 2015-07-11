.class public Lcom/sonyericsson/android/camera/parameter/dependency/VideoSize60FPSApplier;
.super Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;
.source "VideoSize60FPSApplier.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V
    .locals 5
    .param p1, "params"    # Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    .prologue
    .line 33
    iget-object v3, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mScene:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/Scene;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Scene;

    invoke-static {v3, v4}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->unavailable(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    .line 34
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->isOneShotVideo()Z

    move-result v3

    if-nez v3, :cond_0

    .line 35
    iget-object v3, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoHdr:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    invoke-static {v3, v4}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->unavailable(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    .line 38
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->getActionMode()Lcom/sonyericsson/android/camera/ActionMode;

    move-result-object v3

    iget v0, v3, Lcom/sonyericsson/android/camera/ActionMode;->mCameraId:I

    .line 39
    .local v0, "cameraId":I
    iget-object v3, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 44
    .local v2, "videoSize":Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->isSteadyShotSupported(ILcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Z

    move-result v1

    .line 47
    .local v1, "isSteadyShotSupported":Z
    if-eqz v1, :cond_2

    .line 48
    iget-object v3, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoStabilizer:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->INTELLIGENT_ACTIVE:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    if-ne v3, v4, :cond_1

    .line 49
    iget-object v3, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoStabilizer:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->STEADY_SHOT:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    invoke-static {v3, v4}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->applyRecommendedValue(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    .line 57
    :goto_0
    return-void

    .line 52
    :cond_1
    iget-object v3, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoStabilizer:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->reset(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    goto :goto_0

    .line 55
    :cond_2
    iget-object v3, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoStabilizer:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    invoke-static {v3, v4}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->unavailable(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    goto :goto_0
.end method

.method public reset(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V
    .locals 1
    .param p1, "params"    # Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    .prologue
    .line 67
    iget-object v0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mScene:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->reset(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    .line 68
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->isOneShotVideo()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoHdr:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->reset(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    .line 71
    :cond_0
    return-void
.end method
