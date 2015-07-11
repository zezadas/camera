.class public Lcom/sonyericsson/android/camera/parameter/dependency/VideoSizeCorrectionApplier;
.super Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;
.source "VideoSizeCorrectionApplier.java"


# instance fields
.field private final mIsOneShotVideo:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "isOneShotVideo"    # Z

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;-><init>()V

    .line 28
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/parameter/dependency/VideoSizeCorrectionApplier;->mIsOneShotVideo:Z

    .line 29
    return-void
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V
    .locals 6
    .param p1, "params"    # Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    .prologue
    .line 41
    iget-boolean v4, p0, Lcom/sonyericsson/android/camera/parameter/dependency/VideoSizeCorrectionApplier;->mIsOneShotVideo:Z

    if-nez v4, :cond_1

    .line 42
    iget-object v4, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v4

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne v4, v5, :cond_0

    iget-object v4, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mCapturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v4

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SUPERIOR_FRONT:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq v4, v5, :cond_1

    .line 44
    :cond_0
    iget-object v4, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoHdr:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    invoke-static {v4, v5}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->unavailable(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    .line 50
    :cond_1
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->getActionMode()Lcom/sonyericsson/android/camera/ActionMode;

    move-result-object v4

    iget v0, v4, Lcom/sonyericsson/android/camera/ActionMode;->mCameraId:I

    .line 51
    .local v0, "cameraId":I
    iget-object v4, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;->get()Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 53
    .local v3, "videoSize":Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;
    invoke-static {v0, v3}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->isSteadyShotSupported(ILcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Z

    move-result v2

    .line 55
    .local v2, "isSteadyShotSupported":Z
    invoke-static {v0, v3}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->isIntelligentActiveSupported(ILcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Z

    move-result v1

    .line 57
    .local v1, "isIntelligentActiveSupported":Z
    if-nez v2, :cond_2

    if-eqz v1, :cond_3

    .line 58
    :cond_2
    iget-object v4, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoStabilizer:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-static {v4}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->reset(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_3
    iget-object v4, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoStabilizer:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    invoke-static {v4, v5}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->unavailable(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    goto :goto_0
.end method

.method public reset(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V
    .locals 0
    .param p1, "params"    # Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    .prologue
    .line 73
    return-void
.end method
