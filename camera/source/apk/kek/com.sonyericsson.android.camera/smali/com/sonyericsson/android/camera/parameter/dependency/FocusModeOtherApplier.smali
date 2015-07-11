.class public Lcom/sonyericsson/android/camera/parameter/dependency/FocusModeOtherApplier;
.super Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;
.source "FocusModeOtherApplier.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/parameter/dependency/DependencyApplier;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V
    .locals 2
    .param p1, "params"    # Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    .prologue
    .line 32
    iget-object v0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mFaceIdentify:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/FaceIdentify;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->applyRecommendedValue(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    .line 33
    iget-object v0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mSmileCapture:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SmileCapture;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->applyRecommendedValue(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    .line 34
    iget-object v0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoSmileCapture:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSmileCapture;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->applyRecommendedValue(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    .line 36
    return-void
.end method

.method public reset(Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;)V
    .locals 1
    .param p1, "params"    # Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;

    .prologue
    .line 46
    iget-object v0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mFaceIdentify:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->reset(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    .line 47
    iget-object v0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mSmileCapture:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->reset(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    .line 48
    iget-object v0, p1, Lcom/sonyericsson/android/camera/parameter/CapturingModeParams;->mVideoSmileCapture:Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/parameter/ParameterUtil;->reset(Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValueHolder;)Lcom/sonyericsson/android/camera/configuration/parameters/ParameterValue;

    .line 49
    return-void
.end method
